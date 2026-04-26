#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
cap_answer_linker.py v0.1 (2026-04-26, Wave 1.9)

抽 cap-rcpet-edu-tw 的 {year}P_Answer.pdf 為 6 科答案 dict
依「題號 + 6 科欄位」表格抽。

策略：
  1. pdftotext -layout
  2. 找第 1 題 row（qnum=1 + 6 個 ABCD）作 anchor，記 6 個 col positions
  3. 對每個 q-row，用 ±2 char window 逐 col 找 letter
  4. 輸出 content/parsed_cap/answers/{year}.json

科欄位順序（PDF 表頭固定）：
  國文 → 英閱 → 英聽 → 數學 → 社會 → 自然

用法：
  python scripts/ingest/cap_answer_linker.py --year 114
  python scripts/ingest/cap_answer_linker.py --year all
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Dict, List, Optional, Tuple

LINKER_VERSION = "cap_answer_v0.1"
REPO_ROOT = Path(__file__).resolve().parents[2]
ANSWERS_ROOT = (
    REPO_ROOT
    / "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/answers/by-year"
)
OUT_DIR = REPO_ROOT / "content/parsed_cap/answers"

SUBJECTS_ORDER = [
    "chinese",
    "english-reading",
    "english-listening",
    "math",
    "society",
    "nature",
]
LETTER_TO_IDX = {"A": 0, "B": 1, "C": 2, "D": 3}


def pdf_to_text(pdf_path: Path) -> str:
    return subprocess.run(
        ["pdftotext", "-layout", str(pdf_path), "-"],
        capture_output=True,
        text=True,
        check=True,
    ).stdout


def sha1_short(p: Path, n: int = 12) -> str:
    h = hashlib.sha1()
    with open(p, "rb") as f:
        for chunk in iter(lambda: f.read(8192), b""):
            h.update(chunk)
    return h.hexdigest()[:n]


SUBJECTS_FULL_6 = [
    "chinese",
    "english-reading",
    "english-listening",
    "math",
    "society",
    "nature",
]
SUBJECTS_NO_LISTENING_5 = [
    "chinese",
    "english-reading",
    "math",
    "society",
    "nature",
]


def find_anchor_columns(
    lines: List[str],
) -> Optional[Tuple[List[int], List[str]]]:
    """找第 1 題 row。返回 (cols, subjects_in_order)。
    109 年沒辦聽力 → 5 letters；其他年 → 6 letters。"""
    for ln in lines:
        if not re.match(r"^\s*1\s+", ln):
            continue
        positions = [i for i, ch in enumerate(ln) if ch in "ABCD"]
        if len(positions) == 6:
            return (positions, SUBJECTS_FULL_6)
        if len(positions) == 5:
            return (positions, SUBJECTS_NO_LISTENING_5)
    return None


def cluster_positions(positions: List[int], threshold: int = 2) -> List[int]:
    """1D cluster：相鄰差 ≤ threshold 視為同 col；返回 cluster 中位數 sorted L→R"""
    if not positions:
        return []
    sorted_pos = sorted(positions)
    clusters: List[List[int]] = [[sorted_pos[0]]]
    for p in sorted_pos[1:]:
        if p - clusters[-1][-1] <= threshold:
            clusters[-1].append(p)
        else:
            clusters.append([p])
    return sorted(int(sum(c) / len(c)) for c in clusters)


def extract_letter_at(line: str, col: int, window: int = 2) -> Optional[str]:
    """於 line 的 col±window 視窗找第一個 ABCD letter"""
    # 探尋順序：col, col-1, col+1, col-2, col+2 …
    offsets = [0]
    for w in range(1, window + 1):
        offsets.extend([-w, +w])
    for off in offsets:
        idx = col + off
        if 0 <= idx < len(line) and line[idx] in "ABCD":
            return line[idx]
    return None


def _data_row_qnum(line: str) -> Optional[int]:
    m = re.match(r"^\s*(\d+)\s", line)
    if not m:
        return None
    qnum = int(m.group(1))
    if not 1 <= qnum <= 60:
        return None
    # 排除標題列「114 年國中教育會考...」
    if "年" in line or "選擇題" in line:
        return None
    return qnum


def _process_page_with_cols(
    page_lines: List[str],
    cols: List[int],
    subjects: List[str],
    answers: Dict[str, Dict[int, str]],
    flags: List[str],
    page_idx: int,
    correction_counter: List[int],
):
    """用 cols + subjects 對應對 page_lines 抽答案。col 與 letter 用 ±1 window 配對。"""
    col_to_subject = dict(zip(cols, subjects))
    for ln in page_lines:
        qnum = _data_row_qnum(ln)
        if qnum is None:
            continue
        for col, ch in [(i, c) for i, c in enumerate(ln) if c in "ABCD"]:
            # nearest cluster col within ±1
            nearest = min(cols, key=lambda c: abs(c - col))
            if abs(nearest - col) <= 1:
                s = col_to_subject[nearest]
                existing = answers[s].get(qnum)
                if existing and existing != ch:
                    flags.append(
                        f"p{page_idx}_q{qnum}_{s}_conflict: {existing} vs {ch}"
                    )
                else:
                    answers[s][qnum] = ch
            else:
                flags.append(
                    f"p{page_idx}_q{qnum}_unmatched_col{col}_letter{ch}_dist{abs(nearest - col)}"
                )
        if "#" in ln:
            correction_counter[0] += 1


def parse_answer_pdf(pdf_path: Path) -> Dict:
    text = pdf_to_text(pdf_path)
    pages = text.split("\f")  # form feed 分頁
    answers: Dict[str, Dict[int, str]] = {s: {} for s in SUBJECTS_ORDER}
    flags: List[str] = []
    correction_counter = [0]

    # === Page 1：找 anchor row 1（6 letters 或 5 letters 視年份）===
    p1_lines = pages[0].splitlines()
    anchor = find_anchor_columns(p1_lines)
    if anchor is None:
        raise ValueError(f"{pdf_path.name}: page 1 找不到 anchor row 1（5 或 6 letters）")
    cols_p1, subjects_p1 = anchor

    _process_page_with_cols(
        p1_lines, cols_p1, subjects_p1, answers, flags, page_idx=1, correction_counter=correction_counter
    )

    # === 決定 page 2+ active subjects：page 1 max == global max 的科目就是還在跑的 ===
    p1_max_per_subject = {
        s: max(answers[s].keys()) if answers[s] else 0 for s in subjects_p1
    }
    p1_global_max = max(p1_max_per_subject.values()) if p1_max_per_subject else 0
    active_p2 = [
        s
        for s in subjects_p1
        if p1_max_per_subject[s] == p1_global_max and p1_global_max > 0
    ]

    # === Page 2+：自己 cluster cols，按 L→R 對應 active_p2 ===
    for page_idx, page_text in enumerate(pages[1:], start=2):
        page_lines = page_text.splitlines()
        all_pos: List[int] = []
        for ln in page_lines:
            if _data_row_qnum(ln) is None:
                continue
            all_pos.extend([i for i, ch in enumerate(ln) if ch in "ABCD"])
        if not all_pos:
            continue
        cluster_cols = cluster_positions(all_pos, threshold=2)

        if len(cluster_cols) > len(active_p2):
            flags.append(
                f"p{page_idx}_too_many_clusters: {len(cluster_cols)} cols vs {len(active_p2)} active subjects"
            )
            cluster_cols = cluster_cols[: len(active_p2)]
        if len(cluster_cols) < len(active_p2):
            # 少於預期：truncate active_p2 from the LEFT（左邊科目先 exhaust）
            # ↑ 此 heuristic 與 page1_max 推斷不同，但 cap PDF page 2 通常 4 科齊全
            flags.append(
                f"p{page_idx}_fewer_clusters: {len(cluster_cols)} cols vs {len(active_p2)} active subjects"
            )

        page_subjects = active_p2[: len(cluster_cols)]
        _process_page_with_cols(
            page_lines,
            cluster_cols,
            page_subjects,
            answers,
            flags,
            page_idx=page_idx,
            correction_counter=correction_counter,
        )

    return {
        "answers": answers,
        "anchor_cols": cols_p1,
        "anchor_subjects": subjects_p1,
        "active_p2": active_p2,
        "flags": flags,
        "correction_count": correction_counter[0],
    }


def build_output(year: int, pdf_path: Path) -> Dict:
    parsed = parse_answer_pdf(pdf_path)
    sha1 = sha1_short(pdf_path)
    now = datetime.now(timezone.utc).isoformat(timespec="seconds")

    counts = {s: len(qs) for s, qs in parsed["answers"].items()}

    return {
        "year": year,
        "linker_version": LINKER_VERSION,
        "linked_at": now,
        "source_pdf": str(pdf_path.relative_to(REPO_ROOT)),
        "source_pdf_sha1": sha1,
        "anchor_cols": parsed["anchor_cols"],
        "anchor_subjects": parsed["anchor_subjects"],
        "active_p2": parsed["active_p2"],
        "subject_counts": counts,
        "answers": parsed["answers"],
        "flags": parsed["flags"],
        "correction_count": parsed["correction_count"],
    }


def find_answer_pdf(year: int) -> Path:
    folder = ANSWERS_ROOT / str(year)
    candidates = list(folder.glob(f"{year}P_Answer.pdf"))
    if candidates:
        return candidates[0]
    # fallback: 任何含 Answer 的 PDF
    candidates = list(folder.glob("*_Answer.pdf"))
    if candidates:
        return candidates[0]
    raise FileNotFoundError(f"No Answer.pdf for year {year} in {folder}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", required=True, help="104 / 105 / ... / 114 / all")
    ap.add_argument("--out-dir", default=None)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    out_dir = Path(args.out_dir) if args.out_dir else OUT_DIR
    out_dir.mkdir(parents=True, exist_ok=True)

    if args.year == "all":
        years = list(range(104, 115))
    else:
        years = [int(args.year)]

    summary = []
    for y in years:
        try:
            pdf = find_answer_pdf(y)
        except FileNotFoundError as e:
            print(f"  [{y}] SKIP: {e}", file=sys.stderr)
            continue
        try:
            out = build_output(y, pdf)
        except Exception as e:
            print(f"  [{y}] ERROR: {e}", file=sys.stderr)
            continue

        if not args.dry_run:
            (out_dir / f"{y}.json").write_text(
                json.dumps(out, ensure_ascii=False, indent=2), encoding="utf-8"
            )
        summary.append(
            {
                "year": y,
                "subject_counts": out["subject_counts"],
                "correction_count": out["correction_count"],
                "flag_count": len(out["flags"]),
            }
        )

    print(json.dumps({"summary": summary}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
