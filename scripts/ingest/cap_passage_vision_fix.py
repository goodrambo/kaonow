#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_passage_vision_fix.py — 用 vision 重抽 passage_parent 的閱讀文本

針對含「表(N)」、「圖(N)」、分數結構等 pdftotext 抓不到的閱讀文本。
渲染 PDF 對應頁為 PNG，Haiku 4.5 vision 抽完整 passage（含表格用 markdown table）。

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export ANTHROPIC_API_KEY='sk-ant-...'
  export SUPABASE_ACCESS_TOKEN='sbp_...'
  python3 scripts/ingest/cap_passage_vision_fix.py

  # 自訂 ID：
  python3 scripts/ingest/cap_passage_vision_fix.py --ids cap-114-math-passage-24

預設：4 個 cap math passage_parents
"""
from __future__ import annotations
import argparse
import base64
import json
import os
import re
import subprocess
import sys
import tempfile
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
    "cap-114-math-passage-24",
    "cap-113-math-passage-24",
    "cap-112-math-passage-24",
    "cap-111-math-passage-24",
]

SUBJECT_PDF = {
    "math": ["{year}P_Math.pdf", "{year}P_Math150DPI.pdf"],
    "nature": ["{year}P_Nature.pdf", "{year}P_Nature150DPI.pdf"],
    "science": ["{year}P_Nature.pdf", "{year}P_Nature150DPI.pdf"],
    "social": ["{year}P_Society.pdf", "{year}P_Society150DPI.pdf"],
    "society": ["{year}P_Society.pdf", "{year}P_Society150DPI.pdf"],
    "chinese": ["{year}P_Chinese.pdf", "{year}P_Chinese150DPI.pdf"],
    "english-reading": ["{year}P_English.pdf", "{year}P_English150DPI.pdf"],
    "english": ["{year}P_English.pdf", "{year}P_English150DPI.pdf"],
}

SYSTEM_PROMPT = """你是國中會考題組閱讀文本抽取助手。我會給你一張試卷頁面，請抽取**指定題組**的完整閱讀文本（不含子題與選項），輸出 JSON：

{
  "passage_text": "<完整閱讀文本，國中生能直接讀懂>",
  "has_table": true | false,
  "has_figure": true | false,
  "confidence": "high" | "medium" | "low"
}

抽取規則：
1. **表格內容務必補進文字**：寫成自然語句讓國中生直接讀。例如 PDF 表格列出 3 種前齒輪齒數 22/33/44 和 6 種後齒輪齒數 18/21/24/28/32/36，要寫成「前齒輪有 3 種齒數：22、33、44；後齒輪有 6 種齒數：18、21、24、28、32、36」。**只有資料量大（>4 列 × 4 欄）且結構必要時**才用 markdown table。
2. **公式**：分數用 KaTeX `$\\\\frac{a}{b}$`，上標 `$a^b$`，下標 `$a_b$`，根號 `$\\\\sqrt{x}$`。例如「齒輪比 = 前齒輪齒數 / 後齒輪齒數」要寫成「齒輪比 $= \\\\frac{前齒輪齒數}{後齒輪齒數}$」。
3. **保留段落結構**：原文有換行用 `\\n`。
4. **圖片描述**：在 passage 對應位置插入 `[圖(N)：簡短描述]`，例如 `[圖(三十)：化學工廠爆炸現場新聞畫面]`。**描述要具體**：地理示意圖要說明位置與標記點、生物圖要說明物種特徵、機械圖要說明結構與標號。
5. **直接輸出 JSON**，不要 markdown code block 包裝。
6. **不要包含子題的題號（如「24.」「25.」）和選項（A B C D）**，只要閱讀文本本身。
7. **目標：讓只有 passage_text 的學生跟看到原 PDF 的學生獲得一樣的資訊**。
8. confidence: 全部清晰且抽得完整 → high；表格部分模糊或圖描述靠猜 → medium 或 low。"""


def find_pdf(year: int, subject: str) -> Optional[Path]:
    folder = PDF_ROOT / str(year)
    for pat in SUBJECT_PDF.get(subject, []):
        p = folder / pat.format(year=year)
        if p.exists():
            return p
    return None


def find_passage_page(pdf: Path, passage_qnum: int) -> Optional[int]:
    """找 passage 在哪頁：找『請閱讀』+ 題號 N~ 的位置"""
    out = subprocess.run(["pdftotext", "-layout", str(pdf), "-"],
                         capture_output=True, text=True, check=True).stdout
    pages = out.split("\x0c")
    pat1 = re.compile(rf"請閱讀.*回答[\s]*{passage_qnum}")
    pat2 = re.compile(rf"^[\s]*{passage_qnum}\.[\s]")
    for pi, page in enumerate(pages, 1):
        if pat1.search(page):
            return pi
        for line in page.splitlines():
            if pat2.match(line):
                return pi
    return None


def render_page(pdf: Path, page_idx: int, out_dir: Path, dpi: int = 250) -> Optional[Path]:
    out_dir.mkdir(parents=True, exist_ok=True)
    prefix = str(out_dir / f"page-{page_idx:02d}-r{dpi}")
    subprocess.run(
        ["pdftoppm", "-r", str(dpi), "-png", "-f", str(page_idx), "-l", str(page_idx),
         str(pdf), prefix],
        check=True, capture_output=True,
    )
    cands = sorted(out_dir.glob(f"page-{page_idx:02d}-r{dpi}-*.png"))
    return cands[0] if cands else None


def call_vision(api_key: str, image_b64: str, passage_qnum: int, year: int, temperature: float = 0.0) -> Tuple[bool, dict, str]:
    user_text = f"請抽取 {year} 年國中會考第 {passage_qnum} 題組的閱讀文本（passage 主體，不含子題）。"
    body = json.dumps({
        "model": MODEL_HAIKU,
        "max_tokens": 2000,
        "system": SYSTEM_PROMPT,
        "temperature": temperature,
        "messages": [{
            "role": "user",
            "content": [
                {"type": "image", "source": {"type": "base64", "media_type": "image/png", "data": image_b64}},
                {"type": "text", "text": user_text},
            ],
        }],
    })
    with tempfile.NamedTemporaryFile(mode="w", suffix=".json", delete=False, encoding="utf-8") as f:
        f.write(body)
        body_file = f.name
    try:
        for attempt in range(4):
            try:
                cp = subprocess.run([
                    "curl", "-sS", "-X", "POST", ANTHROPIC_API_URL,
                    "-H", f"x-api-key: {api_key}",
                    "-H", f"anthropic-version: {ANTHROPIC_VERSION}",
                    "-H", "content-type: application/json",
                    "--data-binary", f"@{body_file}",
                    "--max-time", "120",
                    "-w", "\n%{http_code}",
                ], capture_output=True, text=True, timeout=140)
                stdout = cp.stdout
                lines = stdout.rsplit("\n", 1)
                body_resp, code_str = (lines[0], lines[1]) if len(lines) == 2 else (stdout, "0")
                try:
                    code = int(code_str.strip())
                except ValueError:
                    code = 0
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


def update_db(qid: str, passage: str, has_table: bool, has_figure: bool, conf: str, token: str) -> Tuple[bool, str]:
    # PG standard_conforming_strings=on：text 不需 double backslash；jsonb 由 json.dumps 處理
    media = {
        "kind_hint": "single",
        "passage_text": passage,
        "has_table": has_table,
        "has_figure": has_figure,
        "vision_extracted": True,
        "vision_confidence": conf,
    }
    media_lit = json.dumps(media, ensure_ascii=False).replace("'", "''").replace("\x00", "")
    sql = (
        f"UPDATE public.questions "
        f"SET media = '{media_lit}'::jsonb, "
        f"    source_meta = COALESCE(source_meta, '{{}}'::jsonb) || jsonb_build_object('passage_vision_fixed', 'v1'), "
        f"    updated_at = now() "
        f"WHERE id = '{qid}';"
    )
    return execute_sql(sql, token)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--ids", default=",".join(DEFAULT_IDS),
                    help="comma-separated passage_parent id list（預設 4 個 math）")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--dpi", type=int, default=250)
    ap.add_argument("--temp", type=float, default=0.0)
    args = ap.parse_args()

    api_key = os.environ.get("ANTHROPIC_API_KEY", "").strip()
    sb_token = os.environ.get("SUPABASE_ACCESS_TOKEN", "").strip()
    if not api_key:
        sys.exit("ERROR: 缺 ANTHROPIC_API_KEY")
    if not args.dry_run and not sb_token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")
    print(f"[env] ANTHROPIC_API_KEY len={len(api_key)} prefix={api_key[:10]}…")
    if not args.dry_run:
        print(f"[env] SUPABASE_ACCESS_TOKEN len={len(sb_token)} prefix={sb_token[:6]}…")

    ids = [s.strip() for s in args.ids.split(",") if s.strip()]
    # qid format: cap-{year}-{subject}-passage-{qnum}
    re_id = re.compile(r"^cap-(\d+)-([\w-]+)-passage-(\d+)$")

    out_dir = REPO / "outputs/cap_passage_vision"
    out_dir.mkdir(parents=True, exist_ok=True)

    grand_ok = grand_fail = 0
    in_tok = out_tok = 0

    for qid in ids:
        m = re_id.match(qid)
        if not m:
            print(f"  {qid}: bad id format, skip"); grand_fail += 1; continue
        year = int(m.group(1))
        subject = m.group(2)
        passage_qnum = int(m.group(3))
        print(f"\n=== {qid} ===")
        pdf = find_pdf(year, subject)
        if not pdf:
            print(f"  PDF missing for {year}/{subject}"); grand_fail += 1; continue
        page_idx = find_passage_page(pdf, passage_qnum)
        if not page_idx:
            print(f"  page mapping fail for passage {passage_qnum}"); grand_fail += 1; continue
        page_dir = out_dir / f"cap-{year}-{subject}"
        page_png = render_page(pdf, page_idx, page_dir, dpi=args.dpi)
        if not page_png:
            print(f"  page render fail"); grand_fail += 1; continue
        b64 = base64.b64encode(page_png.read_bytes()).decode("ascii")
        print(f"  page {page_idx} (dpi={args.dpi}) → vision ...", end=" ", flush=True)
        ok, payload, err = call_vision(api_key, b64, passage_qnum, year, temperature=args.temp)
        if not ok:
            print(f"FAIL: {err[:160]}"); grand_fail += 1; continue
        in_tok += int(payload.get("usage", {}).get("input_tokens", 0) or 0)
        out_tok += int(payload.get("usage", {}).get("output_tokens", 0) or 0)
        result = parse_json(payload["raw"])
        if not result or not result.get("passage_text"):
            print(f"PARSE FAIL")
            print(f"  raw[:300]: {payload['raw'][:300]}")
            grand_fail += 1
            continue
        passage = result["passage_text"]
        has_table = bool(result.get("has_table"))
        has_figure = bool(result.get("has_figure"))
        conf = result.get("confidence", "medium")
        print(f"OK conf={conf} table={has_table} figure={has_figure} len={len(passage)}")
        # 印前 200 字確認內容
        for line in passage.split("\n")[:8]:
            print(f"    {line[:100]}")
        if args.dry_run:
            grand_ok += 1; continue
        ok2, info = update_db(qid, passage, has_table, has_figure, conf, sb_token)
        if ok2:
            print(f"  DB UPDATE OK"); grand_ok += 1
        else:
            print(f"  DB UPDATE FAIL: {info[:200]}"); grand_fail += 1

    cost_in = in_tok / 1_000_000 * 1.0
    cost_out = out_tok / 1_000_000 * 5.0
    print(f"\n=== 完成 ===")
    print(f"OK: {grand_ok}, FAIL: {grand_fail}")
    print(f"input tokens: {in_tok:,}, output tokens: {out_tok:,}")
    print(f"cost: ${cost_in + cost_out:.4f}")


if __name__ == "__main__":
    main()
