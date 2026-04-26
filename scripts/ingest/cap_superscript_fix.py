#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_superscript_fix.py — 偵測 PDF 上標還原成 Unicode 上標字元

問題：pdftotext 預設 layout 模式把上標壓平（7^10 → 710），導致 math/nature
的指數律 / 多項式 / 物理公式題完全失去意義。

解法：pdftotext -bbox-layout 輸出 XML 含每個 word 的 (xMin, yMin, xMax, yMax)。
上標的 word 字高 < baseline 平均 60% 且 yMin 偏低（與 baseline 對齊上方）。
偵測到上標 word 用 Unicode SUPERSCRIPT 字元組裝。

用法：
  python3 scripts/ingest/cap_superscript_fix.py --year 114 --subject math
  python3 scripts/ingest/cap_superscript_fix.py --all-math
  python3 scripts/ingest/cap_superscript_fix.py --dry-run --year 114 --subject math

輸出：fixed stem/options diff 印出 + UPDATE DB（除非 --dry-run）
需要 SUPABASE_ACCESS_TOKEN env var。
"""
from __future__ import annotations
import argparse
import json
import os
import re
import subprocess
import sys
import time
import urllib.request
import urllib.error
from pathlib import Path
from typing import Dict, List, Optional, Tuple
import xml.etree.ElementTree as ET

REPO = Path(__file__).resolve().parents[2]
PDF_ROOT = REPO / "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year"

PROJECT_REF = "myvfboezhnzgovowhaff"
SUPABASE_MGMT_URL = f"https://api.supabase.com/v1/projects/{PROJECT_REF}/database/query"

# subject → PDF 檔名
SUBJECT_PDF_PATTERNS = {
    "math":    ["{year}P_Math.pdf", "{year}P_Math150DPI.pdf"],
    "nature":  ["{year}P_Nature.pdf", "{year}P_Nature150DPI.pdf"],
}

# Unicode superscript 對照
SUPER_MAP = str.maketrans({
    "0": "⁰", "1": "¹", "2": "²", "3": "³", "4": "⁴",
    "5": "⁵", "6": "⁶", "7": "⁷", "8": "⁸", "9": "⁹",
    "+": "⁺", "-": "⁻", "=": "⁼", "(": "⁽", ")": "⁾",
    "n": "ⁿ", "i": "ⁱ", "a": "ᵃ", "b": "ᵇ", "x": "ˣ",
})

# Unicode subscript 對照（少用但加上以防萬一）
SUB_MAP = str.maketrans({
    "0": "₀", "1": "₁", "2": "₂", "3": "₃", "4": "₄",
    "5": "₅", "6": "₆", "7": "₇", "8": "₈", "9": "₉",
    "+": "₊", "-": "₋", "=": "₌", "(": "₍", ")": "₎",
    "a": "ₐ", "e": "ₑ", "i": "ᵢ", "o": "ₒ",
})


def to_superscript(s: str) -> str:
    """把字串中的數字/符號轉 Unicode 上標"""
    return s.translate(SUPER_MAP)


def to_subscript(s: str) -> str:
    return s.translate(SUB_MAP)


def find_pdf_path(year: int, subject: str) -> Optional[Path]:
    folder = PDF_ROOT / str(year)
    for pat in SUBJECT_PDF_PATTERNS.get(subject, []):
        p = folder / pat.format(year=year)
        if p.exists():
            return p
    return None


def parse_bbox_xml(pdf_path: Path) -> List[Dict]:
    """跑 pdftotext -bbox-layout 拿到所有 page 的 word + bbox。
    用 regex 而非 ElementTree 以避免遇到非法 XML 字元（nature 卷常見 PUA 字元）失敗。"""
    result = subprocess.run(
        ["pdftotext", "-bbox-layout", str(pdf_path), "-"],
        capture_output=True, text=True, check=True,
    )
    text = result.stdout
    # 切 page
    page_chunks = re.split(r'<page\b[^>]*>', text)[1:]  # drop pre-first-page header
    re_word = re.compile(
        r'<word\s+xMin="([\d.]+)"\s+yMin="([\d.]+)"\s+xMax="([\d.]+)"\s+yMax="([\d.]+)"[^>]*>(.*?)</word>',
        re.DOTALL,
    )
    pages_data = []
    for chunk in page_chunks:
        # 切到 </page>
        end = chunk.find('</page>')
        if end >= 0:
            chunk = chunk[:end]
        page_words = []
        for m in re_word.finditer(chunk):
            xmin, ymin, xmax, ymax, txt = m.groups()
            txt = txt.replace("&amp;", "&").replace("&lt;", "<").replace("&gt;", ">").replace("&quot;", '"').replace("&apos;", "'")
            if not txt.strip():
                continue
            try:
                page_words.append({
                    "text": txt,
                    "xmin": float(xmin), "ymin": float(ymin),
                    "xmax": float(xmax), "ymax": float(ymax),
                    "height": float(ymax) - float(ymin),
                    "width": float(xmax) - float(xmin),
                })
            except ValueError:
                continue
        pages_data.append(page_words)
    return pages_data


def detect_super_sub(words: List[Dict]) -> List[Dict]:
    """掃過一頁的 words，標記上標/下標。
    判斷規則（相對前後 baseline word）：
      - 字高 < baseline 平均 70%
      - yMin 比 baseline 平均 yMin 大（下標）或字頂（ymax）對齊 baseline 上半 → 上標
    """
    if not words:
        return words
    # baseline 平均字高（只算高度 > 5px 排除雜訊）
    heights = [w["height"] for w in words if w["height"] > 5]
    if not heights:
        return words
    median_h = sorted(heights)[len(heights) // 2]

    for w in words:
        w["is_super"] = False
        w["is_sub"] = False
        # 字高顯著偏小 + 文字含數字或代數符號 → 候選
        if w["height"] < median_h * 0.7 and re.match(r"^[0-9\+\-\=\(\)nixab]+$", w["text"].strip()):
            # ymax 偏小 (頂端對齊上方) → super
            # 我們找前一個 baseline word 比對
            # 簡單規則：若字高 < median*0.7 → 標 super (大多情況)
            w["is_super"] = True
    return words


def reconstruct_text_with_super(words: List[Dict], mode: str = "latex") -> str:
    """把標記過的 words 重組。
    mode='unicode': 用 Unicode 上下標字元（⁰¹²³...）
    mode='latex': 用 KaTeX inline `$base^{sup}$` 格式
    """
    if mode == "unicode":
        out = []
        for w in words:
            text = w["text"]
            if w.get("is_super"):
                text = to_superscript(text)
            elif w.get("is_sub"):
                text = to_subscript(text)
            out.append(text)
        return "".join(out)

    # latex mode: 把連續 super 或 sub group 跟前面 base 合併成 $base^{sup}$
    # 規則：base = 上一個非 super/sub word；後面連續若干 super/sub 都歸這個 base
    out = []
    i = 0
    n = len(words)
    while i < n:
        w = words[i]
        if w.get("is_super") or w.get("is_sub"):
            # 沒有 base（孤兒）→ 直接 append 原文（極少數）
            out.append(w["text"])
            i += 1
            continue
        # 是 base
        base_text = w["text"]
        # collect 後面連續的 super / sub
        sups = []
        subs = []
        j = i + 1
        while j < n and (words[j].get("is_super") or words[j].get("is_sub")):
            if words[j].get("is_super"):
                sups.append(words[j]["text"])
            else:
                subs.append(words[j]["text"])
            j += 1
        if sups or subs:
            # KaTeX 用 - 不用 −；- 統一處理成 ASCII
            base_clean = base_text.replace("−", "-")
            sup_clean = "".join(sups).replace("−", "-") if sups else ""
            sub_clean = "".join(subs).replace("−", "-") if subs else ""
            latex = base_clean
            if sub_clean:
                latex += f"_{{{sub_clean}}}"
            if sup_clean:
                latex += f"^{{{sup_clean}}}"
            # 若 base 含特殊字元（如 *, \, $）需要 escape，這裡簡化先不做
            out.append(f"${latex}$")
            i = j
        else:
            out.append(base_text)
            i += 1
    return "".join(out)


def extract_question_blocks(words: List[Dict]) -> Dict[int, str]:
    """在一頁中找題號 N. (即 word.text == 'N.') 切分各題，回 {qnum: text}。
    只接受至少有 (A) 選項出現的塊（避開封面 1./2. 注意事項）。"""
    questions: Dict[int, str] = {}
    cur_qnum = None
    cur_words: List[Dict] = []
    re_qnum = re.compile(r"^(\d+)\.$")

    def commit():
        nonlocal cur_qnum, cur_words
        if cur_qnum is None or not cur_words:
            return
        text = reconstruct_text_with_super(cur_words)
        # 需含 (A) marker 才算題目
        if re.search(r"\(\s*A\s*\)", text):
            # 若已有此 qnum，挑長度更長的（多頁/多 candidate 取較完整版）
            if cur_qnum not in questions or len(text) > len(questions[cur_qnum]):
                questions[cur_qnum] = text
        cur_qnum = None
        cur_words = []

    for w in words:
        m = re_qnum.match(w["text"].strip())
        if m and 1 <= int(m.group(1)) <= 60:
            commit()
            cur_qnum = int(m.group(1))
            cur_words = []
            continue
        if cur_qnum is not None:
            cur_words.append(w)
    commit()
    return questions


def split_stem_options(text: str) -> Tuple[str, List[str]]:
    """從題目區塊文字切出 stem + 4 options。
    options 用 (A)/(B)/(C)/(D) 標記分隔。"""
    # 找 (A) 出現位置
    m = re.search(r"\(\s*A\s*\)", text)
    if not m:
        return text.strip(), []
    stem = text[:m.start()].strip()
    rest = text[m.start():]
    # 用 (A)/(B)/(C)/(D) 切
    parts = re.split(r"\(\s*([A-D])\s*\)", rest)
    # parts: ['', 'A', '...', 'B', '...', 'C', '...', 'D', '...']
    opts = ["", "", "", ""]
    for i in range(1, len(parts) - 1, 2):
        letter = parts[i]
        content = parts[i + 1].strip() if i + 1 < len(parts) else ""
        idx = "ABCD".index(letter) if letter in "ABCD" else None
        if idx is not None:
            opts[idx] = content
    return stem, opts


def fix_paper(year: int, subject: str, mode: str = "latex") -> Dict[str, Tuple[str, List[str]]]:
    """跑單一 paper，回 {qid: (new_stem, new_options)}"""
    pdf = find_pdf_path(year, subject)
    if not pdf:
        print(f"  {year}-{subject}: PDF missing")
        return {}
    pages = parse_bbox_xml(pdf)
    paper_id = f"cap-{year}-{subject}"
    results: Dict[str, Tuple[str, List[str]]] = {}
    for page_words in pages:
        page_words = detect_super_sub(page_words)
        qblocks = extract_question_blocks_mode(page_words, mode)
        for qnum, text in qblocks.items():
            stem, opts = split_stem_options(text)
            if not stem and not any(opts):
                continue
            qid = f"{paper_id}-{qnum:03d}"
            results[qid] = (stem, opts)
    return results


def extract_question_blocks_mode(words: List[Dict], mode: str = "latex") -> Dict[int, str]:
    """同 extract_question_blocks 但走 mode-aware reconstruct"""
    questions: Dict[int, str] = {}
    cur_qnum = None
    cur_words: List[Dict] = []
    re_qnum = re.compile(r"^(\d+)\.$")

    def commit():
        nonlocal cur_qnum, cur_words
        if cur_qnum is None or not cur_words:
            return
        text = reconstruct_text_with_super(cur_words, mode)
        if re.search(r"\(\s*A\s*\)", text):
            if cur_qnum not in questions or len(text) > len(questions[cur_qnum]):
                questions[cur_qnum] = text
        cur_qnum = None
        cur_words = []

    for w in words:
        m = re_qnum.match(w["text"].strip())
        if m and 1 <= int(m.group(1)) <= 60:
            commit()
            cur_qnum = int(m.group(1))
            cur_words = []
            continue
        if cur_qnum is not None:
            cur_words.append(w)
    commit()
    return questions


def execute_sql(sql: str, token: str) -> Tuple[bool, str]:
    payload = json.dumps({"query": sql}).encode("utf-8")
    req = urllib.request.Request(
        SUPABASE_MGMT_URL, data=payload,
        headers={"Authorization": f"Bearer {token}", "Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
        method="POST",
    )
    for attempt in range(4):
        try:
            with urllib.request.urlopen(req, timeout=60) as r:
                return True, r.read().decode("utf-8")
        except urllib.error.HTTPError as e:
            err = f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:200]}"
            if e.code in (429, 502, 503, 504) and attempt < 3:
                time.sleep(2 ** attempt); continue
            return False, err
        except Exception as e:
            if attempt < 3:
                time.sleep(1); continue
            return False, str(e)


def update_db(qid: str, stem: str, opts: List[str], token: str) -> Tuple[bool, str]:
    """UPDATE DB question_text + options"""
    stem_lit = stem.replace("'", "''").replace("\x00", "")
    opts_lit = json.dumps(opts, ensure_ascii=False).replace("'", "''").replace("\x00", "")
    sql = (
        f"UPDATE public.questions "
        f"SET question_text = '{stem_lit}', "
        f"    options = '{opts_lit}'::jsonb, "
        f"    source_meta = COALESCE(source_meta, '{{}}'::jsonb) || jsonb_build_object('superscript_fixed', true), "
        f"    updated_at = now() "
        f"WHERE id = '{qid}';"
    )
    return execute_sql(sql, token)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int)
    ap.add_argument("--subject", choices=["math", "nature"])
    ap.add_argument("--all-math", action="store_true")
    ap.add_argument("--all-nature", action="store_true")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=0, help="只處理前 N 題（debug）")
    ap.add_argument("--mode", choices=["unicode", "latex"], default="latex",
                    help="latex: $base^{sup}$ KaTeX 格式（預設）；unicode: ⁰¹²³ 字元")
    args = ap.parse_args()

    token = os.environ.get("SUPABASE_ACCESS_TOKEN", "")
    if not args.dry_run and not token:
        sys.exit("ERROR: 缺 SUPABASE_ACCESS_TOKEN")

    targets = []
    if args.all_math:
        targets = [(y, "math") for y in range(104, 115)]
    elif args.all_nature:
        targets = [(y, "nature") for y in range(104, 115)]
    elif args.year and args.subject:
        targets = [(args.year, args.subject)]
    else:
        sys.exit("ERROR: 給 --year + --subject 或 --all-math 或 --all-nature")

    grand_changed = 0
    for y, s in targets:
        print(f"\n=== {y}-{s} ({args.mode}) ===")
        results = fix_paper(y, s, args.mode)
        if not results:
            continue
        changed = 0
        i = 0
        for qid, (stem, opts) in sorted(results.items()):
            if args.limit and i >= args.limit:
                break
            i += 1
            # 只顯示真有上標變動的（含 LaTeX 標記）
            has_changed = ("$" in stem or any("$" in o for o in opts)
                           or any(c in (stem + " ".join(opts)) for c in "⁰¹²³⁴⁵⁶⁷⁸⁹⁺⁻⁼⁽⁾ⁿⁱᵃᵇˣ"))
            if not has_changed:
                continue
            print(f"\n  {qid}")
            print(f"    new stem: {stem[:120]}")
            for j, o in enumerate(opts):
                if o:
                    print(f"    ({chr(65+j)}) {o[:80]}")
            if not args.dry_run:
                ok, info = update_db(qid, stem, opts, token)
                if ok:
                    changed += 1
                else:
                    print(f"    DB UPDATE fail: {info[:200]}")
            else:
                changed += 1
        print(f"  {y}-{s}: {changed} questions {'would be' if args.dry_run else ''} updated")
        grand_changed += changed

    print(f"\n=== TOTAL: {grand_changed} questions {'would be' if args.dry_run else ''} updated ===")


if __name__ == "__main__":
    main()
