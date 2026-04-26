#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_cap_math_bulk.py — W1.9.3: 把 11 年 math paper 用新 id schema 灌進 prod

新 id schema：
  - 選擇題: cap-{year}-math-{qnum:03d} （與舊 schema 同）
  - 非選擇題 (essay): cap-{year}-math-essay-{qnum:03d} （新 prefix 避免衝突）

跑這個之前必須先：
  python3 scripts/ingest/cap_merger.py --year X --subject math   # 11 年都做完

跑這個會：
  1. 把 11 paper 的 questions UPSERT 進 DB（包含 essay 題用新 id）
  2. flip exam_papers.is_active=TRUE 讓 math paper 重新顯示
  3. 留下舊的衝突 row（cap-{year}-math-001 essay-shadowed），不去動

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_cap_math_bulk.py
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


def execute_sql(sql, token):
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        API_URL,
        data=payload,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
            "User-Agent": "Mozilla/5.0",
        },
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
                time.sleep(2 ** attempt)
                continue
            return False, err
        except Exception as e:
            if attempt < 3:
                time.sleep(1)
                continue
            return False, str(e)


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
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer,
  parent_question_id = EXCLUDED.parent_question_id,
  media = EXCLUDED.media,
  source_meta = EXCLUDED.source_meta,
  is_active = EXCLUDED.is_active,
  auto_gradable = EXCLUDED.auto_gradable,
  explanation = EXCLUDED.explanation,
  updated_at = now();"""


def chunk_rows(rows, max_rows=14):
    """切 chunk，每 chunk 最多 N 行"""
    for i in range(0, len(rows), max_rows):
        yield rows[i:i + max_rows]


def main():
    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")

    total_q = 0
    total_p = 0
    fails = []

    for y in YEARS:
        qpath = REPO / "content/parsed_cap" / f"{y}-math" / "questions.json"
        if not qpath.exists():
            print(f"  {y}-math: questions.json missing, skip")
            continue
        data = json.loads(qpath.read_text(encoding="utf-8"))
        questions = data["questions"]
        passages = [q for q in questions if q["question_type"] == "reading_passage"]
        children = [q for q in questions if q["question_type"] != "reading_passage"]

        print(f"[{y}-math] {len(passages)} passages + {len(children)} questions ...", end=" ", flush=True)

        # 1. INSERT passage_parents (if any)
        if passages:
            rows_lit = json.dumps(passages, ensure_ascii=False).replace("\x00", "").replace("'", "''")
            sql = INSERT_SQL.format(rows_lit=rows_lit)
            ok, info = execute_sql(sql, token)
            if not ok:
                print(f"\n  PARENT FAIL: {info[:200]}")
                fails.append((y, "parents", info))
                continue
            total_p += len(passages)

        # 2. INSERT questions in 14-row chunks
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

    # 3. Reactivate math papers
    print()
    print("Reactivating math exam_papers ...")
    ok, info = execute_sql(
        "UPDATE public.exam_papers SET is_active=TRUE, updated_at=now() WHERE exam_id='cap' AND subject_id='sub-cap-math' RETURNING id;",
        token,
    )
    if ok:
        print(f"  OK: {info[:300]}")
    else:
        print(f"  FAIL: {info[:300]}")
        fails.append(("ALL", "reactivate", info))

    print()
    print("=== 完成 ===")
    print(f"passages: {total_p}, questions: {total_q}")
    if fails:
        print(f"\nFAILS: {len(fails)}")
        for y, op, e in fails:
            print(f"  - {y} {op}: {e[:150]}")
        sys.exit(1)


if __name__ == "__main__":
    main()
