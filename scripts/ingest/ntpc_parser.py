#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
ntpc_parser.py v1.1  (2026-04-21)

Parse 勞動部勞動力發展署（ntpc 技能檢定）exam-paper PDFs into
content/parsed/{exam_id}/questions.json — the canonical Wave-0/Wave-1 format.

v1.1 changelog:
  - Detect "複選題：" section and emit `question_type='multiple_choice'`
    with `correct_answer_json` = [0-indexed] array (0-based).
  - single_choice rows stay as before: `correct_answer` = 0-based int,
    `correct_answer_json` = null.
  - Every row carries `source_meta` block (parser_version / parsed_at /
    source_pdf_sha1 / pdf_location / flags) per taxonomy §10.6.

Input:  content/sources/{exam_id}/questions/{exam_id}_q_ntpc_*.pdf
Output: content/parsed/{exam_id}/questions.json  +  parse_report.json

Usage:
  python scripts/ingest/ntpc_parser.py                    # parse all 40
  python scripts/ingest/ntpc_parser.py accounting-b       # parse one
  python scripts/ingest/ntpc_parser.py --dry-run          # no write

Dependencies: pdftotext CLI (poppler). Pure-python stdlib otherwise.
"""

from __future__ import annotations
import argparse
import hashlib
import json
import re
import subprocess
import sys
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import List, Dict, Optional, Tuple

PARSER_VERSION = "ntpc_v1.1"

# 預設路徑（相對於 repo 根）
REPO_ROOT = Path(__file__).resolve().parents[2]
SOURCES_DIR = REPO_ROOT / "content" / "sources"
PARSED_DIR = REPO_ROOT / "content" / "parsed"

# ── Regex patterns ──────────────────────────────────────────────────
# Format A（標準，~38 題庫用這個）：
#   1. (1)    下列何種方式沒有辦法降低洗衣機之使用水量？ ①兩、三件衣服 ②選擇 ③選擇 ④使用 。
#   61. (13) 下列何者為投資活動所產生之現金流入項目？ ①處分 ②處分 ③不動產 ④現金增資 。
#   61. (1234) ... （全部都對的複選）
RE_QLINE = re.compile(r'^\s*(\d+)\.\s*\(([1-4]{1,4})\)\s*(.*)$')

# Format B（nail-art-c 等，答案前置）：
#   (4)   1    指甲彩繪從業人員應該努力的目標，不包括
#             ①學習優雅的專業談吐  ②進修專業的知識和技術
#             ③關心社會及流行的趨勢 ④詢問顧客的隱私
RE_QLINE_ANSFIRST = re.compile(r'^\s*\(([1-4]{1,4})\)\s+(\d+)\s+(.*)$')

# 年度 section：113 年度 / 第 3 梯次 — 限定為 3 位數民國年份（避免匹配到題幹中的「06 年度」）
RE_YEAR = re.compile(r'(?:^|[^0-9])(1\d{2})\s*年度')

# 段落 markers
RE_MULTI_MARKER = re.compile(r'^\s*複選題[:：]')
RE_SINGLE_MARKER = re.compile(r'^\s*單選題[:：]')

# Option markers 在題幹內線內分隔
# 範例文本中選項用 ①②③④ 串接；末端可能有 句號「。」
CIRCLE_DIGITS = "①②③④⑤⑥⑦⑧"
# 逐一拆選項：以 ①...②...③... 切
RE_OPT_SPLIT = re.compile(r'[' + CIRCLE_DIGITS + ']')

# 跨行續行（常見 PDF 折行）：刪除尾端 hyphen / 非終止字元續行
# （這裡保守：只在 join 時 strip & concat）

def _hash_file(path: Path) -> str:
    h = hashlib.sha1()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(8192), b""):
            h.update(chunk)
    return h.hexdigest()[:12]  # 短 sha for brevity

def _pdf_to_text(pdf: Path) -> str:
    """pdftotext -layout → str. Returns empty string on failure."""
    try:
        proc = subprocess.run(
            ["pdftotext", "-layout", str(pdf), "-"],
            check=True, capture_output=True, text=True, timeout=60,
        )
        return proc.stdout
    except (subprocess.CalledProcessError, subprocess.TimeoutExpired, FileNotFoundError) as e:
        print(f"[!] pdftotext failed on {pdf}: {e}", file=sys.stderr)
        return ""

def _detect_current_section(lines: List[str], idx: int) -> Tuple[str, str]:
    """Scan backwards from `idx` to find the most recent section marker.
    Returns (section_type, year_label)."""
    section_type = "single_choice"  # default
    year_label = ""
    for i in range(idx, -1, -1):
        ln = lines[i]
        if RE_MULTI_MARKER.match(ln):
            section_type = "multiple_choice"
            break
        if RE_SINGLE_MARKER.match(ln):
            section_type = "single_choice"
            break
    # year 向前找最近的「NNN 年度」（3 位民國年）
    for i in range(idx, -1, -1):
        m = RE_YEAR.search(lines[i])
        if m:
            year_label = m.group(1) + "年度"
            break
    return section_type, year_label

def _split_opts(tail: str) -> Tuple[str, List[str]]:
    """給題目尾段「題幹文字 ①opt1 ②opt2 ③opt3 ④opt4 。」
    拆成 (question_text, [opt1, opt2, opt3, opt4])。"""
    # 切 first ①
    i = tail.find("①")
    if i < 0:
        # 沒有選項分隔 → 選項可能跨行被切
        return tail.strip(), []
    qtext = tail[:i].strip()
    rest = tail[i:].strip()
    # 用 regex split，保留 delimiter
    parts = re.split(r'[' + CIRCLE_DIGITS + r']', rest)
    # parts[0] 空；parts[1..] 是選項文字
    opts = [p.strip().rstrip('。').strip() for p in parts[1:]]
    # 去掉空白尾字串
    while opts and opts[-1] == "":
        opts.pop()
    return qtext, opts

def _collapse_continuation(lines: List[str], start: int) -> Tuple[str, int]:
    """從 start 收集到下一個題號 / section / empty-block，合併成單一題幹 tail。
    回傳 (joined_tail, next_idx)."""
    buf = [lines[start]]
    i = start + 1
    n = len(lines)
    while i < n:
        ln = lines[i]
        stripped = ln.strip()
        # 空白行 → 題目結束？其實 ntpc 很多題中間有空行（圖示題）→ 保守：遇到題號或 section marker 才停
        if RE_QLINE.match(ln):
            break
        if RE_MULTI_MARKER.match(ln) or RE_SINGLE_MARKER.match(ln):
            break
        if RE_QLINE_ANSFIRST.match(ln):
            break
        # 頁尾/頁眉丟掉
        if re.search(r'\d+\s*-\s*\d+\(\s*序\s*\d+\s*\)', stripped):
            i += 1; continue
        if re.search(r'全國技術士技能檢定第\s*\d+\s*梯次', stripped):
            i += 1; continue
        if "年度" in stripped and "技術士技能檢定學科測試試題" in stripped:
            i += 1; continue
        if "准考證號碼" in stripped or "姓       名" in stripped:
            i += 1; continue
        if stripped.startswith("本試卷有選擇題"):
            i += 1; continue
        buf.append(ln)
        i += 1
    # 合併：保留一個空白分隔
    joined = " ".join(b.strip() for b in buf if b.strip())
    return joined, i

def _parse_answer_token(tok: str, q_type: str) -> Tuple[int, Optional[List[int]]]:
    """`(13)` → multi: [0,2]; `(2)` → single: 1."""
    digits = [int(c) - 1 for c in tok if c.isdigit()]  # 0-indexed
    if q_type == "multiple_choice":
        return 0, sorted(set(digits))  # correct_answer=0 placeholder
    # single
    if len(digits) == 1:
        return digits[0], None
    # single_choice 但 token 多位 → 這題被塞錯區，回報 flag
    return digits[0], None

def _detect_format(lines: List[str]) -> str:
    """前 200 行 sample：誰匹配的題目多誰勝出"""
    a = b = 0
    for ln in lines[:400]:
        if RE_QLINE.match(ln): a += 1
        elif RE_QLINE_ANSFIRST.match(ln): b += 1
    return "ansfirst" if b > a else "standard"

def parse_pdf(pdf: Path, exam_id: str) -> Dict:
    text = _pdf_to_text(pdf)
    if not text:
        return {"exam_id": exam_id, "error": "pdftotext_empty", "questions": [],
                "format_detected": "failed_extract"}
    lines = text.splitlines()
    n = len(lines)
    sha1_short = _hash_file(pdf)
    parsed_at = datetime.now(timezone.utc).isoformat(timespec="seconds")
    fmt = _detect_format(lines)
    qline_re = RE_QLINE_ANSFIRST if fmt == "ansfirst" else RE_QLINE

    # 逐 line 找題號起點
    raw_questions = []
    i = 0
    while i < n:
        m = qline_re.match(lines[i])
        if not m:
            i += 1
            continue
        if fmt == "ansfirst":
            # (ans) qnum body
            ans_tok = m.group(1)
            raw_qnum = int(m.group(2))
            head_tail = m.group(3)
        else:
            # qnum. (ans) body
            raw_qnum = int(m.group(1))
            ans_tok = m.group(2)
            head_tail = m.group(3)
        section_type, year_label = _detect_current_section(lines, i)
        # 收集題幹（跨行）
        tail, nxt = _collapse_continuation(lines, i)
        # 去掉題號 / 答案前綴
        m2 = qline_re.match(tail)
        if m2:
            body = m2.group(3) if fmt == "ansfirst" else m2.group(3)
        else:
            body = head_tail
        qtext, opts = _split_opts(body)
        correct_idx, correct_arr = _parse_answer_token(ans_tok, section_type)

        flags = []
        if not opts:
            flags.append("no_options_parsed")
        if section_type == "multiple_choice" and correct_arr is not None:
            if any(a >= len(opts) for a in correct_arr):
                flags.append("answer_out_of_range")
        elif section_type == "single_choice":
            if correct_idx >= len(opts):
                flags.append("answer_out_of_range")

        raw_questions.append({
            "raw_qnum": raw_qnum,
            "year": year_label,
            "question_type": section_type,
            "question": qtext,
            "options": opts,
            "correct_answer": correct_idx,
            "correct_answer_json": correct_arr,
            "flags": flags,
            "line_index": i,   # for source_meta.pdf_location approximation
        })
        i = nxt

    # dedupe by (question_text[:80] + sorted(options))
    seen: Dict[str, Dict] = {}
    dedup: List[Dict] = []
    for q in raw_questions:
        key_src = q["question"][:120] + "|" + "|".join(q["options"])
        key = hashlib.md5(key_src.encode("utf-8")).hexdigest()[:12]
        if key in seen:
            prev = seen[key]
            prev["_occurrences"] += 1
            prev["_raw_qnums"].append(q["raw_qnum"])
            if q["year"] and q["year"] not in prev["_sections"]:
                prev["_sections"].append(q["year"])
            # answer 衝突
            if q["correct_answer"] != prev["correct_answer"]:
                prev["_answer_conflicts"].append({
                    "this": q["correct_answer"], "raw_qnum": q["raw_qnum"],
                })
            continue
        q["_key"] = key
        q["_occurrences"] = 1
        q["_raw_qnums"] = [q["raw_qnum"]]
        q["_sections"] = [q["year"]] if q["year"] else []
        q["_answer_conflicts"] = []
        seen[key] = q
        dedup.append(q)

    # 組裝 final questions (維持原 Wave-0 schema + 新欄位)
    out_questions = []
    for order, q in enumerate(dedup, start=1):
        qid = f"{exam_id}-{order:03d}"
        has_image = "如下圖" in q["question"] or "如圖" in q["question"]
        needs_review = bool(q["flags"]) or bool(q["_answer_conflicts"])

        source_meta = {
            "parser_version": PARSER_VERSION,
            "parsed_at": parsed_at,
            "source_pdf_sha1": sha1_short,
            "pdf_location": {"approx_line": q["line_index"]},
            "flags": q["flags"],
            "original_question_number": q["raw_qnum"],
            "raw_section_label": q["year"],
        }
        row = {
            "key": q["_key"],
            "id": qid,
            "exam_id": exam_id,
            "question_type": q["question_type"],
            "question": q["question"],
            "options": q["options"],
            "correct_answer": q["correct_answer"],
            "correct_answer_json": q["correct_answer_json"],
            "sections": q["_sections"],
            "raw_qnums": q["_raw_qnums"],
            "occurrences": q["_occurrences"],
            "answer_conflicts": q["_answer_conflicts"],
            "has_image": has_image,
            "has_empty_options": len(q["options"]) < 4,
            "needs_manual_review": needs_review,
            "source_meta": source_meta,
        }
        out_questions.append(row)

    # 診斷 section 類型統計
    type_counts = defaultdict(int)
    for q in out_questions:
        type_counts[q["question_type"]] += 1

    result = {
        "exam_id": exam_id,
        "parser_version": PARSER_VERSION,
        "parsed_at": parsed_at,
        "source_pdf": str(pdf.relative_to(REPO_ROOT)),
        "source_pdf_sha1": sha1_short,
        "format_detected": f"ntpc_{fmt}_v1.1",
        "unique_question_count": len(out_questions),
        "type_counts": dict(type_counts),
        "questions": out_questions,
    }
    return result

def find_pdf(exam_id: str) -> Optional[Path]:
    qdir = SOURCES_DIR / exam_id / "questions"
    if not qdir.exists():
        return None
    pdfs = sorted(qdir.glob(f"{exam_id}_q_ntpc_*.pdf")) or sorted(qdir.glob("*.pdf"))
    return pdfs[0] if pdfs else None

def list_all_exam_ids() -> List[str]:
    return sorted([d.name for d in SOURCES_DIR.iterdir()
                   if d.is_dir() and not d.name.startswith("_") and d.name != "_inbox"])

def make_report(result: Dict) -> Dict:
    issues = []
    for q in result.get("questions", []):
        if q.get("needs_manual_review"):
            issues.append({
                "id": q["id"], "raw_qnums": q["raw_qnums"],
                "flags": q["source_meta"]["flags"],
                "answer_conflicts": q["answer_conflicts"],
            })
    return {
        "exam_id": result["exam_id"],
        "parser_version": PARSER_VERSION,
        "parsed_at": result["parsed_at"],
        "format": result.get("format_detected", ""),
        "question_count": result.get("unique_question_count", 0),
        "type_counts": result.get("type_counts", {}),
        "issues": issues[:50],
        "issues_total": len(issues),
    }

def write_output(result: Dict, dry_run: bool = False):
    exam_id = result["exam_id"]
    outdir = PARSED_DIR / exam_id
    if dry_run:
        print(f"[dry] would write {outdir}/questions.json with {result['unique_question_count']} q "
              f"({result.get('type_counts',{})})")
        return
    outdir.mkdir(parents=True, exist_ok=True)
    (outdir / "questions.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    (outdir / "parse_report.json").write_text(
        json.dumps(make_report(result), ensure_ascii=False, indent=2), encoding="utf-8")

def main():
    ap = argparse.ArgumentParser(description="Parse ntpc exam PDFs → content/parsed/{exam_id}/")
    ap.add_argument("exam_ids", nargs="*", help="空 = 全部 40 卷")
    ap.add_argument("--dry-run", action="store_true", help="不寫檔，只印統計")
    ap.add_argument("--sources", type=str, default=None, help="override sources dir")
    ap.add_argument("--parsed", type=str, default=None, help="override parsed dir")
    args = ap.parse_args()
    global SOURCES_DIR, PARSED_DIR
    if args.sources: SOURCES_DIR = Path(args.sources)
    if args.parsed: PARSED_DIR = Path(args.parsed)

    targets = args.exam_ids or list_all_exam_ids()
    if not targets:
        print("no exam_ids found under", SOURCES_DIR); sys.exit(1)

    summary = []
    for eid in targets:
        pdf = find_pdf(eid)
        if not pdf:
            print(f"[skip] {eid}: no PDF"); continue
        print(f"[parse] {eid} <- {pdf.name}")
        result = parse_pdf(pdf, eid)
        write_output(result, dry_run=args.dry_run)
        summary.append({
            "exam_id": eid,
            "count": result.get("unique_question_count", 0),
            "types": result.get("type_counts", {}),
        })
    print("\n=== summary ===")
    total = 0
    for s in summary:
        total += s["count"]
        print(f"  {s['exam_id']:<24} {s['count']:>5}  {s['types']}")
    print(f"  TOTAL unique questions: {total}  across {len(summary)} exams")

if __name__ == "__main__":
    main()
