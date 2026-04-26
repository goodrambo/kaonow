#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
cap_merger.py v0.1 (2026-04-26, Wave 1.9)

合併 cap_parser.py 的 raw_questions.json 與 cap_answer_linker.py 的 answers/{year}.json
產出 DB-ready records → content/parsed_cap/{year}-{subject}/questions.json

每筆 record 對應一個未來 INSERT 到 public.questions 的 row。

is_active / auto_gradable 規則：
  - passage_parent: is_active=true, auto_gradable=false
  - single/passage_child:
      若有 ['needs_image', 'option_image', 'option_incomplete', 'stem_short'] 任一 → is_active=false
      無 flag → is_active=true, auto_gradable=true

用法：
  python scripts/ingest/cap_merger.py --year 114 --subject chinese
"""
from __future__ import annotations

import argparse
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Dict, List, Optional

MERGER_VERSION = "cap_merger_v0.2"
REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_DIR = REPO_ROOT / "content/parsed_cap"
ANSWERS_DIR = PARSED_DIR / "answers"
EXPLANATIONS_DIR = PARSED_DIR / "explanations"

LETTER_TO_IDX = {"A": 0, "B": 1, "C": 2, "D": 3}

INACTIVE_FLAGS = {"needs_image", "option_image", "option_incomplete", "stem_short"}

SUBJECT_LINKER_KEY = {
    "chinese": "chinese",
    "english-reading": "english-reading",
    "english-listening": "english-listening",
    "math": "math",
    "society": "society",
    "nature": "nature",
    "writing": None,  # 寫作沒選擇題答案
}

SUBJECT_TO_DB_ID = {
    "chinese": "sub-cap-chinese",
    "english-reading": "sub-cap-english-reading",
    "english-listening": "sub-cap-english-listening",
    "math": "sub-cap-math",
    "society": "sub-cap-social",
    "nature": "sub-cap-science",
    "writing": "sub-cap-writing",
}

SUBJECT_TO_PAPER_TITLE = {
    "chinese": "國文科",
    "english-reading": "英語科(閱讀)",
    "english-listening": "英語科(聽力)",
    "math": "數學科",
    "society": "社會科",
    "nature": "自然科",
    "writing": "寫作測驗",
}


def merge(year: int, subject: str) -> Dict:
    paper_dir = PARSED_DIR / f"{year}-{subject}"
    raw_path = paper_dir / "raw_questions.json"
    if not raw_path.exists():
        raise FileNotFoundError(f"parser output not found: {raw_path}")
    parser_data = json.loads(raw_path.read_text(encoding="utf-8"))

    linker_key = SUBJECT_LINKER_KEY[subject]
    answers_map: Dict[int, str] = {}
    answer_pdf_sha1 = None
    if linker_key:
        ans_path = ANSWERS_DIR / f"{year}.json"
        if not ans_path.exists():
            raise FileNotFoundError(f"linker output not found: {ans_path}")
        linker_data = json.loads(ans_path.read_text(encoding="utf-8"))
        for k, v in linker_data["answers"].get(linker_key, {}).items():
            answers_map[int(k)] = v
        answer_pdf_sha1 = linker_data.get("source_pdf_sha1")

    # 詳解（optional）— content/parsed_cap/explanations/{year}-{subject}.json
    explanations_map: Dict[int, str] = {}
    explanation_source = None
    expl_path = EXPLANATIONS_DIR / f"{year}-{subject}.json"
    if expl_path.exists():
        expl_data = json.loads(expl_path.read_text(encoding="utf-8"))
        for k, v in expl_data.get("explanations", {}).items():
            explanations_map[int(k)] = v
        explanation_source = expl_data.get("explanation_source")

    paper_id = f"cap-{year}-{subject}"
    subject_id = SUBJECT_TO_DB_ID[subject]
    paper_title = f"{year} 年國中教育會考{SUBJECT_TO_PAPER_TITLE[subject]}"
    source_pdf = parser_data["source_pdf"]
    source_pdf_sha1 = parser_data["source_pdf_sha1"]
    parser_version = parser_data["parser_version"]
    parsed_at = parser_data["parsed_at"]

    paper_record = {
        "id": paper_id,
        "exam_id": "cap",
        "subject_id": subject_id,
        "roc_year": year,
        "year": year + 1911,
        "paper_title": paper_title,
        "source_family": "cap-rcpet-edu-tw",
        "source_ref": {
            "pdf_path": source_pdf,
            "pdf_sha1": source_pdf_sha1,
            "answer_pdf_sha1": answer_pdf_sha1,
        },
        "meta": {
            "parser_version": parser_version,
            "merger_version": MERGER_VERSION,
            "parsed_at": parsed_at,
        },
    }

    questions_records: List[Dict] = []
    inactive_count = 0
    no_answer_count = 0

    for r in parser_data["records"]:
        kind = r["kind"]
        common_meta = {
            "parser_version": parser_version,
            "merger_version": MERGER_VERSION,
            "parsed_at": parsed_at,
            "source_pdf_sha1": source_pdf_sha1,
            "answer_pdf_sha1": answer_pdf_sha1,
            "flags": r.get("flags", []),
            "parse_confidence": r.get("parse_confidence"),
        }

        if kind == "passage_parent":
            qid = f"cap-{year}-{subject}-passage-{r['child_qnums'][0]:02d}"
            media = {
                "passage_text": r.get("passage_text"),
                "kind_hint": r.get("kind_hint"),
            }
            if r.get("passage_md"):
                media["passage_md"] = r["passage_md"]
            if r.get("footnotes"):
                media["footnotes"] = r["footnotes"]
            common_meta["intro_line"] = r.get("intro_line")
            common_meta["child_qnums"] = r.get("child_qnums")

            questions_records.append(
                {
                    "id": qid,
                    "exam_id": "cap",
                    "subject_id": subject_id,
                    "paper_id": paper_id,
                    "question_type": "reading_passage",
                    "question_text": r.get("intro_line") or "閱讀題組",
                    "options": [],
                    "correct_answer": 0,
                    "correct_answer_json": None,
                    "parent_question_id": None,
                    "media": media,
                    "source": "official",
                    "source_meta": common_meta,
                    "is_active": True,
                    "auto_gradable": False,
                    "difficulty": 3,
                    "explanation": None,
                }
            )
            continue

        # single / passage_child
        qnum = r["qnum"]
        # W1.9.3 fix: 非選擇題（essay）section 與選擇題共用 qnum，加 -essay- prefix 避免 id collision
        # 適用 math 卷的「非選擇題」與其他卷的同類 section
        section_label = r.get("section_label", "") or ""
        is_essay_section = "非選擇題" in section_label or "essay" in section_label.lower()
        if is_essay_section:
            qid = f"cap-{year}-{subject}-essay-{qnum:03d}"
        else:
            qid = f"cap-{year}-{subject}-{qnum:03d}"
        flags = r.get("flags", [])
        # essay section 用獨立 answers map（如有），目前都是 None → essay 自動 inactive
        ans_letter = None if is_essay_section else answers_map.get(qnum)
        explanation = None if is_essay_section else explanations_map.get(qnum)
        common_meta["original_question_number"] = qnum
        common_meta["section_label"] = section_label
        common_meta["raw_text"] = r.get("raw_text")
        if explanation and explanation_source:
            common_meta["explanation_source"] = explanation_source

        # is_active 規則
        has_inactive_flag = any(f in INACTIVE_FLAGS for f in flags)
        # essay 永遠 inactive（無 letter 答案、需 model_answer）
        is_active = (not has_inactive_flag and ans_letter is not None and not is_essay_section)
        # auto_gradable
        auto_gradable = is_active  # 同步：能 active 才 auto-grade

        if not has_inactive_flag and ans_letter is None and not is_essay_section:
            no_answer_count += 1
            common_meta["flags"] = list(flags) + ["no_answer"]
        if not is_active:
            inactive_count += 1

        # correct_answer
        if ans_letter and ans_letter in LETTER_TO_IDX:
            correct_answer = LETTER_TO_IDX[ans_letter]
        else:
            correct_answer = 0  # placeholder（is_active=false 時無意義）

        # 找 parent
        parent_id: Optional[str] = None
        if kind == "passage_child" and r.get("parent_key"):
            # parent_key = `cap-{year}-{subject}-passage-{first_qnum}` 我們採同樣命名
            # 但 parent_key 來自 parser 已直接是 cap-114-chinese-passage-25 形式
            parent_id = r["parent_key"]

        questions_records.append(
            {
                "id": qid,
                "exam_id": "cap",
                "subject_id": subject_id,
                "paper_id": paper_id,
                "question_type": "single_choice",
                "question_text": r["stem"],
                "options": r["options"],
                "correct_answer": correct_answer,
                "correct_answer_json": None,
                "parent_question_id": parent_id,
                "media": None,
                "source": "official",
                "source_meta": common_meta,
                "is_active": is_active,
                "auto_gradable": auto_gradable,
                "difficulty": 3,
                "explanation": explanation,
            }
        )

    return {
        "paper": paper_record,
        "questions": questions_records,
        "stats": {
            "total_records": len(questions_records),
            "passage_parents": sum(
                1 for r in questions_records if r["question_type"] == "reading_passage"
            ),
            "single_questions": sum(
                1
                for r in questions_records
                if r["question_type"] != "reading_passage"
            ),
            "active": sum(1 for r in questions_records if r["is_active"]),
            "inactive": inactive_count,
            "no_answer": no_answer_count,
        },
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True)
    ap.add_argument("--out-dir", default=None)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    result = merge(args.year, args.subject)

    out_dir = (
        Path(args.out_dir)
        if args.out_dir
        else PARSED_DIR / f"{args.year}-{args.subject}"
    )
    if not args.dry_run:
        out_dir.mkdir(parents=True, exist_ok=True)
        (out_dir / "questions.json").write_text(
            json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8"
        )
        print(f"wrote {out_dir / 'questions.json'}", file=sys.stderr)

    print(json.dumps({"stats": result["stats"]}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
