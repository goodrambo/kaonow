#!/usr/bin/env python3
"""debug: 看為何 dietitian 在 moex 找不到 exam_name 匹配"""
import json, glob, sys
from collections import defaultdict

PC = "content/sources/_inbox/openclaw-data/public-com-tw/license/food-nutrition/dietitian/indices/rows.questions.json"

pc_rows = json.loads(open(PC).read())
moex_idx = defaultdict(list)
for fp in glob.glob("content/sources/_inbox/openclaw-data/moex-gov-tw/exams/*/*/indices/rows.questions.json"):
    rows = json.loads(open(fp).read())
    for r in rows:
        key = (r.get("roc_year"), (r.get("subject") or "").strip())
        moex_idx[key].append(r)

pc_sample = [r for r in pc_rows if r.get("year") == "114"][:5]
for r in pc_sample:
    key = (r["year"], r["subject"])
    cands = moex_idx.get(key, [])
    rep_subj = repr(r["subject"])
    print(f"\nPC: year={r['year']} subject={rep_subj}")
    for c in cands[:5]:
        ename = c["exam_name"][:80]
        print(f"  moex: code={c['exam_code']} c={c['c']} exam_name={ename!r}")
