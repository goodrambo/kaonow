#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_cap_w192_explanations.py — 把 AI 跑完的詳解 merge 進 DB

跑完 cap_explain_ai.py 後執行此腳本：
  1. 對每張 paper 重跑 cap_merger.py（讀新 explanations.json）
  2. cap_build_sql.py 產新 SQL
  3. apply 到 prod（只 UPDATE 受影響 row 的 explanation 欄位）

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_cap_w192_explanations.py
"""
import json
import os
import subprocess
import sys
import time
import urllib.request
import urllib.error
from pathlib import Path

PROJECT_REF = "myvfboezhnzgovowhaff"
API_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"
REPO_ROOT = Path(__file__).resolve().parents[2]

YEARS = [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114]
SUBJECTS = ["chinese", "society", "english-reading", "math"]


def execute_sql(sql, token, retries=3):
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
    last = ""
    for a in range(retries + 1):
        try:
            with urllib.request.urlopen(req, timeout=120) as r:
                return True, r.read().decode("utf-8")
        except urllib.error.HTTPError as e:
            body = e.read().decode("utf-8", errors="replace")[:300]
            last = f"HTTP {e.code}: {body}"
            if e.code in (429, 502, 503, 504) and a < retries:
                time.sleep(2 ** a)
                continue
            return False, last
        except Exception as e:
            last = str(e)
            if a < retries:
                time.sleep(1)
                continue
            return False, last
    return False, last


def update_explanations_only(year, subject, token):
    """從 questions.json 只取 explanation 欄位，UPDATE 進 DB（不動其他欄位）"""
    qpath = REPO_ROOT / "content/parsed_cap" / f"{year}-{subject}" / "questions.json"
    data = json.loads(qpath.read_text(encoding="utf-8"))
    rows = []
    for q in data["questions"]:
        if q.get("explanation"):
            rows.append({"id": q["id"], "explanation": q["explanation"]})
    if not rows:
        return 0, "no explanations"

    # 切 batch 50 row 一次
    BATCH = 50
    total = 0
    for i in range(0, len(rows), BATCH):
        batch = rows[i:i + BATCH]
        rows_lit = json.dumps(batch, ensure_ascii=False).replace("\x00", "").replace("'", "''")
        sql = f"""
UPDATE public.questions q
SET explanation = t.explanation,
    source_meta = COALESCE(q.source_meta, '{{}}'::jsonb) || jsonb_build_object('explanation_source', 'ai_v1'),
    updated_at = now()
FROM jsonb_to_recordset('{rows_lit}'::jsonb) AS t(id text, explanation text)
WHERE q.id = t.id;"""
        ok, info = execute_sql(sql, token)
        if not ok:
            return total, info
        total += len(batch)
    return total, ""


def main():
    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")

    grand_total = 0
    fails = []

    for y in YEARS:
        for s in SUBJECTS:
            expl_path = REPO_ROOT / "content/parsed_cap/explanations" / f"{y}-{s}.json"
            if not expl_path.exists():
                continue
            print(f"[{y}-{s}]", end=" ", flush=True)
            # rerun merger 把新 explanations.json 合併進 questions.json
            r = subprocess.run(
                ["python3", "scripts/ingest/cap_merger.py", "--year", str(y), "--subject", s],
                cwd=REPO_ROOT, capture_output=True, text=True
            )
            if r.returncode != 0:
                print(f"merger FAIL: {r.stderr[:200]}")
                fails.append((y, s, "merger fail"))
                continue
            n, err = update_explanations_only(y, s, token)
            if err:
                print(f"UPDATE fail: {err[:200]}")
                fails.append((y, s, err))
            else:
                print(f"updated {n} rows")
                grand_total += n

    print()
    print(f"=== 完成 ===")
    print(f"total updated: {grand_total} rows")
    if fails:
        print(f"\n失敗:")
        for y, s, e in fails:
            print(f"  - {y}-{s}: {e}")


if __name__ == "__main__":
    main()
