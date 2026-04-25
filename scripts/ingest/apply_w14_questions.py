#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_w14_questions.py — W1.4 incremental ingest 灌 4,739 個 question batch

用法：
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_w14_questions.py

讀 outputs/moex_license_ingest_v2/04_new_questions_part_*.sql 全部灌到 production。
ON CONFLICT DO NOTHING 讓重跑安全。預估 ~30-60 分鐘（4,739 batch × 0.4s/batch）。
"""
import json, os, sys, time
import urllib.request, urllib.error
from pathlib import Path

PROJECT_REF = "myvfboezhnzgovowhaff"
API_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"
SQL_DIR = Path(__file__).resolve().parents[2] / "outputs/moex_license_ingest_v2"


def execute_sql(sql, token, retries=2):
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        API_URL, data=payload,
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
            with urllib.request.urlopen(req, timeout=60) as r:
                return True, r.read().decode("utf-8")
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
    token = os.environ.get("SUPABASE_ACCESS_TOKEN")
    if not token:
        print("ERROR: 環境變數 SUPABASE_ACCESS_TOKEN 沒設")
        print("請先 export SUPABASE_ACCESS_TOKEN='sbp_...' 再重跑")
        sys.exit(1)
    files = sorted(SQL_DIR.glob("04_new_questions_part_*.sql"))
    if not files:
        print(f"找不到 04_new_questions_part_*.sql 在 {SQL_DIR}")
        sys.exit(1)
    print(f"找到 {len(files)} 個 batch 檔，準備 apply 到 {PROJECT_REF} …\n")

    ok = 0; fail = 0; failures = []
    t0 = time.time()
    for i, fp in enumerate(files, 1):
        sql = fp.read_text(encoding="utf-8")
        # 防 NULL byte（保險）
        sql = sql.replace("\x00", "").replace("\\u0000", "")
        success, info = execute_sql(sql, token)
        if success:
            ok += 1
            if i % 100 == 0 or i == len(files):
                elapsed = time.time() - t0
                rate = i / max(elapsed, 0.01)
                eta = (len(files) - i) / rate if rate > 0 else 0
                print(f"  [{i:5}/{len(files)}] ok={ok} fail={fail} — {rate:.1f}/s ETA {eta:.0f}s")
        else:
            fail += 1
            failures.append((fp.name, info[:200]))
            print(f"  [{i:5}/{len(files)}] FAIL {fp.name}: {info[:120]}")
            if fail >= 10:
                print("\n⚠️  連續 10 個 fail，停下檢查")
                break

    elapsed = time.time() - t0
    print(f"\n=== 完成 ===")
    print(f"  Apply: {ok} 成功 / {fail} 失敗 / 共 {len(files)} 檔")
    print(f"  耗時: {elapsed:.0f}s ({len(files) / max(elapsed, 1):.1f} files/s)")
    if failures:
        print("\n失敗檔案明細：")
        for name, err in failures[:20]:
            print(f"  {name}: {err}")

    print("\n跑驗證查詢 …")
    ok2, body = execute_sql(
        "SELECT COUNT(*) AS total, COUNT(*) FILTER (WHERE source_meta->>'parser_version'='moex_license_v1.0') AS moex_v1 "
        "FROM public.questions WHERE id LIKE '%-moex-%';",
        token,
    )
    if ok2:
        print(f"  questions stat: {body}")


if __name__ == "__main__":
    main()
