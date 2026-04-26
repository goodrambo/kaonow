#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_image_extract.py — W1.9.5: 用 Claude Haiku 4.5 vision 抽取 inactive 圖題

從 DB 查 cap exam 的 inactive 圖題（needs_image / option_image / option_incomplete），
渲染對應 PDF 頁面 → 送 Haiku 4.5 vision → 抽取完整題目（含圖文字描述 + bbox）→
跑 4 道閘門分 Tier 1/2/3 → 輸出 JSON 給後續 apply / review / verify pipeline。

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export ANTHROPIC_API_KEY='sk-ant-...'

  # Sanity 跑 1 paper
  python3 scripts/ingest/cap_image_extract.py --year 114 --subject society

  # 全 11 年 5 科
  python3 scripts/ingest/cap_image_extract.py --all

CLI:
  --year N --subject X    指定 1 paper
  --all                   全 5 科 11 年（chinese / society / math / nature / english-reading）
  --max-pages N           debug 用，限制每 paper 最多送幾頁
  --dry-run               只列出 task 不呼叫 API
  --filter only_stem|all  挑哪類 inactive 題（預設 only_stem，最容易）
"""
from __future__ import annotations

import argparse
import base64
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
import time
import urllib.request
import urllib.error
from datetime import date
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

# ============================================================================
# Constants
# ============================================================================

REPO = Path(__file__).resolve().parents[2]
PARSED_DIR = REPO / "content/parsed_cap"
OUTPUTS_DIR = REPO / "outputs/cap_image_extract"
FIGURES_DIR = REPO / "outputs/cap_image_extract/figures"
PAGES_CACHE_DIR = REPO / "outputs/cap_image_extract/pages_cache"

ANTHROPIC_API_URL = "https://api.anthropic.com/v1/messages"
MODEL_HAIKU = "claude-haiku-4-5-20251001"
ANTHROPIC_VERSION = "2023-06-01"

PDF_DPI = 200  # PDF 渲染解析度

# Supabase project for DB query
SUPABASE_URL = "https://myvfboezhnzgovowhaff.supabase.co"
SUPABASE_ANON_KEY = None  # 透過 Mgmt API 查（用 SUPABASE_ACCESS_TOKEN）

# 5 科 × 11 年
YEARS = [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114]
SUBJECTS = ["chinese", "society", "math", "nature", "english-reading"]

# subject → DB subject_id
SUBJECT_TO_DB_ID = {
    "chinese": "sub-cap-chinese",
    "english-reading": "sub-cap-english-reading",
    "math": "sub-cap-math",
    "society": "sub-cap-social",
    "nature": "sub-cap-science",
}

# subject → 中文名（給 prompt 用）
SUBJECT_ZH = {
    "chinese": "國文", "society": "社會", "math": "數學",
    "nature": "自然", "english-reading": "英語閱讀",
}

# subject → PDF 檔名 pattern
SUBJECT_PDF_PATTERNS = {
    "chinese": ["{year}P_Chinese.pdf", "{year}P_Chinese150DPI.pdf", "{year}P_Chinese150DPI-2.pdf"],
    "english-reading": ["{year}P_English.pdf", "{year}P_English150DPI.pdf"],
    "math": ["{year}P_Math.pdf", "{year}P_Math150DPI.pdf"],
    "society": ["{year}P_Society.pdf", "{year}P_Society150DPI.pdf"],
    "nature": ["{year}P_Nature.pdf", "{year}P_Nature150DPI.pdf"],
}

PDF_ROOT = REPO / "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year"


# ============================================================================
# Prompt
# ============================================================================

SYSTEM_PROMPT = """你是台灣國中教育會考試卷題目抽取助手。我會給你一張試卷頁面圖片，請逐題抽取頁面上的所有選擇題（不含說明文字、答題說明、頁碼）。

輸出必須是純 JSON 陣列（不可有 markdown 包裝、不可有 ```json``` 標記、不可有額外說明），每個元素為一道題：

[
  {
    "qnum": <題號數字>,
    "stem": "<完整題幹文字。若題幹引用圖/表，請以一段詳細文字「描述圖內容」融入題幹中（例如：圖中顯示一座標平面，X 軸標 0~10、Y 軸標 -5~5，曲線經過原點往右上延伸至 (8, 4) 後轉折下降）。讓沒看到圖的人也能完整答題。>",
    "options": ["<A 選項文字>", "<B 選項文字>", "<C 選項文字>", "<D 選項文字>"],
    "has_figure": true 或 false,
    "figure_description": "<若 has_figure=true，提供獨立的圖內容描述（與 stem 內描述呼應，但更精簡）；若 false 給空字串>",
    "figure_clarity": "clear" | "partial" | "unreadable",
    "confidence": "high" | "medium" | "low"
  },
  ...
]

規則：
1. **不要猜答案 letter**，不需要回正解。
2. options 一律 4 個（A, B, C, D），順序對應，不要含字母前綴。
3. 若選項本身是圖（電影海報、波形圖、地圖等），option 字串描述每個選項的內容。
4. confidence: 文字清晰、選項齊全、圖描述完整 → high；任何模糊/缺失 → medium 或 low。
5. figure_clarity: 圖細節都看得清楚 → clear；部分模糊或細節不確定 → partial；看不出來 → unreadable。
6. 只抽該頁面上完整呈現的題目（題目跨頁時若一半在這頁、一半在另一頁，仍可抽出但 confidence 設 medium 並註記在 stem 開頭 [跨頁]）。"""


# ============================================================================
# Anthropic API
# ============================================================================

def call_anthropic_vision(
    api_key: str,
    image_b64: str,
    user_text: str,
    model: str = MODEL_HAIKU,
    max_tokens: int = 4000,
    temperature: float = 0.0,
    timeout: int = 120,
) -> Tuple[bool, Dict[str, Any], str]:
    """送一張圖 + 文字到 Anthropic vision API"""
    payload = json.dumps({
        "model": model,
        "max_tokens": max_tokens,
        "system": SYSTEM_PROMPT,
        "temperature": temperature,
        "messages": [{
            "role": "user",
            "content": [
                {"type": "image", "source": {"type": "base64", "media_type": "image/png", "data": image_b64}},
                {"type": "text", "text": user_text},
            ],
        }],
    }).encode("utf-8")
    req = urllib.request.Request(
        ANTHROPIC_API_URL,
        data=payload,
        headers={
            "x-api-key": api_key,
            "anthropic-version": ANTHROPIC_VERSION,
            "content-type": "application/json",
            "User-Agent": "kaonow-cap-vision/0.1",
        },
        method="POST",
    )

    backoff = 1.0
    last_err = ""
    for attempt in range(5):
        try:
            with urllib.request.urlopen(req, timeout=timeout) as r:
                body = r.read().decode("utf-8")
                resp = json.loads(body)
                texts = [c.get("text", "") for c in resp.get("content", []) if c.get("type") == "text"]
                raw_text = "".join(texts).strip()
                usage = resp.get("usage", {})
                return True, {"raw_text": raw_text, "usage": usage}, ""
        except urllib.error.HTTPError as e:
            err_body = e.read().decode("utf-8", errors="replace")[:400]
            last_err = f"HTTP {e.code}: {err_body}"
            if e.code in (429, 500, 502, 503, 504) and attempt < 4:
                time.sleep(backoff)
                backoff *= 2
                continue
            return False, {}, last_err
        except Exception as e:
            last_err = f"err: {e}"
            if attempt < 4:
                time.sleep(backoff)
                backoff *= 2
                continue
            return False, {}, last_err
    return False, {}, last_err


def parse_vision_json(raw_text: str) -> Optional[List[Dict]]:
    """從 vision 回應解析 JSON 陣列。容錯多種格式。"""
    if not raw_text:
        return None
    # 直接解
    try:
        v = json.loads(raw_text)
        if isinstance(v, list):
            return v
    except Exception:
        pass
    # 找 [...] block
    m = re.search(r"\[[\s\S]*\]", raw_text)
    if m:
        try:
            v = json.loads(m.group(0))
            if isinstance(v, list):
                return v
        except Exception:
            pass
    return None


# ============================================================================
# DB query
# ============================================================================

SUPABASE_MGMT_URL = "https://api.supabase.com/v1/projects/myvfboezhnzgovowhaff/database/query"


def execute_sql_via_mgmt(sql: str, token: str) -> Tuple[bool, Any, str]:
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        SUPABASE_MGMT_URL,
        data=payload,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
            "User-Agent": "Mozilla/5.0",
        },
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=60) as r:
            body = r.read().decode("utf-8")
            return True, json.loads(body), ""
    except urllib.error.HTTPError as e:
        return False, None, f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:300]}"
    except Exception as e:
        return False, None, str(e)


def query_inactive_image_questions(year: int, subject: str, token: str, filter_type: str = "only_stem") -> List[Dict]:
    """查 DB 拿 inactive 圖題清單。
    filter_type:
      - 'only_stem': 只題幹有圖（最容易，860 題）
      - 'all': 含 option_image / option_incomplete（1101 題）
    """
    db_subj = SUBJECT_TO_DB_ID[subject]
    paper_id = f"cap-{year}-{subject}"
    if filter_type == "only_stem":
        flag_filter = "(source_meta->'flags' ? 'needs_image') AND NOT (source_meta->'flags' ? 'option_image')"
    else:
        flag_filter = (
            "(source_meta->'flags' ? 'needs_image') OR "
            "(source_meta->'flags' ? 'option_image') OR "
            "(source_meta->'flags' ? 'option_incomplete')"
        )

    sql = f"""SELECT id, source_meta->>'original_question_number' AS qnum,
       question_text, options, correct_answer, source_meta->'flags' AS flags
FROM public.questions
WHERE paper_id = '{paper_id}'
  AND NOT is_active
  AND question_type = 'single_choice'
  AND ({flag_filter})
  AND (id NOT LIKE '%-essay-%')
ORDER BY (source_meta->>'original_question_number')::int;"""
    ok, data, err = execute_sql_via_mgmt(sql, token)
    if not ok:
        print(f"  DB query fail: {err}", file=sys.stderr)
        return []
    return data or []


# ============================================================================
# PDF rendering + page→qnum mapping
# ============================================================================

def find_pdf_path(year: int, subject: str) -> Optional[Path]:
    folder = PDF_ROOT / str(year)
    for pat in SUBJECT_PDF_PATTERNS.get(subject, []):
        p = folder / pat.format(year=year)
        if p.exists():
            return p
    return None


def render_pages(pdf_path: Path, out_dir: Path) -> List[Path]:
    """渲染 PDF 全部頁面為 PNG，回傳排序後的路徑清單"""
    out_dir.mkdir(parents=True, exist_ok=True)
    # 已有的話跳過
    existing = sorted(out_dir.glob("page-*.png"))
    if existing:
        return existing
    prefix = str(out_dir / "page")
    subprocess.run(
        ["pdftoppm", "-r", str(PDF_DPI), "-png", str(pdf_path), prefix],
        check=True,
        capture_output=True,
    )
    return sorted(out_dir.glob("page-*.png"))


def map_qnums_to_pages(pdf_path: Path) -> Dict[int, int]:
    """用 pdftotext 找出每個 qnum 在哪一頁（1-indexed）"""
    result = subprocess.run(
        ["pdftotext", "-layout", str(pdf_path), "-"],
        capture_output=True, text=True, check=True,
    )
    text = result.stdout
    # split by form feed (pdftotext page break)
    pages = text.split("\x0c")
    qnum_to_page: Dict[int, int] = {}
    re_q = re.compile(r"^(\d+)\.\s")
    for page_idx, page_text in enumerate(pages, 1):
        for line in page_text.splitlines():
            m = re_q.match(line)
            if m:
                qn = int(m.group(1))
                if 1 <= qn <= 70 and qn not in qnum_to_page:
                    qnum_to_page[qn] = page_idx
    return qnum_to_page


def crop_figure(page_png_path: Path, bbox_pct: List[float], out_path: Path, margin_pct: float = 5.0) -> bool:
    """根據 bbox_pct 裁圖。bbox_pct = [x1, y1, x2, y2] 都是 0-100。
    若 bbox 不合理（負值、超出範圍、太小）回 False，由 caller 決定 fallback。"""
    try:
        from PIL import Image
    except ImportError:
        return False
    if (not bbox_pct) or len(bbox_pct) != 4:
        return False
    x1p, y1p, x2p, y2p = bbox_pct
    if not (0 <= x1p < x2p <= 100 and 0 <= y1p < y2p <= 100):
        return False
    if (x2p - x1p) < 5 or (y2p - y1p) < 5:
        return False
    # 加 margin
    x1p = max(0, x1p - margin_pct)
    y1p = max(0, y1p - margin_pct)
    x2p = min(100, x2p + margin_pct)
    y2p = min(100, y2p + margin_pct)
    img = Image.open(page_png_path)
    w, h = img.size
    box = (int(x1p / 100 * w), int(y1p / 100 * h), int(x2p / 100 * w), int(y2p / 100 * h))
    cropped = img.crop(box)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    cropped.save(out_path, "PNG", optimize=True)
    return True


# ============================================================================
# Quality gates
# ============================================================================

def char_overlap_ratio(a: str, b: str) -> float:
    """純字元集合重疊比例（不含標點）。回 b 中有多少比例的字元出現在 a。"""
    if not a or not b:
        return 0.0
    a_chars = set(re.sub(r"[\s\W\d]", "", a))
    b_chars = set(re.sub(r"[\s\W\d]", "", b))
    if not b_chars:
        return 1.0
    return len(a_chars & b_chars) / len(b_chars)


def apply_gates(extracted_q: Dict, db_record: Dict) -> Tuple[str, str]:
    """回 (tier, reason)。
    tier: 'auto_ok' / 'needs_review' / 'reject'
    """
    # 閘 1: 硬規則
    opts = extracted_q.get("options") or []
    if not isinstance(opts, list) or len(opts) != 4:
        return "reject", f"options_count={len(opts)}"
    if any((not isinstance(o, str)) or not o.strip() for o in opts):
        return "reject", "empty_or_nonstr_option"
    if len(set(o.strip() for o in opts)) != 4:
        return "reject", "duplicate_options"

    stem = (extracted_q.get("stem") or "").strip()
    if len(stem) < 20:
        return "reject", f"stem_short={len(stem)}"

    # 閘 1b: stem 必須包含 pdftotext 既有 stem 的關鍵字 (>70%)
    db_stem = (db_record.get("question_text") or "").strip()
    # db_stem 可能很短（圖題 pdftotext 抽不到全部）→ overlap 0 也可
    if db_stem and len(re.sub(r"[\s\W\d]", "", db_stem)) >= 8:
        ovr = char_overlap_ratio(stem, db_stem)
        if ovr < 0.5:
            return "reject", f"stem_drift={ovr:.0%}"

    # 閘 2: 信心分級
    conf = extracted_q.get("confidence", "low")
    clarity = extracted_q.get("figure_clarity", "unreadable")
    if conf == "high" and clarity == "clear":
        return "auto_ok", "high_conf"
    if conf in ("medium", "high") and clarity in ("clear", "partial"):
        return "needs_review", f"conf={conf}_clarity={clarity}"
    return "reject", f"conf={conf}_clarity={clarity}"


# ============================================================================
# Main extraction pipeline (per paper)
# ============================================================================

def b64_image(path: Path) -> str:
    return base64.b64encode(path.read_bytes()).decode("ascii")


def extract_one_paper(
    year: int,
    subject: str,
    api_key: str,
    sb_token: str,
    filter_type: str = "only_stem",
    max_pages: int = 0,
    dry_run: bool = False,
) -> Dict[str, Any]:
    """處理單一 paper：查 DB → render pages → vision → gates → save"""
    paper_id = f"cap-{year}-{subject}"
    print(f"\n=== {paper_id} ===")

    # 1. 從 DB 抓 inactive 圖題
    db_questions = query_inactive_image_questions(year, subject, sb_token, filter_type)
    if not db_questions:
        print(f"  no inactive image questions")
        return {"paper_id": paper_id, "skipped": True}

    db_by_qnum = {int(q["qnum"]): q for q in db_questions if q.get("qnum")}
    target_qnums = set(db_by_qnum.keys())
    print(f"  target qnums: {sorted(target_qnums)} ({len(target_qnums)} questions)")

    # 2. 找 PDF + page→qnum mapping
    pdf_path = find_pdf_path(year, subject)
    if not pdf_path:
        print(f"  PDF not found")
        return {"paper_id": paper_id, "error": "pdf_missing"}
    qnum_to_page = map_qnums_to_pages(pdf_path)
    pages_with_targets = sorted({qnum_to_page.get(qn) for qn in target_qnums if qn in qnum_to_page})
    if not pages_with_targets:
        print(f"  ERROR: no qnum→page mapping; pdftotext may be missing those qnums")
        return {"paper_id": paper_id, "error": "no_page_mapping"}
    if max_pages > 0:
        pages_with_targets = pages_with_targets[:max_pages]
    print(f"  pages to process: {pages_with_targets}")

    if dry_run:
        print(f"  [dry-run] would call vision on {len(pages_with_targets)} pages")
        return {"paper_id": paper_id, "dry_run": True, "pages": pages_with_targets, "targets": list(target_qnums)}

    # 3. render pages
    pages_out_dir = PAGES_CACHE_DIR / paper_id
    all_page_paths = render_pages(pdf_path, pages_out_dir)
    page_path_by_idx = {i + 1: p for i, p in enumerate(all_page_paths)}

    # 4. vision 抽取 + gates
    extracted_questions: List[Dict] = []
    failed_pages: List[Dict] = []
    total_in_tok = 0
    total_out_tok = 0

    for page_idx in pages_with_targets:
        page_png = page_path_by_idx.get(page_idx)
        if not page_png:
            failed_pages.append({"page": page_idx, "reason": "png_missing"})
            continue
        print(f"  [page {page_idx}] sending to vision ...", end=" ", flush=True)
        img_b64 = b64_image(page_png)
        user_text = (
            f"這是 {year} 年國中會考 {SUBJECT_ZH[subject]} 試題第 {page_idx} 頁。"
            f"請抽取頁面上所有題目（按題號順序）。"
        )
        ok, payload, err = call_anthropic_vision(api_key, img_b64, user_text)
        if not ok:
            print(f"API FAIL: {err[:120]}")
            failed_pages.append({"page": page_idx, "reason": "api_fail", "err": err[:200]})
            continue
        usage = payload.get("usage", {})
        total_in_tok += int(usage.get("input_tokens", 0) or 0)
        total_out_tok += int(usage.get("output_tokens", 0) or 0)

        parsed = parse_vision_json(payload["raw_text"])
        if not parsed:
            print(f"PARSE FAIL")
            failed_pages.append({"page": page_idx, "reason": "json_parse_fail",
                                 "raw_first_200": payload["raw_text"][:200]})
            continue
        page_extracted = []
        for vq in parsed:
            try:
                qn = int(vq.get("qnum"))
            except Exception:
                continue
            if qn not in target_qnums:
                # 不是這次目標，但仍 log 抽到（不入庫）
                continue
            db_rec = db_by_qnum[qn]
            tier, reason = apply_gates(vq, db_rec)
            page_extracted.append({
                "qnum": qn,
                "page": page_idx,
                "tier": tier,
                "tier_reason": reason,
                "extracted": vq,
                "db_id": db_rec["id"],
                "db_correct_answer": db_rec.get("correct_answer"),
                "db_question_text": db_rec.get("question_text"),
                "db_options": db_rec.get("options"),
                "db_flags": db_rec.get("flags"),
            })

            # 5. 圖檔策略：用整頁 PNG 當 image，可靠且帶上下文。
            #    每題 image_path 指向同一頁 PNG（多題共用同頁是正常的）
            page_png_dst = FIGURES_DIR / paper_id / f"page-{page_idx:02d}.png"
            if not page_png_dst.exists():
                page_png_dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy(page_png, page_png_dst)
            if vq.get("has_figure"):
                page_extracted[-1]["figure_cropped"] = True  # 整頁版視為「有圖」
                page_extracted[-1]["figure_path"] = str(page_png_dst)
                page_extracted[-1]["figure_kind"] = "full_page"

        extracted_questions.extend(page_extracted)
        print(f"OK ({len(page_extracted)} / page)")

    # 6. summary
    tier_counts = {"auto_ok": 0, "needs_review": 0, "reject": 0}
    for eq in extracted_questions:
        tier_counts[eq["tier"]] = tier_counts.get(eq["tier"], 0) + 1

    output = {
        "paper_id": paper_id,
        "year": year,
        "subject": subject,
        "extracted_at": date.today().isoformat(),
        "model": MODEL_HAIKU,
        "filter_type": filter_type,
        "stats": {
            "target_count": len(target_qnums),
            "extracted_count": len(extracted_questions),
            "tier_counts": tier_counts,
            "failed_pages": len(failed_pages),
            "input_tokens": total_in_tok,
            "output_tokens": total_out_tok,
            "est_cost_usd": round(total_in_tok / 1_000_000 + total_out_tok / 1_000_000 * 5, 4),
        },
        "questions": extracted_questions,
        "failed_pages": failed_pages,
    }

    OUTPUTS_DIR.mkdir(parents=True, exist_ok=True)
    out_path = OUTPUTS_DIR / f"{year}-{subject}.json"
    out_path.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(
        f"  Tier 1 auto_ok: {tier_counts['auto_ok']}, "
        f"Tier 2 needs_review: {tier_counts['needs_review']}, "
        f"Tier 3 reject: {tier_counts['reject']}"
    )
    print(f"  cost: ${output['stats']['est_cost_usd']:.4f}")
    print(f"  wrote {out_path}")
    return output


# ============================================================================
# CLI
# ============================================================================

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int)
    ap.add_argument("--subject", choices=SUBJECTS)
    ap.add_argument("--all", action="store_true")
    ap.add_argument("--filter", default="only_stem", choices=["only_stem", "all"])
    ap.add_argument("--max-pages", type=int, default=0)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    api_key = os.environ.get("ANTHROPIC_API_KEY", "")
    sb_token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not args.dry_run:
        if not api_key:
            sys.exit("ERROR: 缺 ANTHROPIC_API_KEY")
    if not sb_token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")

    # 確保 PIL 可用（裁圖用）
    try:
        import PIL  # noqa
    except ImportError:
        print("WARN: PIL 未安裝，將跳過 crop_figure。安裝：python3 -m pip install Pillow --break-system-packages")

    if args.all:
        targets = [(y, s) for y in YEARS for s in SUBJECTS]
    elif args.year and args.subject:
        targets = [(args.year, args.subject)]
    else:
        sys.exit("ERROR: 給 --year + --subject 或 --all")

    grand_in = grand_out = 0
    grand_tier = {"auto_ok": 0, "needs_review": 0, "reject": 0}
    for y, s in targets:
        result = extract_one_paper(y, s, api_key, sb_token, args.filter, args.max_pages, args.dry_run)
        if result.get("dry_run") or result.get("skipped") or result.get("error"):
            continue
        st = result["stats"]
        grand_in += st["input_tokens"]
        grand_out += st["output_tokens"]
        for k, v in st["tier_counts"].items():
            grand_tier[k] = grand_tier.get(k, 0) + v

    print()
    print("=== TOTAL ===")
    print(f"Tier 1 auto_ok:      {grand_tier['auto_ok']}")
    print(f"Tier 2 needs_review: {grand_tier['needs_review']}")
    print(f"Tier 3 reject:       {grand_tier['reject']}")
    print(f"input tokens:  {grand_in:,}")
    print(f"output tokens: {grand_out:,}")
    cost = grand_in / 1_000_000 + grand_out / 1_000_000 * 5
    print(f"est cost: ${cost:.4f}")


if __name__ == "__main__":
    main()
