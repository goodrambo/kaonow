#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
KaoNow schema v6 — 科目/類科架構
產出: supabase_schema_v6.sql
涵蓋:
  1. subjects 表（題庫歸屬的最細單位）
  2. exam_subjects 表（考試 ↔ 科目 M:N 關聯，支援 track_name 類科）
  3. chapters / questions 增加可選 subject_id
  4. 關鍵科目 seed（國文、英文、行政法...等）
  5. 熱門考試類科 seed（高考三級、學測、TOEIC、甲種職安衛）
"""
import os, json

OUT = os.path.dirname(os.path.abspath(__file__))

# ========== 科目字典 ==========
# id, name, category, description
SUBJECTS = [
  # ── 共同科目（公職通用）──
  ('sub-chinese',      '國文',             'common',       '國文（作文、公文與測驗）'),
  ('sub-english',      '英文',             'common',       '英文測驗（文法、字彙、閱讀）'),
  ('sub-law-know',     '法學知識與英文',    'common',       '中華民國憲法 + 法學緒論 + 英文'),
  ('sub-constitution', '中華民國憲法',      'common',       '憲法本文、增修條文與大法官解釋'),
  ('sub-legal-intro',  '法學緒論',          'common',       '法學基本概念與各法域概述'),
  ('sub-civic',        '公民',             'common',       '公民與社會'),

  # ── 公職專業科目 ──
  ('sub-admin-law',    '行政法',           'professional', '行政程序法、行政救濟與組織'),
  ('sub-admin-sci',    '行政學',           'professional', '公共行政理論與實務'),
  ('sub-pol-sci',      '政治學',           'professional', '政治理論、制度與比較政治'),
  ('sub-pub-policy',   '公共政策',         'professional', '政策分析、制定與評估'),
  ('sub-pub-finance',  '財政學',           'professional', '財政理論、預算與稅收'),
  ('sub-tax-law',      '稅務法規',         'professional', '稅捐稽徵、所得稅、營業稅'),
  ('sub-accounting',   '會計學',           'professional', '中級與財務會計'),
  ('sub-cost-acct',    '成本與管理會計',    'professional', '成本會計與決策'),
  ('sub-economics',    '經濟學',           'professional', '個體與總體經濟學'),
  ('sub-stat',         '統計學',           'professional', '敘述與推論統計'),
  ('sub-civil-law',    '民法',             'professional', '總則、債、物權、親屬、繼承'),
  ('sub-criminal-law', '刑法',             'professional', '總則與分則'),
  ('sub-civ-proc',     '民事訴訟法',       'professional', ''),
  ('sub-crim-proc',    '刑事訴訟法',       'professional', ''),
  ('sub-commerce',     '商事法',           'professional', '公司法、票據法、保險法、海商法'),
  ('sub-land-law',     '土地法規',         'professional', '土地法、平均地權、土地徵收'),
  ('sub-hr-mgmt',      '人事行政學',       'professional', '公務人員法規與人事管理'),
  ('sub-local-gov',    '地方政府與自治',    'professional', '地方制度法與地方自治理論'),
  ('sub-edu-admin',    '教育行政學',       'professional', '教育政策、法規與行政'),

  # ── 升學類科目 ──
  ('sub-gsat-chinese', '學測國文',         'academic',     '選擇題 + 混合題 + 國語文寫作能力'),
  ('sub-gsat-english', '學測英文',         'academic',     '字彙、閱讀、作文與翻譯'),
  ('sub-gsat-math-a',  '學測數學A',        'academic',     '數理類科（自然組）必考'),
  ('sub-gsat-math-b',  '學測數學B',        'academic',     '社會組、商管類必考'),
  ('sub-gsat-social',  '學測社會',         'academic',     '歷史 + 地理 + 公民與社會'),
  ('sub-gsat-science', '學測自然',         'academic',     '物理 + 化學 + 生物 + 地球科學'),
  ('sub-ast-math-a',   '分科測驗 數學甲',   'academic',     '自然組專業數學'),
  ('sub-ast-history',  '分科測驗 歷史',     'academic',     ''),
  ('sub-ast-geo',      '分科測驗 地理',     'academic',     ''),
  ('sub-ast-civics',   '分科測驗 公民',     'academic',     ''),
  ('sub-ast-physics',  '分科測驗 物理',     'academic',     ''),
  ('sub-ast-chem',     '分科測驗 化學',     'academic',     ''),
  ('sub-ast-bio',      '分科測驗 生物',     'academic',     ''),
  ('sub-cap-chinese',  '會考國文',         'academic',     '國中教育會考國文'),
  ('sub-cap-english',  '會考英語',         'academic',     '含聽力'),
  ('sub-cap-math',     '會考數學',         'academic',     ''),
  ('sub-cap-social',   '會考社會',         'academic',     ''),
  ('sub-cap-science',  '會考自然',         'academic',     ''),

  # ── 語言科目 ──
  ('sub-toeic-l',      'TOEIC Listening',  'language',     '100 題聽力'),
  ('sub-toeic-r',      'TOEIC Reading',    'language',     '100 題閱讀'),
  ('sub-gept-l',       'GEPT Listening',   'language',     '全民英檢聽力'),
  ('sub-gept-r',       'GEPT Reading',     'language',     '全民英檢閱讀'),
  ('sub-gept-w',       'GEPT Writing',     'language',     '全民英檢寫作'),
  ('sub-gept-s',       'GEPT Speaking',    'language',     '全民英檢口說'),
  ('sub-ielts-l',      'IELTS Listening',  'language',     ''),
  ('sub-ielts-r',      'IELTS Reading',    'language',     ''),
  ('sub-ielts-w',      'IELTS Writing',    'language',     ''),
  ('sub-ielts-s',      'IELTS Speaking',   'language',     ''),
  ('sub-jlpt-vocab',   'JLPT 文字語彙',    'language',     ''),
  ('sub-jlpt-grammar', 'JLPT 文法讀解',    'language',     ''),
  ('sub-jlpt-listen',  'JLPT 聽解',        'language',     ''),

  # ── 職安衛 / 技術士 整合科目 ──
  ('sub-osh-a',        '甲種職安衛全科',   'misc',         '甲種職業安全衛生 5 章整合'),
  ('sub-osh-b',        '乙種職安衛全科',   'misc',         '乙種職業安全衛生整合'),
  ('sub-osh-c',        '丙種職安衛全科',   'misc',         '丙種職業安全衛生整合'),
  ('sub-tech-elec-c',  '室內配線丙級',     'misc',         '屋內線路裝修丙級學科'),
]

# ========== 考試 × 科目 × 類科 關聯 ==========
# (exam_id, [(subject_id, track_name or None, is_required, weight, sort_order), ...])
EXAM_SUBJECTS = {

  # ── 甲種職安衛（單科，無類科）──
  'osh-a': [
    ('sub-osh-a', None, True, 1, 0),
  ],
  'osh-b': [
    ('sub-osh-b', None, True, 1, 0),
  ],
  'osh-c': [
    ('sub-osh-c', None, True, 1, 0),
  ],

  # ── 高考三級（熱門 3 類科：一般行政、一般民政、人事行政）──
  'gaokao-3': [
    # 共同科目（所有類科都考）
    ('sub-chinese',      None, True, 1, 0),
    ('sub-english',      None, True, 1, 1),
    ('sub-law-know',     None, True, 1, 2),
    # 一般行政類科
    ('sub-admin-law',    '一般行政', True, 1, 10),
    ('sub-admin-sci',    '一般行政', True, 1, 11),
    ('sub-pol-sci',      '一般行政', True, 1, 12),
    ('sub-pub-policy',   '一般行政', True, 1, 13),
    # 一般民政類科
    ('sub-admin-law',    '一般民政', True, 1, 20),
    ('sub-pol-sci',      '一般民政', True, 1, 21),
    ('sub-local-gov',    '一般民政', True, 1, 22),
    ('sub-pub-policy',   '一般民政', True, 1, 23),
    # 人事行政類科
    ('sub-admin-law',    '人事行政', True, 1, 30),
    ('sub-hr-mgmt',      '人事行政', True, 1, 31),
    ('sub-admin-sci',    '人事行政', True, 1, 32),
    ('sub-pol-sci',      '人事行政', True, 1, 33),
    # 財稅類科
    ('sub-pub-finance',  '財稅行政', True, 1, 40),
    ('sub-tax-law',      '財稅行政', True, 1, 41),
    ('sub-economics',    '財稅行政', True, 1, 42),
    ('sub-accounting',   '財稅行政', True, 1, 43),
  ],

  # ── 普考（一般行政、人事行政 2 類科）──
  'pukao': [
    ('sub-chinese',      None, True, 1, 0),
    ('sub-law-know',     None, True, 1, 1),
    ('sub-admin-law',    '一般行政', True, 1, 10),
    ('sub-admin-sci',    '一般行政', True, 1, 11),
    ('sub-pol-sci',      '一般行政', True, 1, 12),
    ('sub-pub-policy',   '一般行政', True, 1, 13),
    ('sub-admin-law',    '人事行政', True, 1, 20),
    ('sub-hr-mgmt',      '人事行政', True, 1, 21),
    ('sub-civ-proc',     '人事行政', True, 1, 22),
    ('sub-civic',        '人事行政', True, 1, 23),
  ],

  # ── 初等考試 ──
  'chukao': [
    ('sub-chinese',      None, True, 1, 0),
    ('sub-english',      None, True, 1, 1),
    ('sub-civic',        None, True, 1, 2),
    ('sub-legal-intro',  '一般行政', True, 1, 10),
    ('sub-admin-sci',    '一般行政', True, 1, 11),
  ],

  # ── 警察特考三等（刑事警察、行政警察）──
  'police-3': [
    ('sub-chinese',      None, True, 1, 0),
    ('sub-english',      None, True, 1, 1),
    ('sub-admin-law',    '行政警察', True, 1, 10),
    ('sub-criminal-law', '行政警察', True, 1, 11),
    ('sub-crim-proc',    '行政警察', True, 1, 12),
    ('sub-criminal-law', '刑事警察', True, 1, 20),
    ('sub-crim-proc',    '刑事警察', True, 1, 21),
    ('sub-civil-law',    '刑事警察', True, 1, 22),
  ],

  # ── 司法特考三等（法院書記官、檢察事務官）──
  'judicial-3': [
    ('sub-chinese',      None, True, 1, 0),
    ('sub-constitution', None, True, 1, 1),
    ('sub-civil-law',    '法院書記官', True, 1, 10),
    ('sub-civ-proc',     '法院書記官', True, 1, 11),
    ('sub-criminal-law', '法院書記官', True, 1, 12),
    ('sub-crim-proc',    '法院書記官', True, 1, 13),
    ('sub-criminal-law', '檢察事務官', True, 1, 20),
    ('sub-crim-proc',    '檢察事務官', True, 1, 21),
    ('sub-civil-law',    '檢察事務官', True, 1, 22),
  ],

  # ── 學測（分「國英數必考」＋ 社會組/自然組）──
  'gsat': [
    ('sub-gsat-chinese', None, True, 1, 0),
    ('sub-gsat-english', None, True, 1, 1),
    ('sub-gsat-math-a',  '自然組', True, 1, 10),
    ('sub-gsat-science', '自然組', True, 1, 11),
    ('sub-gsat-math-b',  '社會組', True, 1, 20),
    ('sub-gsat-social',  '社會組', True, 1, 21),
  ],

  # ── 分科測驗 ──
  'ast': [
    ('sub-ast-math-a',   '自然組', True, 1, 0),
    ('sub-ast-physics',  '自然組', True, 1, 1),
    ('sub-ast-chem',     '自然組', True, 1, 2),
    ('sub-ast-bio',      '自然組', True, 1, 3),
    ('sub-ast-history',  '社會組', True, 1, 10),
    ('sub-ast-geo',      '社會組', True, 1, 11),
    ('sub-ast-civics',   '社會組', True, 1, 12),
  ],

  # ── 國中教育會考（5 科必考，無類科）──
  'cap': [
    ('sub-cap-chinese',  None, True, 1, 0),
    ('sub-cap-english',  None, True, 1, 1),
    ('sub-cap-math',     None, True, 1, 2),
    ('sub-cap-social',   None, True, 1, 3),
    ('sub-cap-science',  None, True, 1, 4),
  ],

  # ── TOEIC（L+R 兩部分）──
  'toeic': [
    ('sub-toeic-l', None, True, 1, 0),
    ('sub-toeic-r', None, True, 1, 1),
  ],

  # ── 全民英檢中級 ──
  'gept-int': [
    ('sub-gept-l', None, True, 1, 0),
    ('sub-gept-r', None, True, 1, 1),
    ('sub-gept-w', None, True, 1, 2),
    ('sub-gept-s', None, True, 1, 3),
  ],

  # ── IELTS ──
  'ielts': [
    ('sub-ielts-l', None, True, 1, 0),
    ('sub-ielts-r', None, True, 1, 1),
    ('sub-ielts-w', None, True, 1, 2),
    ('sub-ielts-s', None, True, 1, 3),
  ],

  # ── JLPT（以 N2 為例，其他級別結構相同）──
  'jlpt-n2': [
    ('sub-jlpt-vocab',   None, True, 1, 0),
    ('sub-jlpt-grammar', None, True, 1, 1),
    ('sub-jlpt-listen',  None, True, 1, 2),
  ],

  # ── 律師考試 ──
  'lawyer': [
    ('sub-constitution', None, True, 1, 0),
    ('sub-civil-law',    None, True, 1, 1),
    ('sub-civ-proc',     None, True, 1, 2),
    ('sub-criminal-law', None, True, 1, 3),
    ('sub-crim-proc',    None, True, 1, 4),
    ('sub-commerce',     None, True, 1, 5),
    ('sub-admin-law',    None, True, 1, 6),
  ],

  # ── 會計師 ──
  'cpa': [
    ('sub-accounting',   None, True, 1, 0),
    ('sub-cost-acct',    None, True, 1, 1),
    ('sub-tax-law',      None, True, 1, 2),
    ('sub-commerce',     None, True, 1, 3),
  ],

  # ── 記帳士 ──
  'bookkeeper': [
    ('sub-chinese',      None, True, 1, 0),
    ('sub-accounting',   None, True, 1, 1),
    ('sub-tax-law',      None, True, 1, 2),
  ],
}

# ========== 產生 SQL ==========
def sql_esc(s):
  return s.replace("'", "''") if s else ''

lines = []
A = lines.append
A("-- ═══════════════════════════════════════════════════════════════════")
A("-- KaoNow schema v6 — 科目/類科架構")
A("-- 支援：考試→(類科)→科目→章節→題目 四層結構")
A("-- 題庫可跨考試共用（例如行政法被多個公職考試引用）")
A("-- ═══════════════════════════════════════════════════════════════════")
A("")
A("BEGIN;")
A("")
A("-- ── 1. subjects 表 ─────────────────────────────────")
A("""CREATE TABLE IF NOT EXISTS public.subjects (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  short_name TEXT,
  description TEXT,
  category TEXT,
  icon TEXT,
  meta JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);""")
A("")
A("-- ── 2. exam_subjects 關聯表（M:N + 類科欄位）─────────")
A("""CREATE TABLE IF NOT EXISTS public.exam_subjects (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  exam_id TEXT REFERENCES public.exams(id) ON DELETE CASCADE NOT NULL,
  subject_id TEXT REFERENCES public.subjects(id) ON DELETE CASCADE NOT NULL,
  track_name TEXT,
  is_required BOOLEAN DEFAULT TRUE,
  weight INTEGER DEFAULT 1,
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  CONSTRAINT exam_subjects_unique UNIQUE(exam_id, subject_id, track_name)
);""")
A("")
A("-- ── 3. 擴充 chapters/questions：可選屬於 subject ──────")
A("ALTER TABLE public.chapters  ADD COLUMN IF NOT EXISTS subject_id TEXT REFERENCES public.subjects(id) ON DELETE CASCADE;")
A("ALTER TABLE public.chapters  ALTER COLUMN exam_id DROP NOT NULL;")
A("ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS subject_id TEXT REFERENCES public.subjects(id) ON DELETE SET NULL;")
A("ALTER TABLE public.questions ALTER COLUMN exam_id DROP NOT NULL;")
A("")
A("-- ── 4. Indexes ────────────────────────────────────────")
A("CREATE INDEX IF NOT EXISTS idx_exam_subjects_exam ON public.exam_subjects(exam_id);")
A("CREATE INDEX IF NOT EXISTS idx_exam_subjects_subject ON public.exam_subjects(subject_id);")
A("CREATE INDEX IF NOT EXISTS idx_exam_subjects_track ON public.exam_subjects(exam_id, track_name);")
A("CREATE INDEX IF NOT EXISTS idx_chapters_subject ON public.chapters(subject_id);")
A("CREATE INDEX IF NOT EXISTS idx_questions_subject ON public.questions(subject_id);")
A("")
A("-- ── 5. RLS（公開讀取；寫入限 service_role）───────────")
A("ALTER TABLE public.subjects ENABLE ROW LEVEL SECURITY;")
A("ALTER TABLE public.exam_subjects ENABLE ROW LEVEL SECURITY;")
A("")
A("DROP POLICY IF EXISTS subjects_public_read ON public.subjects;")
A("CREATE POLICY subjects_public_read ON public.subjects FOR SELECT USING (true);")
A("")
A("DROP POLICY IF EXISTS exam_subjects_public_read ON public.exam_subjects;")
A("CREATE POLICY exam_subjects_public_read ON public.exam_subjects FOR SELECT USING (true);")
A("")
A("-- ── 6. updated_at trigger (subjects) ──────────────────")
A("""CREATE OR REPLACE TRIGGER on_subjects_updated
  BEFORE UPDATE ON public.subjects
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();""")
A("")
A("-- ── 7. Seed: subjects ─────────────────────────────────")
for s in SUBJECTS:
  sid, name, cat, desc = s
  A(f"INSERT INTO public.subjects (id, name, category, description) VALUES\n"
    f"  ('{sid}', '{sql_esc(name)}', '{cat}', '{sql_esc(desc)}')\n"
    f"  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();")
A("")
A("-- ── 8. Seed: exam_subjects 關聯 ──────────────────────")
total_links = 0
for exam_id, entries in EXAM_SUBJECTS.items():
  for entry in entries:
    sub_id, track, required, weight, order = entry
    track_v = f"'{sql_esc(track)}'" if track else "NULL"
    A(f"INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES "
      f"('{exam_id}', '{sub_id}', {track_v}, {required}, {weight}, {order})\n"
      f"  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET "
      f"is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;")
    total_links += 1
A("")
A("COMMIT;")
A("")
A(f"-- 共 {len(SUBJECTS)} 個科目 / {len(EXAM_SUBJECTS)} 個考試有科目對應 / {total_links} 筆 exam_subjects 關聯")

with open(os.path.join(OUT, '..', 'supabase_schema_v6.sql'), 'w') as f:
  f.write("\n".join(lines))

# ========== 匯出供查閱的 summary ==========
summary = {
  'subject_count': len(SUBJECTS),
  'subjects_by_category': {},
  'exams_with_subjects': len(EXAM_SUBJECTS),
  'total_links': total_links,
  'exams_with_tracks': [],
}
for s in SUBJECTS:
  summary['subjects_by_category'].setdefault(s[2], []).append(s[1])
for eid, entries in EXAM_SUBJECTS.items():
  tracks = set(e[1] for e in entries if e[1])
  if tracks:
    summary['exams_with_tracks'].append((eid, sorted(tracks)))

print(f"✓ 已生成 supabase_schema_v6.sql")
print(f"  共 {summary['subject_count']} 個科目")
print(f"  - common (共同):       {len(summary['subjects_by_category'].get('common', []))}")
print(f"  - professional (公職): {len(summary['subjects_by_category'].get('professional', []))}")
print(f"  - academic (升學):     {len(summary['subjects_by_category'].get('academic', []))}")
print(f"  - language (語言):     {len(summary['subjects_by_category'].get('language', []))}")
print(f"  - misc (其他):         {len(summary['subjects_by_category'].get('misc', []))}")
print(f"  {summary['exams_with_subjects']} 個考試設有科目，共 {summary['total_links']} 筆關聯")
print(f"  含類科之考試：")
for eid, tracks in summary['exams_with_tracks']:
  print(f"    {eid}: {', '.join(tracks)}")
