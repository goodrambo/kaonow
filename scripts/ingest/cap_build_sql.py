#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
cap_build_sql.py v0.1 (2026-04-26, Wave 1.9)

讀 questions.json (cap_merger.py 產出)，輸出可直接 apply 的 SQL：
  - INSERT 1 row into exam_papers
  - INSERT N rows into questions（用 jsonb_to_recordset，1 statement 全進去）

用法：
  python scripts/ingest/cap_build_sql.py --year 114 --subject chinese
  python scripts/ingest/cap_build_sql.py --year 114 --subject chinese --out-file outputs/cap_114_chinese.sql
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Dict, List

REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_DIR = REPO_ROOT / "content/parsed_cap"


def sql_quote(s):
    """SQL string literal — single quotes doubled."""
    if s is None:
        return "NULL"
    return "'" + str(s).replace("'", "''") + "'"


def jsonb_literal(obj) -> str:
    """產出 jsonb 字面量 'json_string'::jsonb，nested 字典正確序列化"""
    if obj is None:
        return "NULL"
    s = json.dumps(obj, ensure_ascii=False)
    # SQL escape：single quote → ''
    return "'" + s.replace("'", "''") + "'::jsonb"


def build_sql(year: int, subject: str) -> str:
    qpath = PARSED_DIR / f"{year}-{subject}" / "questions.json"
    if not qpath.exists():
        raise FileNotFoundError(f"merger output not found: {qpath}")
    data = json.loads(qpath.read_text(encoding="utf-8"))
    paper = data["paper"]
    questions = data["questions"]

    parts: List[str] = []
    parts.append(
        "-- cap_build_sql.py v0.1\n"
        f"-- year={year} subject={subject} paper_id={paper['id']}\n"
        f"-- {len(questions)} question records ({data['stats']['active']} active)\n"
    )

    # === exam_paper ===
    # 注意：year 是 generated column（roc_year + 1911）— 不要 INSERT
    parts.append(f"""
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  {sql_quote(paper['id'])},
  {sql_quote(paper['exam_id'])},
  {sql_quote(paper['subject_id'])},
  {paper['roc_year']},
  {sql_quote(paper['paper_title'])},
  {sql_quote(paper['source_family'])},
  {jsonb_literal(paper['source_ref'])},
  {jsonb_literal(paper['meta'])},
  TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title,
  source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta,
  updated_at = now();
""")

    # === questions（用 jsonb_to_recordset 批次）===
    # passage parents 必須先 insert，再 insert 子題
    parents = [q for q in questions if q["question_type"] == "reading_passage"]
    children = [q for q in questions if q["question_type"] != "reading_passage"]

    def gen_insert(rows: List[Dict], label: str) -> str:
        if not rows:
            return ""
        # 序列化成 jsonb 單一字串
        rows_json = json.dumps(rows, ensure_ascii=False)
        rows_lit = "'" + rows_json.replace("'", "''") + "'::jsonb"
        return f"""
-- {label}: {len(rows)} rows
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
  is_active boolean, auto_gradable boolean, difficulty int,
  explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer,
  correct_answer_json = EXCLUDED.correct_answer_json,
  parent_question_id = EXCLUDED.parent_question_id,
  media = EXCLUDED.media,
  source_meta = EXCLUDED.source_meta,
  is_active = EXCLUDED.is_active,
  auto_gradable = EXCLUDED.auto_gradable,
  explanation = EXCLUDED.explanation,
  updated_at = now();
"""

    parts.append(gen_insert(parents, "passage parents"))
    parts.append(gen_insert(children, "single + child questions"))

    return "\n".join(parts)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True)
    ap.add_argument("--out-file", default=None)
    args = ap.parse_args()

    sql = build_sql(args.year, args.subject)
    if args.out_file:
        out_path = Path(args.out_file)
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(sql, encoding="utf-8")
        print(f"wrote {out_path}", file=sys.stderr)
    else:
        sys.stdout.write(sql)


if __name__ == "__main__":
    main()
