#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""W1.6 civil-service 探查：抽出每個 PC slug 下 distinct 類科 (category)，及其 subjects/years/PDF 數
"""
from __future__ import annotations
import json
import glob
from collections import defaultdict, Counter
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
PC_ROOT = REPO_ROOT / "content/sources/_inbox/openclaw-data/public-com-tw/civil-service"


def main():
    # 找所有 slug 的 indices/rows.questions.json
    indices = sorted(glob.glob(str(PC_ROOT / "*/*/indices/rows.questions.json")))
    print(f"Found {len(indices)} slug indices\n")

    # 結構：(category_subgroup, slug, level_or_region, category) → counters
    # 但 rows.json 裡 category 才是「類科」(一般行政/法律廉政...)
    # 而 level_or_region 是 subgroup 下的子分類 (e.g. 「一般」「身障」「原住民」)

    grand_total = 0
    # slug → {category: {years: set, subjects: set, pc_rows: int}}
    by_slug = defaultdict(lambda: defaultdict(lambda: {
        "years": set(), "subjects": set(), "pc_rows": 0,
        "level_or_region": Counter(),
    }))

    for fp in indices:
        # path 結構: civil-service/{subgroup}/{slug}/indices/rows.questions.json
        parts = Path(fp).parts
        slug = parts[-3]
        subgroup = parts[-4]

        rows = json.loads(Path(fp).read_text())
        for r in rows:
            cat = (r.get("category") or "").strip()
            yr = (r.get("year") or "").strip()
            subj = (r.get("subject") or "").strip()
            lor = (r.get("level_or_region") or "").strip()
            if not cat:
                cat = "(no category)"
            entry = by_slug[(subgroup, slug)][cat]
            entry["years"].add(yr)
            entry["subjects"].add(subj)
            entry["pc_rows"] += 1
            entry["level_or_region"][lor] += 1
        grand_total += len(rows)

    print(f"Total PC rows: {grand_total}\n")

    # 印出 per-slug, per-category 摘要
    total_categories = 0
    for (subgroup, slug), cats in sorted(by_slug.items()):
        print(f"=== {subgroup} / {slug} ({len(cats)} categories) ===")
        for cat, info in sorted(cats.items(), key=lambda x: -x[1]["pc_rows"]):
            yrs = sorted(info["years"])
            ynr = f"{yrs[0]}-{yrs[-1]}" if yrs else "(no year)"
            top_lor = info["level_or_region"].most_common(1)
            top_lor_str = top_lor[0][0] if top_lor else ""
            print(f"  {cat:<30} pc={info['pc_rows']:>4}  subjects={len(info['subjects']):>3}  years={ynr}  level={top_lor_str!r}")
            total_categories += 1
        print()

    print(f"TOTAL categories across all slugs: {total_categories}")

    # 輸出 JSON 給 ingest 階段用
    out = {}
    for (subgroup, slug), cats in by_slug.items():
        out[f"{subgroup}/{slug}"] = {
            cat: {
                "pc_rows": info["pc_rows"],
                "years": sorted(info["years"]),
                "subjects": sorted(info["subjects"]),
                "level_or_region_top": info["level_or_region"].most_common(3),
            } for cat, info in cats.items()
        }

    out_path = REPO_ROOT / "content/config/civil_service_categories.json"
    out_path.write_text(json.dumps(out, ensure_ascii=False, indent=2))
    print(f"\nWrote {out_path}")


if __name__ == "__main__":
    main()
