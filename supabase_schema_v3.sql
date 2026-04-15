-- ════════════════════════════════════════════════════════════════════
-- KaoNow Schema v3 — 模擬考試設定欄位
-- ════════════════════════════════════════════════════════════════════
-- 為每個考試定義「正式考試」的規則：題數、時限、及格分數
-- 這些數字會被前端用於模擬考倒數計時 + 及格判定
-- ════════════════════════════════════════════════════════════════════

ALTER TABLE public.exams
  ADD COLUMN IF NOT EXISTS mock_question_count INTEGER;
ALTER TABLE public.exams
  ADD COLUMN IF NOT EXISTS mock_time_minutes INTEGER;
ALTER TABLE public.exams
  ADD COLUMN IF NOT EXISTS mock_pass_score INTEGER DEFAULT 60;

-- ── 預設值：目前上線的考試 ─────────────────────────────────────
-- 數值來源：各官方考試規則

UPDATE public.exams SET
  mock_question_count = 40,
  mock_time_minutes   = 60,
  mock_pass_score     = 80
WHERE id = 'osh-a';
-- 甲種職安衛：40題、60分鐘、80分及格（依主要訓練機構實測標準）

-- ── 預設值：尚未開放的考試（預先設好，避免將來忘記） ──────────

UPDATE public.exams SET mock_question_count=40, mock_time_minutes=60, mock_pass_score=80
  WHERE id IN ('osh-b','osh-c');
UPDATE public.exams SET mock_question_count=50, mock_time_minutes=60, mock_pass_score=60
  WHERE id = 'ai-planner';

-- 技術士學科：通常 80 題 100 分鐘，60 分及格
UPDATE public.exams SET mock_question_count=80, mock_time_minutes=100, mock_pass_score=60
  WHERE category_id = 'tech-cert';

-- TOEIC：200 題 120 分鐘，無固定「及格」分，預設 550
UPDATE public.exams SET mock_question_count=200, mock_time_minutes=120, mock_pass_score=550
  WHERE id = 'toeic';

-- GEPT 中高級：題數依等級變動，預設中級
UPDATE public.exams SET mock_question_count=45, mock_time_minutes=45, mock_pass_score=80
  WHERE id = 'gept';

-- 高普考：時間多、題目少，採混合題型，這裡以客觀題估
UPDATE public.exams SET mock_question_count=50, mock_time_minutes=90, mock_pass_score=60
  WHERE category_id = 'civil';

-- ═══════════════════════════════════════════════════════════════════
-- 完成！各考試現在都有自己的模擬考規則
-- ═══════════════════════════════════════════════════════════════════
