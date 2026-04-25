#!/usr/bin/env python3
"""探查 moex rows.questions.json 結構，找 16 license slug 的對應 exam_code/c"""
from __future__ import annotations
import json
import glob
import re
import sys
from collections import defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MOEX_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/moex-gov-tw"

# 16 license slug → 中文類科識別關鍵字（rows.questions.json 沒明確類科欄，用 exam_name 或 subject 判斷會錯）
# 改用：rows.json 一個 (year, exam_code, c) 對應一個 類科 (class)；class name 在 PDF filename 或 download_url 才看得到
# 暫時先列出每 exam_code 下的 c-code 與 subject 分布
SLUG_KEYWORDS = {
    "accountant": ["會計師"],
    "bookkeeper": ["記帳士"],
    "appraiser": ["不動產估價師"],
    "brokers": ["不動產經紀人"],
    "land": ["地政士"],
    "socialworker": ["社會工作師", "社工師"],
    "civilengineering": ["土木工程技師", "土木技師"],
    "structural": ["結構工程技師", "結構技師"],
    "fire-equipment-engineer": ["消防設備師"],
    "fire-equipment-technician": ["消防設備士"],
    "dietitian": ["營養師"],
    "food": ["食品技師"],
    "mt": ["醫事檢驗師"],
    "optician": ["驗光師"],
    "optometrist": ["驗光生"],
    "publichealth": ["公共衛生師"],
}


def overview():
    """看 114 / 113 年所有 exam_code 的 c-code 分布"""
    for year in ["114", "113"]:
        print(f"\n========= {year} 年度 exam_code 概覽 =========")
        for fp in sorted(glob.glob(str(MOEX_ROOT / f"exams/{year}/*/indices/rows.questions.json"))):
            rows = json.loads(Path(fp).read_text())
            if not rows:
                continue
            exam_code = rows[0]["exam_code"]
            ename = rows[0]["exam_name"]
            cs = defaultdict(set)
            for r in rows:
                cs[r.get("c")].add(r.get("subject", ""))
            print(f"\n[{exam_code}] {ename[:70]}")
            for c, subs in sorted(cs.items()):
                print(f"  c={c}: {sorted(subs)[:6]} ...total {len(subs)}")


def find_slug_codes(slug, kws):
    """對某 slug 找出所有命中 (year, exam_code, c, subjects)"""
    hits = defaultdict(lambda: defaultdict(set))  # year→(exam_code,c)→subjects
    for fp in sorted(glob.glob(str(MOEX_ROOT / "exams/*/*/indices/rows.questions.json"))):
        rows = json.loads(Path(fp).read_text())
        if not rows:
            continue
        # 任何 row 的 exam_name 或 subject 含關鍵字 → 這 (exam_code, c) 候選
        # 但 exam_name 可能合併多類科（如「會計師、估價師、專利師」），需用 PDF filename 判斷
        for r in rows:
            ename = r.get("exam_name", "")
            subj = r.get("subject", "")
            qpath = (r.get("question_pdf") or {}).get("local_path", "")
            apath = (r.get("answer_pdf") or {}).get("local_path", "")
            # 主訊號：exam_name 含 keyword
            in_ename = any(k in ename for k in kws)
            # 副訊號：subject 含 keyword（少見，僅食品衛生安全與法規這類）
            # 以 c-code 區分：相同 exam_code 下不同 c 是不同類科
            # PDF filename 通常含類科名（filename 樣式：{exam_code}-c{c}-s{s}-q{q}-{subject}.pdf）— 但通常沒類科
            if in_ename:
                year = r.get("roc_year") or fp.split("/")[-4]
                ec = r.get("exam_code")
                c = r.get("c")
                hits[year][(ec, c)].add(subj)
    return hits


PUBLICCOM_PATHS = {
    "accountant":                "license/patent-tax/accountant",
    "bookkeeper":                "license/patent-tax/bookkeeper",
    "appraiser":                 "license/real-estate-licenses/appraiser",
    "brokers":                   "license/real-estate-licenses/brokers",
    "land":                      "license/real-estate-licenses/land",
    "socialworker":              "license/social-psychology/socialworker",
    "civilengineering":          "license/civil-architecture/civilengineering",
    "structural":                "license/civil-architecture/structural",
    "fire-equipment-engineer":   "license/civil-architecture/fire-equipment-engineer",
    "fire-equipment-technician": "license/civil-architecture/fire-equipment-technician",
    "dietitian":                 "license/food-nutrition/dietitian",
    "food":                      "license/food-nutrition/food",
    "mt":                        "license/public-health-medical/mt",
    "optician":                  "license/public-health-medical/optician",
    "optometrist":               "license/public-health-medical/optometrist",
    "publichealth":              "license/public-health-medical/publichealth",
}

PC_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/public-com-tw"


def collect_publiccom_subjects(slug):
    """從 public-com rows.questions.json 抽出該 slug 的 (year, subject, exam_id) tuples"""
    p = PC_ROOT / PUBLICCOM_PATHS[slug] / "indices/rows.questions.json"
    if not p.exists():
        return []
    rows = json.loads(p.read_text())
    out = []
    for r in rows:
        out.append({
            "year": r.get("year"),
            "subject": r.get("subject"),
            "category": r.get("category"),
            "level_or_region": r.get("level_or_region"),
            "pc_exam_id": (r.get("question_pdf") or {}).get("exam_id"),
            "q_local": (r.get("question_pdf") or {}).get("local_path"),
            "a_local": (r.get("answer_pdf") or {}).get("local_path"),
        })
    return out


def map_via_subjects():
    """改用 subject 配對策略：用 public-com 的 subject 找 moex 對應 (year, exam_code, c, s)"""
    # build moex subject index: (year, subject) → list of (exam_code, c, s)
    moex_index = defaultdict(list)
    for fp in sorted(glob.glob(str(MOEX_ROOT / "exams/*/*/indices/rows.questions.json"))):
        rows = json.loads(Path(fp).read_text())
        for r in rows:
            year = r.get("roc_year") or fp.split("/")[-4]
            subj = r.get("subject", "").strip()
            if not subj:
                continue
            moex_index[(year, subj)].append({
                "exam_code": r.get("exam_code"),
                "c": r.get("c"),
                "s": r.get("s"),
                "q": r.get("q"),
                "exam_name": r.get("exam_name"),
                "q_pdf": (r.get("question_pdf") or {}).get("local_path"),
                "a_pdf": (r.get("answer_pdf") or {}).get("local_path"),
            })

    print(f"moex_index built: {len(moex_index)} unique (year,subject) keys\n")

    summary = {}
    for slug in SLUG_KEYWORDS:
        pc = collect_publiccom_subjects(slug)
        # year → set of subjects
        pc_subjects_by_year = defaultdict(set)
        for r in pc:
            pc_subjects_by_year[r["year"]].add(r["subject"])

        all_pc_subjects = set()
        for s in pc_subjects_by_year.values():
            all_pc_subjects.update(s)

        # match each pc (year, subject) against moex_index
        matched = []
        unmatched = []
        for r in pc:
            key = (r["year"], r["subject"])
            if key in moex_index:
                matched.append(r)
            else:
                unmatched.append(r)

        # collect distinct (exam_code, c) pairs from matched moex hits
        ec_c_set = set()
        for r in matched:
            for m in moex_index[(r["year"], r["subject"])]:
                ec_c_set.add((r["year"], m["exam_code"], m["c"]))

        print(f"{slug:<28} pc_total={len(pc):4} matched={len(matched):4} unmatched={len(unmatched):4} subjects={len(all_pc_subjects)} ec_c_groups={len(ec_c_set)}")
        if unmatched and len(unmatched) <= 5:
            for u in unmatched:
                print(f"    unmatched: {u['year']} / {u['subject']}")

        summary[slug] = {
            "pc_total": len(pc),
            "matched": len(matched),
            "unmatched": len(unmatched),
            "ec_c_groups": sorted(ec_c_set),
            "pc_subjects": sorted(all_pc_subjects),
        }

    return summary


def build_full_map(out: str):
    """為每個 slug 建立 moex (year, exam_code, c, s, q) 的明確映射，過濾 exam_name 含 slug keyword
    輸出 JSON: {slug: [{year, exam_code, c, s, q, subject, q_pdf, a_pdf, exam_name}, ...]}"""
    moex_index = defaultdict(list)
    for fp in sorted(glob.glob(str(MOEX_ROOT / "exams/*/*/indices/rows.questions.json"))):
        rows = json.loads(Path(fp).read_text())
        for r in rows:
            year = r.get("roc_year") or fp.split("/")[-4]
            subj = (r.get("subject") or "").strip()
            if not subj:
                continue
            moex_index[(year, subj)].append({
                "year": year,
                "exam_code": r.get("exam_code"),
                "c": r.get("c"),
                "s": r.get("s"),
                "q": r.get("q"),
                "subject": subj,
                "exam_name": r.get("exam_name", ""),
                "q_pdf": (r.get("question_pdf") or {}).get("local_path"),
                "a_pdf": (r.get("answer_pdf") or {}).get("local_path"),
            })

    result = {}
    summary = {}
    for slug, kws in SLUG_KEYWORDS.items():
        pc = collect_publiccom_subjects(slug)
        slug_entries = []
        ambiguous = []
        unmatched = []
        seen_keys = set()  # de-dup by (year, exam_code, c, s)
        for r in pc:
            year, subj = r["year"], r["subject"]
            cands = moex_index.get((year, subj), [])
            if not cands:
                unmatched.append({"year": year, "subject": subj, "reason": "no_moex_subject_match"})
                continue
            # filter by slug keyword in exam_name
            filt = [c for c in cands if any(k in c["exam_name"] for k in kws)]
            if not filt:
                # 也許 keyword 在 candidate 的 c-group 同 exam_code 其他 row？檢查 exam_code 中所有 row
                for c in cands:
                    # find other rows in same (exam_code, c) group
                    pass
                # 退而求其次：用所有 candidates 但 flag ambiguous
                ambiguous.append({"year": year, "subject": subj, "n_cands": len(cands)})
                pick = cands[0] if len(cands) == 1 else None
            else:
                pick = filt[0]
                if len(filt) > 1:
                    ambiguous.append({"year": year, "subject": subj, "n_filtered": len(filt)})
            if pick is None:
                continue
            key = (pick["year"], pick["exam_code"], pick["c"], pick["s"], pick["q"])
            if key in seen_keys:
                continue
            seen_keys.add(key)
            # 加上 answer-correction PDF 路徑（若存在）
            corr_path = f"exams/{pick['year']}/{pick['exam_code']}/answer-corrections/by-subject/{pick['exam_code']}-c{pick['c']}-s{pick['s']}-q{pick['q']}-{pick['subject']}.pdf"
            corr_full = MOEX_ROOT / corr_path
            pick["correction_pdf"] = corr_path if corr_full.exists() else None
            slug_entries.append(pick)
        # 排序：年度新→舊，subject 字母序
        slug_entries.sort(key=lambda x: (-int(x["year"] or 0), x["subject"]))
        result[slug] = slug_entries
        summary[slug] = {
            "matched": len(slug_entries),
            "unmatched_pc": len(unmatched),
            "ambiguous": len(ambiguous),
            "unmatched_examples": unmatched[:5],
        }

    out_path = REPO_ROOT / out
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(json.dumps(result, ensure_ascii=False, indent=2))
    summary_path = out_path.with_suffix(".summary.json")
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2))

    print(f"\nWrote {out_path} ({sum(len(v) for v in result.values())} total entries across {len(result)} slugs)")
    print(f"Wrote {summary_path}")
    print("\nPer-slug summary:")
    for slug, s in summary.items():
        print(f"  {slug:<28} matched={s['matched']:4} unmatched={s['unmatched_pc']:3} ambiguous={s['ambiguous']:3}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("usage: _moex_explore.py [overview | map | slug <slug>]")
        sys.exit(1)
    cmd = sys.argv[1]
    if cmd == "overview":
        overview()
    elif cmd == "map":
        map_all()
    elif cmd == "subjmap":
        map_via_subjects()
    elif cmd == "build":
        build_full_map(out=sys.argv[2] if len(sys.argv) > 2 else "content/config/moex_license_map.json")
    elif cmd == "slug":
        slug = sys.argv[2]
        if slug not in SLUG_KEYWORDS:
            print(f"unknown slug: {slug}")
            sys.exit(1)
        h = find_slug_codes(slug, SLUG_KEYWORDS[slug])
        for y in sorted(h):
            for (ec, c), subs in h[y].items():
                print(f"{y} {ec} c={c}: {sorted(subs)}")
