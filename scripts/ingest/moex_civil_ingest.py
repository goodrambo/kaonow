#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""W1.6 civil-service ingest

讀 content/parsed_civil/{exam_id}/questions.json + content/config/moex_civil_service_map.json
產 outputs/moex_civil_ingest/ 下的 SQL：
  - 01_new_exams.sql (350 新 civil exam，category_id='civil')
  - 02_new_subjects.sql (per (exam, subject) 新 sub-* + bindings)
  - 03_new_papers_part_NN.sql (BATCH 100)
  - 04_new_questions_part_NNN.sql (BATCH 10)

Naming：
  exam_id = "{slug}-{md5_hash_of_category[:8]}"   (matches map keys)
  exam.name = "{level_chinese}－{category}"
  exam.short_name = "{level_short} {category}"
"""
from __future__ import annotations
import hashlib
import json
import re
from collections import defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_ROOT = REPO_ROOT / "content/parsed_civil"
MAP_PATH = REPO_ROOT / "content/config/moex_civil_service_map.json"
OUT_ROOT = REPO_ROOT / "outputs/moex_civil_ingest"
BATCH_SIZE = 10
PAPERS_BATCH = 100

# slug → 中文 level name
SLUG_TO_LEVEL_CN = {
    "aboriginal":     "原住民族特考",
    "aviation":       "民航特考",
    "coastguard":     "海巡特考",
    "colonel":        "上校以上轉任",
    "commerce":       "國際經濟商務人員",
    "customs":        "關務人員特考",
    "customspromo":   "關務升官等",
    "diplomatic":     "外交人員特考",
    "disabled":       "身心障礙人員特考",
    "elementary":     "公務人員初等考試",
    "generalpolice":  "一般警察人員特考",
    "heelevel2":      "公務人員高等考試二級",
    "heelevel3":      "公務人員高等考試三級",
    "immigration":    "移民行政特考",
    "investigation":  "調查人員特考",
    "islands":        "離島地區公務人員",
    "judicial":       "司法人員特考",
    "locality":       "地方政府公務人員特考",
    "police":         "警察人員特考",
    "policepromo":    "警察升官等",
    "promotion":      "公務人員升官等",
    "pukao":          "公務人員普通考試",
    "retired":        "退除役轉任",
    "security":       "國家安全情報人員特考",
}

SLUG_TO_LEVEL_SHORT = {
    "aboriginal":     "原民特",
    "aviation":       "民航",
    "coastguard":     "海巡",
    "colonel":        "上校轉任",
    "commerce":       "經商人",
    "customs":        "關務",
    "customspromo":   "關務升等",
    "diplomatic":     "外交",
    "disabled":       "身障特",
    "elementary":     "初考",
    "generalpolice":  "一般警特",
    "heelevel2":      "高考二級",
    "heelevel3":      "高考三級",
    "immigration":    "移民",
    "investigation":  "調查",
    "islands":        "離島特",
    "judicial":       "司法",
    "locality":       "地方特",
    "police":         "警特",
    "policepromo":    "警察升等",
    "promotion":      "公升等",
    "pukao":          "普考",
    "retired":        "退除役",
    "security":       "國安",
}


def sql_literal(v):
    if v is None: return "NULL"
    if isinstance(v, bool): return "TRUE" if v else "FALSE"
    if isinstance(v, (int, float)): return repr(v)
    if isinstance(v, (list, dict)):
        return "'" + json.dumps(v, ensure_ascii=False).replace("'", "''") + "'::jsonb"
    return "'" + str(v).replace("'", "''") + "'"


def slugify_subject(s):
    return hashlib.md5(s.encode("utf-8")).hexdigest()[:8]


def main():
    OUT_ROOT.mkdir(parents=True, exist_ok=True)
    map_data = json.loads(MAP_PATH.read_text())

    # 1. 收集每個 exam_id 的 parsed data
    exam_data = {}  # exam_id → {meta, questions, papers}
    for exam_id, info in map_data.items():
        parsed_path = PARSED_ROOT / exam_id / "questions.json"
        if not parsed_path.exists():
            continue
        d = json.loads(parsed_path.read_text())
        if d.get("question_count", 0) == 0:
            continue
        exam_data[exam_id] = {
            "slug": info["slug"],
            "category": info["category"],
            "questions": d["questions"],
            "pc_subjects": info.get("pc_subjects", []),
        }
    print(f"Loaded {len(exam_data)} exams with questions")

    # 2. 為每個 exam 建 subjects map
    subject_id_map = {}    # (exam_id, subject_name) → subject_id
    new_subjects = []      # list of {id, name, exam_id, sort_order}
    for eid, data in exam_data.items():
        # distinct subjects from this exam's questions
        seen = set()
        idx = 1
        for q in data["questions"]:
            subj = q["source_meta"]["subject"]
            if subj in seen:
                continue
            seen.add(subj)
            sid = f"sub-{eid}-{idx:02d}"
            subject_id_map[(eid, subj)] = sid
            new_subjects.append({
                "id": sid, "name": subj, "exam_id": eid, "sort_order": idx,
            })
            idx += 1

    # 3. paper_id map
    paper_id_map = {}    # (exam_id, year, subject) → paper_id
    paper_rows = []
    for eid, data in exam_data.items():
        for q in data["questions"]:
            sm = q["source_meta"]
            yr, subj = sm["year"], sm["subject"]
            if (eid, yr, subj) in paper_id_map:
                continue
            sub_slug = slugify_subject(subj)
            pid = f"{eid}-moex-{yr}-{sub_slug}"
            paper_id_map[(eid, yr, subj)] = pid
            paper_rows.append({
                "id": pid, "exam_id": eid,
                "subject_id": subject_id_map[(eid, subj)],
                "year": yr, "subject": subj,
                "exam_name": sm.get("exam_name", ""),
                "moex": sm.get("moex", {}),
            })

    # 4. write 01_new_exams_part_NN.sql (split per 100 rows, fits Read)
    rows = []
    for i, (eid, data) in enumerate(sorted(exam_data.items())):
        slug = data["slug"]
        cat = data["category"]
        level_cn = SLUG_TO_LEVEL_CN.get(slug, slug)
        level_short = SLUG_TO_LEVEL_SHORT.get(slug, slug)
        name = f"{level_cn}－{cat}"
        short = f"{level_short} {cat}"
        desc = f"考選部 {level_cn} {cat} 類科考古題（110-114 年度），含{len(data['pc_subjects'])} 科目"
        sort_order = 200 + i
        rows.append(
            f"  ({sql_literal(eid)}, {sql_literal(name)}, {sql_literal(short)}, "
            f"{sql_literal(desc)}, 'civil', FALSE, {sort_order})"
        )
    EXAMS_BATCH = 100
    exam_batches = [rows[i:i+EXAMS_BATCH] for i in range(0, len(rows), EXAMS_BATCH)]
    for eidx, batch in enumerate(exam_batches, start=1):
        fname = f"01_new_exams_part_{eidx:02d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- W1.6 exams batch {eidx}/{len(exam_batches)} ({len(batch)})\n\n")
            f.write("INSERT INTO public.exams (id, name, short_name, description, category_id, is_available, sort_order)\nVALUES\n")
            f.write(",\n".join(batch))
            f.write("\nON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name, short_name=EXCLUDED.short_name;\n")

    # 5. write 02_new_subjects.sql (chunked)
    SUBJ_CHUNK = 200
    for cidx, base in enumerate(range(0, len(new_subjects), SUBJ_CHUNK), start=1):
        batch = new_subjects[base:base+SUBJ_CHUNK]
        fname = f"02_new_subjects_part_{cidx:02d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- W1.6 subjects batch {cidx} ({len(batch)} rows)\n\n")
            f.write("INSERT INTO public.subjects (id, name)\nVALUES\n")
            f.write(",\n".join(f"  ({sql_literal(s['id'])}, {sql_literal(s['name'])})" for s in batch))
            f.write("\nON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name;\n\n")
            f.write("INSERT INTO public.exam_subjects (exam_id, subject_id, sort_order)\n")
            f.write("SELECT v.exam_id, v.subject_id, v.sort_order FROM (VALUES\n")
            f.write(",\n".join(f"  ({sql_literal(s['exam_id'])}, {sql_literal(s['id'])}, {s['sort_order']})" for s in batch))
            f.write("\n) AS v(exam_id, subject_id, sort_order)\n")
            f.write("WHERE NOT EXISTS (SELECT 1 FROM public.exam_subjects es WHERE es.exam_id=v.exam_id AND es.subject_id=v.subject_id);\n")

    # 6. write 03_new_papers_part_NN.sql
    paper_batches = [paper_rows[i:i+PAPERS_BATCH] for i in range(0, len(paper_rows), PAPERS_BATCH)]
    for pidx, batch in enumerate(paper_batches, start=1):
        fname = f"03_new_papers_part_{pidx:02d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- W1.6 papers batch {pidx}/{len(paper_batches)} ({len(batch)})\n\n")
            f.write("INSERT INTO public.exam_papers (id, exam_id, subject_id, roc_year, paper_title, source_family, source_ref, question_count, meta, is_active)\nVALUES\n")
            rs = []
            for p in batch:
                title = f"{p['exam_id']}－{p['subject']}（{p['year']} 年度）"
                ref = {"moex_exam_code": p["moex"].get("exam_code"),
                       "moex_c": p["moex"].get("c"),
                       "moex_s": p["moex"].get("s"),
                       "moex_q": p["moex"].get("q")}
                rs.append(f"  ({sql_literal(p['id'])}, {sql_literal(p['exam_id'])}, {sql_literal(p['subject_id'])}, {p['year']}, {sql_literal(title)}, 'moex-gov-tw', {sql_literal(ref)}, 0, '{{}}'::jsonb, TRUE)")
            f.write(",\n".join(rs))
            f.write("\nON CONFLICT (id) DO UPDATE SET paper_title=EXCLUDED.paper_title, subject_id=EXCLUDED.subject_id, source_family=EXCLUDED.source_family, source_ref=EXCLUDED.source_ref, is_active=TRUE;\n")

    # 7. write 04_new_questions_part_NNNN.sql with sequential ids per exam
    seq_per_exam = defaultdict(int)
    all_q_rows = []
    for eid, data in sorted(exam_data.items()):
        for q in data["questions"]:
            sm = q["source_meta"]
            yr, subj = sm["year"], sm["subject"]
            paper_id = paper_id_map[(eid, yr, subj)]
            sub_id = subject_id_map[(eid, subj)]
            seq_per_exam[eid] += 1
            new_id = f"{eid}-moex-{seq_per_exam[eid]:05d}"
            sm2 = dict(sm)
            sm2["civil_slug"] = data["slug"]
            sm2["civil_category"] = data["category"]
            q2 = dict(q)
            q2["source_meta"] = sm2
            all_q_rows.append((new_id, eid, paper_id, sub_id, q2))

    q_batches = [all_q_rows[i:i+BATCH_SIZE] for i in range(0, len(all_q_rows), BATCH_SIZE)]
    for idx, batch in enumerate(q_batches, start=1):
        fname = f"04_new_questions_part_{idx:05d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- W1.6 questions batch {idx}/{len(q_batches)} ({len(batch)})\n\n")
            f.write("INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)\nVALUES\n")
            rs = []
            for nid, eid, paper_id, sub_id, q in batch:
                qtype = q["question_type"]
                ca = q.get("correct_answer", 0) or 0
                caj = q.get("correct_answer_json")
                opts = q.get("options") or []
                auto = q.get("auto_gradable", False)
                qtext = q["question"].replace("\x00", "")
                opts_clean = [o.replace("\x00", "") if isinstance(o, str) else o for o in opts]
                sm = q.get("source_meta") or {}
                rs.append(
                    "  ({id}, {exam_id}, {paper_id}, {subject_id}, NULL, {qtype}, {qtext}, "
                    "{options}, {ca}, {caj}, {ag}, 'official', TRUE, 1, {sm}, NULL)".format(
                        id=sql_literal(nid),
                        exam_id=sql_literal(eid),
                        paper_id=sql_literal(paper_id),
                        subject_id=sql_literal(sub_id),
                        qtype=sql_literal(qtype),
                        qtext=sql_literal(qtext),
                        options=sql_literal(opts_clean),
                        ca=sql_literal(ca),
                        caj=sql_literal(caj) if caj is not None else "NULL",
                        ag="TRUE" if auto else "FALSE",
                        sm=sql_literal(sm),
                    )
                )
            f.write(",\n".join(rs))
            f.write("\nON CONFLICT (id) DO NOTHING;\n")

    report = {
        "exams": len(exam_data),
        "subjects": len(new_subjects),
        "papers": len(paper_rows),
        "questions": len(all_q_rows),
        "subj_batches": (len(new_subjects) + SUBJ_CHUNK - 1) // SUBJ_CHUNK,
        "paper_batches": len(paper_batches),
        "q_batches": len(q_batches),
    }
    (OUT_ROOT / "report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2))

    print(f"\n=== W1.6 ingest SQL generated ===")
    print(f"  01_new_exams.sql: {len(exam_data)} exams")
    print(f"  02_new_subjects_part_01..{report['subj_batches']:02d}.sql: {len(new_subjects)} subjects")
    print(f"  03_new_papers_part_01..{report['paper_batches']:02d}.sql: {len(paper_rows)} papers")
    print(f"  04_new_questions_part_00001..{report['q_batches']:05d}.sql: {len(all_q_rows)} questions")


if __name__ == "__main__":
    main()
