-- ════════════════════════════════════════════════════════════════════
-- KaoNow Supabase Schema v2 — AI 題目支援擴充
-- ════════════════════════════════════════════════════════════════════
-- 此檔案是 v1 的增量，只新增欄位/約束/索引，不動現有資料
-- 可重複執行（使用 IF NOT EXISTS / DO BLOCK 保護）
--
-- 使用方式：
--   1. 確認 supabase_schema.sql (v1) 已執行過
--   2. 在 Supabase SQL Editor 貼上此檔案整個內容
--   3. 點 Run
-- ════════════════════════════════════════════════════════════════════

-- ═══════════ 1. 新增 questions 表 AI 相關欄位 ═══════════════════════

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS source TEXT DEFAULT 'official';

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS source_meta JSONB DEFAULT '{}';
  -- AI 題：{model:'gpt-4o', lecture_id:'xxx', prompt_version:'v1', generated_at:'...', cost_usd:0.003}
  -- 官方題：{source:'民國114年第1梯次考題', author:'勞動部'}
  -- 社群題：{submitted_by:'user_id', submission_note:'...'}

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS reviewed_by UUID REFERENCES auth.users(id);

ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS reviewed_at TIMESTAMPTZ;

-- ═══════════ 2. 加上 CHECK 約束（避免隨便亂填） ═════════════════════

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint WHERE conname = 'questions_source_check'
  ) THEN
    ALTER TABLE public.questions
      ADD CONSTRAINT questions_source_check
      CHECK (source IN ('official', 'ai_generated', 'community'));
  END IF;
END $$;

-- ═══════════ 3. 把現有 153 題明確標記為 official ═════════════════════
-- （即使有預設值也顯式更新一次，以防萬一）

UPDATE public.questions
SET source = 'official'
WHERE source IS NULL OR source = '';

-- 如果沒有既有的 source_meta，補上來源標記
UPDATE public.questions
SET source_meta = jsonb_build_object(
  'source', '勞動部職業安全衛生署公開題庫',
  'imported_at', NOW()
)
WHERE (source_meta = '{}' OR source_meta IS NULL)
  AND source = 'official';

-- ═══════════ 4. 索引 ════════════════════════════════════════════════

-- 依來源快速篩選（例如「只做官方題」或「只練 AI 題」）
CREATE INDEX IF NOT EXISTS idx_questions_source_active
  ON public.questions(source, is_active)
  WHERE is_active;

-- 審核流程：快速找出「已生成但尚未審核」的 AI 題
CREATE INDEX IF NOT EXISTS idx_questions_ai_unreviewed
  ON public.questions(exam_id, created_at)
  WHERE source = 'ai_generated' AND reviewed_at IS NULL;

-- ═══════════ 5. View：只顯示「已上架」的題目 ════════════════════════
-- 前端查詢時用這個 view，就會自動過濾掉未審核的 AI 題

CREATE OR REPLACE VIEW public.questions_published AS
SELECT
  q.id, q.exam_id, q.chapter_id, q.question_text, q.options,
  q.correct_answer, q.explanation, q.difficulty, q.tags,
  q.times_answered, q.times_correct, q.source,
  q.created_at, q.updated_at
FROM public.questions q
WHERE q.is_active = TRUE
  AND (
    q.source = 'official'                              -- 官方題自動上架
    OR (q.source = 'ai_generated' AND q.reviewed_at IS NOT NULL)  -- AI 題須審核
    OR (q.source = 'community'   AND q.reviewed_at IS NOT NULL)   -- 社群題也須審核
  );

-- ═══════════════════════════════════════════════════════════════════
-- 完成！questions 表已支援 AI 題目、審核流程、來源追蹤
-- ═══════════════════════════════════════════════════════════════════
