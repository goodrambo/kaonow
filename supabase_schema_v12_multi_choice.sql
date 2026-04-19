-- v12: Multi-choice pilot 配套 schema
-- 1. question_attempts 加 selected_answer_json（int4 塞不下陣列）
-- 2. questions_published view 補上 question_type / correct_answer_json / media / parent_question_id
--
-- 規則：single_choice 繼續用 selected_answer (int4)，multi/其他題型用 selected_answer_json
-- 兩者至多擇一非空（這邊用 comment 註明，不加 CHECK 避免擋死舊資料）

-- ── 1. question_attempts ──────────────────────────────────────
ALTER TABLE question_attempts
  ADD COLUMN IF NOT EXISTS selected_answer_json JSONB;

COMMENT ON COLUMN question_attempts.selected_answer IS
  'single_choice: 0-indexed int. 其他題型請留 NULL 改用 selected_answer_json。';
COMMENT ON COLUMN question_attempts.selected_answer_json IS
  'multiple_choice: sorted int array e.g. [0,2,3]. true_false: true/false. 其他題型依 question_type 定義。';

-- ── 2. 重建 questions_published view ─────────────────────────
CREATE OR REPLACE VIEW questions_published AS
SELECT
  id, exam_id, subject_id, chapter_id,
  question_text, options,
  correct_answer, correct_answer_json,
  question_type, media, parent_question_id,
  explanation, difficulty, tags,
  times_answered, times_correct,
  source, image_url,
  created_at, updated_at
FROM questions q
WHERE is_active = true
  AND (
    source = 'official'
    OR (source = 'ai_generated' AND reviewed_at IS NOT NULL)
    OR (source = 'community'   AND reviewed_at IS NOT NULL)
  );

COMMENT ON VIEW questions_published IS
  'Published questions only — filters out un-reviewed AI/community content. v12: exposes question_type / correct_answer_json / media / parent_question_id.';
