import json, glob
from collections import Counter
keywords = ["地方", "普通", "商務", "一般警察", "高考二級", "高等考試二級"]
seen = set()
counts = Counter()
for fp in glob.glob('content/sources/_inbox/openclaw-data/moex-gov-tw/exams/*/*/indices/rows.questions.json'):
    rows = json.loads(open(fp).read())
    if not rows: continue
    ename = rows[0].get("exam_name", "")
    if ename in seen: continue
    seen.add(ename)
    for kw in keywords:
        if kw in ename:
            counts[(kw, ename[:80])] += 1
            break
print("moex exam_names matching:")
for (kw, ename), n in counts.most_common(40):
    print(f"  [{kw}]  {repr(ename)}")
