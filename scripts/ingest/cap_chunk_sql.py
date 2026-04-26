#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_chunk_sql.py — 把 cap {year}-{subject}/questions.json 切成多個小 SQL 檔

每 chunk ~14 row，避免 MCP execute_sql 單次 payload 過大。
輸出到 outputs/cap_{year}_{subject}_chunks/

用法：
  python3 scripts/ingest/cap_chunk_sql.py --year 114 --subject society
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_DIR = REPO_ROOT / "content" / "parsed_cap"
OUTPUTS_DIR = REPO_ROOT / "outputs"
BATCH = 14


def jsonb_lit(obj):
    return "'" + json.dumps(obj, ensure_ascii=False).replace("'", "''").replace("\x00", "") + "'::jsonb"


def sql_str(s):
    if s is None:
        return "NULL"
    return "'" + str(s).replace("'", "''").replace("\x00", "") + "'"


def gen_paper_sql(paper):
    return f"""-- paper {paper['id']}
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  {sql_str(paper['id'])}, {sql_str(paper['exam_id'])}, {sql_str(paper['subject_id'])},
  {paper['roc_year']}, {sql_str(paper['paper_title'])},
  {sql_str(paper['source_family'])},
  {jsonb_lit(paper['source_ref'])}, {jsonb_lit(paper['meta'])}, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();"""


def gen_questions_insert(rows, label):
    rows_lit = jsonb_lit(rows)
    return f"""-- {label}: {len(rows)} rows
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset({rows_lit}) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_text = EXCLUDED.question_text, options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer, correct_answer_json = EXCLUDED.correct_answer_json,
  parent_question_id = EXCLUDED.parent_question_id, media = EXCLUDED.media,
  source_meta = EXCLUDED.source_meta,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  explanation = EXCLUDED.explanation, updated_at = now();"""


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True)
    ap.add_argument("--batch", type=int, default=BATCH)
    args = ap.parse_args()

    qpath = PARSED_DIR / f"{args.year}-{args.subject}" / "questions.json"
    if not qpath.exists():
        raise SystemExit(f"merger output not found: {qpath}")

    data = json.loads(qpath.read_text(encoding="utf-8"))
    paper = data["paper"]
    all_q = data["questions"]
    parents = [q for q in all_q if q["question_type"] == "reading_passage"]
    children = [q for q in all_q if q["question_type"] != "reading_passage"]

    out_dir = OUTPUTS_DIR / f"cap_{args.year}_{args.subject}_chunks"
    out_dir.mkdir(parents=True, exist_ok=True)
    # 清舊 chunks
    for f in out_dir.glob("*.sql"):
        f.unlink()

    files = []
    # 1. paper
    p = out_dir / "01_paper.sql"
    p.write_text(gen_paper_sql(paper), encoding="utf-8")
    files.append(p)

    # 2. parents
    if parents:
        p = out_dir / "02_parents.sql"
        p.write_text(gen_questions_insert(parents, "passage parents"), encoding="utf-8")
        files.append(p)

    # 3+. children batches
    for i in range(0, len(children), args.batch):
        batch = children[i:i + args.batch]
        fname = f"03_questions_{i // args.batch + 1:02d}.sql"
        p = out_dir / fname
        p.write_text(
            gen_questions_insert(batch, f"questions batch {i // args.batch + 1}"),
            encoding="utf-8",
        )
        files.append(p)

    print(f"=== cap-{args.year}-{args.subject} ===")
    print(f"paper: 1, parents: {len(parents)}, children: {len(children)}")
    print(f"切成 {len(files)} 個檔到 {out_dir}/:")
    for f in files:
        print(f"  {f.name:32s}  {f.stat().st_size:>7,} bytes")


if __name__ == "__main__":
    main()
