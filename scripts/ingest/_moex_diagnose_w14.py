#!/usr/bin/env python3
"""W1.4 diagnose：找 3 個 0 命中 slug 的真正 moex c-code + 現有 slug 為何 ambiguous"""
import json
import glob
import re
import sys
from collections import defaultdict, Counter
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MOEX_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/moex-gov-tw"
PC_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/public-com-tw"

# 公職王 slug → 該 slug 在公職王 rows.questions.json 的路徑
PUBLICCOM_PATHS = {
    "optician":      "license/public-health-medical/optician",
    "optometrist":   "license/public-health-medical/optometrist",
    "structural":    "license/civil-architecture/structural",
}


def load_pc_rows(slug):
    p = PC_ROOT / PUBLICCOM_PATHS[slug] / "indices/rows.questions.json"
    return json.loads(p.read_text())


def diagnose_zero_hit(slug):
    print(f"\n========= {slug}: PC info =========")
    rows = load_pc_rows(slug)
    print(f"PC rows: {len(rows)}")
    subjects_by_year = defaultdict(set)
    for r in rows:
        subjects_by_year[r["year"]].add(r["subject"])
    for y in sorted(subjects_by_year):
        print(f"  {y}: {sorted(subjects_by_year[y])}")
    # 取一個有代表性的 subject
    sample_subj = sorted(subjects_by_year[max(subjects_by_year.keys())])[:3]

    print(f"\n--- moex 找這些 subject 的 (year, exam_code, c) candidates ---")
    for subj in sample_subj:
        print(f"  subject={subj!r}")
        for fp in sorted(glob.glob(str(MOEX_ROOT / "exams/*/*/indices/rows.questions.json"))):
            data = json.loads(Path(fp).read_text())
            for r in data:
                if (r.get("subject") or "").strip() == subj:
                    year = r.get("roc_year") or fp.split("/")[-4]
                    print(f"    {year} {r['exam_code']} c={r['c']} s={r['s']} : exam_name={r['exam_name'][:90]!r}")
                    break  # 同 (year, exam_code) 只列一筆


def find_moex_keyword(slug, kw):
    """grep moex exam_name 含 kw 的 (year, exam_code, c) groups"""
    print(f"\n========= keyword={kw!r} in moex exam_name =========")
    seen = set()
    for fp in sorted(glob.glob(str(MOEX_ROOT / "exams/*/*/indices/rows.questions.json"))):
        rows = json.loads(Path(fp).read_text())
        if not rows:
            continue
        if kw in rows[0].get("exam_name", ""):
            ec = rows[0].get("exam_code")
            year = rows[0].get("roc_year") or fp.split("/")[-4]
            cs_subjects = defaultdict(set)
            for r in rows:
                cs_subjects[r.get("c")].add(r.get("subject", ""))
            for c, subs in sorted(cs_subjects.items()):
                key = (ec, c)
                if key in seen: continue
                seen.add(key)
                print(f"  {year}/{ec} c={c}: {sorted(subs)[:6]}{' …' if len(subs)>6 else ''}")


def diagnose_unmatched(slug):
    """看現有 slug 為何 ~500 PDFs 沒進 map"""
    pc_path = REPO_ROOT / "content/sources/_inbox/openclaw-data/public-com-tw" / {
        "accountant": "license/patent-tax/accountant",
        "bookkeeper": "license/patent-tax/bookkeeper",
        "appraiser": "license/real-estate-licenses/appraiser",
        "brokers": "license/real-estate-licenses/brokers",
        "land": "license/real-estate-licenses/land",
        "socialworker": "license/social-psychology/socialworker",
        "civilengineering": "license/civil-architecture/civilengineering",
        "publichealth": "license/public-health-medical/publichealth",
        "dietitian": "license/food-nutrition/dietitian",
        "food": "license/food-nutrition/food",
        "mt": "license/public-health-medical/mt",
        "fire-equipment-engineer": "license/civil-architecture/fire-equipment-engineer",
        "fire-equipment-technician": "license/civil-architecture/fire-equipment-technician",
    }[slug] / "indices/rows.questions.json"
    pc = json.loads(pc_path.read_text())
    cur = json.loads((REPO_ROOT / "content/config/moex_license_map.json").read_text())
    matched_keys = {(e["year"], e["subject"]) for e in cur.get(slug, [])}
    unmatched = [r for r in pc if (r["year"], r["subject"]) not in matched_keys]
    print(f"\n========= {slug}: PC={len(pc)} matched={len(matched_keys)} unmatched={len(unmatched)} =========")
    # 看 unmatched 集中在哪些 (year, subject)
    by_subj = Counter((r["year"], r["subject"]) for r in unmatched)
    print("Top 20 unmatched (year, subject):")
    for (y, subj), n in by_subj.most_common(20):
        print(f"  {y} {subj!r}  ×{n}")


if __name__ == "__main__":
    cmd = sys.argv[1]
    if cmd == "zero":
        # 3 個 0 命中
        for slug in ["optician", "optometrist", "structural"]:
            diagnose_zero_hit(slug)
    elif cmd == "kw":
        find_moex_keyword(sys.argv[2], sys.argv[3])
    elif cmd == "unmatch":
        diagnose_unmatched(sys.argv[2])
