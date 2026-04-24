-- =============================================================================
-- v18_wave1_prep — Wave 1 題庫大規模 ingest 前的 schema 準備
-- 作成：2026-04-24
-- 依據：docs/wave1_ingest_inventory_2026-04-24.md §3.3
--
-- 改動三件事：
--   1. 新增 3 個 top-level exam_categories（soe / teacher / military-police）
--      — 讓 public-com state-jobs、education、cpu、tpa 等家族有家可歸
--   2. 放寬 questions_answer_payload_valid CHECK
--      — 允許 auto_gradable=false 的題（如 ceec gsat/ast、cpu 歷檔）
--        correct_answer_json=NULL 合法通過
--   3. 為 Wave 1 大量 ingest 加兩個 index
--      — idx_questions_paper_id_active（active-only, 比既有 idx_questions_paper_id
--        更嚴格，供 paper 內 active 題 scan）
--      — idx_exam_papers_exam_year（exam × 年度查詢）
--
-- 安全性評估（apply 前已驗）：
--   - 既有 7,399 題 question_type 只有 single_choice (7,393) + multiple_choice (6)，
--     新 CHECK 對所有既有列皆仍 true，不會 violate。
--   - INSERT 的 3 個 id 在既有 exam_categories 皆不存在，加 ON CONFLICT DO NOTHING
--     讓 migration 可重跑。
--   - 兩個 CREATE INDEX 都用 IF NOT EXISTS，重跑無害。
-- =============================================================================

BEGIN;

-- ---------------------------------------------------------------------------
-- 1. 新增 3 個 top-level exam_categories
-- ---------------------------------------------------------------------------
INSERT INTO public.exam_categories
  (id, name, icon, color, text_color, description, sort_order, is_active)
VALUES
  ('soe',
   '國營事業就業考',
   '🏭',
   '#E0F2F1',
   '#00695C',
   '台電、中油、台水、中華郵政、捷運等國營與泛公股事業招考',
   8,
   true),
  ('teacher',
   '教職人員考試',
   '🍎',
   '#FFEBEE',
   '#B71C1C',
   '教師資格考、公立學校教師甄試、教保員',
   9,
   true),
  ('military-police',
   '軍警特考／招生',
   '🛡',
   '#ECEFF1',
   '#37474F',
   '警察特考、警大、警專、軍職轉公職等軍警體系考試',
   10,
   true)
ON CONFLICT (id) DO NOTHING;

-- ---------------------------------------------------------------------------
-- 2. 放寬 questions_answer_payload_valid：允許「未公布答案」題
--    改動：非 passage 類題型 + auto_gradable=false 時，correct_answer_json 可為 NULL
-- ---------------------------------------------------------------------------
ALTER TABLE public.questions
  DROP CONSTRAINT IF EXISTS questions_answer_payload_valid;

ALTER TABLE public.questions
  ADD CONSTRAINT questions_answer_payload_valid CHECK (
    (question_type = 'single_choice')
    OR (
      question_type IN (
        'reading_passage', 'listening_passage', 'composite_paper', 'stem_shared'
      )
      AND correct_answer_json IS NULL
    )
    OR (
      question_type NOT IN (
        'single_choice', 'reading_passage', 'listening_passage',
        'composite_paper', 'stem_shared'
      )
      AND (correct_answer_json IS NOT NULL OR auto_gradable = false)
    )
  );

COMMENT ON CONSTRAINT questions_answer_payload_valid ON public.questions IS
  'v18: single_choice 用 correct_answer；passage 類 json=NULL；其餘題型 json NOT NULL '
  '或 auto_gradable=false 皆可（後者給 ceec/cpu 等無公布答案題用）';

-- ---------------------------------------------------------------------------
-- 3. 大量 ingest 用的 index
-- ---------------------------------------------------------------------------

-- 3a. paper 內 active 題 scan（比既有 idx_questions_paper_id 更嚴）
CREATE INDEX IF NOT EXISTS idx_questions_paper_id_active
  ON public.questions (paper_id)
  WHERE is_active = true;

-- 3b. exam_papers 依 exam × roc_year 查（listing 頁、年度卷選擇器）
CREATE INDEX IF NOT EXISTS idx_exam_papers_exam_year
  ON public.exam_papers (exam_id, roc_year);

COMMIT;

-- =============================================================================
-- 驗證 SQL（手動跑，非 migration 一部分）
-- =============================================================================
-- SELECT id, name, sort_order FROM exam_categories ORDER BY sort_order;
-- SELECT conname, pg_get_constraintdef(oid) FROM pg_constraint
--   WHERE conrelid='public.questions'::regclass
--     AND conname='questions_answer_payload_valid';
-- SELECT indexname FROM pg_indexes WHERE schemaname='public'
--   AND indexname IN ('idx_questions_paper_id_active','idx_exam_papers_exam_year');
