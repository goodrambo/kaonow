-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v7 — 考試收藏（exam_bookmarks）
--
-- v1 的 bookmarks 表是收藏題目（question_id）。這張表用來收藏「考試」，
-- 方便用戶在首頁/catalog 看到自己關注的考試清單，快速進入。
-- ═══════════════════════════════════════════════════════════════════

BEGIN;

CREATE TABLE IF NOT EXISTS public.exam_bookmarks (
  id          UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id     UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  exam_id     TEXT REFERENCES public.exams(id) ON DELETE CASCADE NOT NULL,
  note        TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, exam_id)
);

CREATE INDEX IF NOT EXISTS idx_exam_bookmarks_user ON public.exam_bookmarks(user_id);
CREATE INDEX IF NOT EXISTS idx_exam_bookmarks_exam ON public.exam_bookmarks(exam_id);

-- RLS：用戶只能看/寫自己的收藏
ALTER TABLE public.exam_bookmarks ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS exam_bookmarks_self_select ON public.exam_bookmarks;
CREATE POLICY exam_bookmarks_self_select ON public.exam_bookmarks
  FOR SELECT USING (auth.uid() = user_id);

DROP POLICY IF EXISTS exam_bookmarks_self_insert ON public.exam_bookmarks;
CREATE POLICY exam_bookmarks_self_insert ON public.exam_bookmarks
  FOR INSERT WITH CHECK (auth.uid() = user_id);

DROP POLICY IF EXISTS exam_bookmarks_self_delete ON public.exam_bookmarks;
CREATE POLICY exam_bookmarks_self_delete ON public.exam_bookmarks
  FOR DELETE USING (auth.uid() = user_id);

DROP POLICY IF EXISTS exam_bookmarks_self_update ON public.exam_bookmarks;
CREATE POLICY exam_bookmarks_self_update ON public.exam_bookmarks
  FOR UPDATE USING (auth.uid() = user_id);

COMMIT;

-- 驗證：
--   SELECT COUNT(*) FROM public.exam_bookmarks;
