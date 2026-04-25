#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""apply_w16_civil.py — W1.6 civil-service 全包 apply

讀 outputs/moex_civil_ingest/ 下所有 SQL（依 01→02→03→04 順序灌）
總共 ~9,440 SQL files (4 + 10 + 59 + 9310)；預估 ~70-90 分鐘。

用法：
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/apply_w16_civil.py

ON CONFLICT 都已內建，重跑安全。
"""
import json, os, sys, time
import urllib.request, urllib.error
from pathlib import Path

PROJECT_REF = "myvfboezhnzgovowhaff"
API_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"
SQL_DIR = Path(__file__).resolve().parents[2] / "outputs/moex_civil_ingest"


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


def apply_phase(name, files, token):
    print(f"\n=== Phase: {name} ({len(files)} files) ===")
    ok = fail = 0
    failures = []
    t0 = time.time()
    for i, fp in enumerate(files, 1):
        sql = fp.read_text(encoding="utf-8").replace("\x00", "").replace("\\u0000", "")
        success, info = execute_sql(sql, token)
        if success:
            ok += 1
        else:
            fail += 1
            failures.append((fp.name, info[:200]))
            print(f"  [{i}/{len(files)}] FAIL {fp.name}: {info[:120]}")
            if fail >= 5 and name != "questions":
                print("  ⚠️ 5 連 fail, abort phase")
                break
            if fail >= 20:
                print("  ⚠️ 20 連 fail, abort all")
                return False, ok, fail, failures
        if i % 100 == 0 or i == len(files):
            elapsed = time.time() - t0
            rate = i / max(elapsed, 0.01)
            eta = (len(files) - i) / rate if rate > 0 else 0
            print(f"  [{i}/{len(files)}] ok={ok} fail={fail} — {rate:.1f}/s ETA {eta:.0f}s")
    return True, ok, fail, failures


def main():
    token = os.environ.get("SUPABASE_ACCESS_TOKEN")
    if not token:
        print("ERROR: SUPABASE_ACCESS_TOKEN 未設")
        sys.exit(1)

    phase1 = sorted(SQL_DIR.glob("01_new_exams_part_*.sql"))
    phase2 = sorted(SQL_DIR.glob("02_new_subjects_part_*.sql"))
    phase3 = sorted(SQL_DIR.glob("03_new_papers_part_*.sql"))
    phase4 = sorted(SQL_DIR.glob("04_new_questions_part_*.sql"))
    print(f"Total files: {len(phase1)} exams + {len(phase2)} subjects + {len(phase3)} papers + {len(phase4)} questions = {len(phase1)+len(phase2)+len(phase3)+len(phase4)}")

    overall_t0 = time.time()
    for name, files in [("exams", phase1), ("subjects", phase2), ("papers", phase3), ("questions", phase4)]:
        if not files:
            print(f"\n[skip] {name}: no files")
            continue
        ok_phase, ok, fail, failures = apply_phase(name, files, token)
        if not ok_phase:
            print(f"\n!! {name} aborted ({ok} ok, {fail} fail)")
            return
        print(f"  {name} done: {ok}/{len(files)} ({fail} fails)")
        if failures:
            print("  failures:")
            for n, e in failures[:5]:
                print(f"    {n}: {e}")

    elapsed = time.time() - overall_t0
    print(f"\n=== ALL DONE in {elapsed:.0f}s ({elapsed/60:.1f}min) ===")
    # verify
    ok, body = execute_sql(
        "SELECT COUNT(*) AS total, COUNT(DISTINCT exam_id) AS exams "
        "FROM public.questions WHERE source_meta->>'civil_slug' IS NOT NULL;",
        token,
    )
    print(f"verify: {body}")


if __name__ == "__main__":
    main()
