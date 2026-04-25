#!/usr/bin/env python3
"""show first N questions of a slug parsed file"""
import json, sys
slug = sys.argv[1]
n = int(sys.argv[2]) if len(sys.argv) > 2 else 3
d = json.loads(open(f"content/parsed/{slug}/questions.json").read())
mc = [q for q in d["questions"] if q["question_type"] == "single_choice"]
for q in mc[:n]:
    print(f"Q [{q['source_meta']['original_question_number']}]: {q['question'][:200]}")
    for i, o in enumerate(q["options"]):
        empty = " <empty>" if not o else ""
        print(f"  [{chr(65+i)}] {o[:80]}{empty}")
    print(f"  Correct: {chr(65+q['correct_answer']) if q['auto_gradable'] else 'placeholder'}", "flags:", q["source_meta"]["flags"])
    print()
print(f"\n--- empty options ({sum(1 for q in mc if not all(q['options']))} of {len(mc)}) ---")
for q in mc:
    if not all(q["options"]):
        empties = [chr(65+i) for i, o in enumerate(q["options"]) if not o]
        print(f"  qnum={q['source_meta']['original_question_number']} subj={q['source_meta']['subject']} year={q['source_meta']['year']} empty={empties}")
        for i, o in enumerate(q["options"]):
            print(f"    [{chr(65+i)}] {repr(o)[:80]}")
        break  # just first one
