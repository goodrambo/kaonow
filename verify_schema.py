#!/usr/bin/env python3
"""
KaoNow 資料庫整合驗證器
檢查 index.html 裡所有 Supabase 呼叫（JS SDK 或 REST）是否符合 supabase_schema.sql

用法：
  python3 verify_schema.py            # 驗證，0=通過，1=有錯
  python3 verify_schema.py --verbose  # 顯示所有欄位比對明細

每次修改 index.html 或 schema 後，都該跑一次。
可以加進 git hook 自動執行。
"""
import re, sys, os

ROOT = os.path.dirname(os.path.abspath(__file__))
HTML = os.path.join(ROOT, 'index.html')
SQL_FILES = [
    os.path.join(ROOT, 'supabase_schema.sql'),       # v1：CREATE TABLE
    os.path.join(ROOT, 'supabase_schema_v2.sql'),    # v2：ALTER TABLE ADD COLUMN
]

VERBOSE = '--verbose' in sys.argv or '-v' in sys.argv

# ═══════════ 1. 從 SQL 解析 schema（支援 CREATE + ALTER） ═══════
def parse_schema(sql_paths):
    """從多個 SQL 檔案累積解析每張表的欄位。"""
    tables = {}
    for p in sql_paths:
        if not os.path.exists(p):
            continue
        sql = open(p).read()
        # 1. CREATE TABLE blocks
        for m in re.finditer(
            r"CREATE TABLE (?:IF NOT EXISTS )?public\.(\w+)\s*\((.*?)\);",
            sql, re.DOTALL
        ):
            tname = m.group(1)
            body = m.group(2)
            cols = tables.get(tname, set())
            for line in body.split('\n'):
                line = line.strip().rstrip(',')
                if not line or line.startswith('--') or line.startswith('UNIQUE') \
                   or line.startswith('PRIMARY KEY') or line.startswith('CHECK') \
                   or line.startswith('FOREIGN KEY'):
                    continue
                # column name is the first word
                m2 = re.match(r'(\w+)\s', line)
                if m2:
                    cols.add(m2.group(1))
            tables[tname] = cols

        # 2. ALTER TABLE ADD COLUMN 增量
        for m in re.finditer(
            r"ALTER TABLE public\.(\w+)\s+ADD COLUMN(?:\s+IF NOT EXISTS)?\s+(\w+)",
            sql, re.IGNORECASE
        ):
            tname, col = m.group(1), m.group(2)
            if tname not in tables:
                tables[tname] = set()
            tables[tname].add(col)
    return tables

# ═══════════ 2. 從 HTML 解析 Supabase 呼叫 ══════════════════════
def find_supa_calls(html_content):
    """找出所有 supa.from('x') 呼叫以及 payload 使用的欄位。"""
    calls = []
    # supa.from('tbl').insert/upsert/update({...})
    for m in re.finditer(
        r"supa\.from\(['\"](\w+)['\"]\)\.(\w+)\(\s*(\{[^{}]*(?:\{[^{}]*\}[^{}]*)*\})",
        html_content, re.DOTALL
    ):
        calls.append({
            'type': 'js_client', 'table': m.group(1), 'op': m.group(2),
            'payload': m.group(3),
            'fields': re.findall(r'(\w+)\s*:', m.group(3))
        })
    # supa.from('tbl').select('a,b,c')
    for m in re.finditer(
        r"supa\.from\(['\"](\w+)['\"]\)\s*\.select\(['\"]([^'\"]+)['\"]",
        html_content
    ):
        calls.append({
            'type': 'js_select', 'table': m.group(1), 'op': 'select',
            'fields': [c.strip() for c in m.group(2).split(',')]
        })
    # supaFetch('tbl?...', {...POST body...})
    for m in re.finditer(
        r"supaFetch\(\s*['\"](\w+)(?:\?[^'\"]*)?['\"]\s*,\s*\{([^{}]*(?:\{[^{}]*\}[^{}]*)*?)\}",
        html_content, re.DOTALL
    ):
        table = m.group(1)
        body_str = m.group(2)
        method_m = re.search(r"method:\s*['\"](\w+)['\"]", body_str)
        body_m = re.search(r"body:\s*JSON\.stringify\((.+?)\)(?:\s*\})?\s*\)", body_str, re.DOTALL)
        op = method_m.group(1).lower() if method_m else 'unknown'
        fields = []
        if body_m:
            fields = re.findall(r'(\w+)\s*:', body_m.group(1))
        calls.append({
            'type': 'rest', 'table': table, 'op': op,
            'fields': fields
        })
    # supaFetch('tbl?select=a,b,c')
    for m in re.finditer(
        r"supaFetch\(\s*['\"](\w+)\?([^'\"]*select=)([^'\"&]+)",
        html_content
    ):
        table = m.group(1)
        select_cols = m.group(3)
        fields = [c.strip() for c in select_cols.split(',')]
        calls.append({
            'type': 'rest_select', 'table': table, 'op': 'select',
            'fields': fields
        })
    # cloud 模組內部的 request('tbl[?...]', {method, body, ...}) 呼叫
    for m in re.finditer(
        r"request\(\s*['\"](\w+)(?:\?[^'\"]*)?['\"]\s*,\s*\{([^{}]*(?:\{[^{}]*\}[^{}]*)*?)\}\s*\)",
        html_content, re.DOTALL
    ):
        table = m.group(1)
        body_str = m.group(2)
        method_m = re.search(r"method:\s*['\"](\w+)['\"]", body_str)
        body_m = re.search(r"body:\s*JSON\.stringify\((.+)\)\s*\}\s*$", body_str, re.DOTALL)
        op = method_m.group(1).lower() if method_m else 'select'
        fields = []
        if body_m:
            fields = re.findall(r'(\w+)\s*:', body_m.group(1))
        calls.append({
            'type': 'cloud', 'table': table, 'op': op,
            'fields': fields
        })
    # cloud 模組內部 request('tbl?user_id=eq.xxx&select=a,b,c')
    for m in re.finditer(
        r"request\(\s*['\"](\w+)\?([^'\"]*)select=([^'\"&]+)",
        html_content
    ):
        table = m.group(1)
        fields = [c.strip() for c in m.group(3).split(',')]
        calls.append({
            'type': 'cloud_select', 'table': table, 'op': 'select',
            'fields': fields
        })
    return calls

# ═══════════ 3. 比對 ════════════════════════════════════════════
def main():
    schema = parse_schema(SQL_FILES)
    html = open(HTML).read()
    calls = find_supa_calls(html)

    # Filter out JS keywords / variables from fields
    JS_KW = {'true','false','null','undefined','new','Date','state',
             'currentUser','examId','mode','total','score','onConflict',
             'method','body','headers','Prefer','apikey','Authorization'}

    errors = []
    print('=== Supabase 整合驗證 ===\n')
    print(f'Schema 表數：{len(schema)}')
    print(f'HTML 呼叫數：{len(calls)}\n')

    for i, c in enumerate(calls, 1):
        tbl = c['table']
        if tbl not in schema:
            errors.append(f'[#{i}] 未知表: {tbl}')
            print(f'  [FAIL] [{c["type"]}] {tbl}.{c["op"]}  → 表不存在')
            continue
        fields = [f for f in c['fields'] if f not in JS_KW]
        unknown = [f for f in fields if f not in schema[tbl]]
        if unknown:
            errors.append(f'[#{i}] {tbl}: 未知欄位 {unknown}')
            print(f'  [FAIL] [{c["type"]}] {tbl}.{c["op"]}  → 未知欄位：{unknown}')
        elif VERBOSE:
            print(f'  [OK] [{c["type"]}] {tbl}.{c["op"]}  fields={fields}')
        else:
            print(f'  [OK] [{c["type"]}] {tbl}.{c["op"]}')

    # 驗證題目 ID 格式一致
    print('\n=== 題目 ID 驗證 ===')
    # 通用 ID 格式：允許 '{exam}-ch{N}-{NNN}' / '{exam}-{NNN}' / '{exam}-ch{N}-ai{NNN}' 等
    js_qids = set(re.findall(r'id:"([a-z0-9\-]+)"', html))
    all_sql = '\n'.join(open(p).read() for p in SQL_FILES if os.path.exists(p))
    sql_qids = set(re.findall(r"INSERT INTO public\.questions[^;]*?VALUES\s*\('([^']+)'", all_sql, re.DOTALL))
    missing_in_sql = js_qids - sql_qids
    missing_in_js = sql_qids - js_qids
    print(f'JS 題目 ID 數量：{len(js_qids)}')
    print(f'SQL 題目 ID 數量：{len(sql_qids)}')
    if missing_in_sql:
        errors.append(f'JS 有但 SQL 沒有的 ID: {list(missing_in_sql)[:5]}')
        print(f'  [FAIL] JS 多出：{list(missing_in_sql)[:3]}...')
    if missing_in_js:
        errors.append(f'SQL 有但 JS 沒有的 ID: {list(missing_in_js)[:5]}')
        print(f'  [FAIL] SQL 多出：{list(missing_in_js)[:3]}...')
    if not missing_in_sql and not missing_in_js and len(js_qids) > 0:
        print(f'  [OK] 全部 {len(js_qids)} 個 ID 完全一致')

    print('\n' + '='*50)
    if errors:
        print(f'發現 {len(errors)} 個問題：')
        for e in errors:
            print(f'  - {e}')
        return 1
    else:
        print('全部通過 ✓')
        return 0

if __name__ == '__main__':
    sys.exit(main())
