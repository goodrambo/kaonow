#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_image_verify.py — W1.9.5 Sonnet 4.6 驗證 cap_image_extract.py 的結果

預設行為：對 needs_review tier 全部、auto_ok tier 隨機 5% 用 Sonnet 4.6 重抽，
比對 stem / options 與 Haiku 的差異。

輸出：outputs/cap_image_extract/verify_{year}-{subject}.json，含每題的：
  - haiku_stem / haiku_options（Haiku 抽的）
  - sonnet_stem / sonnet_options（Sonnet 抽的）
  - stem_similarity（字元 set overlap %）
  - options_match（4 個選項一一字元 overlap >= 80% → True）
  - verdict: 'agree'（升級為 auto_ok）/ 'disagree'（保持 needs_review，等人審）/ 'sonnet_better'（用 Sonnet 版）

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export ANTHROPIC_API_KEY='sk-ant-...'

  python3 scripts/ingest/cap_image_verify.py --year 114 --subject society
  python3 scripts/ingest/cap_image_verify.py --year 114 --subject society --include-tier1-sample 0
"""
from __future__ import annotations

import argparse
import base64
import json
import os
import random
import re
import sys
import time
import urllib.request
import urllib.error
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

REPO = Path(__file__).resolve().parents[2]
EXTRACT_DIR = REPO / "outputs/cap_image_extract"
PAGES_CACHE_DIR = EXTRACT_DIR / "pages_cache"

ANTHROPIC_API_URL = "https://api.anthropic.com/v1/messages"
MODEL_SONNET = "claude-sonnet-4-6"
ANTHROPIC_VERSION = "2023-06-01"

# 從 extract 同樣的 system prompt
EXTRACT_SCRIPT = REPO / "scripts/ingest/cap_image_extract.py"


def load_extract_system_prompt() -> str:
    """從 cap_image_extract.py 動態抓 SYSTEM_PROMPT 字串確保完全一致"""
    text = EXTRACT_SCRIPT.read_text(encoding="utf-8")
    m = re.search(r'SYSTEM_PROMPT\s*=\s*"""([\s\S]*?)"""', text)
    return m.group(1) if m else ""


SYSTEM_PROMPT = load_extract_system_prompt()


def call_sonnet_vision(api_key: str, image_b64: str, user_text: str, temperature: float = 0.0) -> Tuple[bool, Dict, str]:
    payload = json.dumps({
        "model": MODEL_SONNET,
        "max_tokens": 4000,
        "system": SYSTEM_PROMPT,
        "temperature": temperature,
        "messages": [{
            "role": "user",
            "content": [
                {"type": "image", "source": {"type": "base64", "media_type": "image/png", "data": image_b64}},
                {"type": "text", "text": user_text},
            ],
        }],
    }).encode("utf-8")
    req = urllib.request.Request(
        ANTHROPIC_API_URL, data=payload,
        headers={
            "x-api-key": api_key,
            "anthropic-version": ANTHROPIC_VERSION,
            "content-type": "application/json",
            "User-Agent": "kaonow-cap-verify/0.1",
        },
        method="POST",
    )
    backoff = 1.0
    for attempt in range(5):
        try:
            with urllib.request.urlopen(req, timeout=180) as r:
                resp = json.loads(r.read().decode("utf-8"))
                texts = [c.get("text", "") for c in resp.get("content", []) if c.get("type") == "text"]
                return True, {"raw_text": "".join(texts).strip(), "usage": resp.get("usage", {})}, ""
        except urllib.error.HTTPError as e:
            err = f"HTTP {e.code}: {e.read().decode('utf-8', errors='replace')[:300]}"
            if e.code in (429, 500, 502, 503, 504) and attempt < 4:
                time.sleep(backoff); backoff *= 2; continue
            return False, {}, err
        except Exception as e:
            if attempt < 4:
                time.sleep(backoff); backoff *= 2; continue
            return False, {}, str(e)


def parse_json_array(raw: str) -> Optional[List[Dict]]:
    if not raw:
        return None
    try:
        v = json.loads(raw)
        if isinstance(v, list):
            return v
    except Exception:
        pass
    m = re.search(r"\[[\s\S]*\]", raw)
    if m:
        try:
            v = json.loads(m.group(0))
            if isinstance(v, list):
                return v
        except Exception:
            pass
    return None


def char_overlap(a: str, b: str) -> float:
    if not a or not b:
        return 0.0
    a_c = set(re.sub(r"[\s\W\d]", "", a))
    b_c = set(re.sub(r"[\s\W\d]", "", b))
    if not a_c or not b_c:
        return 0.0
    return len(a_c & b_c) / max(len(a_c), len(b_c))


def compare_options(a_opts: List[str], b_opts: List[str]) -> Tuple[float, bool]:
    """逐 option 計算 overlap，回 (平均 overlap, 是否每個 >=0.7)"""
    if not isinstance(a_opts, list) or not isinstance(b_opts, list):
        return 0.0, False
    if len(a_opts) != len(b_opts):
        return 0.0, False
    overlaps = [char_overlap(str(a), str(b)) for a, b in zip(a_opts, b_opts)]
    avg = sum(overlaps) / len(overlaps) if overlaps else 0.0
    all_ok = all(o >= 0.7 for o in overlaps)
    return avg, all_ok


def verify_one(year: int, subject: str, api_key: str, include_tier1_sample: int = 0) -> Dict:
    paper_id = f"cap-{year}-{subject}"
    extract_path = EXTRACT_DIR / f"{year}-{subject}.json"
    if not extract_path.exists():
        sys.exit(f"ERROR: {extract_path} not found，請先跑 cap_image_extract.py")

    data = json.loads(extract_path.read_text(encoding="utf-8"))
    pages_dir = PAGES_CACHE_DIR / paper_id

    # 篩選 needs_review + 隨機 tier 1 樣本
    needs_review = [q for q in data["questions"] if q["tier"] == "needs_review"]
    auto_ok = [q for q in data["questions"] if q["tier"] == "auto_ok"]
    rng = random.Random(42)
    sample_t1 = rng.sample(auto_ok, min(include_tier1_sample, len(auto_ok)))
    targets = needs_review + sample_t1

    print(f"=== {paper_id} ===")
    print(f"needs_review: {len(needs_review)}, tier1_sample: {len(sample_t1)}, total verify: {len(targets)}")

    # 同一 page 可能有多題目標 → 一次 vision call 抽全頁 → 同 page 多題共用結果
    page_to_targets: Dict[int, List[Dict]] = {}
    for q in targets:
        page_to_targets.setdefault(q["page"], []).append(q)

    results: List[Dict] = []
    total_in = total_out = 0

    for page_idx, qs in sorted(page_to_targets.items()):
        # 找 page PNG
        page_png = pages_dir / f"page-{page_idx:02d}.png"
        if not page_png.exists():
            cands = sorted(pages_dir.glob(f"page-*{page_idx}*.png"))
            page_png = cands[0] if cands else None
        if not page_png or not page_png.exists():
            print(f"  page {page_idx}: PNG missing, skip")
            for q in qs:
                results.append({"qnum": q["qnum"], "page": page_idx, "verdict": "error_no_png"})
            continue

        print(f"  page {page_idx} ({len(qs)} target qs) → Sonnet ...", end=" ", flush=True)
        b64 = base64.b64encode(page_png.read_bytes()).decode("ascii")
        user_text = f"這是 {year} 年國中會考 {subject} 試題第 {page_idx} 頁。請抽取頁面上所有題目（按題號順序）。"
        ok, payload, err = call_sonnet_vision(api_key, b64, user_text)
        if not ok:
            print(f"API FAIL: {err[:120]}")
            for q in qs:
                results.append({"qnum": q["qnum"], "page": page_idx, "verdict": "error_api", "err": err[:200]})
            continue

        usage = payload.get("usage", {})
        total_in += int(usage.get("input_tokens", 0) or 0)
        total_out += int(usage.get("output_tokens", 0) or 0)

        sonnet_qs = parse_json_array(payload["raw_text"])
        if not sonnet_qs:
            print(f"PARSE FAIL")
            for q in qs:
                results.append({"qnum": q["qnum"], "page": page_idx, "verdict": "error_parse"})
            continue

        sonnet_by_qnum = {int(sq.get("qnum", 0)): sq for sq in sonnet_qs if "qnum" in sq}

        for q in qs:
            qn = q["qnum"]
            haiku_ext = q["extracted"]
            sonnet_ext = sonnet_by_qnum.get(qn)
            if not sonnet_ext:
                results.append({
                    "qnum": qn, "page": page_idx, "haiku_tier": q["tier"],
                    "verdict": "sonnet_missed", "note": "Sonnet 沒抽到該 qnum",
                })
                continue

            stem_sim = char_overlap(haiku_ext.get("stem", ""), sonnet_ext.get("stem", ""))
            opts_avg, opts_ok = compare_options(haiku_ext.get("options", []), sonnet_ext.get("options", []))

            # Verdict
            if stem_sim >= 0.7 and opts_ok:
                verdict = "agree"
            elif stem_sim >= 0.5 and opts_avg >= 0.5:
                verdict = "partial_agree"
            else:
                verdict = "disagree"
            results.append({
                "qnum": qn,
                "page": page_idx,
                "haiku_tier": q["tier"],
                "stem_similarity": round(stem_sim, 3),
                "options_avg_overlap": round(opts_avg, 3),
                "options_all_match": opts_ok,
                "verdict": verdict,
                "haiku_stem": haiku_ext.get("stem", ""),
                "sonnet_stem": sonnet_ext.get("stem", ""),
                "haiku_options": haiku_ext.get("options", []),
                "sonnet_options": sonnet_ext.get("options", []),
                "haiku_figure_desc": haiku_ext.get("figure_description", ""),
                "sonnet_figure_desc": sonnet_ext.get("figure_description", ""),
                "sonnet_confidence": sonnet_ext.get("confidence"),
                "sonnet_clarity": sonnet_ext.get("figure_clarity"),
            })
        print(f"OK ({len(qs)} compared)")

    cost_in = total_in / 1_000_000 * 3.0  # Sonnet 4.6 input ~$3/M
    cost_out = total_out / 1_000_000 * 15.0  # Sonnet 4.6 output ~$15/M

    output = {
        "paper_id": paper_id,
        "year": year,
        "subject": subject,
        "model": MODEL_SONNET,
        "stats": {
            "verified_count": len([r for r in results if r.get("verdict") not in (None, "error_api", "error_parse", "error_no_png")]),
            "agree": len([r for r in results if r.get("verdict") == "agree"]),
            "partial_agree": len([r for r in results if r.get("verdict") == "partial_agree"]),
            "disagree": len([r for r in results if r.get("verdict") == "disagree"]),
            "errors": len([r for r in results if r.get("verdict", "").startswith("error") or r.get("verdict") == "sonnet_missed"]),
            "input_tokens": total_in,
            "output_tokens": total_out,
            "est_cost_usd": round(cost_in + cost_out, 4),
        },
        "results": results,
    }
    out_path = EXTRACT_DIR / f"verify_{year}-{subject}.json"
    out_path.write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print()
    print(f"=== summary ===")
    s = output["stats"]
    print(f"agree:         {s['agree']}")
    print(f"partial_agree: {s['partial_agree']}")
    print(f"disagree:      {s['disagree']}")
    print(f"errors:        {s['errors']}")
    print(f"cost: ${s['est_cost_usd']}")
    print(f"wrote {out_path}")
    return output


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True)
    ap.add_argument("--include-tier1-sample", type=int, default=2,
                    help="額外從 auto_ok 隨機抽 N 題交叉驗證（預設 2）")
    args = ap.parse_args()

    api_key = os.environ.get("ANTHROPIC_API_KEY", "")
    if not api_key:
        sys.exit("ERROR: 缺 ANTHROPIC_API_KEY")

    verify_one(args.year, args.subject, api_key, args.include_tier1_sample)


if __name__ == "__main__":
    main()
