#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_cap_nature_bulk.py — W1.9.4: 11 年 nature paper 灌進 prod

跑這個之前必須先：
  python3 scripts/ingest/cap_parser.py --year X --subject nature
  python3 scripts/ingest/cap_merger.py --year X --subject nature

跑這個會：
  1. 把 11 paper 的 questions UPSERT 進 DB（含 passage_parents、children）
  2. flip exam_papers.is_active=TRUE 讓 nature paper 顯示

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_cap_nature_bulk.py
"""
import json
import os
import sys
import time
import urllib.request
import urllib.error
from pathlib import Path

PROJECT_REF = "myvfboezhnzgovowhaff"
API_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"
REPO = Path(__file__).resolve().parents[2]
YEARS = [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114]
SUBJECT = "nature"
DB_SUBJECT_ID = "sub-cap-science"  # nature -> sub-cap-science


def execute_sql(sql, token):
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        API_URL, data=payload,
        headers={"Authorization": f"Bearer {token}", "Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
        method="POST",
    )
    for attempt in range(4):
        try:
            with urllib.request.urlopen(req, timeout=120) as r:
                return True, r.read().decode("utf-8")
        except urllib.error.HTTPError as e:
            body = e.read().decode("utf-8", errors="replace")[:300]
            err = f"HTTP {e.code}: {body}"
            if e.code in (429, 502, 503, 504) and attempt < 3:
                time.sleep(2 ** attempt); continue
            return False, err
        except Exception as e:
            if attempt < 3:
                time.sleep(1); continue
            return False, str(e)


def make_paper_sql(paper):
    pid = paper["id"].replace("'", "''")
    title = paper["paper_title"].replace("'", "''")
    family = paper["source_family"].replace("'", "''")
    src_ref = json.dumps(paper["source_ref"], ensure_ascii=False).replace("'", "''")
    meta = json.dumps(paper["meta"], ensure_ascii=False).replace("'", "''")
    return f"""INSERT INTO public.exam_papers (id, exam_id, subject_id, roc_year, paper_title, source_family, source_ref, meta, is_active)
VALUES ('{pid}', '{paper['exam_id']}', '{paper['subject_id']}', {paper['roc_year']}, '{title}', '{family}', '{src_ref}'::jsonb, '{meta}'::jsonb, TRUE)
ON CONFLICT (id) DO UPDATE SET paper_title=EXCLUDED.paper_title, source_ref=EXCLUDED.source_ref, meta=EXCLUDED.meta, is_active=TRUE, updated_at=now();"""


INSERT_SQL = """INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id, question_type, question_text, options,
  correct_answer, correct_answer_json, parent_question_id, media,
  source, source_meta, is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id, question_type, question_text, options,
  correct_answer, correct_answer_json, parent_question_id, media,
  source, source_meta, is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('{rows_lit}'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type=EXCLUDED.question_type, question_text=EXCLUDED.question_text,
  options=EXCLUDED.options, correct_answer=EXCLUDED.correct_answer,
  parent_question_id=EXCLUDED.parent_question_id, media=EXCLUDED.media,
  source_meta=EXCLUDED.source_meta, is_active=EXCLUDED.is_active,
  auto_gradable=EXCLUDED.auto_gradable, explanation=EXCLUDED.explanation,
  updated_at=now();"""


def chunk_rows(rows, max_rows=14):
    for i in range(0, len(rows), max_rows):
        yield rows[i:i + max_rows]


def main():
    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")

    total_q = 0
    total_p = 0
    total_papers = 0
    fails = []

    for y in YEARS:
        qpath = REPO / "content/parsed_cap" / f"{y}-{SUBJECT}" / "questions.json"
        if not qpath.exists():
            print(f"  {y}-{SUBJECT}: questions.json missing, skip")
            continue
        data = json.loads(qpath.read_text(encoding="utf-8"))
        paper = data["paper"]
        questions = data["questions"]
        passages = [q for q in questions if q["question_type"] == "reading_passage"]
        children = [q for q in questions if q["question_type"] != "reading_passage"]

        print(f"[{y}-{SUBJECT}] paper + {len(passages)} passages + {len(children)} questions ...", end=" ", flush=True)

        # 1. INSERT paper meta
        ok, info = execute_sql(make_paper_sql(paper), token)
        if not ok:
            print(f"\n  PAPER FAIL: {info[:200]}")
            fails.append((y, "paper", info))
            continue
        total_papers += 1

        # 2. INSERT passage_parents
        if passages:
            rows_lit = json.dumps(passages, ensure_ascii=False).replace("\x00", "").replace("'", "''")
            sql = INSERT_SQL.format(rows_lit=rows_lit)
            ok, info = execute_sql(sql, token)
            if not ok:
                print(f"\n  PASSAGE FAIL: {info[:200]}")
                fails.append((y, "passage", info))
                continue
            total_p += len(passages)

        # 3. INSERT questions in chunks
        chunk_ok = 0
        for chunk in chunk_rows(children, 14):
            rows_lit = json.dumps(chunk, ensure_ascii=False).replace("\x00", "").replace("'", "''")
            sql = INSERT_SQL.format(rows_lit=rows_lit)
            ok, info = execute_sql(sql, token)
            if not ok:
                print(f"\n  CHUNK FAIL: {info[:200]}")
                fails.append((y, "chunk", info))
                break
            chunk_ok += len(chunk)
        print(f"OK ({chunk_ok})", flush=True)
        total_q += chunk_ok

    print()
    print("=== 完成 ===")
    print(f"papers: {total_papers}, passages: {total_p}, questions: {total_q}")
    if fails:
        print(f"\nFAILS: {len(fails)}")
        for y, op, e in fails:
            print(f"  - {y} {op}: {e[:150]}")
        sys.exit(1)


if __name__ == "__main__":
    main()
