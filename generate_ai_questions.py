#!/usr/bin/env python3
"""
KaoNow — AI 批次產生題目工具

功能：
  讀取指定考試的講義內容，呼叫 OpenAI/Anthropic API 批次產生題目，
  驗證格式與去重後輸出 INSERT SQL，可直接貼到 Supabase SQL Editor。

流程：
  1. 設定環境變數 OPENAI_API_KEY (或 ANTHROPIC_API_KEY)
  2. 編輯 GENERATE_CONFIG 指定要產題的 exam_id、章節、題數
  3. python3 generate_ai_questions.py
  4. 人眼審核 output/ai_questions_draft.sql
  5. 貼到 Supabase 執行 → 題目會被標記 reviewed_at，上架

用法：
  python3 generate_ai_questions.py                     # 依 CONFIG 產題
  python3 generate_ai_questions.py --review-only       # 跳過生成，只驗證既有草稿
  python3 generate_ai_questions.py --exam osh-a --n 50 # 命令列快速指定

前置需求：
  pip install openai  (或 anthropic)
"""

import os
import sys
import json
import uuid
import hashlib
from pathlib import Path
from datetime import datetime

ROOT = Path(__file__).parent
OUTPUT_DIR = ROOT / 'output'
OUTPUT_DIR.mkdir(exist_ok=True)

# ════════════════════════════════════════════════════════════════════
# 配置區 ── 改這裡控制產題行為
# ════════════════════════════════════════════════════════════════════

GENERATE_CONFIG = {
    'provider': 'openai',              # 'openai' or 'anthropic'
    'model': 'gpt-4o',                 # 或 'claude-sonnet-4-20250514'
    'exam_id': 'osh-a',                # 要產題的考試 ID
    'chapters': [0, 1, 2, 3, 4],       # 要產題的章節編號（無章節考試傳 [None]）
    'questions_per_chapter': 20,       # 每章產幾題
    'difficulty_range': (3, 4),        # 難度範圍（1-5）
    'prompt_version': 'v1',            # 改 prompt 時遞增版本號
}

# ════════════════════════════════════════════════════════════════════
# Prompt 模板
# ════════════════════════════════════════════════════════════════════

SYSTEM_PROMPT = """你是台灣考試出題專家，熟悉台灣官方考試的出題風格、難度分布、常見陷阱。
你的任務：依照使用者提供的講義內容，出標準四選一單選題。

嚴格要求：
1. 題目敘述明確，不能有「以下何者正確」這種模糊的問法（除非必要）
2. 4 個選項長度相近、迷惑性足夠，不能有明顯荒謬選項
3. 正確答案分布要平均（不能都是 C）
4. 必須附完整的解析（至少 30 字），引用法條或講義重點
5. 使用繁體中文、台灣用語
6. 不要重複講義原文當題目
7. 難度依照要求（1=極簡單, 5=極難）

輸出格式：純 JSON 陣列，不要任何額外文字或 markdown：
[
  {
    "q": "題目文字...",
    "opts": ["選項A", "選項B", "選項C", "選項D"],
    "ans": 0,
    "exp": "解析文字...",
    "difficulty": 3
  }
]"""

USER_PROMPT_TEMPLATE = """考試：{exam_name}
章節：{chapter_name}
難度：{difficulty_range}
題數：{n}

講義內容：
---
{lecture_content}
---

請依上述講義產生 {n} 題單選題。"""

# ════════════════════════════════════════════════════════════════════
# 題目驗證規則
# ════════════════════════════════════════════════════════════════════

def validate_question(q: dict) -> tuple[bool, str]:
    """驗證單題格式。回傳 (是否通過, 錯誤訊息)。"""
    required = ['q', 'opts', 'ans', 'exp']
    for k in required:
        if k not in q:
            return False, f'缺少欄位 {k}'
    if not isinstance(q['opts'], list) or len(q['opts']) != 4:
        return False, '選項必須正好 4 個'
    if not isinstance(q['ans'], int) or q['ans'] not in (0, 1, 2, 3):
        return False, 'ans 必須是 0-3 整數'
    if len(q['q']) < 10:
        return False, '題目過短'
    if len(q['exp']) < 20:
        return False, '解析過短（<20字）'
    if any(len(o) < 2 for o in q['opts']):
        return False, '選項過短'
    # 去重：檢查選項是否重複
    if len(set(q['opts'])) != 4:
        return False, '選項有重複'
    return True, ''

def is_duplicate(new_q: dict, existing_hashes: set) -> bool:
    """以題目內容 hash 判斷是否與既有題目重複。"""
    h = hashlib.sha256(new_q['q'].encode('utf-8')).hexdigest()[:16]
    if h in existing_hashes:
        return True
    existing_hashes.add(h)
    return False

# ════════════════════════════════════════════════════════════════════
# 講義內容讀取（從 index.html 或獨立檔案）
# ════════════════════════════════════════════════════════════════════

def extract_lectures_from_html(html_path: Path, exam_id: str) -> dict:
    """從 index.html 的 lectureContent 物件提取指定考試的講義。
    回傳 {chapter_id: content_text}"""
    import re
    html = open(html_path).read()
    # 找到 lectureContent 對應考試的區塊
    m = re.search(
        r"lectureContent\s*=\s*\{[^}]*?'" + re.escape(exam_id) + r"':\s*\[(.*?)\]\s*\};",
        html, re.DOTALL
    )
    if not m:
        return {}
    block = m.group(1)
    # 粗略切分每章（以 {id: N, ...} 為單位）
    lectures = {}
    for lm in re.finditer(
        r"\{\s*id:\s*(\d+),.*?content:\s*`(.*?)`\s*\}", block, re.DOTALL
    ):
        ch_id = int(lm.group(1))
        raw = lm.group(2)
        # 去除 HTML 標籤，保留純文字
        plain = re.sub(r'<[^>]+>', ' ', raw)
        plain = re.sub(r'\s+', ' ', plain).strip()
        lectures[ch_id] = plain
    return lectures

# ════════════════════════════════════════════════════════════════════
# API 呼叫 ── 支援 OpenAI / Anthropic
# ════════════════════════════════════════════════════════════════════

def call_openai(system: str, user: str, model: str = 'gpt-4o') -> str:
    try:
        import openai
    except ImportError:
        print('錯誤：請先 pip install openai')
        sys.exit(1)
    client = openai.OpenAI(api_key=os.getenv('OPENAI_API_KEY'))
    resp = client.chat.completions.create(
        model=model,
        messages=[
            {'role': 'system', 'content': system},
            {'role': 'user', 'content': user}
        ],
        response_format={'type': 'json_object'},
        temperature=0.7,
    )
    return resp.choices[0].message.content

def call_anthropic(system: str, user: str, model: str = 'claude-sonnet-4-20250514') -> str:
    try:
        import anthropic
    except ImportError:
        print('錯誤：請先 pip install anthropic')
        sys.exit(1)
    client = anthropic.Anthropic(api_key=os.getenv('ANTHROPIC_API_KEY'))
    resp = client.messages.create(
        model=model,
        max_tokens=4096,
        system=system,
        messages=[{'role': 'user', 'content': user}],
    )
    return resp.content[0].text

# ════════════════════════════════════════════════════════════════════
# SQL 產生
# ════════════════════════════════════════════════════════════════════

def sql_escape(s: str) -> str:
    return s.replace("'", "''")

def question_to_sql(q: dict, qid: str, exam_id: str, chapter_id: str,
                     meta: dict) -> str:
    opts_json = json.dumps(
        [{'key': chr(65+i), 'text': o} for i, o in enumerate(q['opts'])],
        ensure_ascii=False
    ).replace("'", "''")
    meta_json = json.dumps(meta, ensure_ascii=False).replace("'", "''")
    ch_sql = f"'{chapter_id}'" if chapter_id else 'NULL'
    return (
        f"INSERT INTO public.questions "
        f"(id, exam_id, chapter_id, question_text, options, correct_answer, "
        f"explanation, difficulty, source, source_meta) VALUES "
        f"('{qid}', '{exam_id}', {ch_sql}, "
        f"'{sql_escape(q['q'])}', '{opts_json}'::JSONB, {q['ans']}, "
        f"'{sql_escape(q['exp'])}', {q.get('difficulty', 3)}, "
        f"'ai_generated', '{meta_json}'::JSONB);"
    )

# ════════════════════════════════════════════════════════════════════
# 主流程
# ════════════════════════════════════════════════════════════════════

def main():
    cfg = GENERATE_CONFIG.copy()
    # 命令列覆寫
    args = sys.argv[1:]
    if '--exam' in args:
        i = args.index('--exam')
        cfg['exam_id'] = args[i+1]
    if '--n' in args:
        i = args.index('--n')
        cfg['questions_per_chapter'] = int(args[i+1])
    if '--provider' in args:
        i = args.index('--provider')
        cfg['provider'] = args[i+1]

    if '--review-only' in args:
        print('僅驗證模式：請將既有 SQL 貼到 output/ai_questions_draft.sql')
        # TODO: 讀取既有 draft，跑 validate
        return

    # 讀講義
    lectures = extract_lectures_from_html(ROOT / 'index.html', cfg['exam_id'])
    if not lectures:
        print(f"錯誤：找不到考試 {cfg['exam_id']} 的講義")
        sys.exit(1)
    print(f"已載入 {len(lectures)} 章講義")

    # 計算 prompt hash（相同 prompt 產生的題目可以對應到同一批次）
    prompt_hash = hashlib.sha256(
        (SYSTEM_PROMPT + cfg['prompt_version']).encode()
    ).hexdigest()[:12]

    all_questions = []
    existing_hashes = set()
    failed = 0

    for ch in cfg['chapters']:
        if ch is None:
            lecture = '\n'.join(lectures.values())
            ch_label = '全章節'
            chapter_id = None
        else:
            if ch not in lectures:
                print(f"  [跳過] 章節 {ch} 沒有講義")
                continue
            lecture = lectures[ch]
            ch_label = f'第 {ch+1} 章'
            chapter_id = f"{cfg['exam_id']}-ch{ch}"

        print(f"\n[章節 {ch}] {ch_label}，目標 {cfg['questions_per_chapter']} 題...")

        user_prompt = USER_PROMPT_TEMPLATE.format(
            exam_name=cfg['exam_id'],
            chapter_name=ch_label,
            difficulty_range=f"{cfg['difficulty_range'][0]}-{cfg['difficulty_range'][1]}",
            n=cfg['questions_per_chapter'],
            lecture_content=lecture[:5000]  # 限制講義長度避免超 token
        )

        # 呼叫 API
        raw = None
        if cfg['provider'] == 'openai':
            raw = call_openai(SYSTEM_PROMPT, user_prompt, cfg['model'])
        elif cfg['provider'] == 'anthropic':
            raw = call_anthropic(SYSTEM_PROMPT, user_prompt, cfg['model'])
        else:
            print(f"未知 provider: {cfg['provider']}")
            sys.exit(1)

        # 解析 JSON
        try:
            # OpenAI response_format=json_object 會包一層
            parsed = json.loads(raw)
            items = parsed if isinstance(parsed, list) else parsed.get('questions', list(parsed.values())[0])
        except Exception as e:
            print(f"  [錯誤] JSON 解析失敗：{e}")
            print(f"  原始回應：{raw[:200]}...")
            failed += 1
            continue

        # 驗證 + 去重 + 編號
        ch_counter = 0
        for q in items:
            ok, err = validate_question(q)
            if not ok:
                print(f"  [拒絕] {err}")
                continue
            if is_duplicate(q, existing_hashes):
                print(f"  [拒絕] 題目重複")
                continue
            ch_counter += 1
            qid_num = f"{ch_counter:03d}"
            if chapter_id:
                qid = f"{cfg['exam_id']}-ch{ch}-ai{qid_num}"
            else:
                qid = f"{cfg['exam_id']}-ai{qid_num}"
            meta = {
                'model': cfg['model'],
                'prompt_version': cfg['prompt_version'],
                'prompt_hash': prompt_hash,
                'generated_at': datetime.utcnow().isoformat() + 'Z',
                'chapter_id': chapter_id,
            }
            all_questions.append({
                'q': q, 'qid': qid,
                'chapter_id': chapter_id, 'meta': meta
            })
        print(f"  接受 {ch_counter} / {len(items)} 題")

    # 輸出 SQL
    out_file = OUTPUT_DIR / f"ai_questions_{cfg['exam_id']}_{datetime.now():%Y%m%d_%H%M}.sql"
    with open(out_file, 'w') as f:
        f.write(f"-- AI 生成題目草稿\n")
        f.write(f"-- 考試: {cfg['exam_id']}\n")
        f.write(f"-- 產生時間: {datetime.now()}\n")
        f.write(f"-- 模型: {cfg['model']}\n")
        f.write(f"-- 共 {len(all_questions)} 題\n\n")
        f.write(f"-- 審核完成後執行下面這行來「上架」所有題目：\n")
        f.write(f"-- UPDATE public.questions SET reviewed_at = NOW()\n")
        f.write(f"--   WHERE source='ai_generated' AND reviewed_at IS NULL;\n\n")
        for item in all_questions:
            f.write(question_to_sql(
                item['q'], item['qid'], cfg['exam_id'],
                item['chapter_id'], item['meta']
            ) + '\n')

    print(f"\n{'='*50}")
    print(f"完成！共 {len(all_questions)} 題寫入 {out_file}")
    print(f"失敗批次：{failed}")
    print(f"\n下一步：")
    print(f"  1. 打開 {out_file.name} 人眼審題")
    print(f"  2. 有問題的題目直接刪除整行 INSERT")
    print(f"  3. 把剩餘內容貼到 Supabase SQL Editor 執行")
    print(f"  4. 再執行：UPDATE public.questions SET reviewed_at = NOW()")
    print(f"              WHERE source='ai_generated' AND reviewed_at IS NULL;")

if __name__ == '__main__':
    main()
