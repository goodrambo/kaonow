#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""moex_license_ingest.py — Wave 1.3b' ingest

讀 content/parsed/{slug}/questions.json，產生：
  - outputs/moex_license_ingest/01_exams_seed.sql
      新 exams (5) + 新 exam_subjects + sub-* rows
  - outputs/moex_license_ingest/02_papers.sql
      exam_papers INSERT (每個 (db_exam_id, year, subject) 一張 paper)
  - outputs/moex_license_ingest/03_questions_part_NN.sql
      questions INSERT, BATCH_SIZE=50

slug → db_exam_id mapping：
  既有 8: cpa/bookkeeper/real-estate-appraiser/real-estate/land-agent/social-worker/civil-engineer/public-health-specialist
  新建 5: dietitian/food-tech/medical-tech/fire-eq-eng/fire-eq-tech

paper_id pattern: {db_exam_id}-moex-{year}-{subject_short}
subject_id pattern: sub-{db_exam_id}-{seq}（seq 為 exam 內 subject 序號）
"""
from __future__ import annotations
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_ROOT = REPO_ROOT / "content/parsed"
OUT_ROOT = REPO_ROOT / "outputs/moex_license_ingest"
BATCH_SIZE = 10

# slug → DB exam_id（既有或新建）
SLUG_TO_EXAM = {
    "accountant":                 "cpa",
    "bookkeeper":                 "bookkeeper",
    "appraiser":                  "real-estate-appraiser",
    "brokers":                    "real-estate",
    "land":                       "land-agent",
    "socialworker":               "social-worker",
    "civilengineering":           "civil-engineer",
    "publichealth":               "public-health-specialist",
    # 新建 exams
    "dietitian":                  "dietitian",
    "food":                       "food-tech",
    "mt":                         "medical-tech",
    "fire-equipment-engineer":    "fire-eq-eng",
    "fire-equipment-technician":  "fire-eq-tech",
}

# 新建 exam metadata
NEW_EXAMS = {
    "dietitian": {
        "name": "營養師考試",
        "short_name": "營養師",
        "description": "公共衛生與營養專業專技高考",
    },
    "food-tech": {
        "name": "食品技師",
        "short_name": "食品技師",
        "description": "食品科學與工程專技高考",
    },
    "medical-tech": {
        "name": "醫事檢驗師",
        "short_name": "醫檢師",
        "description": "醫事檢驗專業專技高考",
    },
    "fire-eq-eng": {
        "name": "消防設備師",
        "short_name": "消防設備師",
        "description": "消防安全設備專技高考",
    },
    "fire-eq-tech": {
        "name": "消防設備士",
        "short_name": "消防設備士",
        "description": "消防安全設備專技普考",
    },
}


def sql_literal(v) -> str:
    if v is None:
        return "NULL"
    if isinstance(v, bool):
        return "TRUE" if v else "FALSE"
    if isinstance(v, (int, float)):
        return repr(v)
    if isinstance(v, (list, dict)):
        return "'" + json.dumps(v, ensure_ascii=False).replace("'", "''") + "'::jsonb"
    return "'" + str(v).replace("'", "''") + "'"


def slugify_subject(s: str) -> str:
    """中文 subject 名 → 短 slug（用於 paper_id 後綴）。
    無法穩定 slug 就用 hash 後 6 char。"""
    import hashlib
    return hashlib.md5(s.encode("utf-8")).hexdigest()[:8]


def main():
    OUT_ROOT.mkdir(parents=True, exist_ok=True)

    # === 1. Collect data per slug ===
    slug_data = {}     # slug → {questions: [...], subjects: set, papers: dict}
    for slug in SLUG_TO_EXAM:
        p = PARSED_ROOT / slug / "questions.json"
        if not p.exists():
            print(f"[skip] {slug}: no parsed file")
            continue
        d = json.loads(p.read_text())
        if d.get("question_count", 0) == 0:
            print(f"[skip] {slug}: 0 questions")
            continue
        # collect subjects + papers
        subjects = set()
        papers = {}  # (year, subject) → {q_count, source_meta sample}
        for q in d["questions"]:
            sm = q["source_meta"]
            subj = sm["subject"]
            yr = sm["year"]
            subjects.add(subj)
            key = (yr, subj)
            if key not in papers:
                papers[key] = {
                    "year": yr,
                    "subject": subj,
                    "exam_name": sm.get("exam_name", ""),
                    "moex": sm.get("moex", {}),
                    "q_count": 0,
                }
            papers[key]["q_count"] += 1
        slug_data[slug] = {
            "questions": d["questions"],
            "subjects": sorted(subjects),
            "papers": papers,
        }

    # === 2. Build subject_id map per slug ===
    # subject_id = sub-{db_exam_id}-{seq:02d}
    # 同 subject 名跨 exam 不共用 subject_id（簡單直接）
    subject_id_map = {}    # (slug, subject_name) → subject_id
    subjects_to_create = []  # list of {id, name, exam_id, sort_order}
    for slug, data in slug_data.items():
        db_exam = SLUG_TO_EXAM[slug]
        for idx, subj in enumerate(data["subjects"], start=1):
            sid = f"sub-{db_exam}-{idx:02d}"
            subject_id_map[(slug, subj)] = sid
            subjects_to_create.append({
                "id": sid,
                "name": subj,
                "exam_id": db_exam,
                "sort_order": idx,
                "source_slug": slug,
            })

    # === 3. paper_id map ===
    paper_id_map = {}   # (slug, year, subject) → paper_id
    paper_rows = []     # list of {id, db_exam_id, year, subject, subject_id, q_count, ...}
    for slug, data in slug_data.items():
        db_exam = SLUG_TO_EXAM[slug]
        for (year, subj), p in data["papers"].items():
            sub_slug = slugify_subject(subj)
            pid = f"{db_exam}-moex-{year}-{sub_slug}"
            paper_id_map[(slug, year, subj)] = pid
            paper_rows.append({
                "id": pid,
                "db_exam_id": db_exam,
                "subject_id": subject_id_map[(slug, subj)],
                "year": year,
                "subject": subj,
                "exam_name": p["exam_name"],
                "moex": p["moex"],
                "q_count": p["q_count"],
                "source_slug": slug,
            })

    # === 4. Write 01_exams_seed.sql ===
    with (OUT_ROOT / "01_exams_seed.sql").open("w") as f:
        f.write("-- moex_license_ingest 01_exams_seed (W1.3b')\n")
        f.write("-- 5 個新 exams（dietitian/food-tech/medical-tech/fire-eq-eng/fire-eq-tech）\n")
        f.write("-- + N 個 sub-* rows + exam_subjects bindings\n\n")

        # exams INSERT (新 5)
        exams_to_create = [eid for eid in NEW_EXAMS if eid in {SLUG_TO_EXAM[s] for s in slug_data}]
        if exams_to_create:
            f.write("-- 1. 新 exams\n")
            f.write("INSERT INTO public.exams (id, name, short_name, description, category_id, is_available, sort_order)\n")
            f.write("VALUES\n")
            rows = []
            for i, eid in enumerate(exams_to_create):
                meta = NEW_EXAMS[eid]
                rows.append(
                    f"  ({sql_literal(eid)}, {sql_literal(meta['name'])}, {sql_literal(meta['short_name'])}, "
                    f"{sql_literal(meta['description'])}, 'prof-exam', FALSE, {100 + i})"
                )
            f.write(",\n".join(rows))
            f.write("\nON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name, short_name=EXCLUDED.short_name;\n\n")

        # subjects INSERT — 全部 slug 的所有 subject
        f.write("-- 2. subjects (per (exam, subject))\n")
        f.write("INSERT INTO public.subjects (id, name)\nVALUES\n")
        rows = []
        seen_sids = set()
        for s in subjects_to_create:
            if s["id"] in seen_sids:
                continue
            seen_sids.add(s["id"])
            rows.append(f"  ({sql_literal(s['id'])}, {sql_literal(s['name'])})")
        f.write(",\n".join(rows))
        f.write("\nON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name;\n\n")

        # exam_subjects bindings
        f.write("-- 3. exam_subjects bindings\n")
        f.write("INSERT INTO public.exam_subjects (exam_id, subject_id, sort_order)\nVALUES\n")
        rows = []
        for s in subjects_to_create:
            rows.append(f"  ({sql_literal(s['exam_id'])}, {sql_literal(s['id'])}, {s['sort_order']})")
        f.write(",\n".join(rows))
        f.write("\nON CONFLICT (exam_id, subject_id) DO NOTHING;\n")

    # === 5. Write 02_papers_part_NN.sql (BATCH_SIZE=100 papers/file) ===
    PAPERS_BATCH = 100
    paper_batches = [paper_rows[i:i + PAPERS_BATCH] for i in range(0, len(paper_rows), PAPERS_BATCH)]
    for pidx, batch in enumerate(paper_batches, start=1):
        fname = f"02_papers_part_{pidx:02d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- moex_license_ingest 02_papers batch {pidx}/{len(paper_batches)} ({len(batch)} rows)\n\n")
            f.write("INSERT INTO public.exam_papers "
                    "(id, exam_id, subject_id, roc_year, paper_title, source_family, source_ref, "
                    "question_count, meta, is_active)\nVALUES\n")
            rows = []
            for p in batch:
                title = f"{NEW_EXAMS.get(p['db_exam_id'], {}).get('name', p['db_exam_id'])}－{p['subject']}（{p['year']} 年度）"
                source_ref = {
                    "moex_exam_code": p["moex"].get("exam_code"),
                    "moex_c": p["moex"].get("c"),
                    "moex_s": p["moex"].get("s"),
                    "moex_q": p["moex"].get("q"),
                }
                rows.append(
                    f"  ({sql_literal(p['id'])}, {sql_literal(p['db_exam_id'])}, "
                    f"{sql_literal(p['subject_id'])}, {p['year']}, "
                    f"{sql_literal(title)}, 'moex-gov-tw', {sql_literal(source_ref)}, "
                    f"0, '{{}}'::jsonb, TRUE)"
                )
            f.write(",\n".join(rows))
            f.write(
                "\nON CONFLICT (id) DO UPDATE SET "
                "paper_title=EXCLUDED.paper_title, "
                "subject_id=EXCLUDED.subject_id, "
                "source_family=EXCLUDED.source_family, "
                "source_ref=EXCLUDED.source_ref, "
                "is_active=TRUE;\n"
            )

    # === 6. Write 03_questions_part_NN.sql ===
    all_qs = []  # (slug, db_exam_id, paper_id, subject_id, q)
    for slug, data in slug_data.items():
        db_exam = SLUG_TO_EXAM[slug]
        for q in data["questions"]:
            sm = q["source_meta"]
            yr, subj = sm["year"], sm["subject"]
            paper_id = paper_id_map[(slug, yr, subj)]
            sub_id = subject_id_map[(slug, subj)]
            all_qs.append((slug, db_exam, paper_id, sub_id, q))

    # 重編 question id 用 db_exam_id 作 prefix（唯一）
    # 同一 db_exam_id 下流水 (因為 8 既有 exam 已有 question 但 wave1 ntpc 不會撞到 prof-exam)
    # 為避免 collision，用 {db_exam_id}-moex-{seq:05d}
    seq_per_exam = defaultdict(int)
    final_q_rows = []
    for slug, db_exam, paper_id, sub_id, q in all_qs:
        seq_per_exam[db_exam] += 1
        new_id = f"{db_exam}-moex-{seq_per_exam[db_exam]:05d}"
        final_q_rows.append((new_id, db_exam, paper_id, sub_id, q))

    batches = [final_q_rows[i:i + BATCH_SIZE] for i in range(0, len(final_q_rows), BATCH_SIZE)]
    for idx, batch in enumerate(batches, start=1):
        fname = f"03_questions_part_{idx:03d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- moex_license_ingest questions batch {idx}/{len(batches)} ({len(batch)} rows)\n\n")
            f.write(
                "INSERT INTO public.questions "
                "(id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, "
                "options, correct_answer, correct_answer_json, auto_gradable, source, "
                "is_active, version, source_meta, explanation)\nVALUES\n"
            )
            rows = []
            for new_id, db_exam, paper_id, sub_id, q in batch:
                qtype = q["question_type"]
                ca = q.get("correct_answer", 0) or 0
                caj = q.get("correct_answer_json")
                opts = q.get("options") or []
                auto = q.get("auto_gradable", False)
                sm = q.get("source_meta") or {}
                # 把 publiccom slug 也記到 source_meta 方便日後追蹤
                sm = dict(sm)
                sm["slug"] = q.get("exam_id")  # 原 slug
                sm["db_exam_id"] = db_exam
                rows.append(
                    "  ({id}, {exam_id}, {paper_id}, {subject_id}, NULL, {qtype}, {qtext}, "
                    "{options}, {ca}, {caj}, {ag}, 'official', TRUE, 1, {sm}, NULL)".format(
                        id=sql_literal(new_id),
                        exam_id=sql_literal(db_exam),
                        paper_id=sql_literal(paper_id),
                        subject_id=sql_literal(sub_id),
                        qtype=sql_literal(qtype),
                        qtext=sql_literal(q["question"]),
                        options=sql_literal(opts),
                        ca=sql_literal(ca),
                        caj=sql_literal(caj) if caj is not None else "NULL",
                        ag="TRUE" if auto else "FALSE",
                        sm=sql_literal(sm),
                    )
                )
            f.write(",\n".join(rows))
            f.write("\nON CONFLICT (id) DO NOTHING;\n")

    # === 7. report ===
    report = {
        "slugs_processed": list(slug_data.keys()),
        "new_exams": exams_to_create if 'exams_to_create' in locals() else [],
        "subjects": len(subjects_to_create),
        "papers": len(paper_rows),
        "questions": len(final_q_rows),
        "batches": len(batches),
        "per_slug": {
            slug: {
                "subjects": len(d["subjects"]),
                "papers": len(d["papers"]),
                "questions": len(d["questions"]),
            } for slug, d in slug_data.items()
        }
    }
    (OUT_ROOT / "report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2))

    print(f"\n=== Wrote outputs/moex_license_ingest/ ===")
    print(f"  01_exams_seed.sql: {len(exams_to_create)} new exams + {len(subjects_to_create)} subjects")
    print(f"  02_papers.sql: {len(paper_rows)} exam_papers")
    print(f"  03_questions_part_001..{len(batches):03d}.sql: {len(final_q_rows)} questions in {len(batches)} batches")
    print(f"\nPer-slug:")
    for slug in slug_data:
        d = slug_data[slug]
        db_exam = SLUG_TO_EXAM[slug]
        print(f"  {slug:<28} → {db_exam:<25} q={len(d['questions']):5} papers={len(d['papers']):3} subjects={len(d['subjects']):2}")


if __name__ == "__main__":
    main()
