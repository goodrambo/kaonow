#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
moex_license_parser.py v1.0 (2026-04-25, Wave 1.3b')

讀 content/config/moex_license_map.json（slug → moex Q+A pair list）
parse moex 官方 Q PDF + A PDF（測驗式試題標準答案）
輸出 content/parsed/{slug}/questions.json + parse_report.json

Q PDF format:
  - 題號：1.<text>      ← 數字後是「.」（與 ntpc 不同，ntpc 用「. (ans)」）
  - 選項：A.<opt> B.<opt> C.<opt> D.<opt> 各自一行
  - 純單選：header 含「本試題為單一選擇題」
  - 混合卷：含「甲、申論題部分」+「乙、測驗題部分」
  - 純申論：只有「一、」「二、」題號

A PDF format:
  - 「測驗式試題標準答案」/「測驗題標準答案更正」
  - 「題號 第1題 第2題 ... 答案 A B C ...」(letters 可為 fullwidth Ａ Ｂ Ｃ Ｄ 或 halfwidth A B C D)
  - 「#」 = 此題答案有更正（詳見備註，v1 暫 flag 跳過）

使用：
  python scripts/ingest/moex_license_parser.py                # 全部 14 slug
  python scripts/ingest/moex_license_parser.py accountant     # 單一 slug
  python scripts/ingest/moex_license_parser.py --dry-run accountant
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

import pdfplumber

# PUA glyph 對應表 — pdftotext 看不到、需用 pdfplumber chars 映射
PUA_MAP = {
    # Option markers ①②③④（多種 font 編碼）
    0xE18C: "①", 0xE18D: "②", 0xE18E: "③", 0xE18F: "④",
    0xE2B7: "①", 0xE2B8: "②", 0xE2B9: "③", 0xE2BA: "④",
    # 內嵌小編號（option 文字內的子編號）
    0xE000: "①", 0xE001: "②", 0xE002: "③", 0xE003: "④", 0xE004: "⑤",
    # 申論題段落 bullet（一二三四）
    0xE129: "", 0xE12A: "", 0xE12B: "", 0xE12C: "",  # 標頭 bullet 通常是 emoji-like, 抽掉
    # 圈內數字 question number 標記（1-30）— 通常是申論子題編號
    0xE0C6: "㉑", 0xE0C7: "㉒", 0xE0C8: "㉓", 0xE0C9: "㉔", 0xE0CA: "㉕",
    0xE0CB: "㉖", 0xE0CC: "㉗", 0xE0CD: "㉘", 0xE0CE: "㉙", 0xE0CF: "㉚",
    0xE0D0: "㉛", 0xE0D1: "㉜", 0xE0D2: "㉝", 0xE0D3: "㉞", 0xE0D4: "㉟",
}

PARSER_VERSION = "moex_license_v1.0"
REPO_ROOT = Path(__file__).resolve().parents[2]
MOEX_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/moex-gov-tw"
MAP_PATH = REPO_ROOT / "content/config/moex_license_map.json"
PARSED_DIR = REPO_ROOT / "content/parsed"

# 全形/半形 letter → 0-indexed
LETTER_TO_IDX = {
    "A": 0, "B": 1, "C": 2, "D": 3,
    "Ａ": 0, "Ｂ": 1, "Ｃ": 2, "Ｄ": 3,
}

# Section markers — 支援 甲乙 與 一二 兩種命名
RE_SECTION_ESSAY = re.compile(r"(?:甲[、，,]\s*申論題|一[、，,]\s*申論題)")
RE_SECTION_MC = re.compile(r"(?:乙[、，,]\s*測驗題|二[、，,]\s*測驗題)")
RE_PURE_MC_HEADER = re.compile(r"本試題為單一選擇題")
RE_PURE_ESSAY_HEADER = re.compile(r"作答時請將試題題號及答案依照順序寫在試卷上")

# Q PDF 題號 patterns — 支援 "1.", "1 ", "1." 三種
RE_MC_QNUM_DOT = re.compile(r"^\s*(\d+)\.\s*(.*)$")            # "1." 高考型
RE_MC_QNUM_SP = re.compile(r"^\s*(\d+)\s+(\S.*)$")             # "1 text" 普考型 (number 後有 1+ 空白再有非空白文字)
RE_ESSAY_QNUM = re.compile(r"^\s*([一二三四五六七八九十]{1,3})、\s*(.*)$")  # "一、"
# Option line: "A.text" / "Ａ.text"
RE_OPTION_LINE = re.compile(r"^\s*([ABCDＡＢＣＤ])[\.。．]\s*(.+)$")
# Inline option pattern in PUA format: ①xxx②yyy③zzz④www
RE_OPT_INLINE = re.compile(r"[①②③④]")

# A PDF 答案表 patterns
# 「題號 第1題 第2題...」 + 「答案 A B C...」格式
RE_ANS_HEADER = re.compile(r"^\s*題號\s+(.+)$")
RE_ANS_ROW = re.compile(r"^\s*答案\s+(.+)$")
RE_QNUM_FROM_HEADER = re.compile(r"第?(\d+)題?")


def _hash_file(path: Path) -> str:
    h = hashlib.sha1()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(8192), b""):
            h.update(chunk)
    return h.hexdigest()[:12]


def _pdf_to_text(pdf: Path, layout: bool = True) -> str:
    if not pdf.exists():
        return ""
    args = ["pdftotext"]
    if layout:
        args.append("-layout")
    args.extend([str(pdf), "-"])
    try:
        proc = subprocess.run(args, check=True, capture_output=True, text=True, timeout=60)
        return proc.stdout
    except Exception as e:
        print(f"[!] pdftotext failed on {pdf.name}: {e}", file=sys.stderr)
        return ""


def extract_text_pua(pdf_path: Path, line_tol: int = 4) -> str:
    """用 pdfplumber 抽 char-level 文字，PUA 字元映射成標準字元。

    把同一 line（y 差 ≤ line_tol）的 chars 連起來，不同 line 用 \n 分隔。
    output 格式類似 pdftotext 但保留 PUA option markers (①②③④)。
    """
    if not pdf_path.exists():
        return ""
    try:
        chunks: List[str] = []
        with pdfplumber.open(str(pdf_path)) as pdf:
            for pg in pdf.pages:
                chars = pg.chars
                if not chars:
                    continue
                # cluster by y within line_tol
                buckets: List[Tuple[float, List[Dict]]] = []
                for c in sorted(chars, key=lambda c: (c["top"], c["x0"])):
                    y = c["top"]
                    if buckets and abs(y - buckets[-1][0]) <= line_tol:
                        buckets[-1][1].append(c)
                    else:
                        buckets.append((y, [c]))
                for _, line_chars in buckets:
                    line_chars.sort(key=lambda c: c["x0"])
                    pieces = []
                    last_x = None
                    for c in line_chars:
                        t = c.get("text", "")
                        # Insert space if x-gap is large（保留 layout）
                        if last_x is not None and c["x0"] - last_x > 4:
                            pieces.append(" ")
                        # PUA mapping
                        if t and len(t) == 1:
                            cp = ord(t)
                            if cp in PUA_MAP:
                                t = PUA_MAP[cp]
                            elif 0xE000 <= cp <= 0xF8FF:
                                t = ""  # 未知 PUA → 丟棄
                        pieces.append(t)
                        last_x = c["x1"]
                    line_str = "".join(pieces).rstrip()
                    if line_str:
                        chunks.append(line_str)
        return "\n".join(chunks)
    except Exception as e:
        print(f"[!] pdfplumber failed on {pdf_path.name}: {e}", file=sys.stderr)
        return ""


def parse_answer_pdf(pdf: Path) -> Tuple[Dict[int, int], List[int], bool]:
    """讀 moex 答案 PDF，回傳 (qnum→0-indexed answer, corrected_qnums list, is_correction).

    答案表 format（每組 10 題）:
      題號  第1題  第2題  ...  第10題
      答案   A     B    ...    C
    """
    text = _pdf_to_text(pdf, layout=True)
    if not text:
        return {}, [], False

    is_correction = "標準答案更正" in text or "答案更正" in text

    answers: Dict[int, int] = {}
    corrected: List[int] = []

    lines = text.splitlines()
    n = len(lines)
    i = 0
    while i < n:
        ln = lines[i]
        m_h = RE_ANS_HEADER.match(ln)
        if not m_h:
            i += 1
            continue
        # 找下一行 「答案 ...」
        # 答案行可能不是緊接著（中間可能空行）
        ans_line = None
        for j in range(i + 1, min(i + 5, n)):
            m_a = RE_ANS_ROW.match(lines[j])
            if m_a:
                ans_line = lines[j]
                break
        if not ans_line:
            i += 1
            continue
        # parse 題號 list
        header_str = m_h.group(1)
        qnums = [int(m.group(1)) for m in RE_QNUM_FROM_HEADER.finditer(header_str)]
        # parse 答案 list — 每個 token 是一個 letter 或 # 或空白
        ans_str = ans_line.split(None, 1)[1] if " " in ans_line else ""
        # 取所有非空白 token（letter / #）
        tokens = [t for t in re.split(r"\s+", ans_str.strip()) if t]
        # 對齊 — letter 數量可能 < 題號數量（後段未填）
        for k, q in enumerate(qnums):
            if k >= len(tokens):
                break
            tk = tokens[k]
            if tk == "#":
                corrected.append(q)
                continue
            # 取第一個有效 letter 字（避免 token 被連起來如「ＡＢ」）
            for ch in tk:
                if ch in LETTER_TO_IDX:
                    answers[q] = LETTER_TO_IDX[ch]
                    break
        i += 1

    return answers, corrected, is_correction


def detect_q_format(lines: List[str]) -> str:
    """回傳 'mixed' / 'pure_mc' / 'pure_essay' / 'unknown'"""
    text = "\n".join(lines[:80])
    has_essay = bool(RE_SECTION_ESSAY.search(text))
    has_mc = bool(RE_SECTION_MC.search(text))
    if has_essay and has_mc:
        return "mixed"
    if RE_PURE_MC_HEADER.search(text) and not has_essay:
        return "pure_mc"
    if has_essay and not has_mc:
        return "pure_essay"
    if RE_PURE_ESSAY_HEADER.search(text) and not has_mc:
        return "pure_essay"
    # fallback：頭幾行有 1.選項 A.B.C.D → MC
    return "pure_mc"


def find_section_indices(lines: List[str]) -> Dict[str, int]:
    """回傳 essay/mc 各 section 起始 line index"""
    out: Dict[str, int] = {}
    for i, ln in enumerate(lines):
        if "essay" not in out and RE_SECTION_ESSAY.search(ln):
            out["essay"] = i
        if "mc" not in out and RE_SECTION_MC.search(ln):
            out["mc"] = i
    return out


def _is_skip_line(stripped: str) -> bool:
    """頁眉/頁尾/雜訊行"""
    if not stripped:
        return True
    if re.match(r"^\s*代\s*號[:：]", stripped):
        return True
    if re.match(r"^\s*頁\s*次[:：]", stripped):
        return True
    if re.match(r"^\s*類\s*科[:：]", stripped):
        return True
    if re.match(r"^\s*科\s*目[:：]", stripped):
        return True
    if re.match(r"^\s*等\s*別[:：]", stripped):
        return True
    if "本試題為單一選擇題" in stripped or "本試題為複選題" in stripped:
        return True
    if "考試時間" in stripped and "小時" in stripped:
        return True
    if "本科目共" in stripped and "題" in stripped:
        return True
    if "可以使用電子計算器" in stripped or "禁止使用電子計算器" in stripped:
        return True
    if re.match(r"^\d+[－-]\d+$", stripped):  # "4-1" 頁碼
        return True
    return False


def _try_qnum(line: str) -> Optional[Tuple[int, str]]:
    """偵測 MC 題號行，回傳 (qnum, head_text) 或 None"""
    m = RE_MC_QNUM_DOT.match(line)
    if m:
        return int(m.group(1)), m.group(2).strip()
    m = RE_MC_QNUM_SP.match(line)
    if m:
        # 排除誤判：避免 "100 萬元" 之類被當題號（後面文字以中文/英文起頭較合理）
        rest = m.group(2)
        # 題號通常 1-100；rest 應以中文字或選項符號起頭
        qnum = int(m.group(1))
        if qnum > 200:
            return None
        return qnum, rest.strip()
    return None


def _split_inline_options(text: str) -> List[str]:
    """從含 ①②③④ 的字串拆出 4 options"""
    # 找 ① 起點
    parts = re.split(r"[①②③④]", text)
    # parts[0] = ① 之前；parts[1..4] = 4 options
    opts = [p.strip() for p in parts[1:5]]
    while len(opts) < 4:
        opts.append("")
    # rstrip 句號
    opts = [o.rstrip("。.").strip() for o in opts]
    return opts


def parse_mc_questions(lines: List[str], start: int, end: int) -> List[Dict]:
    """支援雙格式：高考型 (A.B.C.D 各別行) + 普考型 (①②③④ inline)"""
    questions = []
    i = start
    while i < end:
        ln = lines[i]
        qhit = _try_qnum(ln)
        if not qhit:
            i += 1
            continue
        qnum, head = qhit

        # Lookahead: collect lines until next qnum or section
        body_lines = [head] if head else []
        opts: Dict[str, str] = {}        # 高考型
        inline_opt_lines: List[str] = []  # 普考型 (含 ①②③④ 的行)
        j = i + 1
        while j < end:
            nxt = lines[j]
            # 下一題開始
            if _try_qnum(nxt):
                break
            if RE_SECTION_ESSAY.search(nxt) or RE_SECTION_MC.search(nxt):
                break
            if re.match(r"^\s*[一二三四五六七八九十]{1,3}、", nxt):
                break
            stripped = nxt.strip()
            if _is_skip_line(stripped):
                j += 1
                continue
            # 高考型 option line: 「A.text」
            opt_m = RE_OPTION_LINE.match(nxt)
            if opt_m:
                letter = opt_m.group(1)
                if letter in "ＡＢＣＤ":
                    letter = "ABCD"[ord(letter) - ord("Ａ")]
                opts[letter] = opt_m.group(2).strip()
                j += 1
                continue
            # 普考型 inline options: 含 ①②③④
            if RE_OPT_INLINE.search(nxt):
                inline_opt_lines.append(stripped)
                j += 1
                continue
            # 否則：屬於題幹（或前一個 option 的 cont 行）
            if opts:
                # 高考型：續行屬於最後一個 option
                last_letter = list(opts.keys())[-1]
                opts[last_letter] += " " + stripped
            elif inline_opt_lines:
                # 普考型：續行屬於最後一個 inline option block
                inline_opt_lines[-1] += " " + stripped
            else:
                body_lines.append(stripped)
            j += 1

        # 組裝 options array
        if opts:
            opts_array = [opts.get(k, "") for k in "ABCD"]
        elif inline_opt_lines:
            # 多行可能是 option 跨行（① 不一定都在第一行）— 把所有 inline 文字 concat 後 split
            joined = " ".join(inline_opt_lines)
            opts_array = _split_inline_options(joined)
        else:
            opts_array = ["", "", "", ""]

        questions.append({
            "raw_qnum": qnum,
            "question_type": "single_choice",
            "question": " ".join(b for b in body_lines if b).strip(),
            "options": opts_array,
            "line_index": i,
            "_has_all_options": all(o.strip() for o in opts_array),
        })
        i = j
    return questions


RE_ESSAY_QNUM_DIGIT = re.compile(r"^\s*(\d+)\.\s*(.*)$")


def _try_essay_qnum(line: str, format_hint: str = "any") -> Optional[Tuple[str, str]]:
    """偵測申論題題號行；回傳 (qnum_str, head) 或 None
    format_hint: "han" / "digit" / "any"
    """
    if format_hint in ("han", "any"):
        m = RE_ESSAY_QNUM.match(line)
        if m:
            head = m.group(2).strip()
            # 排除 section header
            if "申論題" in head or "測驗題" in head or head == "申論":
                return None
            return m.group(1), head
    if format_hint in ("digit", "any"):
        m = RE_ESSAY_QNUM_DIGIT.match(line)
        if m:
            head = m.group(2).strip()
            return m.group(1), head
    return None


def parse_essay_questions(lines: List[str], start: int, end: int) -> List[Dict]:
    """支援兩種申論題號：
    1) 「一、」「二、」 — 標準格式（甲、申論題 下方）
    2) 「1.」「2.」 — 「一、申論題」格式下的子題
    """
    questions = []

    # 先決定本 essay section 用哪種 qnum format — 看實質第一個 qnum 行
    fmt = "han"
    for j in range(start, min(start + 60, end)):
        if RE_ESSAY_QNUM.match(lines[j]):
            head = RE_ESSAY_QNUM.match(lines[j]).group(2).strip()
            if "申論題" in head or "測驗題" in head:
                continue  # section header, 繼續看
            fmt = "han"
            break
        if RE_ESSAY_QNUM_DIGIT.match(lines[j]):
            fmt = "digit"
            break

    i = start
    while i < end:
        ln = lines[i]
        hit = _try_essay_qnum(ln, fmt)
        if not hit:
            i += 1
            continue
        qnum_str, head = hit
        body_lines = [head] if head else []
        j = i + 1
        while j < end:
            nxt = lines[j]
            if _try_essay_qnum(nxt, fmt):
                break
            if RE_SECTION_MC.search(nxt) or RE_PURE_MC_HEADER.search(nxt):
                break
            stripped = nxt.strip()
            if _is_skip_line(stripped):
                j += 1
                continue
            if stripped:
                body_lines.append(stripped)
            j += 1
        questions.append({
            "raw_qnum_han": qnum_str,
            "question_type": "essay",
            "question": "\n".join(body_lines).strip(),
            "options": [],
            "line_index": i,
        })
        i = j
    return questions


def parse_q_pdf(pdf: Path) -> Tuple[List[Dict], str]:
    """混合策略：先試 PUA-aware (pdfplumber)，若沒抓到題目再 fallback pdftotext。"""
    text = extract_text_pua(pdf)
    if not text:
        text = _pdf_to_text(pdf, layout=True)
    if not text:
        return [], "no_text"
    lines = text.splitlines()
    fmt = detect_q_format(lines)
    secs = find_section_indices(lines)

    questions: List[Dict] = []
    if fmt == "mixed":
        # essay 從 essay marker 到 mc marker；mc 從 mc marker 到 end
        es_start = secs.get("essay", 0)
        mc_start = secs.get("mc", len(lines))
        questions += parse_essay_questions(lines, es_start, mc_start)
        questions += parse_mc_questions(lines, mc_start, len(lines))
    elif fmt == "pure_mc":
        # MC 從 header 結束後（找第一個 1. 行）到 end
        questions += parse_mc_questions(lines, 0, len(lines))
    elif fmt == "pure_essay":
        # essay 從 essay marker / 開頭到 end
        start = secs.get("essay", 0)
        questions += parse_essay_questions(lines, start, len(lines))
    else:
        # fallback 試 MC
        questions += parse_mc_questions(lines, 0, len(lines))

    return questions, fmt


def _full_path(entry: Dict, key: str) -> Optional[Path]:
    """entry['q_pdf'] = 'questions/by-subject/...' (相對 exam_code dir)
    回傳 MOEX_ROOT / exams / {year} / {exam_code} / <relative>"""
    rel = entry.get(key)
    if not rel:
        return None
    return MOEX_ROOT / "exams" / entry["year"] / entry["exam_code"] / rel


def parse_pair(slug: str, entry: Dict, seq_start: int) -> Tuple[List[Dict], Dict]:
    """parse 一組 (Q, A) PDF pair，回傳 (questions, paper_info)"""
    q_path = _full_path(entry, "q_pdf")
    a_path = _full_path(entry, "a_pdf")
    corr_path = _full_path(entry, "correction_pdf")

    paper_info = {
        "year": entry["year"],
        "exam_code": entry["exam_code"],
        "c": entry["c"],
        "s": entry["s"],
        "q": entry["q"],
        "subject": entry["subject"],
        "exam_name": entry["exam_name"],
        "q_pdf_exists": bool(q_path and q_path.exists()),
        "a_pdf_exists": bool(a_path and a_path.exists()),
        "corr_pdf_exists": bool(corr_path and corr_path.exists()),
        "q_pdf_sha1": _hash_file(q_path) if q_path and q_path.exists() else None,
        "a_pdf_sha1": _hash_file(a_path) if a_path and a_path.exists() else None,
    }

    if not q_path or not q_path.exists():
        paper_info["status"] = "no_q_pdf"
        return [], paper_info

    raw_qs, fmt = parse_q_pdf(q_path)
    paper_info["format_detected"] = fmt
    paper_info["raw_question_count"] = len(raw_qs)

    if not raw_qs:
        paper_info["status"] = "parse_q_failed"
        return [], paper_info

    # 取答案 — 優先用 correction PDF
    answers, corrected, is_corr = {}, [], False
    if corr_path and corr_path.exists():
        answers, corrected, is_corr = parse_answer_pdf(corr_path)
    elif a_path and a_path.exists():
        answers, corrected, _ = parse_answer_pdf(a_path)

    paper_info["answer_qnums_extracted"] = len(answers)
    paper_info["answer_corrections"] = len(corrected)
    paper_info["is_correction_pdf_used"] = bool(corr_path and corr_path.exists())

    # 組 final question rows
    parsed_at = datetime.now(timezone.utc).isoformat(timespec="seconds")
    out_qs = []
    skipped = 0
    for idx, q in enumerate(raw_qs):
        flags = []
        qtype = q["question_type"]
        seq = seq_start + len(out_qs) + 1
        qid = f"{slug}-{seq:04d}"

        if qtype == "single_choice":
            qnum = q["raw_qnum"]
            ans_idx = answers.get(qnum)
            answer_corrected = qnum in corrected
            if ans_idx is None and not answer_corrected:
                # 答案缺 — flag 但仍入庫（auto_gradable=false fallback）
                flags.append("answer_missing")
                ans_idx = 0  # placeholder
                auto_gradable = False
            elif answer_corrected:
                flags.append("answer_corrected_skip_v1")
                ans_idx = 0
                auto_gradable = False
            else:
                auto_gradable = True
            if not q["_has_all_options"]:
                flags.append("incomplete_options")
                auto_gradable = False
            if not q["question"].strip():
                flags.append("empty_question_text")
                skipped += 1
                continue
            row = {
                "id": qid,
                "exam_id": slug,
                "question_type": "single_choice",
                "question": q["question"],
                "options": q["options"],
                "correct_answer": ans_idx,
                "correct_answer_json": None,
                "auto_gradable": auto_gradable,
                "explanation": None,
                "source_meta": {
                    "parser_version": PARSER_VERSION,
                    "parsed_at": parsed_at,
                    "source_pdf_sha1": paper_info["q_pdf_sha1"],
                    "answer_pdf_sha1": paper_info["a_pdf_sha1"],
                    "source_family": "moex-gov-tw",
                    "moex": {
                        "exam_code": entry["exam_code"],
                        "c": entry["c"],
                        "s": entry["s"],
                        "q": entry["q"],
                    },
                    "raw_section_label": "乙、測驗題部分" if fmt == "mixed" else "本試題為單一選擇題",
                    "subject": entry["subject"],
                    "year": entry["year"],
                    "exam_name": entry["exam_name"],
                    "original_question_number": qnum,
                    "answer_corrected": answer_corrected,
                    "flags": flags,
                },
            }
        else:  # essay
            han = q.get("raw_qnum_han", "")
            row = {
                "id": qid,
                "exam_id": slug,
                "question_type": "essay",
                "question": q["question"],
                "options": [],
                "correct_answer": 0,  # placeholder
                "correct_answer_json": None,
                "auto_gradable": False,
                "explanation": None,
                "source_meta": {
                    "parser_version": PARSER_VERSION,
                    "parsed_at": parsed_at,
                    "source_pdf_sha1": paper_info["q_pdf_sha1"],
                    "answer_pdf_sha1": None,  # essay 沒答案 key
                    "source_family": "moex-gov-tw",
                    "moex": {
                        "exam_code": entry["exam_code"],
                        "c": entry["c"],
                        "s": entry["s"],
                        "q": entry["q"],
                    },
                    "raw_section_label": "甲、申論題部分",
                    "subject": entry["subject"],
                    "year": entry["year"],
                    "exam_name": entry["exam_name"],
                    "original_question_number": han,
                    "answer_corrected": False,
                    "flags": flags,
                },
            }
        out_qs.append(row)

    paper_info["status"] = "ok"
    paper_info["question_count"] = len(out_qs)
    paper_info["skipped_count"] = skipped
    return out_qs, paper_info


def parse_slug(slug: str, entries: List[Dict]) -> Dict:
    all_qs: List[Dict] = []
    papers: List[Dict] = []
    print(f"[{slug}] processing {len(entries)} papers …")
    for ent in entries:
        seq_start = len(all_qs)
        qs, info = parse_pair(slug, ent, seq_start)
        all_qs.extend(qs)
        papers.append(info)

    type_counts = defaultdict(int)
    for q in all_qs:
        type_counts[q["question_type"]] += 1

    return {
        "slug": slug,
        "parser_version": PARSER_VERSION,
        "parsed_at": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "paper_count": len(entries),
        "paper_with_questions": sum(1 for p in papers if p.get("question_count", 0) > 0),
        "question_count": len(all_qs),
        "type_counts": dict(type_counts),
        "papers": papers,
        "questions": all_qs,
    }


def write_output(slug: str, result: Dict, dry_run: bool):
    if dry_run:
        print(f"[dry] {slug}: {result['question_count']} q, types={result['type_counts']}")
        return
    outdir = PARSED_DIR / slug
    outdir.mkdir(parents=True, exist_ok=True)
    (outdir / "questions.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    # short report (no full questions)
    report = {
        "slug": slug,
        "parser_version": result["parser_version"],
        "parsed_at": result["parsed_at"],
        "paper_count": result["paper_count"],
        "paper_with_questions": result["paper_with_questions"],
        "question_count": result["question_count"],
        "type_counts": result["type_counts"],
        "issues": [
            {
                "year": p["year"],
                "subject": p["subject"],
                "status": p.get("status"),
                "format": p.get("format_detected"),
                "raw_q": p.get("raw_question_count"),
                "answers": p.get("answer_qnums_extracted"),
            }
            for p in result["papers"]
            if p.get("status") != "ok"
            or p.get("answer_qnums_extracted", 0) < (p.get("raw_question_count", 0) // 2)
        ][:50],
    }
    (outdir / "parse_report.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8"
    )


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("slugs", nargs="*", help="empty=all")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=0, help="limit papers per slug for smoke test")
    ap.add_argument("--start", type=int, default=0, help="skip first N papers per slug (for chunked runs)")
    ap.add_argument("--map", type=str, default=None, help="override map JSON path")
    ap.add_argument("--out", type=str, default=None, help="override parsed output dir")
    args = ap.parse_args()

    map_path = Path(args.map) if args.map else MAP_PATH
    global PARSED_DIR
    if args.out:
        PARSED_DIR = Path(args.out)
    if not map_path.exists():
        print(f"[!] map not found: {map_path}", file=sys.stderr)
        sys.exit(1)
    map_data = json.loads(map_path.read_text())

    targets = args.slugs or list(map_data.keys())
    grand_total = 0
    summary = []
    for slug in targets:
        if slug not in map_data:
            print(f"[skip] {slug}: not in map")
            continue
        entries = map_data[slug]
        if args.start:
            entries = entries[args.start:]
        if args.limit:
            entries = entries[: args.limit]
        if not entries:
            print(f"[skip] {slug}: 0 entries")
            continue
        result = parse_slug(slug, entries)
        # 若 chunked run（有 --start），merge 既有 questions.json
        if args.start and not args.dry_run:
            existing_path = PARSED_DIR / slug / "questions.json"
            if existing_path.exists():
                old = json.loads(existing_path.read_text())
                # 合併 questions + papers，重編 id 流水
                old_qs = old.get("questions", [])
                new_qs = result["questions"]
                # re-id from existing
                merged_qs = list(old_qs)
                start_seq = len(old_qs)
                for i, q in enumerate(new_qs, 1):
                    q["id"] = f"{slug}-{(start_seq + i):04d}"
                    merged_qs.append(q)
                result["questions"] = merged_qs
                result["question_count"] = len(merged_qs)
                result["papers"] = old.get("papers", []) + result["papers"]
                result["paper_count"] = len(result["papers"])
                result["paper_with_questions"] = sum(1 for p in result["papers"] if p.get("question_count", 0) > 0)
                # type counts re-aggregate
                from collections import defaultdict as _dd
                tc = _dd(int)
                for q in merged_qs: tc[q["question_type"]] += 1
                result["type_counts"] = dict(tc)
        write_output(slug, result, args.dry_run)
        grand_total += result["question_count"]
        summary.append((slug, result["question_count"], result["paper_with_questions"], result["paper_count"]))

    print("\n=== summary ===")
    for s in summary:
        print(f"  {s[0]:<28} q={s[1]:5}  papers_with_q={s[2]:3}/{s[3]:3}")
    print(f"  TOTAL: {grand_total} questions")


if __name__ == "__main__":
    main()
