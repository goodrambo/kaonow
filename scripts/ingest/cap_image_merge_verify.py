#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_image_merge_verify.py — 把 cap_image_verify.py 的 Sonnet 結果合併回 extract JSON

策略：
  - verdict=agree 的 needs_review 題 → 升級 tier 為 auto_ok（保留 Haiku 內容）
  - verdict=partial_agree 的 needs_review 題 → 用 Sonnet 的 stem/options 覆蓋，升級為 auto_ok
  - verdict=disagree 的 → 保持 needs_review，等人審
  - verdict=agree 的 auto_ok 抽查 → 不動

輸出：覆寫 outputs/cap_image_extract/{year}-{subject}.json，
      備份原版到 .{year}-{subject}.json.before_verify

用法：
  python3 scripts/ingest/cap_image_merge_verify.py --year 114 --subject society
"""
import argparse
import json
import shutil
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
EXTRACT_DIR = REPO / "outputs/cap_image_extract"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True)
    args = ap.parse_args()

    extract_path = EXTRACT_DIR / f"{args.year}-{args.subject}.json"
    verify_path = EXTRACT_DIR / f"verify_{args.year}-{args.subject}.json"
    if not extract_path.exists() or not verify_path.exists():
        raise SystemExit(f"missing input: {extract_path} or {verify_path}")

    backup = extract_path.with_name("." + extract_path.name + ".before_verify")
    if not backup.exists():
        shutil.copy(extract_path, backup)
        print(f"backup: {backup}")

    extract = json.loads(extract_path.read_text(encoding="utf-8"))
    verify = json.loads(verify_path.read_text(encoding="utf-8"))

    verify_by_qnum = {r["qnum"]: r for r in verify["results"]}
    questions = extract["questions"]
    upgraded = 0
    sonnet_replaced = 0

    for q in questions:
        v = verify_by_qnum.get(q["qnum"])
        if not v:
            continue
        verdict = v.get("verdict")
        if q["tier"] == "needs_review":
            if verdict == "agree":
                q["tier"] = "auto_ok"
                q["tier_reason"] = "sonnet_verify_agree"
                upgraded += 1
            elif verdict == "partial_agree":
                # 用 Sonnet 的 stem / options 覆蓋
                q["extracted"]["_haiku_stem_orig"] = q["extracted"].get("stem")
                q["extracted"]["_haiku_options_orig"] = q["extracted"].get("options")
                q["extracted"]["stem"] = v["sonnet_stem"]
                q["extracted"]["options"] = v["sonnet_options"]
                if v.get("sonnet_figure_desc"):
                    q["extracted"]["figure_description"] = v["sonnet_figure_desc"]
                q["extracted"]["confidence"] = v.get("sonnet_confidence", "medium")
                q["extracted"]["figure_clarity"] = v.get("sonnet_clarity", "partial")
                q["extracted"]["_replaced_by"] = "sonnet_4_6"
                q["tier"] = "auto_ok"
                q["tier_reason"] = "sonnet_verify_partial_replaced"
                upgraded += 1
                sonnet_replaced += 1
            elif verdict == "disagree":
                # 維持 needs_review
                q["tier_reason"] = "sonnet_disagree_kept_needs_review"

    # 重新計 tier_counts
    tier_counts = {"auto_ok": 0, "needs_review": 0, "reject": 0}
    for q in questions:
        tier_counts[q["tier"]] = tier_counts.get(q["tier"], 0) + 1
    extract["stats"]["tier_counts"] = tier_counts
    extract["stats"]["sonnet_verified"] = True
    extract["stats"]["sonnet_upgraded"] = upgraded
    extract["stats"]["sonnet_replaced"] = sonnet_replaced

    extract_path.write_text(
        json.dumps(extract, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(f"upgraded {upgraded} questions to auto_ok ({sonnet_replaced} with Sonnet content replacing Haiku)")
    print(f"new tier_counts: {tier_counts}")
    print(f"wrote {extract_path}")


if __name__ == "__main__":
    main()
