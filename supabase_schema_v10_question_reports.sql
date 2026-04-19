-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v10 — 題目回報表（question_reports）
-- 2026-04-20
-- ═══════════════════════════════════════════════════════════════════
-- 背景：
--   P1.2 — ECPay 正式開賣前，讓用戶能在作答時反映題目問題：
--   答案錯、題目不清楚、或其他。收集後由站方在 Supabase SQL 手動檢閱。
--
-- 設計原則：
--   - 欄位極簡，MVP 階段不做通知、沒 admin UI，只讓資料進得來
--   - RLS：登入用戶 insert 自己的、read 自己的；其餘 service_role 處理
--   - 三種 type：wrong_answer / unclear / other，不做子分類
--   - question_id 不設 ON DELETE CASCADE：就算題目被下架 / 刪除，
--     我們還想保留回報紀錄看原始 payload（question_snapshot）
--
-- 冪等：整支檔案可重複執行（CREATE TABLE IF NOT EXISTS、policy 先 DROP）
-- ═══════════════════════════════════════════════════════════════════

-- 1) 表本體
CREATE TABLE IF NOT EXISTS public.question_reports (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  question_id      TEXT NOT NULL REFERENCES public.questions(id) ON DELETE SET NULL,
  user_id          UUID NOT NULL REFERENCES auth.users(id) ON DELETE SET NULL,
  report_type      TEXT NOT NULL CHECK (report_type IN ('wrong_answer','unclear','other')),
  description      TEXT,                              -- 用戶補充說明（選填，MAX 500）
  question_snapshot JSONB,                            -- 當下題目/選項/correct_answer 的快照，避免改題後對不上
  status           TEXT NOT NULL DEFAULT 'open'       -- open / reviewing / resolved / dismissed
                        CHECK (status IN ('open','reviewing','resolved','dismissed')),
  admin_note       TEXT,                              -- 內部備註，僅 service_role 可寫
  created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- description 長度保護：超過 500 一律截斷
-- （前端已限制，後端 CHECK 是第二道保險）
ALTER TABLE public.question_reports
  DROP CONSTRAINT IF EXISTS question_reports_description_len;
ALTER TABLE public.question_reports
  ADD CONSTRAINT question_reports_description_len
  CHECK (description IS NULL OR char_length(description) <= 500);

-- 2) 索引：站方審視時常用 question_id 或 status 過濾
CREATE INDEX IF NOT EXISTS idx_qreports_question ON public.question_reports(question_id);
CREATE INDEX IF NOT EXISTS idx_qreports_status   ON public.question_reports(status) WHERE status = 'open';
CREATE INDEX IF NOT EXISTS idx_qreports_user     ON public.question_reports(user_id, created_at DESC);

-- 3) updated_at 自動更新 trigger（沿用現有 set_updated_at）
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_trigger WHERE tgname = 'trg_qreports_updated'
  ) THEN
    CREATE TRIGGER trg_qreports_updated
      BEFORE UPDATE ON public.question_reports
      FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
  END IF;
END $$;

-- 4) RLS
ALTER TABLE public.question_reports ENABLE ROW LEVEL SECURITY;

-- 4a) 登入用戶可 insert 自己的（user_id 必須等於 auth.uid）
DROP POLICY IF EXISTS "qreports_user_insert" ON public.question_reports;
CREATE POLICY "qreports_user_insert" ON public.question_reports
  FOR INSERT TO authenticated
  WITH CHECK (user_id = auth.uid());

-- 4b) 登入用戶可 read 自己的（方便前端顯示「你已回報過此題」）
DROP POLICY IF EXISTS "qreports_user_read_own" ON public.question_reports;
CREATE POLICY "qreports_user_read_own" ON public.question_reports
  FOR SELECT TO authenticated
  USING (user_id = auth.uid());

-- 4c) 不開放 anon / 普通用戶 update/delete；admin 用 service_role key 從 Supabase Studio 操作
-- （刻意不寫 policy → 自然被 RLS 擋掉）

-- ═══════════════════════════════════════════════════════════════════
-- 驗收 SQL（可在 Supabase SQL Editor 跑確認）：
--   SELECT table_name FROM information_schema.tables WHERE table_name='question_reports';
--   SELECT policyname FROM pg_policies WHERE tablename='question_reports';
--   -- 用一般 anon 跑以下應失敗：
--   -- INSERT INTO public.question_reports (question_id, user_id, report_type) VALUES ('osh-a-ch0-001', gen_random_uuid(), 'wrong_answer');
-- ═══════════════════════════════════════════════════════════════════
