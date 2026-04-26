#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_social_passage_fix.py — 修補 cap social parser 沒抽到 passage 的 bug

cap_parser.py v0.1 對國文有 passage 偵測，但社會科沒做，導致題組子題在前端
缺少 passage 顯示。本腳本：

  1. 掃 raw_questions.json 各 record 的 raw_text，正則尋找
     「閱讀下列選文，回答第 X 至 Y 題：」/ 「閱讀下列短文…」/ 「閱讀以下…」
     等 marker 後接的 passage 內容
  2. 抽出 passage text（marker 後到下一個 \\nN. 之間）
  3. 在 raw_questions.json 加入 passage_parent record 並修改 child 的 kind
     + parent_key

跑完之後對該年份重跑 merger / build_sql / apply 即可。

用法：
  python3 scripts/ingest/cap_social_passage_fix.py 114
  python3 scripts/ingest/cap_social_passage_fix.py --all
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
PARSED_DIR = REPO / "content/parsed_cap"

# 兩種常見 intro 開頭
PATTERN = re.compile(
    r"閱讀(?:下列選文|下列短文|以下短文|以下選文|以下文章|下列文章)[，,]?\s*"
    r"(?:並)?\s*回答第?\s*(\d+)\s*[至到～~]\s*(\d+)\s*題[：:]?",
)
NEXT_Q = re.compile(r"\n\s*(\d+)\.\s")


def extract_passages_from_text(raw_text: str):
    """從 raw_text 抽 (start, end, passage_text) tuples。"""
    out = []
    for m in PATTERN.finditer(raw_text):
        start = int(m.group(1))
        end = int(m.group(2))
        after = raw_text[m.end():]
        # Find next "\nN." marker
        nq = NEXT_Q.search(after)
        if nq:
            passage = after[:nq.start()].strip()
        else:
            passage = after.strip()
        # 過濾雜訊：如果 passage 太短就跳過（可能誤抓）
        if len(passage) < 30:
            continue
        out.append((start, end, passage))
    return out


def fix_one(year: int, subject: str = "society", dry_run: bool = False):
    path = PARSED_DIR / f"{year}-{subject}" / "raw_questions.json"
    if not path.exists():
        print(f"  {year}-{subject}: raw_questions.json not found, skip")
        return 0
    data = json.loads(path.read_text(encoding="utf-8"))

    # 已經有 passage_parent 就 skip
    has_parents = any(r.get("kind") == "passage_parent" for r in data["records"])
    if has_parents:
        print(f"  {year}-{subject}: already has passage_parents, skip")
        return 0

    # 蒐集所有 passages
    found = []  # list of (start, end, text)
    for r in data["records"]:
        rt = r.get("raw_text", "") or ""
        for start, end, ptext in extract_passages_from_text(rt):
            found.append((start, end, ptext))

    if not found:
        print(f"  {year}-{subject}: no passage markers found")
        return 0

    # 去重（同一個 passage 可能被多 record 的 raw_text 包含）
    seen = set()
    uniq = []
    for s, e, t in found:
        key = (s, e)
        if key in seen:
            continue
        seen.add(key)
        uniq.append((s, e, t))

    print(f"  {year}-{subject}: found {len(uniq)} passages ({uniq[0][0:2]} ...)")

    # 建 child_qnum -> parent_key map
    child_to_parent = {}
    new_parents = []
    for start, end, text in uniq:
        passage_key = f"cap-{year}-{subject}-passage-{start:02d}"
        child_qnums = list(range(start, end + 1))
        new_parents.append({
            "kind": "passage_parent",
            "key": passage_key,
            "intro_line": f"閱讀下列選文，回答第 {start} 至 {end} 題：",
            "child_qnums": child_qnums,
            "passage_text": text,
            "passage_md": None,
            "kind_hint": "single",
            "footnotes": [],
            "raw_line_idx": -1,
        })
        for qn in child_qnums:
            child_to_parent[qn] = passage_key

    # 更新既有 children 的 kind + parent_key
    updated_children = 0
    for r in data["records"]:
        qn = r.get("qnum")
        if qn and qn in child_to_parent:
            r["kind"] = "passage_child"
            r["parent_key"] = child_to_parent[qn]
            updated_children += 1
            # 同時把 passage 從 raw_text 中清掉（避免日後 fix 重做）
            rt = r.get("raw_text", "") or ""
            cleaned = PATTERN.split(rt)[0].rstrip()
            r["raw_text"] = cleaned

    # 加入 parent records
    data["records"].extend(new_parents)
    data["passage_count"] = len(new_parents)

    if dry_run:
        print(f"    dry-run: would add {len(new_parents)} parents, link {updated_children} children")
        return 0

    path.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(f"    wrote {len(new_parents)} parents, linked {updated_children} children")
    return len(new_parents)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("year", nargs="?", type=int, default=None)
    ap.add_argument("--all", action="store_true", help="跑全部 104-114")
    ap.add_argument("--subject", default="society")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    if args.all:
        years = list(range(104, 115))
    elif args.year:
        years = [args.year]
    else:
        sys.exit("給 year 或 --all")

    total = 0
    for y in years:
        n = fix_one(y, args.subject, args.dry_run)
        total += n
    print(f"\n=== total parents added: {total} ===")


if __name__ == "__main__":
    main()
