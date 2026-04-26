#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_explain_ai.py — W1.9 國中會考 AI 詳解批量生成

讀 raw_questions.json + answers/{year}.json，呼叫 Anthropic Claude Haiku 4.5
產生繁中詳解，寫到 content/parsed_cap/explanations/{year}-{subject}.json。

風格鎖定（與 114-chinese 手寫版一致）：
- 1–3 句、30–250 字繁中
- 題幹有引文必須引一句關鍵原文（用「」括起）
- 句中或句尾必出現「(X) 正確」明確標出答案
- 視篇幅簡述其他選項為何錯
- 純文字，不用 markdown / 列表 / emoji

用法：
  cd ~/Documents/Claude/Projects/KaoNow
  export ANTHROPIC_API_KEY='sk-ant-...'

  # Sanity / Compare 模式（不覆蓋既有手寫版，輸出到 _ai_compare.json）：
  python3 scripts/ingest/cap_explain_ai.py --year 114 --subject chinese --compare

  # 正式模式（idempotent；跳過已存在 qnum，除非 --force）：
  python3 scripts/ingest/cap_explain_ai.py --year 113 --subject chinese
  python3 scripts/ingest/cap_explain_ai.py --year 114 --subject chinese --force
  python3 scripts/ingest/cap_explain_ai.py --year 114 --subject chinese --only-failed

CLI flags:
  --concurrency N   並發 worker 數（預設 4）
  --max-questions N 限制題數（debug 用）
  --dry-run         只列出會送的 task，不呼叫 API
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
import time
import threading
import urllib.request
import urllib.error
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import date
from pathlib import Path
from typing import Any, Dict, List, Optional, Tuple

# --------------------------------------------------------------------------- #
# 常數
# --------------------------------------------------------------------------- #

REPO_ROOT = Path(__file__).resolve().parents[2]
PARSED_DIR = REPO_ROOT / "content" / "parsed_cap"
EXPLANATIONS_DIR = PARSED_DIR / "explanations"
OUTPUTS_DIR = REPO_ROOT / "outputs" / "cap_explain"

ANTHROPIC_API_URL = "https://api.anthropic.com/v1/messages"
MODEL = "claude-haiku-4-5-20251001"
ANTHROPIC_VERSION = "2023-06-01"

# Haiku 4.5 公開定價（如有變動於 https://www.anthropic.com/pricing 確認）
PRICE_INPUT_PER_M = 1.0   # USD per million input tokens
PRICE_OUTPUT_PER_M = 5.0  # USD per million output tokens

EXPLANATION_SOURCE = "ai_v1"  # 寫進 explanations.json 標 source

# Validation 規則
LEN_MIN = 25
LEN_MAX = 280
LETTER_RE = re.compile(r"\(([ABCD])\)")
MARKDOWN_RE = re.compile(r"(^|\n)\s*(#|\*\s|-\s|>\s|\*\*)|`")
SELF_REF_RE = re.compile(r"(作為\s*AI|身為\s*AI|身為一個 AI|我是 AI|作為 AI 模型)")

# Skip flags：含這些 flag 的 active 題即便有答案也跳過（圖題缺資訊）
SKIP_FLAGS = {"needs_image", "option_image", "option_incomplete"}

# subject → 中文 + 是否生成詳解
SUBJECT_INFO = {
    "chinese":           {"zh": "國文",       "explain": True},
    "math":              {"zh": "數學",       "explain": True},
    "society":           {"zh": "社會",       "explain": True},
    "nature":            {"zh": "自然",       "explain": True},
    "english-reading":   {"zh": "英語閱讀",   "explain": True},
    "english-listening": {"zh": "英語聽力",   "explain": False},  # 依賴音檔
    "writing":           {"zh": "寫作測驗",   "explain": False},  # 純非選
}

# --------------------------------------------------------------------------- #
# Prompt
# --------------------------------------------------------------------------- #

SYSTEM_PROMPT = """你是台灣國中教育會考的詳解撰寫者。請依照以下規則寫詳解：

1. 用繁體中文，1–3 句，約 30–200 字。
2. 若題幹或閱讀材料含引文（如「...」或冒號後段落），務必引用其中一句最關鍵的原文，用「」括起。
3. 句中或句尾**必須**出現「故 (X) 正確」或「(X) 正確」明確標出答案，X 為 A/B/C/D。
4. 視篇幅簡述其他選項為何錯（用字、讀音、邏輯、史實、概念、計算）。閱讀題只需挑最易混淆的 2–3 個。
5. 不得使用 Markdown、列表、標題、emoji；輸出純文字。
6. 若選項是英文，解釋以中文為主，必要時引英文片段。
7. 數學題可說明關鍵步驟或概念，但不需逐步算式，鎖定 1–2 個關鍵點。

只輸出 JSON 物件 {"explanation": "..."}，不要任何前後綴、不要 ```json``` 包裝。"""


def build_user_prompt(
    subject_zh: str,
    stem: str,
    options: List[str],
    correct_letter: str,
    passage_text: Optional[str],
) -> str:
    parts = [f"科目：{subject_zh}"]
    if passage_text:
        parts.append(f"閱讀材料：\n「{passage_text.strip()}」")
    parts.append(f"題幹：{stem.strip()}")
    parts.append(
        "選項：\n"
        f"(A) {options[0]}\n"
        f"(B) {options[1]}\n"
        f"(C) {options[2]}\n"
        f"(D) {options[3]}"
    )
    parts.append(f"官方公布正解：({correct_letter})")
    parts.append("請依規則寫出詳解，輸出 {\"explanation\": \"...\"}。")
    return "\n\n".join(parts)


# --------------------------------------------------------------------------- #
# Anthropic API
# --------------------------------------------------------------------------- #

def call_anthropic(
    api_key: str,
    system: str,
    user: str,
    temperature: float = 0.0,
    max_tokens: int = 600,
    timeout: int = 60,
) -> Tuple[bool, Dict[str, Any], str]:
    """回 (ok, data, err_msg)。data 含 raw_text + usage。"""
    payload = json.dumps(
        {
            "model": MODEL,
            "max_tokens": max_tokens,
            "system": system,
            "temperature": temperature,
            "messages": [{"role": "user", "content": user}],
        }
    ).encode("utf-8")
    req = urllib.request.Request(
        ANTHROPIC_API_URL,
        data=payload,
        headers={
            "x-api-key": api_key,
            "anthropic-version": ANTHROPIC_VERSION,
            "content-type": "application/json",
            "User-Agent": "kaonow-cap-explain/0.1",
        },
        method="POST",
    )

    backoff = 1.0
    last_err = ""
    for attempt in range(5):
        try:
            with urllib.request.urlopen(req, timeout=timeout) as r:
                body = r.read().decode("utf-8")
                resp = json.loads(body)
                # content 是 list of {type:'text', text:...}
                texts = [
                    c.get("text", "") for c in resp.get("content", []) if c.get("type") == "text"
                ]
                raw_text = "".join(texts).strip()
                usage = resp.get("usage", {})
                return True, {"raw_text": raw_text, "usage": usage}, ""
        except urllib.error.HTTPError as e:
            err_body = e.read().decode("utf-8", errors="replace")[:400]
            last_err = f"HTTP {e.code}: {err_body}"
            if e.code in (429, 500, 502, 503, 504) and attempt < 4:
                time.sleep(backoff)
                backoff *= 2
                continue
            return False, {}, last_err
        except (urllib.error.URLError, TimeoutError) as e:
            last_err = f"network: {e}"
            if attempt < 4:
                time.sleep(backoff)
                backoff *= 2
                continue
            return False, {}, last_err
        except Exception as e:
            last_err = f"unknown: {e}"
            if attempt < 4:
                time.sleep(backoff)
                backoff *= 2
                continue
            return False, {}, last_err
    return False, {}, last_err


# --------------------------------------------------------------------------- #
# Output 解析 / 驗證
# --------------------------------------------------------------------------- #

JSON_BLOCK_RE = re.compile(r"\{[\s\S]*\}")


def parse_explanation(raw_text: str) -> Optional[str]:
    """從模型回應抽 explanation 字串。嘗試多種 fallback。"""
    if not raw_text:
        return None
    # 1. 直接 JSON
    try:
        obj = json.loads(raw_text)
        v = obj.get("explanation")
        if isinstance(v, str) and v.strip():
            return v.strip()
    except Exception:
        pass
    # 2. 找第一個 {...} block
    m = JSON_BLOCK_RE.search(raw_text)
    if m:
        try:
            obj = json.loads(m.group(0))
            v = obj.get("explanation")
            if isinstance(v, str) and v.strip():
                return v.strip()
        except Exception:
            pass
    # 3. 整段就是純文字（沒 JSON）→ 直接當 explanation（後續 validation 把關）
    text = raw_text.strip()
    if text and not text.startswith("{"):
        return text
    return None


def validate_explanation(text: str, correct_letter: str) -> Tuple[bool, str]:
    if not text:
        return False, "empty"
    n = len(text)
    if n < LEN_MIN:
        return False, f"too_short({n})"
    if n > LEN_MAX:
        return False, f"too_long({n})"
    letters = LETTER_RE.findall(text)
    if not letters:
        return False, "no_letter"
    # 必須出現正解 letter（出現其他 letter 不一定是錯，因為可能在解釋 distractor）
    if correct_letter not in letters:
        return False, f"missing_correct_letter({correct_letter})"
    if MARKDOWN_RE.search(text):
        return False, "has_markdown"
    if SELF_REF_RE.search(text):
        return False, "self_reference"
    return True, ""


# --------------------------------------------------------------------------- #
# Task 構建
# --------------------------------------------------------------------------- #

def build_passage_map(records: List[dict]) -> Dict[str, str]:
    out: Dict[str, str] = {}
    for r in records:
        if r.get("kind") == "passage_parent":
            key = r.get("key")
            text = r.get("passage_text") or ""
            if key:
                out[key] = text
    return out


def build_tasks(
    raw: dict,
    answers_for_subject: Dict[str, str],
    existing: Dict[int, str],
    only_failed: Optional[set],
    force: bool,
) -> Tuple[List[dict], Dict[str, int]]:
    """產 task list。每個 task = {qnum, subject_zh, stem, options, correct_letter, passage_text}。
    額外回 stats 給 caller。"""
    tasks: List[dict] = []
    stats = {
        "total_records": 0,
        "skipped_kind": 0,        # passage_parent
        "skipped_no_answer": 0,
        "skipped_image_flag": 0,
        "skipped_existing": 0,
        "skipped_subject_no_explain": 0,
        "queued": 0,
    }
    subject = raw["subject"]
    subject_zh = SUBJECT_INFO.get(subject, {}).get("zh", subject)

    passage_map = build_passage_map(raw["records"])

    for r in raw["records"]:
        stats["total_records"] += 1
        kind = r.get("kind")
        if kind not in ("single", "passage_child"):
            stats["skipped_kind"] += 1
            continue
        qnum = r.get("qnum")
        if qnum is None:
            continue
        # 答案
        ans_letter = answers_for_subject.get(str(qnum)) or answers_for_subject.get(qnum)
        if not ans_letter:
            stats["skipped_no_answer"] += 1
            continue
        # 圖題 flag
        flags = set(r.get("flags", []) or [])
        if flags & SKIP_FLAGS:
            stats["skipped_image_flag"] += 1
            continue
        # 既有
        if not force:
            if only_failed is not None:
                if qnum not in only_failed:
                    stats["skipped_existing"] += 1
                    continue
            elif qnum in existing:
                stats["skipped_existing"] += 1
                continue

        passage_text = None
        if kind == "passage_child":
            pk = r.get("parent_key")
            if pk:
                passage_text = passage_map.get(pk)

        # 選項：保證長度 4，缺的補空字串（會被 validation 擋）
        opts = list(r.get("options", []) or [])
        while len(opts) < 4:
            opts.append("")

        tasks.append(
            {
                "qnum": qnum,
                "subject_zh": subject_zh,
                "stem": r.get("stem", ""),
                "options": opts,
                "correct_letter": ans_letter,
                "passage_text": passage_text,
                "flags": list(flags),
            }
        )
        stats["queued"] += 1

    return tasks, stats


# --------------------------------------------------------------------------- #
# 主流程
# --------------------------------------------------------------------------- #

class ResultStore:
    """thread-safe accumulator + atomic write helper."""

    def __init__(self, out_path: Path, year: int, subject: str, source_tag: str, base: dict):
        self.lock = threading.Lock()
        self.out_path = out_path
        self.year = year
        self.subject = subject
        self.source_tag = source_tag
        # base = 既有 explanations.json（含手寫題），新題 merge 進去
        self.data = base
        self.dirty_count = 0
        self.failed: Dict[int, dict] = {}
        self.usage_in = 0
        self.usage_out = 0

    def add_success(self, qnum: int, text: str, usage: dict):
        with self.lock:
            self.data["explanations"][str(qnum)] = text
            self.dirty_count += 1
            self.usage_in += int(usage.get("input_tokens", 0) or 0)
            self.usage_out += int(usage.get("output_tokens", 0) or 0)

    def add_fail(self, qnum: int, info: dict):
        with self.lock:
            self.failed[qnum] = info

    def flush(self):
        with self.lock:
            self.data["explained_at"] = date.today().isoformat()
            tmp = self.out_path.with_suffix(".json.tmp")
            tmp.parent.mkdir(parents=True, exist_ok=True)
            tmp.write_text(
                json.dumps(self.data, ensure_ascii=False, indent=2, sort_keys=False) + "\n",
                encoding="utf-8",
            )
            tmp.replace(self.out_path)
            self.dirty_count = 0


def process_one(task: dict, api_key: str, store: ResultStore, dry_run: bool) -> Tuple[bool, str]:
    qnum = task["qnum"]
    user = build_user_prompt(
        task["subject_zh"],
        task["stem"],
        task["options"],
        task["correct_letter"],
        task["passage_text"],
    )
    if dry_run:
        return True, f"[dry] q{qnum} prompt={len(user)}c"

    # 第一次 temp=0
    ok, payload, err = call_anthropic(api_key, SYSTEM_PROMPT, user, temperature=0.0)
    if not ok:
        store.add_fail(qnum, {"reason": "api_error", "detail": err})
        return False, f"q{qnum} API fail: {err[:120]}"

    text = parse_explanation(payload["raw_text"])
    valid, why = validate_explanation(text or "", task["correct_letter"])
    if valid:
        store.add_success(qnum, text, payload.get("usage", {}))
        # 第一次的 token 也要算
        return True, f"q{qnum} OK ({len(text)}c)"

    # retry 一次（提高 temp 給點變化）
    ok2, payload2, err2 = call_anthropic(api_key, SYSTEM_PROMPT, user, temperature=0.3)
    # 把第一次 usage 也加進去（已耗）
    store.usage_in += int(payload.get("usage", {}).get("input_tokens", 0) or 0)
    store.usage_out += int(payload.get("usage", {}).get("output_tokens", 0) or 0)
    if not ok2:
        store.add_fail(qnum, {"reason": "api_error_retry", "detail": err2, "first_text": text})
        return False, f"q{qnum} retry fail: {err2[:120]}"
    text2 = parse_explanation(payload2["raw_text"])
    valid2, why2 = validate_explanation(text2 or "", task["correct_letter"])
    if valid2:
        store.add_success(qnum, text2, payload2.get("usage", {}))
        return True, f"q{qnum} OK-retry ({len(text2)}c)"
    store.add_fail(
        qnum,
        {
            "reason": "validation_failed",
            "first_why": why,
            "first_text": text,
            "second_why": why2,
            "second_text": text2,
        },
    )
    # retry 的 usage 也加
    store.usage_in += int(payload2.get("usage", {}).get("input_tokens", 0) or 0)
    store.usage_out += int(payload2.get("usage", {}).get("output_tokens", 0) or 0)
    return False, f"q{qnum} validation fail (1st={why}, 2nd={why2})"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int, required=True)
    ap.add_argument("--subject", required=True, choices=list(SUBJECT_INFO.keys()))
    ap.add_argument("--compare", action="store_true",
                    help="輸出到 _ai_compare.json，不覆蓋既有檔（用於 sanity 比對）")
    ap.add_argument("--force", action="store_true",
                    help="重做所有題目，覆蓋既有 explanation")
    ap.add_argument("--only-failed", action="store_true",
                    help="只重跑 outputs/cap_explain/{year}-{subject}_failed.json 列出的題")
    ap.add_argument("--concurrency", type=int, default=4)
    ap.add_argument("--max-questions", type=int, default=0,
                    help="0=全跑；其他數字限制題數（debug）")
    ap.add_argument("--dry-run", action="store_true",
                    help="只列出 task 數，不呼叫 API")
    args = ap.parse_args()

    info = SUBJECT_INFO[args.subject]
    if not info["explain"]:
        sys.exit(f"subject={args.subject} 不需 AI 詳解（{info['zh']}）。退出。")

    api_key = os.environ.get("ANTHROPIC_API_KEY", "")
    if not api_key and not args.dry_run:
        sys.exit("ERROR: 缺 ANTHROPIC_API_KEY env var。")

    raw_path = PARSED_DIR / f"{args.year}-{args.subject}" / "raw_questions.json"
    answers_path = PARSED_DIR / "answers" / f"{args.year}.json"
    if not raw_path.exists():
        sys.exit(f"ERROR: 找不到 {raw_path}")
    if not answers_path.exists():
        sys.exit(f"ERROR: 找不到 {answers_path}")

    raw = json.loads(raw_path.read_text(encoding="utf-8"))
    answers_data = json.loads(answers_path.read_text(encoding="utf-8"))
    answers_for_subject: Dict[str, str] = answers_data.get("answers", {}).get(args.subject, {})
    if not answers_for_subject:
        sys.exit(f"ERROR: answers 檔無 {args.subject} 區段")

    # 既有 explanations
    main_out_path = EXPLANATIONS_DIR / f"{args.year}-{args.subject}.json"
    if args.compare:
        out_path = EXPLANATIONS_DIR / f"{args.year}-{args.subject}_ai_compare.json"
    else:
        out_path = main_out_path

    base: dict
    existing_map: Dict[int, str] = {}
    if out_path.exists() and not args.compare:
        base = json.loads(out_path.read_text(encoding="utf-8"))
        existing_map = {int(k): v for k, v in base.get("explanations", {}).items()}
    else:
        # compare 模式或全新檔：開新的
        base = {
            "year": args.year,
            "subject": args.subject,
            "explanation_source": EXPLANATION_SOURCE if not args.compare else f"{EXPLANATION_SOURCE}_compare",
            "explained_at": date.today().isoformat(),
            "note": (
                "Anthropic Claude Haiku 4.5 自動生成。"
                f"prompt v1, model={MODEL}。" if not args.compare
                else "Compare 模式：與手寫版並存比對用，不可入庫。"
            ),
            "explanations": {},
        }
        # compare 時不繼承既有 map，但若 main file 已有手寫題，避免重做：把 main file 的當 existing
        if args.compare and main_out_path.exists():
            main_data = json.loads(main_out_path.read_text(encoding="utf-8"))
            # compare 模式預設**仍跑全部**（含 main 已有的手寫題）讓你比較
            # 若想跳過已手寫題，加 --only-failed 但帶 compare 沒意義；保持簡單：compare 全跑
            pass

    # only-failed
    only_failed_set: Optional[set] = None
    if args.only_failed:
        failed_path = OUTPUTS_DIR / f"{args.year}-{args.subject}_failed.json"
        if not failed_path.exists():
            sys.exit(f"ERROR: --only-failed 但找不到 {failed_path}")
        failed_data = json.loads(failed_path.read_text(encoding="utf-8"))
        only_failed_set = {int(k) for k in failed_data.get("failures", {}).keys()}
        print(f"only-failed 模式：將重跑 {len(only_failed_set)} 題")

    # 在 compare 模式下強制 force（即使既有有同 qnum）
    effective_force = args.force or args.compare
    tasks, stats = build_tasks(
        raw,
        answers_for_subject,
        existing_map,
        only_failed_set,
        effective_force,
    )

    if args.max_questions > 0:
        tasks = tasks[: args.max_questions]
        print(f"--max-questions={args.max_questions} 限制：跑 {len(tasks)} 題")

    print(f"=== {args.year}-{args.subject} ({SUBJECT_INFO[args.subject]['zh']}) ===")
    print(f"raw records: {stats['total_records']}")
    print(f"  skipped (passage_parent): {stats['skipped_kind']}")
    print(f"  skipped (no answer):      {stats['skipped_no_answer']}")
    print(f"  skipped (image flag):     {stats['skipped_image_flag']}")
    print(f"  skipped (existing):       {stats['skipped_existing']}")
    print(f"  queued for AI:            {stats['queued']}")
    print(f"output: {out_path}")
    print(f"compare={args.compare} force={args.force} only_failed={args.only_failed}")
    print(f"concurrency={args.concurrency} model={MODEL}")
    if args.dry_run:
        print("[DRY RUN] 不會呼叫 API。")
        for t in tasks[:5]:
            print(f"  - q{t['qnum']} stem={t['stem'][:40]!r} ans={t['correct_letter']}")
        return

    if not tasks:
        print("沒有題目要跑，結束。")
        return

    store = ResultStore(out_path, args.year, args.subject, EXPLANATION_SOURCE, base)

    success = 0
    fail = 0
    t0 = time.time()
    print(f"開始跑 {len(tasks)} 題 ...")

    with ThreadPoolExecutor(max_workers=args.concurrency) as ex:
        futures = {ex.submit(process_one, task, api_key, store, False): task for task in tasks}
        for i, fut in enumerate(as_completed(futures), 1):
            ok, msg = fut.result()
            if ok:
                success += 1
            else:
                fail += 1
            done = success + fail
            if i % 5 == 0 or i == len(tasks):
                print(f"[{done}/{len(tasks)}] s={success} f={fail} :: {msg}")
            # 每 20 個成功 atomic flush
            if store.dirty_count >= 20:
                store.flush()
                print(f"  ... flushed at {success} successes")

    # 最終 flush
    store.flush()

    # 寫 failed.json
    if store.failed:
        OUTPUTS_DIR.mkdir(parents=True, exist_ok=True)
        failed_path = OUTPUTS_DIR / f"{args.year}-{args.subject}_failed.json"
        failed_data = {
            "year": args.year,
            "subject": args.subject,
            "model": MODEL,
            "generated_at": date.today().isoformat(),
            "failures": {str(k): v for k, v in store.failed.items()},
        }
        failed_path.write_text(
            json.dumps(failed_data, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        print(f"failed: {len(store.failed)} 題 → {failed_path}")

    dt = time.time() - t0
    in_cost = store.usage_in / 1_000_000 * PRICE_INPUT_PER_M
    out_cost = store.usage_out / 1_000_000 * PRICE_OUTPUT_PER_M
    print()
    print(f"=== 完成（{dt:.1f}s）===")
    print(f"success: {success}  fail: {fail}")
    print(f"tokens : input={store.usage_in:,}  output={store.usage_out:,}")
    print(f"cost   : ${in_cost + out_cost:.4f}  (in=${in_cost:.4f} + out=${out_cost:.4f})")
    if success:
        print(f"avg/題 : input={store.usage_in/success:.0f}  output={store.usage_out/success:.0f}")
        print(f"投影到 1,800 題：~${(in_cost + out_cost) / success * 1800:.2f}")
    print(f"輸出   : {out_path}")


if __name__ == "__main__":
    main()
