#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_moex_questions.py — 把 outputs/moex_license_ingest/03_questions_part_*.sql
透過 Supabase Management API 全部 apply 到 KaoNow project。

用法：
  1. 到 https://supabase.com/dashboard/account/tokens 產一個 Personal Access Token
  2. export SUPABASE_ACCESS_TOKEN='sbp_...'
  3. python3 scripts/ingest/apply_moex_questions.py

腳本只用 stdlib（urllib + json），不需要 psql / psycopg2 / supabase CLI。
ON CONFLICT DO NOTHING 讓重跑安全。
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
SQL_DIR = Path(__file__).resolve().parents[2] / "outputs/moex_license_ingest"

def get_token() -> str:
    tok = os.environ.get("SUPABASE_ACCESS_TOKEN")
    if not tok:
        print("ERROR: 環境變數 SUPABASE_ACCESS_TOKEN 沒設")
        print("請先到 https://supabase.com/dashboard/account/tokens 產 token")
        print("然後 export SUPABASE_ACCESS_TOKEN='sbp_...' 再重跑此腳本")
        sys.exit(1)
    return tok


def execute_sql(sql: str, token: str, retries: int = 2) -> tuple[bool, str]:
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        API_URL,
        data=payload,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
            # Cloudflare 會擋 Python-urllib 的 default UA，仿瀏覽器避開
            "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
            "Accept": "application/json",
        },
        method="POST",
    )
    last_err = ""
    for attempt in range(retries + 1):
        try:
            with urllib.request.urlopen(req, timeout=60) as resp:
                body = resp.read().decode("utf-8")
                return True, body
        except urllib.error.HTTPError as e:
            last_err = f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:300]}"
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
    token = get_token()
    files = sorted(SQL_DIR.glob("03_questions_part_*.sql"))
    if not files:
        print(f"找不到任何 03_questions_part_*.sql 在 {SQL_DIR}")
        sys.exit(1)
    print(f"找到 {len(files)} 個 batch 檔，準備 apply 到 {PROJECT_REF} …\n")

    ok = 0
    fail = 0
    failures = []
    t0 = time.time()
    for i, fp in enumerate(files, 1):
        sql = fp.read_text(encoding="utf-8")
        success, info = execute_sql(sql, token)
        if success:
            ok += 1
            if i % 50 == 0 or i == len(files):
                elapsed = time.time() - t0
                rate = i / max(elapsed, 0.01)
                eta = (len(files) - i) / rate if rate > 0 else 0
                print(f"  [{i:4}/{len(files)}] ok ({ok} succ, {fail} fail) — "
                      f"{rate:.1f} /s, ETA {eta:.0f}s")
        else:
            fail += 1
            failures.append((fp.name, info[:200]))
            print(f"  [{i:4}/{len(files)}] FAIL {fp.name}: {info[:120]}")
            if fail >= 5:
                print("\n⚠️  連續 5 個 fail，先停下檢查問題（可能是 token 失效）")
                break

    elapsed = time.time() - t0
    print(f"\n=== 完成 ===")
    print(f"  Apply: {ok} 成功 / {fail} 失敗 / 共 {len(files)} 檔")
    print(f"  耗時: {elapsed:.0f}s ({len(files) / max(elapsed, 1):.1f} files/s)")
    if failures:
        print(f"\n失敗檔案明細：")
        for name, err in failures[:20]:
            print(f"  {name}: {err}")
        print("（完整錯誤可看 Supabase Dashboard → Logs）")
    print()

    # 自動驗證
    print("跑驗證查詢 …")
    ok2, body = execute_sql(
        "SELECT COUNT(*) AS total FROM public.questions WHERE id LIKE '%-moex-%';",
        token,
    )
    if ok2:
        print(f"  questions where id LIKE '%-moex-%': {body}")


if __name__ == "__main__":
    main()
