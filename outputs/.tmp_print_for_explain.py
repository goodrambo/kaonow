"""列印 114 國文 active 題目供寫詳解 — 含 passage 上下文"""
import json

d = json.load(open('content/parsed_cap/114-chinese/questions.json'))
qs = d['questions']

# build passage lookup
parents = {q['id']: q for q in qs if q['question_type'] == 'reading_passage'}

LETTER = ['A', 'B', 'C', 'D']
for q in qs:
    if q['question_type'] != 'single_choice':
        continue
    if not q['is_active']:
        continue
    qnum = q['source_meta']['original_question_number']
    correct_letter = LETTER[q['correct_answer']]
    print(f'=== Q{qnum:>2} (correct={correct_letter}, idx={q["correct_answer"]}) ===')

    parent_id = q['parent_question_id']
    if parent_id and parent_id in parents:
        passage = parents[parent_id]['media'].get('passage_text', '')
        # 截短前 400 字
        snippet = passage[:400].replace('\n', ' ')
        print(f'[passage] {snippet}{"..." if len(passage) > 400 else ""}')

    print(f'stem: {q["question_text"]}')
    for i, opt in enumerate(q['options']):
        marker = '✓' if i == q['correct_answer'] else ' '
        print(f'  ({LETTER[i]}){marker} {opt}')
    print()
