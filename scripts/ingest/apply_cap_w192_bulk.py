#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_cap_w192_bulk.py — 一次 apply 所有 W1.9.2 paper 到 prod

讀 outputs/cap_{year}_{subject}_chunks/*.sql，透過 Supabase Management API
逐 chunk 灌進 prod。ON CONFLICT 已內建，重跑安全。

跑這個之前必須：
  cd ~/Documents/Claude/Projects/KaoNow
  export SUPABASE_ACCESS_TOKEN='sbp_你的實際token值'
  python3 scripts/ingest/apply_cap_w192_bulk.py

預設 paper 清單：W1.9.2 計畫的 29 paper（chinese / society / english-reading × 11 年，
減已做的 4 paper）。
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
OUTPUTS_DIR = REPO_ROOT / "outputs"

DONE = {"cap-114-chinese", "cap-114-society", "cap-114-english-reading", "cap-113-chinese"}
YEARS = [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114]
SUBJECTS = ["chinese", "society", "english-reading"]


def execute_sql(sql: str, token: str, retries: int = 3):
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
            body = e.read().decode("utf-8", errors="replace")[:400]
            last_err = f"HTTP {e.code}: {body}"
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
    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN env var")
    if token == "sbp_你的實際token值":
        sys.exit("ERROR: 把 'sbp_你的實際token值' 換成你真實的 token")

    # 收集所有要灌的 paper
    todo = []
    for y in YEARS:
        for s in SUBJECTS:
            paper_id = f"cap-{y}-{s}"
            if paper_id in DONE:
                continue
            chunks_dir = OUTPUTS_DIR / f"cap_{y}_{s}_chunks"
            if not chunks_dir.exists():
                print(f"  skip {paper_id}: chunks dir 不存在")
                continue
            todo.append((paper_id, chunks_dir))

    print(f"=== W1.9.2 bulk apply ({len(todo)} papers) ===\n")

    total_ok = 0
    total_fail = 0
    failed_chunks = []

    for i, (pid, chunks_dir) in enumerate(todo, 1):
        sql_files = sorted(chunks_dir.glob("*.sql"))
        print(f"[{i}/{len(todo)}] {pid} ({len(sql_files)} chunks) ...", end=" ", flush=True)
        ok_count = 0
        for f in sql_files:
            sql = f.read_text(encoding="utf-8").replace("\x00", "")
            t0 = time.time()
            ok, info = execute_sql(sql, token)
            dt = time.time() - t0
            if ok:
                ok_count += 1
                total_ok += 1
            else:
                total_fail += 1
                failed_chunks.append((str(f), info[:200]))
                print(f"\n    FAIL {f.name} ({dt:.1f}s): {info[:200]}", flush=True)
        print(f"OK ({ok_count}/{len(sql_files)})", flush=True)

    print()
    print(f"=== 完成 ===")
    print(f"chunks: {total_ok} OK, {total_fail} FAIL")
    if failed_chunks:
        print(f"\n失敗 chunks:")
        for f, err in failed_chunks:
            print(f"  - {f}: {err}")
        sys.exit(1)


if __name__ == "__main__":
    main()
