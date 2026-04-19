-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v11 — 題型欄位開通（為 P3 多題型做結構準備）
-- 2026-04-20
-- ═══════════════════════════════════════════════════════════════════
-- 背景：
--   目前 questions 表只支援單選題（correct_answer INTEGER、options JSONB）。
--   P3 要開多種題型（複選、填空、題組、閱讀題…），需要先把資料結構開好。
--   本 migration 只改結構與 backfill，不動前端邏輯 — 前端照舊把每筆讀成單選。
--   P3.3 後續做 pilot（multiple_choice 端到端）時再用新欄位。
--
-- 改動：
--   1) questions.question_type TEXT DEFAULT 'single_choice'（CHECK 列舉白名單）
--      → 既有資料全部 backfill 成 single_choice
--   2) questions.correct_answer_json JSONB
--      → 複選 / 填空 / 排序 / 配對 等題型用這個欄位存答案
--      → 單選仍用 correct_answer INTEGER（不動、向後相容）
--      → 未來 pilot 完成後，前端讀題時若 correct_answer_json 不為 null 則用新欄位
--   3) questions.media JSONB
--      → 存圖片 / 音檔 / 影片 URL 陣列，給閱讀 / 聽力題用
--      → 與既有 q.img（存在前端載入流程的 fallback 欄位）並存
--   4) questions.parent_question_id TEXT
--      → 題組/閱讀題的「子題」指向「共用題幹 (parent)」的 id
--      → parent 自己的 question_type = 'stem_shared'（純題幹，無選項）
--   5) 對應 CHECK、index、RLS（已存在則跳過）
--
-- 冪等：所有 ADD COLUMN 用 IF NOT EXISTS；CHECK/INDEX 先 DROP 再 CREATE
-- ═══════════════════════════════════════════════════════════════════

-- 1) question_type
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS question_type TEXT;

-- 既有資料 backfill 成 single_choice（NULL → 'single_choice'）
UPDATE public.questions
  SET question_type = 'single_choice'
  WHERE question_type IS NULL;

-- 後續 NOT NULL + DEFAULT
ALTER TABLE public.questions
  ALTER COLUMN question_type SET DEFAULT 'single_choice';
ALTER TABLE public.questions
  ALTER COLUMN question_type SET NOT NULL;

-- 題型白名單（未來擴充時加白名單即可）
--   single_choice     單選題（沿用 correct_answer INTEGER）
--   multiple_choice   複選題（correct_answer_json = [0,2,3]）
--   true_false        是非題（correct_answer_json = true / false）
--   fill_blank        填空（correct_answer_json = { blanks: [...] }）
--   ordering          排序題（correct_answer_json = [順序陣列]）
--   matching          配對題（correct_answer_json = { pairs: [...] }）
--   stem_shared       共用題幹（自己不出現在題目池，只被子題 parent_question_id 指）
ALTER TABLE public.questions
  DROP CONSTRAINT IF EXISTS questions_question_type_valid;
ALTER TABLE public.questions
  ADD CONSTRAINT questions_question_type_valid
  CHECK (question_type IN (
    'single_choice','multiple_choice','true_false',
    'fill_blank','ordering','matching','stem_shared'
  ));

-- 2) correct_answer_json：單選以外的題型用這個
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS correct_answer_json JSONB;

-- 語意 CHECK：single_choice 可 NULL（用 correct_answer）；其他題型必須填 correct_answer_json
-- stem_shared 本身沒有答案
ALTER TABLE public.questions
  DROP CONSTRAINT IF EXISTS questions_answer_payload_valid;
ALTER TABLE public.questions
  ADD CONSTRAINT questions_answer_payload_valid
  CHECK (
    (question_type = 'single_choice')                              -- 單選：不強制 json
    OR (question_type = 'stem_shared' AND correct_answer_json IS NULL) -- 純題幹無答案
    OR (question_type NOT IN ('single_choice','stem_shared') AND correct_answer_json IS NOT NULL)
  );

-- 3) media：圖片/音檔/影片 URL 陣列
-- 結構例：[{"type":"image","url":"...","alt":"..."},{"type":"audio","url":"..."}]
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS media JSONB;

-- 4) parent_question_id：題組 / 閱讀題的子題指向 parent（共用題幹）
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS parent_question_id TEXT
  REFERENCES public.questions(id) ON DELETE SET NULL;

-- parent 若存在，子題必須是同一個 exam / chapter（反查時方便）— 這個用 trigger 難寫，先靠匯入端保證
-- 索引：題組子題批次載入用 parent_question_id 過濾
CREATE INDEX IF NOT EXISTS idx_questions_parent
  ON public.questions(parent_question_id)
  WHERE parent_question_id IS NOT NULL;

-- 依題型做子集索引，方便之後分 pool 抽題
CREATE INDEX IF NOT EXISTS idx_questions_type_exam
  ON public.questions(exam_id, question_type)
  WHERE is_active;

-- ═══════════════════════════════════════════════════════════════════
-- 驗收 SQL：
--   -- 1) 新欄位已建立
--   SELECT column_name, data_type, is_nullable, column_default
--   FROM information_schema.columns
--   WHERE table_name='questions' AND column_name IN
--     ('question_type','correct_answer_json','media','parent_question_id')
--   ORDER BY column_name;
--   -- 2) 既有題全部 backfill 為 single_choice
--   SELECT question_type, COUNT(*) FROM public.questions GROUP BY 1 ORDER BY 1;
--   -- 預期：single_choice = 全部既有題數
--   -- 3) CHECK 生效測試（應失敗）：
--   -- INSERT INTO public.questions (id,exam_id,question_text,options,correct_answer,question_type)
--   --   VALUES ('_test','osh-a','測試','[]'::jsonb,0,'multiple_choice');
--   --   ^^ 應該被 questions_answer_payload_valid 擋掉（因為 correct_answer_json IS NULL）
-- ═══════════════════════════════════════════════════════════════════
