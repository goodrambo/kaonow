#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_footer_strip.py — 清掉 D 選項裡被誤併進來的 PDF 頁尾

題庫掃出 10 題 D 選項尾巴含「[頁碼] 請翻頁繼續作答」，cap_parser.py
切 cluster 時沒過濾頁尾。寫死 fix dict 一次更新，root cause 修在
cap_parser.py 之後（待 W2 全面 reparse）。

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/cap_footer_strip.py            # apply
  python3 scripts/ingest/cap_footer_strip.py --dry-run  # only print SQL
"""
from __future__ import annotations
import argparse
import json
import os
import sys
import urllib.request
import urllib.error

PROJECT_REF = "myvfboezhnzgovowhaff"
SUPABASE_MGMT_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"

# qid → 第 D 選項應該長什麼樣（手動對 PDF 確認）
FIXES = {
    "cap-110-math-022": "12",
    "cap-108-math-003": "$6x^{2}$−x−12",
    "cap-106-math-012": "−20",
    "cap-107-math-017": "比−1小",
    "cap-110-math-010": "210",
    "cap-105-english-reading-011": "herself",
    "cap-105-english-reading-020": "Warmer than.",
    "cap-105-english-reading-024": "She was away from home last Halloween.",
    "cap-105-english-reading-027":
        "I want to go out with Jennifer on New Year\u2019s Day, but I\u2019m not sure whether she wants to go out with me that day.",
    "cap-105-english-reading-031":
        "\u201cShe never cares what she does on a date; she cares who she has a date with.\u201d",
}


def execute_sql(sql: str, token: str):
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        SUPABASE_MGMT_URL, data=payload,
        headers={"Authorization": f"Bearer {token}", "Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=30) as r:
            return True, r.read().decode("utf-8")
    except urllib.error.HTTPError as e:
        return False, f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:300]}"
    except Exception as e:
        return False, str(e)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "").strip()
    if not args.dry_run and not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")

    # 一次 UPDATE — 用 jsonb_set 改 options[3]
    # 注意：PG SQL string literal 不需 double backslash（standard_conforming_strings=on）
    stmts = []
    for qid, new_d in FIXES.items():
        # jsonb 寫入：to_jsonb(text) 把 string 包成 JSON
        d_lit = new_d.replace("'", "''").replace("\x00", "")
        stmts.append(
            f"UPDATE public.questions "
            f"SET options = jsonb_set(options, '{{3}}', to_jsonb('{d_lit}'::text)), "
            f"    source_meta = COALESCE(source_meta, '{{}}'::jsonb) || jsonb_build_object('footer_stripped', 'v1'), "
            f"    updated_at = now() "
            f"WHERE id = '{qid}';"
        )
    sql = "\n".join(stmts)

    if args.dry_run:
        print(sql)
        return

    print(f"=== Applying {len(FIXES)} updates ===")
    ok, info = execute_sql(sql, token)
    if ok:
        print("OK")
        print(f"affected: {len(FIXES)} rows (合 1 transaction)")
    else:
        print("FAIL:", info)
        sys.exit(1)


if __name__ == "__main__":
    main()
