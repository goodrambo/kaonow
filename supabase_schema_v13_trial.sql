-- ═══════════════════════════════════════════════════════════════════
-- v13: 新用戶 7 天 Pro 試用 + 200 題額度
--
-- 設計原則：
--   試用狀態採「覆蓋式」疊加在既有 tier 系統上，不動 current_tier 的
--   CHECK constraint，也不建 'trial' 這個新 tier，避免原本訂閱/付款
--   邏輯需要同步改。
--
--   判斷流程（前端）：
--     1. 若 current_tier 為 'pro' 或 'standard'（已付費）→ 回該 tier
--     2. 否則若 trial_expires_at > now() AND trial_questions_used < 200
--        → 前端視為 effective tier = 'pro'（帶 isTrial 旗標）
--     3. 否則 → 回 'free'
--
--   試用不影響 subscriptions 表，也不建立 payment_transactions 紀錄。
--   付費成功後，試用欄位仍保留但不再被判斷（付費 tier 優先）。
--
-- 適用對象：
--   只對新註冊用戶生效。現有 free 用戶不補發（沿用 Rambo 定案）。
--
-- 執行順序：
--   1. ALTER TABLE 加欄位
--   2. 改 handle_new_user() trigger 讓新用戶自動設 trial_expires_at = now()+7d
--   3. 建 RPC increment_trial_question() 供前端原子遞增計數
--   4. RLS policy 讓用戶讀取自己的試用欄位
-- ═══════════════════════════════════════════════════════════════════

-- ── 1. 加欄位 ───────────────────────────────────────────────────────
ALTER TABLE public.profiles
  ADD COLUMN IF NOT EXISTS trial_started_at     TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS trial_expires_at     TIMESTAMPTZ,
  ADD COLUMN IF NOT EXISTS trial_questions_used INTEGER DEFAULT 0 NOT NULL;

-- 常用索引：篩選試用中用戶（之後做提醒 email 會用到）
CREATE INDEX IF NOT EXISTS idx_profiles_trial_expires
  ON public.profiles(trial_expires_at)
  WHERE trial_expires_at IS NOT NULL;

COMMENT ON COLUMN public.profiles.trial_started_at
  IS '新用戶試用開始時間（NULL 表示未開通試用，例如 v13 migration 前建立的舊用戶）';
COMMENT ON COLUMN public.profiles.trial_expires_at
  IS '試用到期時間（trial_started_at + 7 days）。NULL 或 < now() 皆視為試用結束。';
COMMENT ON COLUMN public.profiles.trial_questions_used
  IS '試用期間已作答題數累積（不區分模式），達 200 視為額度用完，即使 trial_expires_at 未到也會結束試用。';

-- ── 2. 改 handle_new_user() trigger ─────────────────────────────────
-- 新用戶建立時，自動開通 7 天試用
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
DECLARE new_referral TEXT;
BEGIN
  -- 產生 8 字符邀請碼
  new_referral := UPPER(SUBSTRING(MD5(NEW.id::TEXT) FROM 1 FOR 8));

  INSERT INTO public.profiles (
    id, display_name, email, avatar_url, referral_code,
    trial_started_at, trial_expires_at, trial_questions_used
  )
  VALUES (
    NEW.id,
    COALESCE(
      NEW.raw_user_meta_data->>'full_name',
      NEW.raw_user_meta_data->>'name',
      split_part(NEW.email, '@', 1)
    ),
    NEW.email,
    NEW.raw_user_meta_data->>'avatar_url',
    new_referral,
    NOW(),
    NOW() + INTERVAL '7 days',
    0
  ) ON CONFLICT (id) DO NOTHING;

  INSERT INTO public.user_stats (user_id) VALUES (NEW.id) ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- ── 3. 原子遞增 trial_questions_used 的 RPC ──────────────────────────
-- 前端每答一題呼叫一次，避免 read-modify-write race condition
CREATE OR REPLACE FUNCTION public.increment_trial_question(p_count INTEGER DEFAULT 1)
RETURNS TABLE (
  trial_questions_used INTEGER,
  trial_expires_at     TIMESTAMPTZ,
  still_in_trial       BOOLEAN
) AS $$
DECLARE
  v_used    INTEGER;
  v_expires TIMESTAMPTZ;
BEGIN
  UPDATE public.profiles
     SET trial_questions_used = trial_questions_used + GREATEST(p_count, 0)
   WHERE id = auth.uid()
     AND trial_expires_at IS NOT NULL
     AND trial_expires_at > NOW()
     AND current_tier = 'free'  -- 付費用戶不遞增
   RETURNING trial_questions_used, trial_expires_at
     INTO v_used, v_expires;

  IF NOT FOUND THEN
    -- 使用者不在試用中（沒試用 / 已過期 / 已付費），直接回現況
    SELECT p.trial_questions_used, p.trial_expires_at
      INTO v_used, v_expires
      FROM public.profiles p
     WHERE p.id = auth.uid();
  END IF;

  RETURN QUERY SELECT
    COALESCE(v_used, 0),
    v_expires,
    (v_expires IS NOT NULL
     AND v_expires > NOW()
     AND COALESCE(v_used, 0) < 200);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

REVOKE ALL ON FUNCTION public.increment_trial_question(INTEGER) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.increment_trial_question(INTEGER) TO authenticated;

-- ── 4. RLS policy 確認 ──────────────────────────────────────────────
-- profiles 原本的 own_select policy 已能讓用戶讀自己的欄位（含新加的 trial 欄位）
-- 不需新增 policy；但確認用戶不能直接 UPDATE trial_questions_used（避免作弊）
-- 原本 profiles 的 UPDATE policy 若允許用戶改自己的 row，需限制欄位。
-- 這裡用 Column-level privileges（Postgres 14+）處理：

REVOKE UPDATE (trial_started_at, trial_expires_at, trial_questions_used)
  ON public.profiles
  FROM authenticated;

-- RPC（SECURITY DEFINER）還是能改，所以計數遞增仍可運作。

-- ═══════════════════════════════════════════════════════════════════
-- 驗證查詢
-- ═══════════════════════════════════════════════════════════════════
--
-- 1. 檢查欄位加上：
--    SELECT column_name, data_type, column_default
--      FROM information_schema.columns
--     WHERE table_schema = 'public' AND table_name = 'profiles'
--       AND column_name LIKE 'trial%';
--
-- 2. 檢查新用戶 trigger：用測試帳號註冊後
--    SELECT id, email, trial_started_at, trial_expires_at, trial_questions_used
--      FROM public.profiles ORDER BY created_at DESC LIMIT 1;
--    → 應顯示 trial_started_at = 現在、trial_expires_at = 7 天後、used = 0
--
-- 3. 測試 RPC：以已登入 session 呼叫
--    SELECT * FROM public.increment_trial_question(1);
--    → 回 trial_questions_used + 1、still_in_trial = true（若仍在試用）
-- ═══════════════════════════════════════════════════════════════════
