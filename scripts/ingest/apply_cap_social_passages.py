#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_cap_social_passages.py — 把 cap social 11 年的 passage_parent backfill
到 prod，並更新 child 題的 parent_question_id

前置：cap_social_passage_fix.py + cap_merger.py 已跑過（產生 questions.json）

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_cap_social_passages.py
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
REPO_ROOT = Path(__file__).resolve().parents[2]


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


def main():
    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN env var")

    total_p, total_c, fails = 0, 0, []

    for y in [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114]:
        qpath = REPO_ROOT / "content/parsed_cap" / f"{y}-society" / "questions.json"
        if not qpath.exists():
            print(f"  {y}: questions.json missing, skip")
            continue
        data = json.loads(qpath.read_text(encoding="utf-8"))
        passages = [q for q in data["questions"] if q["question_type"] == "reading_passage"]
        children = [q for q in data["questions"] if q.get("parent_question_id")]
        if not passages:
            continue

        # INSERT passages
        rows_lit = json.dumps(passages, ensure_ascii=False).replace("\x00", "").replace("'", "''")
        ins_sql = f"""INSERT INTO public.questions (id, exam_id, subject_id, paper_id, question_type, question_text, options, correct_answer, correct_answer_json, parent_question_id, media, source, source_meta, is_active, auto_gradable, difficulty, explanation)
SELECT id, exam_id, subject_id, paper_id, question_type, question_text, options, correct_answer, correct_answer_json, parent_question_id, media, source, source_meta, is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('{rows_lit}'::jsonb) AS t(id text, exam_id text, subject_id text, paper_id text, question_type text, question_text text, options jsonb, correct_answer int, correct_answer_json jsonb, parent_question_id text, media jsonb, source text, source_meta jsonb, is_active boolean, auto_gradable boolean, difficulty int, explanation text)
ON CONFLICT (id) DO UPDATE SET question_type=EXCLUDED.question_type, question_text=EXCLUDED.question_text, options=EXCLUDED.options, media=EXCLUDED.media, is_active=EXCLUDED.is_active, auto_gradable=EXCLUDED.auto_gradable, source_meta=EXCLUDED.source_meta, updated_at=now();"""

        ok, info = execute_sql(ins_sql, token)
        if not ok:
            print(f"  {y}: INSERT FAIL: {info[:200]}")
            fails.append((y, "insert", info))
            continue

        # UPDATE children
        upd_lines = []
        for c in children:
            cid = c["id"].replace("'", "''")
            pid = c["parent_question_id"].replace("'", "''")
            upd_lines.append(
                f"UPDATE public.questions SET parent_question_id='{pid}', updated_at=now() WHERE id='{cid}';"
            )
        upd_sql = "\n".join(upd_lines)
        ok2, info2 = execute_sql(upd_sql, token)
        if not ok2:
            print(f"  {y}: UPDATE FAIL: {info2[:200]}")
            fails.append((y, "update", info2))
            continue

        print(f"  {y}: OK  ({len(passages)} parents, {len(children)} children linked)")
        total_p += len(passages)
        total_c += len(children)

    print()
    print(f"=== 完成 ===")
    print(f"passages inserted: {total_p}")
    print(f"children linked:   {total_c}")
    if fails:
        print(f"\nFAILS: {len(fails)}")
        for y, op, e in fails:
            print(f"  - year {y} {op}: {e[:150]}")


if __name__ == "__main__":
    main()
