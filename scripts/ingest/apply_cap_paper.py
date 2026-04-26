#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_cap_paper.py — 把單一 cap paper 的 SQL 灌到 Supabase

讀 outputs/cap_<year>_<subject>.sql 經 Supabase Management API 灌進 prod。

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_cap_paper.py --year 114 --subject chinese
  python3 scripts/ingest/apply_cap_paper.py --sql outputs/cap_114_chinese.sql

ON CONFLICT 已內建，重跑安全。
"""
import argparse
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
OUTPUTS_DIR = REPO_ROOT / "outputs"


def execute_sql(sql: str, token: str, retries: int = 2):
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        API_URL,
        data=payload,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
            "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
            "Accept": "application/json",
        },
        method="POST",
    )
    last_err = ""
    for attempt in range(retries + 1):
        try:
            with urllib.request.urlopen(req, timeout=120) as r:
                return True, r.read().decode("utf-8")
        except urllib.error.HTTPError as e:
            last_err = f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:600]}"
            if e.code in (429, 502, 503, 504) and attempt < retries:
                time.sleep(2 ** attempt)
                continue
            return False, last_err
        except Exception as e:
            last_err = str(e)
            if attempt < retries:
                time.sleep(1)
                continue
            return False, last_err
    return False, last_err


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int)
    ap.add_argument("--subject")
    ap.add_argument("--sql", help="直接給 SQL 檔路徑")
    args = ap.parse_args()

    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not token:
        sys.exit(
            "ERROR: 缺 SUPABASE_ACCESS_TOKEN env var。請：\n"
            "  export SUPABASE_ACCESS_TOKEN='sbp_...'"
        )

    if args.sql:
        sql_path = Path(args.sql)
    elif args.year and args.subject:
        sql_path = OUTPUTS_DIR / f"cap_{args.year}_{args.subject}.sql"
    else:
        sys.exit("ERROR: 提供 --sql <path> 或 --year + --subject")

    if not sql_path.exists():
        sys.exit(f"ERROR: SQL not found: {sql_path}")

    sql = sql_path.read_text(encoding="utf-8")
    sql = sql.replace("\x00", "").replace("\\u0000", "")

    print(f"灌 SQL：{sql_path} ({len(sql):,} chars)")
    t0 = time.time()
    ok, info = execute_sql(sql, token)
    dt = time.time() - t0
    if ok:
        print(f"OK ({dt:.1f}s)")
        # response usually empty or array
        if info.strip() and info.strip() != "[]":
            print(f"  response: {info[:300]}")
    else:
        print(f"FAIL ({dt:.1f}s): {info}")
        sys.exit(1)


if __name__ == "__main__":
    main()
