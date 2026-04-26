import json
from collections import Counter

d = json.load(open('content/parsed_cap/114-chinese/raw_questions.json'))
qs = [r for r in d['records'] if r['kind'] != 'passage_parent']
ps = [r for r in d['records'] if r['kind'] == 'passage_parent']

print(f"questions: {len(qs)}, passages: {len(ps)}")
print()
print("qnum distribution:")
nums = [r['qnum'] for r in qs]
print(sorted(Counter(nums).items()))
print()
print("passages:")
for p in ps:
    print(f"  child_qnums={p['child_qnums']} kind={p['kind_hint']} text_len={len(p['passage_text'])}")
print()
print("flagged questions (first 25):")
shown = 0
for r in qs:
    if r['flags']:
        print(f"  Q{r['qnum']:>3} {r['kind']:<14} flags={r['flags']} stem='{r['stem'][:38]}' opts={[bool(o) for o in r['options']]}")
        shown += 1
        if shown >= 25:
            break
print()
print("question 1 raw:")
for r in qs:
    if r['qnum'] == 1:
        print(repr(r['raw_text'][:300]))
        break
