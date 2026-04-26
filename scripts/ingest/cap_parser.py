#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
cap_parser.py v0.1 (2026-04-26, Wave 1.9)

國中教育會考 (CAP) PDF parser — v0.1 第一階段：國文科

Pipeline:
  PDF → pdftotext -layout → state machine → raw_questions.json

Scope (v0.1):
  - 國文科：reading_passage parent + 單題 + 題組 child + 多文本 (【甲】【乙】)
  - 不抽圖、不 link 答案（cap_answer_linker.py 負責）
  - 偵測 needs_image flag（含 圖(N)/表(N)/如圖/下圖 等）
  - 偵測 option_incomplete / option_image / stem_short flag

用法：
  python scripts/ingest/cap_parser.py --year 114 --subject chinese
  python scripts/ingest/cap_parser.py --year 114 --subject chinese --debug
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
from typing import Dict, List, Optional

PARSER_VERSION = "cap_v0.1"
REPO_ROOT = Path(__file__).resolve().parents[2]
SOURCE_ROOT = (
    REPO_ROOT
    / "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year"
)
PARSED_DIR = REPO_ROOT / "content/parsed_cap"

# ---------- Subject 檔名 mapping ----------
SUBJECT_FILE_PATTERNS = {
    "chinese": [
        "{year}P_Chinese.pdf",
        "{year}P_Chinese150DPI.pdf",
        "{year}P_Chinese150DPI-2.pdf",
    ],
    "english-reading": [
        "{year}P_English.pdf",
        "{year}P_English150DPI.pdf",
    ],
    "english-listening": [],  # zip; 由獨立 pipeline 處理
    "math": [
        "{year}P_Math.pdf",
        "{year}P_Math150DPI.pdf",
    ],
    "society": [
        "{year}P_Society.pdf",
        "{year}P_Society150DPI.pdf",
    ],
    "nature": [
        "{year}P_Nature.pdf",
        "{year}P_Nature150DPI.pdf",
    ],
    "writing": [
        "{year}P_Writing.pdf",
        "{year}P_Writing150DPI.pdf",
    ],
}

# subject → DB subject_id
SUBJECT_TO_DB_ID = {
    "chinese": "sub-cap-chinese",
    "english-reading": "sub-cap-english-reading",
    "english-listening": "sub-cap-english-listening",
    "math": "sub-cap-math",
    "society": "sub-cap-social",
    "nature": "sub-cap-science",
    "writing": "sub-cap-writing",
}

# ---------- Regex patterns ----------

# 章節標題：
#   "一、單題：（1 ～ 24題）"  / "二、題組：（25 ～ 42題）"  ← 國文/社會/自然 風格
#   "第一部分：選擇題 ( 1 ～ 25 題)" / "第二部分：題組 (第20 - 43題，共24題)"  ← 數學/英文 風格
# 抓「label」+ optional (start, end)
RE_SECTION = re.compile(
    r"^\s*"
    r"(?:"
    r"[一二三四五六七八九十]+、|"
    r"第[一二三四五六七八九十]+部分\s*[：:]?"
    r")"
    r"\s*"
    r"(?P<label>單題|題組|選擇題|非選擇題|閱讀|聽力|單[題項]|題[組目])"
    r"\s*[：:]?\s*"
    r"(?:[（(]\s*"
    r"(?:第)?\s*(?P<start>\d+)\s*[～〜~\-－至到]\s*(?P<end>\d+)\s*題"
    r"(?:[，,]?\s*共\s*\d+\s*題)?"
    r"\s*[）)])?"
    r"\s*$"
)

# 題組導入：「請閱讀以下短文，並回答25 ～ 26題：」「請閱讀下列選文後，回答 36 ～ 37 題」
RE_PASSAGE_INTRO = re.compile(
    r"閱讀.{0,40}?回答\s*(\d+)\s*[～〜~\-－至到]\s*(\d+)\s*題"
)

# 英文題組標題：(20-21) (22-23) — 範圍前後括號
RE_ENG_GROUP_HEADER = re.compile(
    r"^\s*[（(]\s*(\d+)\s*[\-－~～〜]\s*(\d+)\s*[）)]\s*$"
)

# 題號開頭：行首數字 + . 後面 **必須**接空白或行尾（用此排除註腳「  1. 世家：...」等）
# 真正題號永遠 col 0 開始；註腳有縮排 ≥2 空白
RE_QUESTION_START = re.compile(r"^(\d+)\.(?:\s+(.*)|$)")

# 行首單個選項
RE_OPTION_LINE_START = re.compile(r"^\s*\(([A-D])\)\s*(.*)$")

# 一行多個選項：(A)..(B)..(C)..(D)..
RE_OPTION_INLINE = re.compile(r"\(([A-D])\)\s*([^()]*?)(?=\s*\([A-D]\)|$)")

# 圖/表題標記
RE_IMAGE_HINT = re.compile(
    r"圖\s*[（(]\s*[一二三四五六七八九十\d]+\s*[）)]"
    r"|表\s*[（(]\s*[一二三四五六七八九十\d]+\s*[）)]"
    r"|(?:如|下|右|左|上)圖"
    r"|(?:如|下)表"
    r"|(?:右|左|上)側\s*[「『]?(?:圖|表|這|此|資料)"
    r"|根據\s*(?:右|左|上|下)\s*(?:圖|表|側)"
    r"|右側詐騙簡訊|右側這首詩"  # 觀察到的具體變體
)

# 多文本標記 【甲】 【乙】 / 【文一】 / 【資料一】
RE_MULTI_TEXT = re.compile(
    r"^\s*【\s*([甲乙丙丁戊己]|文[一二三四五]|資料[一二三四五])\s*】\s*$"
)

# 出處 attribution
RE_ATTRIBUTION = re.compile(
    r"^\s*[—──\-]+\s*(?:改寫?自|節錄?自|摘錄?自|錄?自).+|^\s*[—──]+\s*[^—──]{1,40}《.*》\s*$"
)

# 頁尾雜訊
RE_PAGE_NOISE = re.compile(
    r"^\s*\d{1,3}\s*$"
    r"|^\s*請翻頁繼續作答\s*$"
    r"|^\s*試題結束\s*$"
)

# 註腳：縮排 + 數字 + . + 內容含中文冒號
RE_FOOTNOTE = re.compile(r"^\s{2,}(\d+)\.\s*([^\s].*?[：:].*)$")


# ---------- Utilities ----------
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


def find_subject_pdf(year: int, subject: str) -> Path:
    folder = SOURCE_ROOT / str(year)
    patterns = SUBJECT_FILE_PATTERNS.get(subject, [])
    for pat in patterns:
        cand = folder / pat.format(year=year)
        if cand.exists():
            return cand
    raise FileNotFoundError(f"No PDF for year={year} subject={subject} in {folder}")


def detect_image_hint(text: str) -> bool:
    return bool(RE_IMAGE_HINT.search(text))


# ---------- Parser ----------
class Parser:
    def __init__(self, year: int, subject: str, pdf_path: Path, debug: bool = False):
        self.year = year
        self.subject = subject
        self.pdf_path = pdf_path
        self.debug = debug
        self.questions: List[Dict] = []
        self.passages: List[Dict] = []

        self._sections_seen: List[Dict] = []
        self._cur_section: Optional[Dict] = None
        self._cur_passage: Optional[Dict] = None
        self._cur_question: Optional[Dict] = None
        self._started_body: bool = False  # 翻過試卷封面後置 True

    def log(self, msg: str):
        if self.debug:
            print(f"[parser] {msg}", file=sys.stderr)

    # ----- main loop -----
    def parse(self) -> Dict:
        text = pdf_to_text(self.pdf_path)
        sha1 = sha1_short(self.pdf_path)
        lines = text.splitlines()

        i = 0
        while i < len(lines):
            ln = lines[i]
            stripped = ln.strip()

            # page noise 一律跳
            if RE_PAGE_NOISE.match(ln):
                i += 1
                continue

            # section header
            m_sec = RE_SECTION.match(ln)
            if m_sec:
                self._flush_question()
                self._flush_passage(orphan=True)
                rng = None
                if m_sec.group("start"):
                    rng = (int(m_sec.group("start")), int(m_sec.group("end")))
                self._cur_section = {
                    "label": m_sec.group("label"),
                    "range": rng,
                    "line_idx": i,
                }
                self._sections_seen.append(self._cur_section)
                self._started_body = True
                self.log(f"[L{i}] section: {self._cur_section['label']} {rng}")
                i += 1
                continue

            # passage intro
            m_pi = RE_PASSAGE_INTRO.search(ln)
            if m_pi and self._started_body:
                self._flush_question()
                self._flush_passage(orphan=True)
                qstart, qend = int(m_pi.group(1)), int(m_pi.group(2))
                self._cur_passage = {
                    "intro_line": stripped,
                    "intro_line_idx": i,
                    "child_qnums": list(range(qstart, qend + 1)),
                    "passage_lines": [],
                    "footnotes": [],
                    "kind_hint": "single",
                    "multi_blocks": {},
                    "_cur_block": None,
                }
                self.log(f"[L{i}] passage intro: {qstart}-{qend}")
                i += 1
                continue

            # 英文題組標題 (20-21)
            m_eg = RE_ENG_GROUP_HEADER.match(ln)
            if m_eg and self._started_body:
                self._flush_question()
                self._flush_passage(orphan=True)
                qstart, qend = int(m_eg.group(1)), int(m_eg.group(2))
                self._cur_passage = {
                    "intro_line": stripped,
                    "intro_line_idx": i,
                    "child_qnums": list(range(qstart, qend + 1)),
                    "passage_lines": [],
                    "footnotes": [],
                    "kind_hint": "single",
                    "multi_blocks": {},
                    "_cur_block": None,
                }
                self.log(f"[L{i}] eng-group header: {qstart}-{qend}")
                i += 1
                continue

            # question start
            m_q = RE_QUESTION_START.match(ln)
            if m_q:
                qnum = int(m_q.group(1))
                # W1.9.4 fix: 部分卷（如 nature）無 section header；
                # 看到 col-0 「1.」就視為 body 開始 + 隱式建立 「單題」 section
                if not self._started_body and qnum == 1:
                    self._cur_section = {
                        "label": "單題",
                        "range": None,
                        "line_idx": i,
                        "implicit": True,
                    }
                    self._sections_seen.append(self._cur_section)
                    self._started_body = True
                    self.log(f"[L{i}] implicit section start (no header before Q1)")
            if m_q and self._started_body:
                qnum = int(m_q.group(1))
                if 1 <= qnum <= 120:
                    # 若有開啟中的 passage 就先收掉（不論 qnum 是否屬該 passage）
                    if self._cur_passage:
                        self._finalize_passage()
                    self._flush_question()
                    parent_idx = self._find_passage_for_qnum(qnum)
                    head_text = (m_q.group(2) or "").strip()
                    self._cur_question = {
                        "qnum": qnum,
                        "stem_lines": [head_text] if head_text else [],
                        "options": {"A": [], "B": [], "C": [], "D": []},
                        "current_option": None,
                        "section_label": self._cur_section["label"]
                        if self._cur_section
                        else None,
                        "passage_parent_idx": parent_idx,
                        "line_idx": i,
                        "raw_lines": [ln],
                    }
                    self.log(
                        f"[L{i}] Q{qnum} parent={parent_idx} sec={self._cur_question['section_label']}"
                    )
                    i += 1
                    continue

            # 收 question content
            if self._cur_question:
                self._cur_question["raw_lines"].append(ln)

                opts = list(RE_OPTION_INLINE.finditer(ln))
                if opts:
                    for m in opts:
                        letter, txt = m.group(1), m.group(2).strip()
                        if txt:
                            self._cur_question["options"][letter].append(txt)
                    self._cur_question["current_option"] = opts[-1].group(1)
                    i += 1
                    continue

                if self._cur_question["current_option"] and stripped:
                    self._cur_question["options"][
                        self._cur_question["current_option"]
                    ].append(stripped)
                    i += 1
                    continue

                if stripped:
                    self._cur_question["stem_lines"].append(stripped)
                i += 1
                continue

            # 收 passage content
            if self._cur_passage:
                m_fn = RE_FOOTNOTE.match(ln)
                if m_fn:
                    self._cur_passage["footnotes"].append(
                        {"num": int(m_fn.group(1)), "text": m_fn.group(2).strip()}
                    )
                    i += 1
                    continue
                m_mt = RE_MULTI_TEXT.match(ln)
                if m_mt:
                    self._cur_passage["kind_hint"] = "multi"
                    block = m_mt.group(1)
                    self._cur_passage["multi_blocks"][block] = []
                    self._cur_passage["_cur_block"] = block
                    i += 1
                    continue
                if stripped:
                    if self._cur_passage["kind_hint"] == "multi" and self._cur_passage[
                        "_cur_block"
                    ]:
                        self._cur_passage["multi_blocks"][
                            self._cur_passage["_cur_block"]
                        ].append(stripped)
                    self._cur_passage["passage_lines"].append(stripped)
                i += 1
                continue

            i += 1

        self._flush_question()
        self._flush_passage(orphan=True)

        return self._build_output(sha1)

    # ----- helpers -----
    def _find_passage_for_qnum(self, qnum: int) -> Optional[int]:
        for p in self.passages:
            if qnum in p["child_qnums"]:
                return p["index"]
        return None

    def _finalize_passage(self):
        if not self._cur_passage:
            return
        p = self._cur_passage
        if p["kind_hint"] == "multi":
            md_parts = []
            for block, lines in p["multi_blocks"].items():
                md_parts.append(f"【{block}】\n" + "\n".join(lines))
            passage_md = "\n\n".join(md_parts)
            passage_text = "\n\n".join(
                ["\n".join(lines) for lines in p["multi_blocks"].values()]
            )
        else:
            passage_md = None
            passage_text = "\n".join(p["passage_lines"])
        parent = {
            "index": len(self.passages),
            "child_qnums": p["child_qnums"],
            "intro_line": p["intro_line"],
            "kind_hint": p["kind_hint"],
            "passage_text": passage_text,
            "passage_md": passage_md,
            "footnotes": p["footnotes"],
            "raw_intro_line_idx": p["intro_line_idx"],
        }
        self.passages.append(parent)
        self._cur_passage = None
        self.log(
            f"finalized passage: qnums={parent['child_qnums']} kind={parent['kind_hint']}"
        )

    def _flush_passage(self, orphan: bool = False):
        if self._cur_passage:
            self._finalize_passage()

    def _flush_question(self):
        if not self._cur_question:
            return
        q = self._cur_question
        stem = "\n".join(s for s in q["stem_lines"] if s.strip()).strip()
        options_text = []
        for k in ["A", "B", "C", "D"]:
            joined = " ".join(s.strip() for s in q["options"][k] if s.strip()).strip()
            options_text.append(joined)

        # flag detection
        full_text_for_image = (
            stem + " " + " ".join(options_text) + " " + " ".join(q["raw_lines"])
        )
        flags = []
        if detect_image_hint(full_text_for_image):
            flags.append("needs_image")
        empty_opt = sum(1 for o in options_text if not o)
        if empty_opt > 0:
            flags.append("option_incomplete")
            if empty_opt == 4:
                flags.append("option_image")
        if len(stem) < 6:
            flags.append("stem_short")

        # parse_confidence: 粗估
        conf = 1.0
        if "needs_image" in flags:
            conf -= 0.15
        if "option_incomplete" in flags:
            conf -= 0.25
        if "option_image" in flags:
            conf -= 0.35
        if "stem_short" in flags:
            conf -= 0.10
        conf = max(0.0, round(conf, 2))

        self.questions.append(
            {
                "qnum": q["qnum"],
                "stem": stem,
                "options": options_text,
                "section_label": q["section_label"],
                "passage_parent_idx": q.get("passage_parent_idx"),
                "raw_lines": q["raw_lines"],
                "raw_line_idx": q["line_idx"],
                "flags": flags,
                "parse_confidence": conf,
            }
        )
        self._cur_question = None

    # ----- output -----
    def _build_output(self, sha1: str) -> Dict:
        now = datetime.now(timezone.utc).isoformat(timespec="seconds")
        paper_slug = f"cap-{self.year}-{self.subject}"
        subject_id = SUBJECT_TO_DB_ID[self.subject]

        records: List[Dict] = []
        for p in self.passages:
            records.append(
                {
                    "kind": "passage_parent",
                    "key": f"{paper_slug}-passage-{p['child_qnums'][0]:02d}",
                    "intro_line": p["intro_line"],
                    "child_qnums": p["child_qnums"],
                    "passage_text": p["passage_text"],
                    "passage_md": p["passage_md"],
                    "kind_hint": p["kind_hint"],
                    "footnotes": p["footnotes"],
                    "raw_line_idx": p["raw_intro_line_idx"],
                }
            )
        for q in self.questions:
            kind = "passage_child" if q["passage_parent_idx"] is not None else "single"
            parent_key = None
            if kind == "passage_child":
                p = self.passages[q["passage_parent_idx"]]
                parent_key = f"{paper_slug}-passage-{p['child_qnums'][0]:02d}"
            records.append(
                {
                    "kind": kind,
                    "key": f"{paper_slug}-{q['qnum']:03d}",
                    "qnum": q["qnum"],
                    "stem": q["stem"],
                    "options": q["options"],
                    "section_label": q["section_label"],
                    "parent_key": parent_key,
                    "flags": q["flags"],
                    "parse_confidence": q["parse_confidence"],
                    "raw_line_idx": q["raw_line_idx"],
                    "raw_text": "\n".join(q["raw_lines"]),
                }
            )

        def sort_key(r):
            if r["kind"] == "passage_parent":
                return (r["child_qnums"][0], 0)
            return (r["qnum"], 1)

        records.sort(key=sort_key)

        return {
            "paper_slug": paper_slug,
            "exam_id": "cap",
            "subject_id": subject_id,
            "year": self.year,
            "subject": self.subject,
            "parser_version": PARSER_VERSION,
            "parsed_at": now,
            "source_pdf": str(self.pdf_path.relative_to(REPO_ROOT)),
            "source_pdf_sha1": sha1,
            "sections_detected": [
                {"label": s["label"], "range": s["range"]} for s in self._sections_seen
            ],
            "passage_count": len(self.passages),
            "question_count": len(self.questions),
            "records": records,
        }


# ---------- CLI ----------
def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True, choices=list(SUBJECT_FILE_PATTERNS))
    ap.add_argument("--out-dir", default=None)
    ap.add_argument("--dry-run", action="store_true", help="不寫檔，只印 summary")
    ap.add_argument("--debug", action="store_true")
    args = ap.parse_args()

    pdf_path = find_subject_pdf(args.year, args.subject)
    parser = Parser(args.year, args.subject, pdf_path, debug=args.debug)
    output = parser.parse()

    out_dir = (
        Path(args.out_dir)
        if args.out_dir
        else (PARSED_DIR / f"{args.year}-{args.subject}")
    )
    if not args.dry_run:
        out_dir.mkdir(parents=True, exist_ok=True)
        out_path = out_dir / "raw_questions.json"
        out_path.write_text(
            json.dumps(output, ensure_ascii=False, indent=2), encoding="utf-8"
        )
        print(f"wrote {out_path}", file=sys.stderr)

    flag_counter: Dict[str, int] = {}
    for r in output["records"]:
        if r["kind"] != "passage_parent":
            for f in r.get("flags", []):
                flag_counter[f] = flag_counter.get(f, 0) + 1
    summary = {
        "paper_slug": output["paper_slug"],
        "year": output["year"],
        "subject": output["subject"],
        "passage_count": output["passage_count"],
        "question_count": output["question_count"],
        "flag_counts": flag_counter,
        "sections": output["sections_detected"],
    }
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
