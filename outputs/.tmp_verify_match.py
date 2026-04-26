import json

parser = json.load(open('content/parsed_cap/114-chinese/raw_questions.json'))
linker = json.load(open('content/parsed_cap/answers/114.json'))

chi_ans = linker['answers']['chinese']
qs = [r for r in parser['records'] if r['kind'] != 'passage_parent']
print(f'Linker chinese: {len(chi_ans)} answers')
print(f'Parser chinese: {len(qs)} questions')
print()

parser_qnums = set(r['qnum'] for r in qs)
linker_qnums = set(int(k) for k in chi_ans.keys())
print(f'parser qnums == linker qnums? {parser_qnums == linker_qnums}')
print(f'  in parser only: {sorted(parser_qnums - linker_qnums)}')
print(f'  in linker only: {sorted(linker_qnums - parser_qnums)}')

print()
print('前 10 題對應 + 後 5 題:')
for r in qs[:10] + qs[-5:]:
    qnum = r['qnum']
    letter = chi_ans.get(str(qnum), '?')
    flag_str = ','.join(r['flags']) if r['flags'] else '-'
    stem = r['stem'][:32].replace('\n', ' ')
    print(f"  Q{qnum:>2} ans={letter} {r['kind']:<14} flags={flag_str:<30} stem={stem!r}")
