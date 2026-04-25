#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""moex_license_ingest_diff.py — W1.4 incremental ingest

讀 content/parsed_v2_diff/{slug}/questions.json，
產 outputs/moex_license_ingest_v2/ 下的 SQL：
  - 01_new_exams.sql (3 新 exam: structural-eng / optician / optometrist)
  - 02_new_subjects.sql (新 subjects + exam_subjects bindings)
  - 03_new_papers.sql (新 exam_papers — diff entries 對應的)
  - 04_new_questions_part_NNN.sql (BATCH_SIZE=10)

ID 策略：
  question id = {db_exam_id}-moex-{(current_max_seq + i):05d}
  → 不打亂既有 16,495 個 row
"""
from __future__ import annotations
import hashlib
import json
import re
from collections import defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_ROOT = REPO_ROOT / "content/parsed_v2_diff"
OUT_ROOT = REPO_ROOT / "outputs/moex_license_ingest_v2"
BATCH_SIZE = 10

SLUG_TO_EXAM = {
    "accountant":                 "cpa",
    "bookkeeper":                 "bookkeeper",
    "appraiser":                  "real-estate-appraiser",
    "brokers":                    "real-estate",
    "land":                       "land-agent",
    "socialworker":               "social-worker",
    "civilengineering":           "civil-engineer",
    "publichealth":               "public-health-specialist",
    "dietitian":                  "dietitian",
    "food":                       "food-tech",
    "mt":                         "medical-tech",
    "fire-equipment-engineer":    "fire-eq-eng",
    "fire-equipment-technician":  "fire-eq-tech",
    # 3 個 W1.4 新建 exam
    "structural":                 "structural-eng",
    "optician":                   "optician",
    "optometrist":                "optometrist",
}

# 從 W1.3b 完成時 DB 查到的 max(seq) per db_exam_id
EXISTING_MAX_SEQ = {
    "cpa": 1789, "bookkeeper": 1840, "real-estate-appraiser": 278,
    "real-estate": 1171, "land-agent": 112, "social-worker": 3246,
    "civil-engineer": 28, "public-health-specialist": 1094,
    "dietitian": 3937, "food-tech": 409, "medical-tech": 1326,
    "fire-eq-eng": 166, "fire-eq-tech": 1099,
    "structural-eng": 0, "optician": 0, "optometrist": 0,
}

# 從 DB 查到的既有 subjects per db_exam_id (W1.3b 已建)
# 格式: db_exam_id → {subject_name: subject_id}
EXISTING_SUBJECTS = {
    "cpa": {"中級會計學": "sub-cpa-01", "公司法、證券交易法與商業會計法": "sub-cpa-02",
            "審計學": "sub-cpa-03", "成本會計與管理會計": "sub-cpa-04",
            "稅務法規": "sub-cpa-05", "高等會計學": "sub-cpa-06"},
    "bookkeeper": {"會計學概要": "sub-bookkeeper-01", "租稅申報實務": "sub-bookkeeper-02",
                   "稅務相關法規概要": "sub-bookkeeper-03", "記帳相關法規概要": "sub-bookkeeper-04"},
    "real-estate-appraiser": {f"sub-real-estate-appraiser-0{i}": s for i, s in enumerate(
        ["不動產估價實務", "不動產估價理論", "不動產投資分析", "不動產經濟學",
         "土地利用法規", "民法物權與不動產法規"], start=1)},
    "real-estate": {"不動產估價概要": "sub-real-estate-01",
                    "不動產經紀相關法規概要": "sub-real-estate-02",
                    "土地法與土地相關稅法概要": "sub-real-estate-03",
                    "民法概要": "sub-real-estate-04"},
    "land-agent": {"土地法規": "sub-land-agent-01", "土地登記實務": "sub-land-agent-02",
                   "土地稅法規": "sub-land-agent-03", "民法概要與信託法概要": "sub-land-agent-04"},
    "social-worker": {f"sub-social-worker-0{i}": s for i, s in enumerate(
        ["人類行為與社會環境", "社會工作", "社會工作直接服務", "社會工作研究方法",
         "社會工作管理", "社會政策與社會立法"], start=1)},
    "civil-engineer": {"營建管理": "sub-civil-engineer-01"},
    "public-health-specialist": {f"sub-public-health-specialist-0{i}": s for i, s in enumerate(
        ["健康社會行為學", "流行病學", "環境與職業衛生", "生物統計學",
         "衛生法規及倫理", "衛生行政與管理"], start=1)},
    "dietitian": {f"sub-dietitian-0{i}": s for i, s in enumerate(
        ["公共衛生營養學", "團體膳食設計與管理", "營養學", "生理學與生物化學",
         "膳食療養學", "食品衛生與安全"], start=1)},
    "food-tech": {f"sub-food-tech-0{i}": s for i, s in enumerate(
        ["食品分析與檢驗", "食品加工學", "食品化學", "食品工廠管理",
         "食品微生物學", "食品衛生安全與法規"], start=1)},
    "medical-tech": {f"sub-medical-tech-0{i}": s for i, s in enumerate(
        ["生物化學與臨床生化學", "臨床生理學與病理學", "臨床血液學與血庫學",
         "臨床血清免疫學與臨床病毒學"], start=1)},
    "fire-eq-eng": {"消防法規": "sub-fire-eq-eng-01",
                    "警報與避難系統消防安全設備概要": "sub-fire-eq-eng-02"},
    "fire-eq-tech": {"水與化學系統消防安全設備概要": "sub-fire-eq-tech-01",
                     "消防法規": "sub-fire-eq-tech-02",
                     "消防法規概要": "sub-fire-eq-tech-03",
                     "警報與避難系統消防安全設備概要": "sub-fire-eq-tech-04"},
    "structural-eng": {},
    "optician": {},
    "optometrist": {},
}
# Above EXISTING_SUBJECTS uses dict comprehension that produced wrong key/val order — fix:
EXISTING_SUBJECTS_FIX = {
    "real-estate-appraiser": {"不動產估價實務": "sub-real-estate-appraiser-01",
                              "不動產估價理論": "sub-real-estate-appraiser-02",
                              "不動產投資分析": "sub-real-estate-appraiser-03",
                              "不動產經濟學": "sub-real-estate-appraiser-04",
                              "土地利用法規": "sub-real-estate-appraiser-05",
                              "民法物權與不動產法規": "sub-real-estate-appraiser-06"},
    "social-worker": {"人類行為與社會環境": "sub-social-worker-01",
                      "社會工作": "sub-social-worker-02",
                      "社會工作直接服務": "sub-social-worker-03",
                      "社會工作研究方法": "sub-social-worker-04",
                      "社會工作管理": "sub-social-worker-05",
                      "社會政策與社會立法": "sub-social-worker-06"},
    "public-health-specialist": {"健康社會行為學": "sub-public-health-specialist-01",
                                 "流行病學": "sub-public-health-specialist-02",
                                 "環境與職業衛生": "sub-public-health-specialist-03",
                                 "生物統計學": "sub-public-health-specialist-04",
                                 "衛生法規及倫理": "sub-public-health-specialist-05",
                                 "衛生行政與管理": "sub-public-health-specialist-06"},
    "dietitian": {"公共衛生營養學": "sub-dietitian-01",
                  "團體膳食設計與管理": "sub-dietitian-02",
                  "營養學": "sub-dietitian-03",
                  "生理學與生物化學": "sub-dietitian-04",
                  "膳食療養學": "sub-dietitian-05",
                  "食品衛生與安全": "sub-dietitian-06"},
    "food-tech": {"食品分析與檢驗": "sub-food-tech-01",
                  "食品加工學": "sub-food-tech-02",
                  "食品化學": "sub-food-tech-03",
                  "食品工廠管理": "sub-food-tech-04",
                  "食品微生物學": "sub-food-tech-05",
                  "食品衛生安全與法規": "sub-food-tech-06"},
    "medical-tech": {"生物化學與臨床生化學": "sub-medical-tech-01",
                     "臨床生理學與病理學": "sub-medical-tech-02",
                     "臨床血液學與血庫學": "sub-medical-tech-03",
                     "臨床血清免疫學與臨床病毒學": "sub-medical-tech-04"},
}
EXISTING_SUBJECTS.update(EXISTING_SUBJECTS_FIX)

# 新建 exam metadata
NEW_EXAMS_W14 = {
    "structural-eng": {"name": "結構工程技師", "short_name": "結構技師",
                       "description": "結構工程專業專技高考"},
    "optician": {"name": "驗光生", "short_name": "驗光生",
                 "description": "驗光生專技普考"},
    "optometrist": {"name": "驗光師", "short_name": "驗光師",
                    "description": "驗光師專技高考"},
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

    # 1. 收集 diff data
    slug_data = {}
    for slug in SLUG_TO_EXAM:
        p = PARSED_ROOT / slug / "questions.json"
        if not p.exists():
            print(f"[skip] {slug}: no parsed_v2_diff file")
            continue
        d = json.loads(p.read_text())
        if d.get("question_count", 0) == 0:
            continue
        slug_data[slug] = d

    # 2. Build subject_id_map (existing + new) & papers
    subject_id_map = {}    # (db_exam_id, subject_name) → subject_id
    new_subjects = []      # list of {id, name, exam_id, sort_order}
    paper_id_map = {}
    paper_rows = []

    for slug, d in slug_data.items():
        db_exam = SLUG_TO_EXAM[slug]
        existing = EXISTING_SUBJECTS.get(db_exam, {})
        # next subject seq
        next_seq = 1 + max(
            [int(re.search(r'-(\d+)$', sid).group(1))
             for sid in existing.values() if re.search(r'-\d+$', sid)] or [0]
        )

        # collect distinct subjects
        seen_subjects = set()
        for q in d["questions"]:
            sm = q["source_meta"]
            subj = sm["subject"]
            yr = sm["year"]
            if (db_exam, subj) in subject_id_map:
                continue
            if subj in existing:
                subject_id_map[(db_exam, subj)] = existing[subj]
            else:
                # 為新 subject 建 id
                if subj in seen_subjects:
                    continue
                sid = f"sub-{db_exam}-{next_seq:02d}"
                next_seq += 1
                subject_id_map[(db_exam, subj)] = sid
                new_subjects.append({
                    "id": sid, "name": subj,
                    "exam_id": db_exam, "sort_order": next_seq - 1,
                })
                seen_subjects.add(subj)
                existing[subj] = sid

        # collect papers
        for q in d["questions"]:
            sm = q["source_meta"]
            yr, subj = sm["year"], sm["subject"]
            if (slug, yr, subj) in paper_id_map:
                continue
            sub_slug = slugify_subject(subj)
            pid = f"{db_exam}-moex-{yr}-{sub_slug}"
            paper_id_map[(slug, yr, subj)] = pid
            paper_rows.append({
                "id": pid, "db_exam": db_exam,
                "subject_id": subject_id_map[(db_exam, subj)],
                "year": yr, "subject": subj,
                "exam_name": sm.get("exam_name", ""),
                "moex": sm.get("moex", {}),
            })

    # 3. write 01_new_exams.sql
    with (OUT_ROOT / "01_new_exams.sql").open("w") as f:
        f.write("-- W1.4 new exams: structural-eng / optician / optometrist\n\n")
        f.write("INSERT INTO public.exams (id, name, short_name, description, category_id, is_available, sort_order)\n")
        f.write("VALUES\n")
        rows = []
        for i, (eid, m) in enumerate(NEW_EXAMS_W14.items()):
            rows.append(f"  ({sql_literal(eid)}, {sql_literal(m['name'])}, {sql_literal(m['short_name'])}, "
                        f"{sql_literal(m['description'])}, 'prof-exam', FALSE, {110 + i})")
        f.write(",\n".join(rows))
        f.write("\nON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name, short_name=EXCLUDED.short_name;\n")

    # 4. write 02_new_subjects.sql
    with (OUT_ROOT / "02_new_subjects.sql").open("w") as f:
        f.write(f"-- W1.4 new subjects ({len(new_subjects)} rows)\n\n")
        f.write("INSERT INTO public.subjects (id, name)\nVALUES\n")
        rows = [f"  ({sql_literal(s['id'])}, {sql_literal(s['name'])})" for s in new_subjects]
        f.write(",\n".join(rows))
        f.write("\nON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name;\n\n")
        # exam_subjects bindings
        f.write("INSERT INTO public.exam_subjects (exam_id, subject_id, sort_order)\n")
        f.write("SELECT v.exam_id, v.subject_id, v.sort_order FROM (VALUES\n")
        rows = [f"  ({sql_literal(s['exam_id'])}, {sql_literal(s['id'])}, {s['sort_order']})" for s in new_subjects]
        f.write(",\n".join(rows))
        f.write("\n) AS v(exam_id, subject_id, sort_order)\n")
        f.write("WHERE NOT EXISTS (SELECT 1 FROM public.exam_subjects es "
                "WHERE es.exam_id=v.exam_id AND es.subject_id=v.subject_id);\n")

    # 5. write 03_new_papers.sql (chunked by 100)
    PAPERS_BATCH = 100
    paper_batches = [paper_rows[i:i+PAPERS_BATCH] for i in range(0, len(paper_rows), PAPERS_BATCH)]
    for pidx, batch in enumerate(paper_batches, start=1):
        fname = f"03_new_papers_part_{pidx:02d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- W1.4 new papers batch {pidx}/{len(paper_batches)} ({len(batch)} rows)\n\n")
            f.write("INSERT INTO public.exam_papers "
                    "(id, exam_id, subject_id, roc_year, paper_title, source_family, source_ref, "
                    "question_count, meta, is_active)\nVALUES\n")
            rows = []
            for p in batch:
                title = f"{NEW_EXAMS_W14.get(p['db_exam'], {}).get('name', p['db_exam'])}－{p['subject']}（{p['year']} 年度）"
                source_ref = {
                    "moex_exam_code": p["moex"].get("exam_code"),
                    "moex_c": p["moex"].get("c"),
                    "moex_s": p["moex"].get("s"),
                    "moex_q": p["moex"].get("q"),
                }
                rows.append(
                    f"  ({sql_literal(p['id'])}, {sql_literal(p['db_exam'])}, "
                    f"{sql_literal(p['subject_id'])}, {p['year']}, "
                    f"{sql_literal(title)}, 'moex-gov-tw', {sql_literal(source_ref)}, "
                    f"0, '{{}}'::jsonb, TRUE)"
                )
            f.write(",\n".join(rows))
            f.write("\nON CONFLICT (id) DO UPDATE SET paper_title=EXCLUDED.paper_title, "
                    "subject_id=EXCLUDED.subject_id, source_family=EXCLUDED.source_family, "
                    "source_ref=EXCLUDED.source_ref, is_active=TRUE;\n")

    # 6. assign question IDs incrementally + write 04_new_questions_part_NNN.sql
    seq_per_exam = dict(EXISTING_MAX_SEQ)
    all_q_rows = []
    for slug, d in slug_data.items():
        db_exam = SLUG_TO_EXAM[slug]
        for q in d["questions"]:
            sm = q["source_meta"]
            yr, subj = sm["year"], sm["subject"]
            paper_id = paper_id_map[(slug, yr, subj)]
            sub_id = subject_id_map[(db_exam, subj)]
            seq_per_exam[db_exam] += 1
            new_id = f"{db_exam}-moex-{seq_per_exam[db_exam]:05d}"
            # 也加 slug / db_exam_id 進 source_meta 方便追蹤
            sm = dict(sm)
            sm["slug"] = slug
            sm["db_exam_id"] = db_exam
            q2 = dict(q)
            q2["source_meta"] = sm
            all_q_rows.append((new_id, db_exam, paper_id, sub_id, q2))

    q_batches = [all_q_rows[i:i+BATCH_SIZE] for i in range(0, len(all_q_rows), BATCH_SIZE)]
    for idx, batch in enumerate(q_batches, start=1):
        fname = f"04_new_questions_part_{idx:04d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- W1.4 new questions batch {idx}/{len(q_batches)} ({len(batch)})\n\n")
            f.write("INSERT INTO public.questions "
                    "(id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, "
                    "options, correct_answer, correct_answer_json, auto_gradable, source, "
                    "is_active, version, source_meta, explanation)\nVALUES\n")
            rows = []
            for nid, db_exam, paper_id, sub_id, q in batch:
                qtype = q["question_type"]
                ca = q.get("correct_answer", 0) or 0
                caj = q.get("correct_answer_json")
                opts = q.get("options") or []
                auto = q.get("auto_gradable", False)
                # 清掉 NULL byte 與 \u0000 escape — Postgres jsonb 拒絕
                qtext = q["question"].replace("\x00", "")
                opts_clean = [o.replace("\x00", "") if isinstance(o, str) else o for o in opts]
                sm = q.get("source_meta") or {}

                rows.append(
                    "  ({id}, {exam_id}, {paper_id}, {subject_id}, NULL, {qtype}, {qtext}, "
                    "{options}, {ca}, {caj}, {ag}, 'official', TRUE, 1, {sm}, NULL)".format(
                        id=sql_literal(nid),
                        exam_id=sql_literal(db_exam),
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
            f.write(",\n".join(rows))
            f.write("\nON CONFLICT (id) DO NOTHING;\n")

    # 7. report
    report = {
        "new_exams": list(NEW_EXAMS_W14.keys()),
        "new_subjects": len(new_subjects),
        "new_papers": len(paper_rows),
        "new_questions": len(all_q_rows),
        "q_batches": len(q_batches),
        "paper_batches": len(paper_batches),
        "per_slug": {slug: d["question_count"] for slug, d in slug_data.items()},
    }
    (OUT_ROOT / "report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2))

    print(f"\n=== W1.4 ingest SQL generated ===")
    print(f"  01_new_exams.sql: {len(NEW_EXAMS_W14)} exams")
    print(f"  02_new_subjects.sql: {len(new_subjects)} subjects + bindings")
    print(f"  03_new_papers_part_01..{len(paper_batches):02d}.sql: {len(paper_rows)} papers")
    print(f"  04_new_questions_part_0001..{len(q_batches):04d}.sql: {len(all_q_rows)} questions")
    print(f"\nPer slug:")
    for slug, d in slug_data.items():
        print(f"  {slug:<28} → {SLUG_TO_EXAM[slug]:<25} q={d['question_count']:6}")


if __name__ == "__main__":
    main()
