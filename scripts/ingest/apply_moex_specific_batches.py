#!/usr/bin/env python3
"""只 apply 指定 batch（給修完的 4 個檔用），不掃全部 1650"""
import json, os, sys, time
import urllib.request, urllib.error
from pathlib import Path

PROJECT_REF = "myvfboezhnzgovowhaff"
API_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"
SQL_DIR = Path(__file__).resolve().parents[2] / "outputs/moex_license_ingest"

# 只灌這幾個（修完 NULL byte 的）
BATCHES = [899, 900, 901, 903]


def execute_sql(sql, token):
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
    try:
        with urllib.request.urlopen(req, timeout=60) as r:
            return True, r.read().decode("utf-8")
    except urllib.error.HTTPError as e:
        return False, f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:300]}"
    except Exception as e:
        return False, str(e)


def main():
    token = os.environ.get("SUPABASE_ACCESS_TOKEN")
    if not token:
        print("ERROR: 環境變數 SUPABASE_ACCESS_TOKEN 沒設")
        sys.exit(1)
    for n in BATCHES:
        fp = SQL_DIR / f"03_questions_part_{n:03d}.sql"
        sql = fp.read_text(encoding="utf-8")
        print(f"  apply {fp.name} ({len(sql)} chars) …", end=" ", flush=True)
        ok, info = execute_sql(sql, token)
        print("OK" if ok else f"FAIL — {info[:150]}")

    # 驗證
    print("\n驗證最後 question 總數 …")
    ok, body = execute_sql(
        "SELECT COUNT(*) AS total FROM public.questions WHERE id LIKE '%-moex-%';",
        token,
    )
    print(f"  questions where id LIKE '%-moex-%': {body}")


if __name__ == "__main__":
    main()
