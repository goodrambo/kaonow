-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v6.1 — 補丁：questions_published view 補上 subject_id
-- 原本 v2 建的 view 沒有 subject_id 欄位，v6 加欄位後需要重建
-- 讓前端能用 questions_published?subject_id=eq.xxx 篩題
-- ═══════════════════════════════════════════════════════════════════

-- Postgres 限制：CREATE OR REPLACE VIEW 不能改欄位順序
-- 先 DROP 再重建才能在中間插 subject_id
BEGIN;

DROP VIEW IF EXISTS public.questions_published;

CREATE VIEW public.questions_published AS
SELECT
  q.id,
  q.exam_id,
  q.subject_id,        -- v6 新增
  q.chapter_id,
  q.question_text,
  q.options,
  q.correct_answer,
  q.explanation,
  q.difficulty,
  q.tags,
  q.times_answered,
  q.times_correct,
  q.source,
  q.created_at,
  q.updated_at
FROM public.questions q
WHERE q.is_active = TRUE
  AND (
    q.source = 'official'                                         -- 官方題自動上架
    OR (q.source = 'ai_generated' AND q.reviewed_at IS NOT NULL)  -- AI 題須審核
    OR (q.source = 'community'    AND q.reviewed_at IS NOT NULL)  -- 社群題也須審核
  );

COMMIT;

-- 驗證：
--   SELECT column_name FROM information_schema.columns
--   WHERE table_name='questions_published' ORDER BY ordinal_position;
