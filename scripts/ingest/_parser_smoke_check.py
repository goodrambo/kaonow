#!/usr/bin/env python3
"""smoke check parsed/bookkeeper/questions.json"""
import json, sys
from collections import Counter

slug = sys.argv[1] if len(sys.argv) > 1 else "bookkeeper"
d = json.loads(open(f"content/parsed/{slug}/questions.json").read())
mc = [q for q in d["questions"] if q["question_type"] == "single_choice"]
print(f"slug={slug}")
print(f"Q count: {d['question_count']} types={d['type_counts']}")
print(f"Papers: {d['paper_with_questions']}/{d['paper_count']}")
print()
print("--- 高考 mixed 樣本 ---")
for q in mc[:3]:
    if "會計學概要" in q["source_meta"]["subject"]:
        print(f"Q: {q['question']}")
        for i, o in enumerate(q["options"]):
            o_repr = repr(o)
            print(f"  [{i}] {o_repr}")
        print(f"Correct: {q['correct_answer']} flags: {q['source_meta']['flags']}")
        print()

print("--- 普考 pure_mc 樣本 ---")
for q in mc:
    if "稅務相關法規概要" in q["source_meta"]["subject"]:
        print(f"Q: {q['question']}")
        for i, o in enumerate(q["options"]):
            o_repr = repr(o)
            print(f"  [{i}] {o_repr}")
        print(f"Correct: {q['correct_answer']} flags: {q['source_meta']['flags']}")
        print()
        break

print("--- Stats ---")
print(f"  Total MC: {len(mc)}")
print(f"  All options: {sum(1 for q in mc if all(q['options']))}")
print(f"  Empty option: {sum(1 for q in mc if not all(q['options']))}")
print(f"  answer_missing flag: {sum(1 for q in mc if 'answer_missing' in q['source_meta']['flags'])}")
print(f"  auto_gradable=true: {sum(1 for q in mc if q['auto_gradable'])}")
if mc:
    cans = [q["correct_answer"] for q in mc]
    print(f"  correct_answer range: {min(cans)} - {max(cans)}")
    print(f"  correct_answer dist: {dict(Counter(cans))}")
