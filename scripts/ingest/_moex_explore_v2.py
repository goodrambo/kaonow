#!/usr/bin/env python3
"""W1.4 v2 matcher：用 subject 集合 overlap 識別 class，不靠 exam_name keyword。

策略：
1. 每個 slug 從 public-com 抽出 canonical subject set
2. 對 moex 每個 (exam_code, c) 收集 subject set
3. 若 (exam_code, c) 的 subjects 與 slug canonical 有 ≥1 overlap，視為候選類科
4. 進一步看 (exam_code, c) 的 SUBJECT 集合 ⊆ slug canonical subjects（嚴格驗證）
   或者：overlap_ratio = |intersection| / |moex_(ec,c)_subjects| >= 0.5
5. 為每個 (年度, slug subject) 找 unique (exam_code, c, s, q)

輸出：content/config/moex_license_map.json (v2)
"""
from __future__ import annotations
import json
import glob
import re
import sys
from collections import defaultdict
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MOEX_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/moex-gov-tw"
PC_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/public-com-tw"

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


def collect_pc_subjects(slug):
    """取 public-com 該 slug 全部 (year, subject) tuples、distinct subject set、core subject set。

    core = 出現次數 ≥ max(2, max_count*0.4) 的 subjects（過濾 PC 標錯/雜訊 subject）
    """
    p = PC_ROOT / PUBLICCOM_PATHS[slug] / "indices/rows.questions.json"
    rows = json.loads(p.read_text())
    from collections import Counter
    subj_cnt = Counter()
    for r in rows:
        s = (r.get("subject") or "").strip()
        if s and "國文" not in s and "作文" not in s:
            subj_cnt[s] += 1
    subjects = set(subj_cnt.keys())
    if subj_cnt:
        max_n = max(subj_cnt.values())
        thresh = max(2, max_n * 0.4)
        core = {s for s, n in subj_cnt.items() if n >= thresh}
        # 若 core 空（all subjects 出現 1 次）→ 全當 core
        if not core:
            core = subjects
    else:
        core = set()
    return rows, subjects, core


def build_moex_index():
    """moex_index: (exam_code, c) → set(subjects), plus year_subjects dict."""
    by_class = defaultdict(set)            # (exam_code, c) → set of subjects
    class_year_rows = defaultdict(list)    # (exam_code, c) → list of rows (with year/s/q)
    full_rows = []
    for fp in sorted(glob.glob(str(MOEX_ROOT / "exams/*/*/indices/rows.questions.json"))):
        rows = json.loads(Path(fp).read_text())
        for r in rows:
            year = r.get("roc_year") or fp.split("/")[-4]
            ec = r.get("exam_code")
            c = r.get("c")
            subj = (r.get("subject") or "").strip()
            if not (ec and c and subj):
                continue
            key = (ec, c)
            by_class[key].add(subj)
            class_year_rows[key].append({
                "year": year,
                "exam_code": ec,
                "c": c,
                "s": r.get("s"),
                "q": r.get("q"),
                "subject": subj,
                "exam_name": r.get("exam_name", ""),
                "q_pdf": (r.get("question_pdf") or {}).get("local_path"),
                "a_pdf": (r.get("answer_pdf") or {}).get("local_path"),
            })
            full_rows.append({"year": year, "ec": ec, "c": c, "s": r.get("s"), "q": r.get("q"),
                              "subject": subj})
    return by_class, class_year_rows


# 公務員考試 boilerplate — 專技執照不含「法學知識」「中華民國憲法」這類
# 注意：「國文（作文與測驗）」是高考類（含專技）共有，**不能** 放進來，否則會誤排會計師等
PUBLIC_SERVICE_STOPLIST = (
    "法學知識與英文",
    "中華民國憲法與英文",
    "中華民國憲法",  # 出現在交通鐵路升資/公務升資 — 專技執照沒這科
)

# PC subjects 太少 (≤2) 的 slug → 用人工指定的 expanded canonical 集
# 來源：v2 sample 抓到的 highest-purity class 的 subject set（已驗證為對的）
EXPANDED_CANONICAL = {
    "structural": {
        "結構學", "結構動力分析與耐震設計", "鋼結構設計",
        "鋼筋混凝土設計與預力混凝土設計", "土壤力學與基礎設計", "材料力學",
    },
    "fire-equipment-engineer": {
        "消防法規", "火災學", "化學系統消防安全設備", "水系統消防安全設備",
        "警報系統消防安全設備", "避難系統消防安全設備",
    },
}


def has_public_service_signal(moex_subs: set) -> bool:
    """判斷 class 是否屬於公務員考試（非專技執照）"""
    for s in moex_subs:
        for stop in PUBLIC_SERVICE_STOPLIST:
            if stop in s:
                return True
    return False


def find_classes_for_slug_expanded(slug, expanded, by_class):
    """用 hardcoded expanded canonical 做嚴格匹配（給 PC subjects 過少的 slug 用）。

    要求 class subjects 與 expanded 至少 3 重疊 + class_pur ≥ 0.5
    """
    classes = set()
    for (ec, c), moex_subs in by_class.items():
        if not moex_subs or has_public_service_signal(moex_subs):
            continue
        inter = expanded & moex_subs
        if len(inter) < 3:
            continue
        class_pur = len(inter) / len(moex_subs)
        if class_pur >= 0.5:
            classes.add((ec, c))
    return classes


def find_classes_for_slug(slug, pc_subjects, pc_core, by_class):
    """雙向 ratio + stop-list 判斷 (ec, c) 是否屬於該 slug 類科。

    Filter 規則：
    1. class 含公務員 boilerplate subject → 排除（除非 slug 本身是公務員類，目前 W1.4 不含）
    2. core_n ≥ 3：core_cov ≥ 0.6 AND class_pur ≥ 0.6
    3. core_n == 2：兩個 core subject 都在 class + class_pur ≥ 0.3
    4. core_n == 1：core subject 在 class + class subjects ≤ 7 + class_pur ≥ 0.15
    """
    core = set(pc_core)
    full = set(pc_subjects)
    core_n = len(core)
    if core_n == 0:
        return set()
    classes = set()
    for (ec, c), moex_subs in by_class.items():
        if not moex_subs:
            continue
        # 排除公務員類科
        if has_public_service_signal(moex_subs):
            continue
        inter_core = core & moex_subs
        inter_full = full & moex_subs
        if not inter_core:
            continue
        core_cov = len(inter_core) / core_n
        class_pur = len(inter_full) / len(moex_subs)

        if core_n == 1:
            if len(inter_core) == 1 and len(moex_subs) <= 7 and class_pur >= 0.15:
                classes.add((ec, c))
        elif core_n == 2:
            if len(inter_core) == 2 and class_pur >= 0.3:
                classes.add((ec, c))
        else:
            if core_cov >= 0.6 and class_pur >= 0.6:
                classes.add((ec, c))
    return classes


def build_v2_map():
    by_class, class_year_rows = build_moex_index()
    print(f"moex (exam_code, c) groups: {len(by_class)}")

    result = {}
    summary = {}
    for slug in PUBLICCOM_PATHS:
        pc_rows, pc_subs, pc_core = collect_pc_subjects(slug)
        if slug in EXPANDED_CANONICAL:
            classes = find_classes_for_slug_expanded(slug, EXPANDED_CANONICAL[slug], by_class)
            print(f"\n{slug}: [expanded canonical] matched_classes={len(classes)}")
        else:
            classes = find_classes_for_slug(slug, pc_subs, pc_core, by_class)
            print(f"\n{slug}: pc_subjects={len(pc_subs)} core={len(pc_core)} matched_classes={len(classes)}")
        if classes:
            print(f"  classes (sample 5): {sorted(classes)[:5]}")

        # 收集這 slug 所有 (year, exam_code, c, s, q) entries
        entries = []
        seen_keys = set()
        for ec_c in classes:
            for r in class_year_rows[ec_c]:
                key = (r["year"], r["exam_code"], r["c"], r["s"], r["q"])
                if key in seen_keys:
                    continue
                seen_keys.add(key)
                # 加上 correction PDF 路徑
                corr = f"answer-corrections/by-subject/{r['exam_code']}-c{r['c']}-s{r['s']}-q{r['q']}-{r['subject']}.pdf"
                corr_full = MOEX_ROOT / "exams" / r["year"] / r["exam_code"] / corr
                r2 = dict(r)
                r2["correction_pdf"] = corr if corr_full.exists() else None
                entries.append(r2)

        # 排序：年度新→舊、subject 字母序
        entries.sort(key=lambda x: (-int(x["year"] or 0), x["subject"]))
        result[slug] = entries
        summary[slug] = {
            "pc_subjects": len(pc_subs),
            "pc_core": sorted(pc_core),
            "matched_classes": len(classes),
            "entries": len(entries),
        }

    out = REPO_ROOT / "content/config/moex_license_map_v2.json"
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2))
    summ_path = out.with_suffix(".summary.json")
    summ_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2))

    print(f"\n=== v2 map summary ===")
    total = sum(s["entries"] for s in summary.values())
    print(f"  total entries: {total}")
    for slug, s in summary.items():
        print(f"  {slug:<28} entries={s['entries']:4} (PC subjects={s['pc_subjects']}, classes={s['matched_classes']})")

    print(f"\nWrote {out}")
    return result, summary


def diff_v1_v2():
    """比對 v1 vs v2 map 的差異"""
    v1 = json.loads((REPO_ROOT / "content/config/moex_license_map.json").read_text())
    v2 = json.loads((REPO_ROOT / "content/config/moex_license_map_v2.json").read_text())
    print(f"{'slug':<28} {'v1':>5} {'v2':>5} {'diff':>5}")
    print("-" * 50)
    for slug in v2:
        n1 = len(v1.get(slug, []))
        n2 = len(v2[slug])
        diff = n2 - n1
        print(f"{slug:<28} {n1:>5} {n2:>5} {diff:>+5}")


def write_diff_map():
    """產 moex_license_map_diff.json — 只含 v2 新 entries (v2 - v1)，給 incremental ingest 用"""
    v1 = json.loads((REPO_ROOT / "content/config/moex_license_map.json").read_text())
    v2 = json.loads((REPO_ROOT / "content/config/moex_license_map_v2.json").read_text())
    diff = {}
    total = 0
    for slug, v2_entries in v2.items():
        v1_keys = {(e["year"], e["exam_code"], e["c"], e["s"], e["q"]) for e in v1.get(slug, [])}
        new = [e for e in v2_entries if (e["year"], e["exam_code"], e["c"], e["s"], e["q"]) not in v1_keys]
        diff[slug] = new
        total += len(new)
    out = REPO_ROOT / "content/config/moex_license_map_diff.json"
    out.write_text(json.dumps(diff, ensure_ascii=False, indent=2))
    print(f"\nWrote {out} ({total} new entries)")
    for slug, es in diff.items():
        if es:
            print(f"  {slug:<28} +{len(es)}")


if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "build"
    if cmd == "build":
        build_v2_map()
    elif cmd == "diff":
        diff_v1_v2()
    elif cmd == "diffmap":
        write_diff_map()
