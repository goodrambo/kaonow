-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v6.2 — 資料遷移：把現有 exam-bound 題庫補綁到 subject
--
-- v6 之前的題目只綁 exam_id，v6 schema 加了 subject_id 可選欄位。
-- 這支 migration 根據 exam_subjects 裡「一對一」的映射（exam 只有 1 個
-- 科目且 track_name IS NULL），把對應的 questions / chapters 補上 subject_id。
--
-- 目前只影響：甲種職安衛（osh-a → sub-osh-a）153 題 + 5 章節。
-- 未來若有其他單科 exam 被加到 exam_subjects，重跑這支即可。
-- ═══════════════════════════════════════════════════════════════════

BEGIN;

-- 1. questions：exam 只有 1 個 subject 且 track IS NULL 的，把 subject_id 補上
UPDATE public.questions q
SET subject_id = es.subject_id
FROM public.exam_subjects es
WHERE q.exam_id = es.exam_id
  AND q.subject_id IS NULL
  AND es.track_name IS NULL
  AND es.exam_id IN (
    SELECT exam_id FROM public.exam_subjects
    GROUP BY exam_id HAVING COUNT(*) = 1
  );

-- 2. chapters：同樣處理
UPDATE public.chapters c
SET subject_id = es.subject_id
FROM public.exam_subjects es
WHERE c.exam_id = es.exam_id
  AND c.subject_id IS NULL
  AND es.track_name IS NULL
  AND es.exam_id IN (
    SELECT exam_id FROM public.exam_subjects
    GROUP BY exam_id HAVING COUNT(*) = 1
  );

COMMIT;

-- 驗證：
--   SELECT COUNT(*) FROM public.questions WHERE subject_id='sub-osh-a';  -- 預期 153 (或 154 含測試 AI 題)
--   SELECT COUNT(*) FROM public.chapters  WHERE subject_id='sub-osh-a';  -- 預期 5
