-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v6 — 科目/類科架構
-- 支援：考試→(類科)→科目→章節→題目 四層結構
-- 題庫可跨考試共用（例如行政法被多個公職考試引用）
-- ═══════════════════════════════════════════════════════════════════

BEGIN;

-- ── 1. subjects 表 ─────────────────────────────────
CREATE TABLE IF NOT EXISTS public.subjects (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  short_name TEXT,
  description TEXT,
  category TEXT,
  icon TEXT,
  meta JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ── 2. exam_subjects 關聯表（M:N + 類科欄位）─────────
CREATE TABLE IF NOT EXISTS public.exam_subjects (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  exam_id TEXT REFERENCES public.exams(id) ON DELETE CASCADE NOT NULL,
  subject_id TEXT REFERENCES public.subjects(id) ON DELETE CASCADE NOT NULL,
  track_name TEXT,
  is_required BOOLEAN DEFAULT TRUE,
  weight INTEGER DEFAULT 1,
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  CONSTRAINT exam_subjects_unique UNIQUE(exam_id, subject_id, track_name)
);

-- ── 3. 擴充 chapters/questions：可選屬於 subject ──────
ALTER TABLE public.chapters  ADD COLUMN IF NOT EXISTS subject_id TEXT REFERENCES public.subjects(id) ON DELETE CASCADE;
ALTER TABLE public.chapters  ALTER COLUMN exam_id DROP NOT NULL;
ALTER TABLE public.questions ADD COLUMN IF NOT EXISTS subject_id TEXT REFERENCES public.subjects(id) ON DELETE SET NULL;
ALTER TABLE public.questions ALTER COLUMN exam_id DROP NOT NULL;

-- ── 4. Indexes ────────────────────────────────────────
CREATE INDEX IF NOT EXISTS idx_exam_subjects_exam ON public.exam_subjects(exam_id);
CREATE INDEX IF NOT EXISTS idx_exam_subjects_subject ON public.exam_subjects(subject_id);
CREATE INDEX IF NOT EXISTS idx_exam_subjects_track ON public.exam_subjects(exam_id, track_name);
CREATE INDEX IF NOT EXISTS idx_chapters_subject ON public.chapters(subject_id);
CREATE INDEX IF NOT EXISTS idx_questions_subject ON public.questions(subject_id);

-- ── 5. RLS（公開讀取；寫入限 service_role）───────────
ALTER TABLE public.subjects ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exam_subjects ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS subjects_public_read ON public.subjects;
CREATE POLICY subjects_public_read ON public.subjects FOR SELECT USING (true);

DROP POLICY IF EXISTS exam_subjects_public_read ON public.exam_subjects;
CREATE POLICY exam_subjects_public_read ON public.exam_subjects FOR SELECT USING (true);

-- ── 6. updated_at trigger (subjects) ──────────────────
CREATE OR REPLACE TRIGGER on_subjects_updated
  BEFORE UPDATE ON public.subjects
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- ── 7. Seed: subjects ─────────────────────────────────
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-chinese', '國文', 'common', '國文（作文、公文與測驗）')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-english', '英文', 'common', '英文測驗（文法、字彙、閱讀）')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-law-know', '法學知識與英文', 'common', '中華民國憲法 + 法學緒論 + 英文')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-constitution', '中華民國憲法', 'common', '憲法本文、增修條文與大法官解釋')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-legal-intro', '法學緒論', 'common', '法學基本概念與各法域概述')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-civic', '公民', 'common', '公民與社會')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-admin-law', '行政法', 'professional', '行政程序法、行政救濟與組織')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-admin-sci', '行政學', 'professional', '公共行政理論與實務')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-pol-sci', '政治學', 'professional', '政治理論、制度與比較政治')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-pub-policy', '公共政策', 'professional', '政策分析、制定與評估')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-pub-finance', '財政學', 'professional', '財政理論、預算與稅收')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-tax-law', '稅務法規', 'professional', '稅捐稽徵、所得稅、營業稅')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-accounting', '會計學', 'professional', '中級與財務會計')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-cost-acct', '成本與管理會計', 'professional', '成本會計與決策')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-economics', '經濟學', 'professional', '個體與總體經濟學')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-stat', '統計學', 'professional', '敘述與推論統計')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-civil-law', '民法', 'professional', '總則、債、物權、親屬、繼承')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-criminal-law', '刑法', 'professional', '總則與分則')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-civ-proc', '民事訴訟法', 'professional', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-crim-proc', '刑事訴訟法', 'professional', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-commerce', '商事法', 'professional', '公司法、票據法、保險法、海商法')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-land-law', '土地法規', 'professional', '土地法、平均地權、土地徵收')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-hr-mgmt', '人事行政學', 'professional', '公務人員法規與人事管理')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-local-gov', '地方政府與自治', 'professional', '地方制度法與地方自治理論')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-edu-admin', '教育行政學', 'professional', '教育政策、法規與行政')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gsat-chinese', '學測國文', 'academic', '選擇題 + 混合題 + 國語文寫作能力')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gsat-english', '學測英文', 'academic', '字彙、閱讀、作文與翻譯')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gsat-math-a', '學測數學A', 'academic', '數理類科（自然組）必考')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gsat-math-b', '學測數學B', 'academic', '社會組、商管類必考')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gsat-social', '學測社會', 'academic', '歷史 + 地理 + 公民與社會')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gsat-science', '學測自然', 'academic', '物理 + 化學 + 生物 + 地球科學')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-math-a', '分科測驗 數學甲', 'academic', '自然組專業數學')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-history', '分科測驗 歷史', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-geo', '分科測驗 地理', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-civics', '分科測驗 公民', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-physics', '分科測驗 物理', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-chem', '分科測驗 化學', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ast-bio', '分科測驗 生物', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-cap-chinese', '會考國文', 'academic', '國中教育會考國文')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-cap-english', '會考英語', 'academic', '含聽力')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-cap-math', '會考數學', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-cap-social', '會考社會', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-cap-science', '會考自然', 'academic', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-toeic-l', 'TOEIC Listening', 'language', '100 題聽力')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-toeic-r', 'TOEIC Reading', 'language', '100 題閱讀')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gept-l', 'GEPT Listening', 'language', '全民英檢聽力')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gept-r', 'GEPT Reading', 'language', '全民英檢閱讀')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gept-w', 'GEPT Writing', 'language', '全民英檢寫作')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-gept-s', 'GEPT Speaking', 'language', '全民英檢口說')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ielts-l', 'IELTS Listening', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ielts-r', 'IELTS Reading', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ielts-w', 'IELTS Writing', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-ielts-s', 'IELTS Speaking', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-jlpt-vocab', 'JLPT 文字語彙', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-jlpt-grammar', 'JLPT 文法讀解', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-jlpt-listen', 'JLPT 聽解', 'language', '')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-osh-a', '甲種職安衛全科', 'misc', '甲種職業安全衛生 5 章整合')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-osh-b', '乙種職安衛全科', 'misc', '乙種職業安全衛生整合')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-osh-c', '丙種職安衛全科', 'misc', '丙種職業安全衛生整合')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();
INSERT INTO public.subjects (id, name, category, description) VALUES
  ('sub-tech-elec-c', '室內配線丙級', 'misc', '屋內線路裝修丙級學科')
  ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, category = EXCLUDED.category, description = EXCLUDED.description, updated_at = NOW();

-- ── 8. Seed: exam_subjects 關聯 ──────────────────────
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('osh-a', 'sub-osh-a', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('osh-b', 'sub-osh-b', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('osh-c', 'sub-osh-c', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-english', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-law-know', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-admin-law', '一般行政', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-admin-sci', '一般行政', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-pol-sci', '一般行政', True, 1, 12)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-pub-policy', '一般行政', True, 1, 13)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-admin-law', '一般民政', True, 1, 20)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-pol-sci', '一般民政', True, 1, 21)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-local-gov', '一般民政', True, 1, 22)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-pub-policy', '一般民政', True, 1, 23)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-admin-law', '人事行政', True, 1, 30)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-hr-mgmt', '人事行政', True, 1, 31)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-admin-sci', '人事行政', True, 1, 32)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-pol-sci', '人事行政', True, 1, 33)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-pub-finance', '財稅行政', True, 1, 40)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-tax-law', '財稅行政', True, 1, 41)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-economics', '財稅行政', True, 1, 42)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gaokao-3', 'sub-accounting', '財稅行政', True, 1, 43)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-law-know', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-admin-law', '一般行政', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-admin-sci', '一般行政', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-pol-sci', '一般行政', True, 1, 12)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-pub-policy', '一般行政', True, 1, 13)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-admin-law', '人事行政', True, 1, 20)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-hr-mgmt', '人事行政', True, 1, 21)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-civ-proc', '人事行政', True, 1, 22)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('pukao', 'sub-civic', '人事行政', True, 1, 23)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('chukao', 'sub-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('chukao', 'sub-english', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('chukao', 'sub-civic', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('chukao', 'sub-legal-intro', '一般行政', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('chukao', 'sub-admin-sci', '一般行政', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-english', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-admin-law', '行政警察', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-criminal-law', '行政警察', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-crim-proc', '行政警察', True, 1, 12)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-criminal-law', '刑事警察', True, 1, 20)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-crim-proc', '刑事警察', True, 1, 21)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('police-3', 'sub-civil-law', '刑事警察', True, 1, 22)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-constitution', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-civil-law', '法院書記官', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-civ-proc', '法院書記官', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-criminal-law', '法院書記官', True, 1, 12)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-crim-proc', '法院書記官', True, 1, 13)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-criminal-law', '檢察事務官', True, 1, 20)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-crim-proc', '檢察事務官', True, 1, 21)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('judicial-3', 'sub-civil-law', '檢察事務官', True, 1, 22)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gsat', 'sub-gsat-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gsat', 'sub-gsat-english', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gsat', 'sub-gsat-math-a', '自然組', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gsat', 'sub-gsat-science', '自然組', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gsat', 'sub-gsat-math-b', '社會組', True, 1, 20)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gsat', 'sub-gsat-social', '社會組', True, 1, 21)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-math-a', '自然組', True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-physics', '自然組', True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-chem', '自然組', True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-bio', '自然組', True, 1, 3)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-history', '社會組', True, 1, 10)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-geo', '社會組', True, 1, 11)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ast', 'sub-ast-civics', '社會組', True, 1, 12)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cap', 'sub-cap-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cap', 'sub-cap-english', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cap', 'sub-cap-math', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cap', 'sub-cap-social', NULL, True, 1, 3)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cap', 'sub-cap-science', NULL, True, 1, 4)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('toeic', 'sub-toeic-l', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('toeic', 'sub-toeic-r', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gept-int', 'sub-gept-l', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gept-int', 'sub-gept-r', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gept-int', 'sub-gept-w', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('gept-int', 'sub-gept-s', NULL, True, 1, 3)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ielts', 'sub-ielts-l', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ielts', 'sub-ielts-r', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ielts', 'sub-ielts-w', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('ielts', 'sub-ielts-s', NULL, True, 1, 3)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('jlpt-n2', 'sub-jlpt-vocab', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('jlpt-n2', 'sub-jlpt-grammar', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('jlpt-n2', 'sub-jlpt-listen', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-constitution', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-civil-law', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-civ-proc', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-criminal-law', NULL, True, 1, 3)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-crim-proc', NULL, True, 1, 4)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-commerce', NULL, True, 1, 5)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('lawyer', 'sub-admin-law', NULL, True, 1, 6)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cpa', 'sub-accounting', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cpa', 'sub-cost-acct', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cpa', 'sub-tax-law', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('cpa', 'sub-commerce', NULL, True, 1, 3)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('bookkeeper', 'sub-chinese', NULL, True, 1, 0)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('bookkeeper', 'sub-accounting', NULL, True, 1, 1)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;
INSERT INTO public.exam_subjects (exam_id, subject_id, track_name, is_required, weight, sort_order) VALUES ('bookkeeper', 'sub-tax-law', NULL, True, 1, 2)
  ON CONFLICT ON CONSTRAINT exam_subjects_unique DO UPDATE SET is_required = EXCLUDED.is_required, weight = EXCLUDED.weight, sort_order = EXCLUDED.sort_order;

COMMIT;

-- 共 60 個科目 / 18 個考試有科目對應 / 99 筆 exam_subjects 關聯