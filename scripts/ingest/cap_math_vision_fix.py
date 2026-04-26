#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_math_vision_fix.py — 對特定 math 題用 Haiku Vision 重抽 LaTeX

針對含分數/根號等 pdftotext 無法處理的數學題：
  1. 渲染對應 PDF 頁面為 PNG
  2. 送 Haiku 4.5 vision，要求輸出 KaTeX-compatible LaTeX
  3. UPDATE DB question_text + options + flag superscript_fixed='vision_v1'

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export ANTHROPIC_API_KEY='sk-ant-...'
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/cap_math_vision_fix.py

預設清單：cap-104-math-001 / cap-109-math-004 / cap-112-math-004 / cap-114-math-008
可用 --ids cap-104-math-001,cap-109-math-004 自訂。
"""
from __future__ import annotations
import argparse
import base64
import json
import os
import re
import subprocess
import sys
import time
import urllib.request
import urllib.error
from pathlib import Path
from typing import Dict, Optional, Tuple, List

REPO = Path(__file__).resolve().parents[2]
PDF_ROOT = REPO / "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year"

ANTHROPIC_API_URL = "https://api.anthropic.com/v1/messages"
MODEL_HAIKU = "claude-haiku-4-5-20251001"
ANTHROPIC_VERSION = "2023-06-01"

PROJECT_REF = "myvfboezhnzgovowhaff"
SUPABASE_MGMT_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"

DEFAULT_IDS = [
    # Phase 3 第一批（已修，2026-04-26）
    "cap-104-math-001",
    "cap-109-math-004",
    "cap-112-math-004",
    "cap-114-math-008",
    # Phase 3 第二批（QA 掃出 10 題 stem-opts 黏連）
    # Type B1: 二元一次聯立方程式（大括號失敗）
    "cap-110-math-003",
    "cap-113-math-003",
    "cap-107-math-005",
    # Type B2: 算式 / 分數 / 根號 黏連
    "cap-104-math-004",
    "cap-108-math-001",
    "cap-108-math-016",
    "cap-112-math-010",
    "cap-105-math-002",
    "cap-106-math-002",
    "cap-110-math-006",
]

SUBJECT_PDF = {
    "math": ["{year}P_Math.pdf", "{year}P_Math150DPI.pdf"],
}

SYSTEM_PROMPT = """你是國中會考數學試題抽取助手。我會給你一張試卷頁面，請抽取**指定題號**的題目，輸出 JSON：

{
  "qnum": <題號>,
  "stem": "<完整題幹文字。數學公式用 KaTeX inline LaTeX，用 $...$ 包圍。例如分數 $\\\\frac{1}{2}$、上標 $7^{10}$、下標 $H_2O$、根號 $\\\\sqrt{5}$、$\\\\sqrt[3]{x}$ 立方根。>",
  "options": ["<A 文字（含 $...$）>", "<B>", "<C>", "<D>"],
  "confidence": "high" | "medium" | "low"
}

規則：
1. 直接輸出 JSON，不要 markdown 包裝、不要 ```json``` 標記。
2. options **不含**「(A)」前綴，只放選項內容（含 $...$）。
3. 若選項是分數，務必用 $\\\\frac{a}{b}$ 包好；根號用 $\\\\sqrt{...}$；上下標 $a^b$ / $a_b$。
4. 中文文字直接寫不需 $...$ 包，只有公式才包。
5. confidence: 圖清晰、4 選項齊全且抽得無歧義 → high；任何模糊 → medium 或 low。"""


def find_pdf(year: int, subject: str) -> Optional[Path]:
    folder = PDF_ROOT / str(year)
    for pat in SUBJECT_PDF.get(subject, []):
        p = folder / pat.format(year=year)
        if p.exists():
            return p
    return None


def map_qnum_to_page(pdf: Path) -> Dict[int, int]:
    out = subprocess.run(["pdftotext", "-layout", str(pdf), "-"],
                         capture_output=True, text=True, check=True).stdout
    pages = out.split("\x0c")
    qmap: Dict[int, int] = {}
    re_q = re.compile(r"^(\d+)\.\s")
    for pi, page in enumerate(pages, 1):
        for line in page.splitlines():
            m = re_q.match(line)
            if m:
                qn = int(m.group(1))
                if 1 <= qn <= 30 and qn not in qmap:
                    qmap[qn] = pi
    return qmap


def render_page(pdf: Path, page_idx: int, out_dir: Path) -> Optional[Path]:
    out_dir.mkdir(parents=True, exist_ok=True)
    prefix = str(out_dir / f"page-{page_idx:02d}")
    subprocess.run(
        ["pdftoppm", "-r", "200", "-png", "-f", str(page_idx), "-l", str(page_idx),
         str(pdf), prefix],
        check=True, capture_output=True,
    )
    cands = sorted(out_dir.glob(f"page-{page_idx:02d}-*.png"))
    return cands[0] if cands else None


def call_vision(api_key: str, image_b64: str, qnum: int, year: int) -> Tuple[bool, dict, str]:
    """改用 curl 送 request，繞過 Python urllib 對 header / payload 的 latin-1 編碼雷。"""
    user_text = f"請抽取 {year} 年國中會考數學試題第 {qnum} 題。"
    body = json.dumps({
        "model": MODEL_HAIKU,
        "max_tokens": 1500,
        "system": SYSTEM_PROMPT,
        "temperature": 0.0,
        "messages": [{
            "role": "user",
            "content": [
                {"type": "image", "source": {"type": "base64", "media_type": "image/png", "data": image_b64}},
                {"type": "text", "text": user_text},
            ],
        }],
    })
    # 寫進 tmp 檔避免 cmd line 太長
    import tempfile
    with tempfile.NamedTemporaryFile(mode="w", suffix=".json", delete=False, encoding="utf-8") as f:
        f.write(body)
        body_file = f.name
    try:
        for attempt in range(4):
            try:
                cp = subprocess.run(
                    [
                        "curl", "-sS", "-X", "POST", ANTHROPIC_API_URL,
                        "-H", f"x-api-key: {api_key}",
                        "-H", f"anthropic-version: {ANTHROPIC_VERSION}",
                        "-H", "content-type: application/json",
                        "--data-binary", f"@{body_file}",
                        "--max-time", "90",
                        "-w", "\n%{http_code}",
                    ],
                    capture_output=True, text=True, timeout=120,
                )
                stdout = cp.stdout
                # 最後一行是 http_code（因為 -w 加在 stdout 末尾）
                lines = stdout.rsplit("\n", 1)
                if len(lines) == 2:
                    body_resp, code_str = lines
                    try:
                        code = int(code_str.strip())
                    except ValueError:
                        code = 0
                else:
                    body_resp, code = stdout, 0
                if code != 200:
                    err = f"HTTP {code}: {body_resp[:300]}"
                    if code in (429, 500, 502, 503, 504) and attempt < 3:
                        time.sleep(1 << attempt); continue
                    return False, {}, err
                resp = json.loads(body_resp)
                txts = [c.get("text", "") for c in resp.get("content", []) if c.get("type") == "text"]
                return True, {"raw": "".join(txts).strip(), "usage": resp.get("usage", {})}, ""
            except Exception as e:
                if attempt < 3:
                    time.sleep(1 << attempt); continue
                return False, {}, str(e)
        return False, {}, "exhausted retries"
    finally:
        try:
            os.unlink(body_file)
        except Exception:
            pass


def parse_json(raw: str) -> Optional[dict]:
    if not raw:
        return None
    try:
        v = json.loads(raw)
        if isinstance(v, dict):
            return v
    except Exception:
        pass
    m = re.search(r"\{[\s\S]*\}", raw)
    if m:
        try:
            v = json.loads(m.group(0))
            if isinstance(v, dict):
                return v
        except Exception:
            pass
    return None


def execute_sql(sql: str, token: str) -> Tuple[bool, str]:
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        SUPABASE_MGMT_URL, data=payload,
        headers={"Authorization": f"Bearer {token}", "Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=60) as r:
            return True, r.read().decode("utf-8")
    except urllib.error.HTTPError as e:
        return False, f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:200]}"
    except Exception as e:
        return False, str(e)


def update_db(qid: str, stem: str, opts: List[str], token: str) -> Tuple[bool, str]:
    # PG standard_conforming_strings=on：SQL string literal 不需 double backslash
    # jsonb 內的 backslash 由 json.dumps 處理，這層只要 single-quote escape
    stem_lit = stem.replace("'", "''").replace("\x00", "")
    opts_lit = json.dumps(opts, ensure_ascii=False).replace("'", "''").replace("\x00", "")
    sql = (
        f"UPDATE public.questions "
        f"SET question_text = '{stem_lit}', "
        f"    options = '{opts_lit}'::jsonb, "
        f"    source_meta = COALESCE(source_meta, '{{}}'::jsonb) || jsonb_build_object('superscript_fixed', 'vision_v1'), "
        f"    updated_at = now() "
        f"WHERE id = '{qid}';"
    )
    return execute_sql(sql, token)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--ids", default=",".join(DEFAULT_IDS),
                    help="comma-separated question id list（預設 4 題）")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    api_key = os.environ.get("ANTHROPIC_API_KEY", "").strip()
    sb_token = os.environ.get("SUPABASE_ACCESS_TOKEN", "").strip()
    if not api_key:
        sys.exit("ERROR: 缺 ANTHROPIC_API_KEY")
    if not args.dry_run and not sb_token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")
    # sanity print（不洩 key 內容）
    print(f"[env] ANTHROPIC_API_KEY len={len(api_key)} prefix={api_key[:10]}…")
    if not api_key.startswith("sk-ant-"):
        print(f"[env] WARN: API key 不是 sk-ant- 開頭，可能複製錯")
    if len(api_key) < 80:
        print(f"[env] WARN: API key 長度只有 {len(api_key)}，正常 sk-ant- key 應該 100+ 字元")

    ids = [s.strip() for s in args.ids.split(",") if s.strip()]
    re_id = re.compile(r"^cap-(\d+)-math-(\d+)$")

    out_dir = REPO / "outputs/cap_math_vision"
    out_dir.mkdir(parents=True, exist_ok=True)

    grand_ok = grand_fail = 0
    in_tok = out_tok = 0

    for qid in ids:
        m = re_id.match(qid)
        if not m:
            print(f"  {qid}: bad id format, skip")
            continue
        year = int(m.group(1))
        qnum = int(m.group(2))
        print(f"\n=== {qid} ===")
        pdf = find_pdf(year, "math")
        if not pdf:
            print(f"  PDF missing"); grand_fail += 1; continue
        # 找頁面
        qmap = map_qnum_to_page(pdf)
        page_idx = qmap.get(qnum)
        if not page_idx:
            print(f"  Q{qnum} page mapping fail"); grand_fail += 1; continue
        # 渲染
        page_dir = out_dir / f"cap-{year}-math"
        page_png = render_page(pdf, page_idx, page_dir)
        if not page_png:
            print(f"  page render fail"); grand_fail += 1; continue
        # vision
        b64 = base64.b64encode(page_png.read_bytes()).decode("ascii")
        print(f"  page {page_idx} → vision ...", end=" ", flush=True)
        ok, payload, err = call_vision(api_key, b64, qnum, year)
        if not ok:
            print(f"FAIL: {err[:120]}"); grand_fail += 1; continue
        in_tok += int(payload.get("usage", {}).get("input_tokens", 0) or 0)
        out_tok += int(payload.get("usage", {}).get("output_tokens", 0) or 0)
        result = parse_json(payload["raw"])
        if not result or not result.get("stem") or not result.get("options"):
            print(f"PARSE FAIL"); grand_fail += 1; continue

        stem = result["stem"]
        opts = result["options"]
        if not isinstance(opts, list) or len(opts) != 4:
            print(f"BAD OPTIONS COUNT={len(opts) if isinstance(opts, list) else 'NA'}")
            grand_fail += 1; continue

        print(f"OK conf={result.get('confidence')}")
        print(f"  stem: {stem[:120]}")
        for j, o in enumerate(opts):
            print(f"  ({chr(65+j)}) {o[:60]}")

        if args.dry_run:
            grand_ok += 1
            continue
        ok2, info = update_db(qid, stem, opts, sb_token)
        if ok2:
            print(f"  DB UPDATE OK")
            grand_ok += 1
        else:
            print(f"  DB UPDATE FAIL: {info[:200]}")
            grand_fail += 1

    cost_in = in_tok / 1_000_000 * 1.0
    cost_out = out_tok / 1_000_000 * 5.0
    print(f"\n=== 完成 ===")
    print(f"OK: {grand_ok}, FAIL: {grand_fail}")
    print(f"input tokens: {in_tok:,}, output tokens: {out_tok:,}")
    print(f"cost: ${cost_in + cost_out:.4f}")


if __name__ == "__main__":
    main()
