#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_math_manual_fix.py — 寫死的 stem/options fix（從 PDF 人工確認）

針對 vision 抽錯指數、或結構太複雜 vision 連著兩次都失敗的題目，
直接從 PDF bbox-layout 確認後寫死 LaTeX 灌進 DB。

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/cap_math_manual_fix.py            # apply
  python3 scripts/ingest/cap_math_manual_fix.py --dry-run  # only print SQL
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


# qid → (stem, [A,B,C,D])
# 每題都從 PDF bbox-layout / pdftotext layout 確認
FIXES = {
    "cap-104-math-004": {
        # PDF bbox 確認：分子 2^6（2+上標 6），分母 (-2)^3（) + 上標 3）
        # 驗算：(-3)^4 - 7^2 - 64/(-8) = 81-49+8 = 40 ✓ (D)
        "stem": "算式 $(-3)^4 - 7^2 - \\frac{2^6}{(-2)^3}$ 之值為何？",
        "opts": ["−138", "−122", "24", "40"],
    },
    "cap-105-math-002": {
        # PDF layout 確認：3 在上、2 在下（分數 3/2），× 4 跟在後
        # 驗算：[-5-(-11)] = 6, 6 ÷ (3/2 × 4) = 6 ÷ 6 = 1 ✓ (A)
        "stem": "算式 $[-5 - (-11)] \\div (\\frac{3}{2} \\times 4)$ 之值為何？",
        "opts": ["1", "16", "$-\\frac{8}{3}$", "$-\\frac{128}{3}$"],
    },
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

    stmts = []
    for qid, fix in FIXES.items():
        # PG standard_conforming_strings=on：SQL string literal 不需 double backslash
        # jsonb 的 backslash 由 json.dumps 處理，這層只 escape single quote
        stem_lit = fix["stem"].replace("'", "''").replace("\x00", "")
        opts_lit = json.dumps(fix["opts"], ensure_ascii=False).replace("'", "''").replace("\x00", "")
        stmts.append(
            f"UPDATE public.questions "
            f"SET question_text = '{stem_lit}', "
            f"    options = '{opts_lit}'::jsonb, "
            f"    source_meta = COALESCE(source_meta, '{{}}'::jsonb) || jsonb_build_object('manual_fixed', 'v1', 'manual_reason', 'vision_misread_or_too_complex'), "
            f"    updated_at = now() "
            f"WHERE id = '{qid}';"
        )
    sql = "\n".join(stmts)

    if args.dry_run:
        print(sql)
        return

    print(f"=== Applying {len(FIXES)} manual fixes ===")
    for qid in FIXES:
        print(f"  - {qid}")
    ok, info = execute_sql(sql, token)
    if ok:
        print("OK")
    else:
        print("FAIL:", info)
        sys.exit(1)


if __name__ == "__main__":
    main()
