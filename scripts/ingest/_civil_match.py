#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""W1.6 civil-service matcher：每個 (PC slug, category) 找對應的 moex (exam_code, c, s, q) entries。

策略：
1. PC slug → moex exam_name keyword 過濾 (e.g. heelevel3 → '高等考試三級考試')
2. 在符合 level 的 moex (exam_code, c) 群中，用 subject 集合 overlap 判斷對應類科
3. 對每個 (PC slug, category) 找最匹配的 c-code、收集所有 (year, exam_code, c, s, q)

輸出：content/config/moex_civil_service_map.json
{slug-cat-slug: [{year, exam_code, c, s, q, subject, q_pdf, a_pdf, ...}]}
"""
from __future__ import annotations
import json
import glob
import re
import hashlib
from collections import defaultdict, Counter
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
MOEX_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/moex-gov-tw"

# 24 PC slug → moex exam_name 關鍵字（用來縮窄 moex (exam_code, c) 候選集）
# 多個 keyword 用 OR：含其中一個就視為 level match
SLUG_TO_MOEX_KW = {
    "aboriginal":     ["原住民族特考", "公務人員特種考試原住民族", "原住民族考試"],
    "aviation":       ["民航人員特考", "民航人員考試"],
    "coastguard":     ["海岸巡防人員", "海巡人員特考"],
    "colonel":        ["國軍上校以上軍官轉任", "上校以上軍官外職停役轉任"],
    "commerce":       ["國際經濟商務人員", "國際經濟商務"],
    "customs":        ["關務人員特考", "關務人員考試"],
    "customspromo":   ["關務人員升官等考試"],
    "diplomatic":     ["外交領事人員", "外交人員特考", "外交、國際經濟商務"],
    "disabled":       ["身心障礙人員特考", "身心障礙人員考試"],
    "elementary":     ["公務人員初等考試"],
    "generalpolice":  ["一般警察人員特考", "一般警察人員"],
    # 高考二級單獨舉行有時候用 "二級" 但常與 三級合併
    "heelevel2":      ["公務人員高等考試二級考試", "高考二級", "高等考試一級暨二級"],
    # 高考三級+普考通常合併舉行 → 同 exam_name；c-code 自動分等
    "heelevel3":      ["公務人員高等考試三級考試", "高考三級"],
    "immigration":    ["移民行政人員特考", "移民行政"],
    "investigation":  ["法務部調查局", "調查人員特考"],
    "islands":        ["離島地區公務人員"],
    "judicial":       ["司法人員特考", "司法人員考試"],
    "locality":       ["特種考試地方政府公務人員", "地方政府公務人員考試"],
    "police":         ["警察人員特考", "警察人員考試"],
    "policepromo":    ["警察人員升官等考試"],
    "promotion":      ["公務人員升官等考試"],
    # 普考通常與高考三級合併舉行（exam_name 相同）→ 用相同 keyword，靠 c-code 自動分流
    "pukao":          ["公務人員高等考試三級考試", "公務人員高等考試暨普通考試", "公務人員普通考試"],
    "retired":        ["退除役軍人轉任公務人員", "退除役轉任", "退除役特考"],
    "security":       ["國家安全局國家安全情報人員", "國安局特考"],
}


def slugify(s: str) -> str:
    """中文 → 短 hash slug"""
    return hashlib.md5(s.encode("utf-8")).hexdigest()[:8]


def build_moex_index():
    """moex_index: (exam_code, c) → set(subjects), 同時收 rows"""
    by_class = defaultdict(set)
    class_rows = defaultdict(list)
    class_exam_name = {}
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
            class_exam_name[key] = r.get("exam_name", "")
            class_rows[key].append({
                "year": year, "exam_code": ec, "c": c,
                "s": r.get("s"), "q": r.get("q"),
                "subject": subj,
                "exam_name": r.get("exam_name", ""),
                "q_pdf": (r.get("question_pdf") or {}).get("local_path"),
                "a_pdf": (r.get("answer_pdf") or {}).get("local_path"),
            })
    return by_class, class_rows, class_exam_name


def level_classes(slug, by_class, class_exam_name):
    """找 exam_name 含 slug keyword 的 (ec, c) 群"""
    kws = SLUG_TO_MOEX_KW.get(slug, [])
    if not kws:
        return set()
    out = set()
    for (ec, c), ename in class_exam_name.items():
        if any(kw in ename for kw in kws):
            out.add((ec, c))
    return out


# W1.6 v1：限定近 5 年（110-114），減量到可控 ingest 量
ALLOWED_YEARS = {"110", "111", "112", "113", "114"}


def match_categories():
    by_class, class_rows, class_exam_name = build_moex_index()
    print(f"moex (exam_code, c) groups: {len(by_class)}")

    # PC categories
    pc_data = json.loads((REPO_ROOT / "content/config/civil_service_categories.json").read_text())

    # for each (subgroup/slug), find matching moex level classes, then per category match by subjects
    result = {}  # exam_id → {entries: [...], pc_subjects: [...], moex_classes: [...]}
    summary = []
    for slug_path, cats in pc_data.items():
        # slug_path = "subgroup/slug"
        slug = slug_path.split("/")[-1]
        moex_level_classes = level_classes(slug, by_class, class_exam_name)
        if not moex_level_classes:
            print(f"  [{slug}] NO moex level match — keyword={SLUG_TO_MOEX_KW.get(slug)}")
            continue

        for cat, info in cats.items():
            if cat == "(no category)":
                continue
            pc_subs = set(info["subjects"])
            # 過濾國文/作文/法學知識/憲法/英文等共同科目（在多個類科共用，不能用作識別）
            specific_subs = {s for s in pc_subs
                             if not any(common in s for common in
                                        ["國文", "法學知識", "中華民國憲法", "英文", "作文"])}
            if not specific_subs:
                # 全是共同科目 → 沒辦法識別
                print(f"  [{slug}/{cat}] no specific subjects (all shared) — skip")
                continue
            # 對每個 exam_code (1 year = 1 ec)，挑該 ec 下 overlap 最高的單一 c-code
            # 這樣避免 同 exam_code 下多個 c-code (e.g. 一般行政 + 一般民政) 都被抓進
            # collect per-exam_code best
            per_ec_best = {}  # exam_code → (best_overlap, best_c, all_subjects_count)
            for ec, c in moex_level_classes:
                inter = specific_subs & by_class[(ec, c)]
                if not inter:
                    continue
                score = len(inter)
                cur = per_ec_best.get(ec)
                if cur is None or score > cur[0]:
                    per_ec_best[ec] = (score, c, len(by_class[(ec, c)]))
            if not per_ec_best:
                continue

            # 額外篩選：overlap score 必須至少 2 個 specific subjects（避免 1-subject false match）
            chosen = [(ec, c) for ec, (score, c, _) in per_ec_best.items() if score >= min(2, len(specific_subs))]
            if not chosen:
                continue
            top_score = max(s for s, _, _ in per_ec_best.values())

            # 收集所有 entries（限定在 chosen c-codes 中 + 近 5 年）
            entries = []
            seen = set()
            for ec, c in chosen:
                for r in class_rows[(ec, c)]:
                    if r["subject"] not in pc_subs:
                        continue
                    if r["year"] not in ALLOWED_YEARS:
                        continue  # W1.6 v1 限近 5 年
                    key = (r["year"], r["exam_code"], r["c"], r["s"], r["q"])
                    if key in seen:
                        continue
                    seen.add(key)
                    corr = f"answer-corrections/by-subject/{r['exam_code']}-c{r['c']}-s{r['s']}-q{r['q']}-{r['subject']}.pdf"
                    corr_full = MOEX_ROOT / "exams" / r["year"] / r["exam_code"] / corr
                    r2 = dict(r)
                    r2["correction_pdf"] = corr if corr_full.exists() else None
                    entries.append(r2)

            entries.sort(key=lambda x: (-int(x["year"] or 0), x["subject"]))
            cat_slug = slugify(cat)
            exam_id = f"{slug}-{cat_slug}"
            result[exam_id] = {
                "slug": slug,
                "category": cat,
                "entries": entries,
                "moex_classes": [list(c) for c in chosen],
                "pc_subjects": sorted(pc_subs),
            }
            summary.append((slug, cat, len(entries), len(chosen), top_score))

    # 列出每 slug 結果
    print(f"\n=== W1.6 matched: {len(result)} (slug, category) → exam_id ===\n")
    by_slug_count = defaultdict(int)
    by_slug_entries = defaultdict(int)
    for slug, cat, n_entries, n_classes, top in summary:
        by_slug_count[slug] += 1
        by_slug_entries[slug] += n_entries
    print(f"{'slug':<22} {'cats':>4} {'entries':>7}")
    print("-" * 36)
    total_entries = 0
    for slug in sorted(by_slug_count):
        n_cats = by_slug_count[slug]
        n_entries = by_slug_entries[slug]
        total_entries += n_entries
        print(f"{slug:<22} {n_cats:>4} {n_entries:>7}")
    print("-" * 36)
    print(f"{'TOTAL':<22} {len(result):>4} {total_entries:>7}")

    # 寫出
    out = REPO_ROOT / "content/config/moex_civil_service_map.json"
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2))
    print(f"\nWrote {out} ({len(result)} exam_ids, {total_entries} entries)")


if __name__ == "__main__":
    match_categories()
