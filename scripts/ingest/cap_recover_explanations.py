#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_recover_explanations.py — 從 failed.json 救援 too_long 但其實 OK 的詳解

cap_explain_ai.py LEN_MAX=280 太緊（特別是英閱長文題，Haiku 寫 280-450 字常見）。
本腳本：
  1. 掃 outputs/cap_explain/*_failed.json
  2. 對 too_long 但 letter 對且無 markdown 的回應，放寬 LEN_MAX=500 重驗
  3. 通過的 explanation 補進對應的 explanations/{year}-{subject}.json

跑完之後再跑 apply_cap_w192_explanations.py 把詳解灌到 prod。

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  python3 scripts/ingest/cap_recover_explanations.py
"""
import json
import re
from datetime import date
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
FAIL_DIR = REPO / "outputs/cap_explain"
EXPL_DIR = REPO / "content/parsed_cap/explanations"

LEN_MAX_RELAXED = 500
LETTER_RE = re.compile(r"\(([ABCD])\)")
MARKDOWN_RE = re.compile(r"(^|\n)\s*(#|\*\s|-\s|>\s|\*\*)|`")


def is_acceptable(text: str, correct_letter: str) -> bool:
    if not text:
        return False
    if len(text) > LEN_MAX_RELAXED:
        return False
    if len(text) < 25:
        return False
    letters = LETTER_RE.findall(text)
    if not letters or correct_letter not in letters:
        return False
    if MARKDOWN_RE.search(text):
        return False
    return True


def get_correct_letter(year: int, subject: str, qnum: int) -> str:
    ans_path = REPO / "content/parsed_cap/answers" / f"{year}.json"
    data = json.loads(ans_path.read_text(encoding="utf-8"))
    return data["answers"].get(subject, {}).get(str(qnum)) or data["answers"].get(subject, {}).get(qnum)


def main():
    total_recovered = 0
    total_still_failed = 0
    files = sorted(FAIL_DIR.glob("*_failed.json"))
    for fpath in files:
        # name: {year}-{subject}_failed.json
        stem = fpath.stem.replace("_failed", "")
        # split year-subject (subject may contain '-': english-reading)
        year_str, subject = stem.split("-", 1)
        year = int(year_str)

        data = json.loads(fpath.read_text(encoding="utf-8"))
        fails = data.get("failures", {})
        if not fails:
            continue

        # 載入該 paper 的 explanations.json
        expl_path = EXPL_DIR / f"{year}-{subject}.json"
        if not expl_path.exists():
            print(f"  {stem}: explanations file not found, skip")
            continue
        expl = json.loads(expl_path.read_text(encoding="utf-8"))
        expls_dict = expl.setdefault("explanations", {})

        recovered = 0
        still_failed = []
        for qstr, info in fails.items():
            if info.get("reason") != "validation_failed":
                still_failed.append((qstr, info.get("reason")))
                continue
            qnum = int(qstr)
            letter = get_correct_letter(year, subject, qnum)
            if not letter:
                still_failed.append((qstr, "no_letter"))
                continue
            # 嘗試 first_text，再 second_text
            for key in ("first_text", "second_text"):
                cand = info.get(key)
                if cand and is_acceptable(cand, letter):
                    expls_dict[str(qnum)] = cand
                    recovered += 1
                    break
            else:
                still_failed.append((qstr, "still_too_long_or_other"))

        if recovered:
            expl["explained_at"] = date.today().isoformat()
            expl_path.write_text(
                json.dumps(expl, ensure_ascii=False, indent=2, sort_keys=False) + "\n",
                encoding="utf-8"
            )
            total_recovered += recovered
        total_still_failed += len(still_failed)
        print(f"  {stem}: recovered {recovered} / {len(fails)} (still fail: {len(still_failed)})")
        for q, why in still_failed[:3]:
            print(f"    - q{q}: {why}")

    print()
    print(f"=== 完成 ===")
    print(f"recovered: {total_recovered}")
    print(f"still failed: {total_still_failed}")
    print()
    print("接著跑：python3 scripts/ingest/apply_cap_w192_explanations.py 把救援的詳解灌進 DB")


if __name__ == "__main__":
    main()
