-- ═══════════════════════════════════════════════════════════════════
-- v14: 推薦好友 referral 機制
--
-- 規則（Rambo 2026-04-20 定案）：
--   - 只有正式付費（standard / pro，subscriptions.status='active'）用戶能推薦
--   - 被推薦人必須首次付費成功才觸發獎勵
--   - 雙方 current_period_end += 14 天（延長現有訂閱）
--   - 不設冷靜期，付款當下 webhook 直接發放
--   - 每個被推薦人只能貢獻一次獎勵（unique(referred_id)）
--   - 試用用戶（isTrial）不算付費，不能產生有效推薦
--
-- 用到的既有欄位：
--   profiles.referral_code TEXT UNIQUE  -- 註冊時 trigger 已自動產生
--   profiles.referred_by   UUID         -- 由 claim_referral RPC 寫入
--
-- ═══════════════════════════════════════════════════════════════════

-- ── 1. referrals 表 ────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.referrals (
  id             UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  referrer_id    UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  referred_id    UUID NOT NULL UNIQUE REFERENCES auth.users(id) ON DELETE CASCADE,
  ref_code       TEXT NOT NULL,  -- 記錄當下的邀請碼，萬一之後改 code 也能追溯
  status         TEXT NOT NULL DEFAULT 'registered'
                   CHECK (status IN ('registered','rewarded','rejected')),
  reject_reason  TEXT,
  created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  rewarded_at    TIMESTAMPTZ,
  CONSTRAINT no_self_referral CHECK (referrer_id <> referred_id)
);

CREATE INDEX IF NOT EXISTS idx_referrals_referrer ON public.referrals(referrer_id);
CREATE INDEX IF NOT EXISTS idx_referrals_status   ON public.referrals(status);

COMMENT ON TABLE  public.referrals IS '推薦關係記錄：referred_id 被 referrer_id 推薦註冊，status 流程為 registered → rewarded（成功付費觸發）或 rejected（無效推薦）';
COMMENT ON COLUMN public.referrals.status IS 'registered: 註冊成立但未付費; rewarded: 已付費且雙方已各得 14 天; rejected: 推薦人失去付費資格或 code 無效';

-- ── 2. claim_referral(ref_code) RPC ─────────────────────────────────
-- 新用戶註冊流程：前端呼叫此 RPC 告訴後端「我是透過 ref_code 來的」
-- 後端驗證：
--   (a) ref_code 存在
--   (b) 推薦人為正式付費（current_tier in ('standard','pro') 且有 active subscription）
--   (c) 被推薦人（auth.uid()）不是自己
--   (d) 被推薦人尚未有 referrals row（只能被推一次）
-- 通過則建立 referrals row (status='registered') 並寫 profiles.referred_by
CREATE OR REPLACE FUNCTION public.claim_referral(p_ref_code TEXT)
RETURNS TABLE (
  ok            BOOLEAN,
  reason        TEXT,
  referrer_name TEXT
) AS $$
DECLARE
  v_referrer_id  UUID;
  v_referrer_tier TEXT;
  v_has_active   BOOLEAN;
  v_referrer_name TEXT;
BEGIN
  -- 1. 找到邀請碼對應的推薦人
  SELECT id, current_tier, display_name
    INTO v_referrer_id, v_referrer_tier, v_referrer_name
    FROM public.profiles
   WHERE referral_code = UPPER(TRIM(p_ref_code))
   LIMIT 1;

  IF v_referrer_id IS NULL THEN
    RETURN QUERY SELECT FALSE, 'invalid_code'::TEXT, NULL::TEXT;
    RETURN;
  END IF;

  -- 2. 不能推自己
  IF v_referrer_id = auth.uid() THEN
    RETURN QUERY SELECT FALSE, 'self_referral'::TEXT, NULL::TEXT;
    RETURN;
  END IF;

  -- 3. 推薦人必須為付費 tier
  IF v_referrer_tier NOT IN ('standard', 'pro') THEN
    RETURN QUERY SELECT FALSE, 'referrer_not_paid'::TEXT, NULL::TEXT;
    RETURN;
  END IF;

  -- 4. 推薦人必須有 active subscription（避免訂閱過期的人還能推）
  SELECT EXISTS(
    SELECT 1 FROM public.subscriptions
     WHERE user_id = v_referrer_id
       AND status = 'active'
       AND current_period_end > NOW()
  ) INTO v_has_active;
  IF NOT v_has_active THEN
    RETURN QUERY SELECT FALSE, 'referrer_not_paid'::TEXT, NULL::TEXT;
    RETURN;
  END IF;

  -- 5. 被推薦人只能被推一次（unique constraint 也會擋，這邊先回友善錯誤）
  IF EXISTS(SELECT 1 FROM public.referrals WHERE referred_id = auth.uid()) THEN
    RETURN QUERY SELECT FALSE, 'already_referred'::TEXT, NULL::TEXT;
    RETURN;
  END IF;

  -- 6. 建立推薦關係
  INSERT INTO public.referrals (referrer_id, referred_id, ref_code, status)
  VALUES (v_referrer_id, auth.uid(), UPPER(TRIM(p_ref_code)), 'registered');

  UPDATE public.profiles
     SET referred_by = v_referrer_id
   WHERE id = auth.uid();

  RETURN QUERY SELECT TRUE, 'claimed'::TEXT, v_referrer_name;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

REVOKE ALL ON FUNCTION public.claim_referral(TEXT) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.claim_referral(TEXT) TO authenticated;

-- ── 3. apply_referral_reward(p_referred_user) RPC ───────────────────
-- 由 webhook 在首次付款成功後呼叫
-- 檢查：
--   (a) 該用戶有 referrals row，status='registered'
--   (b) 這是該用戶首次成功付款（避免續訂重複發獎）— 用 referrals.status 即可保證
--   (c) 推薦人目前仍是付費狀態（避免推薦人訂閱過期還能收獎）
-- 動作：
--   - 延長雙方目前 active 訂閱各 14 天
--   - referrals 改 status='rewarded'
CREATE OR REPLACE FUNCTION public.apply_referral_reward(p_referred_user UUID)
RETURNS TABLE (
  ok            BOOLEAN,
  reason        TEXT,
  referrer_id   UUID,
  bonus_days    INTEGER
) AS $$
DECLARE
  v_ref_row      public.referrals%ROWTYPE;
  v_referrer_sub public.subscriptions%ROWTYPE;
  v_referred_sub public.subscriptions%ROWTYPE;
  v_referrer_has BOOLEAN;
  BONUS_DAYS CONSTANT INTEGER := 14;
BEGIN
  -- 1. 找到該用戶的 referrals row
  SELECT * INTO v_ref_row
    FROM public.referrals
   WHERE referred_id = p_referred_user
     AND status = 'registered'
   LIMIT 1;

  IF v_ref_row IS NULL THEN
    RETURN QUERY SELECT FALSE, 'no_pending_referral'::TEXT, NULL::UUID, 0;
    RETURN;
  END IF;

  -- 2. 推薦人目前仍是付費狀態（active subscription 且未過期）
  SELECT EXISTS(
    SELECT 1 FROM public.subscriptions
     WHERE user_id = v_ref_row.referrer_id
       AND status = 'active'
       AND current_period_end > NOW()
  ) INTO v_referrer_has;

  IF NOT v_referrer_has THEN
    UPDATE public.referrals
       SET status = 'rejected', reject_reason = 'referrer_lost_paid_status'
     WHERE id = v_ref_row.id;
    RETURN QUERY SELECT FALSE, 'referrer_lost_paid_status'::TEXT, v_ref_row.referrer_id, 0;
    RETURN;
  END IF;

  -- 3. 延長推薦人最晚到期的 active 訂閱
  --    （用戶可能同時有多個訂閱，保守取 current_period_end 最大者）
  SELECT * INTO v_referrer_sub
    FROM public.subscriptions
   WHERE user_id = v_ref_row.referrer_id
     AND status = 'active'
     AND current_period_end > NOW()
   ORDER BY current_period_end DESC
   LIMIT 1;

  UPDATE public.subscriptions
     SET current_period_end = current_period_end + (BONUS_DAYS || ' days')::INTERVAL,
         meta = COALESCE(meta, '{}'::JSONB) || jsonb_build_object(
           'referral_bonus_days',
           COALESCE((meta->>'referral_bonus_days')::INTEGER, 0) + BONUS_DAYS
         )
   WHERE id = v_referrer_sub.id;

  -- 4. 延長被推薦人剛建立的 active 訂閱
  SELECT * INTO v_referred_sub
    FROM public.subscriptions
   WHERE user_id = p_referred_user
     AND status = 'active'
     AND current_period_end > NOW()
   ORDER BY created_at DESC
   LIMIT 1;

  IF v_referred_sub.id IS NULL THEN
    -- 被推薦人竟然沒有 active sub —— 這應該不會發生，因為 webhook 剛建完才會叫這個
    -- 不擋流程，把 referrer 的獎已給了，log 原因即可
    UPDATE public.referrals
       SET status = 'rejected', reject_reason = 'referred_has_no_active_sub'
     WHERE id = v_ref_row.id;
    RETURN QUERY SELECT FALSE, 'referred_has_no_active_sub'::TEXT, v_ref_row.referrer_id, BONUS_DAYS;
    RETURN;
  END IF;

  UPDATE public.subscriptions
     SET current_period_end = current_period_end + (BONUS_DAYS || ' days')::INTERVAL,
         meta = COALESCE(meta, '{}'::JSONB) || jsonb_build_object(
           'referral_bonus_days',
           COALESCE((meta->>'referral_bonus_days')::INTEGER, 0) + BONUS_DAYS
         )
   WHERE id = v_referred_sub.id;

  -- 5. referrals 標記 rewarded
  UPDATE public.referrals
     SET status = 'rewarded', rewarded_at = NOW()
   WHERE id = v_ref_row.id;

  RETURN QUERY SELECT TRUE, 'rewarded'::TEXT, v_ref_row.referrer_id, BONUS_DAYS;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

REVOKE ALL ON FUNCTION public.apply_referral_reward(UUID) FROM PUBLIC;
-- 只有 service role（webhook）能呼叫。不 GRANT 給 authenticated。

-- ── 4. 讀取用戶自己的推薦戰績（給 referral 頁面用）──────────────────
-- 回傳：stats + 最近 20 筆推薦列表
CREATE OR REPLACE FUNCTION public.get_my_referral_stats()
RETURNS TABLE (
  referral_code    TEXT,
  total_invited    INTEGER,
  total_rewarded   INTEGER,
  total_bonus_days INTEGER,
  recent_list      JSONB
) AS $$
DECLARE
  v_code TEXT;
  v_total INTEGER;
  v_rewarded INTEGER;
  v_list JSONB;
BEGIN
  SELECT p.referral_code INTO v_code
    FROM public.profiles p WHERE p.id = auth.uid();

  SELECT COUNT(*) INTO v_total
    FROM public.referrals WHERE referrer_id = auth.uid();

  SELECT COUNT(*) INTO v_rewarded
    FROM public.referrals WHERE referrer_id = auth.uid() AND status = 'rewarded';

  -- 最近 20 筆（不洩漏被推薦人 email，只顯示暱稱首字 + 建立日）
  SELECT COALESCE(jsonb_agg(item ORDER BY item->>'created_at' DESC), '[]'::jsonb) INTO v_list
    FROM (
      SELECT jsonb_build_object(
        'nickname',   COALESCE(LEFT(p.display_name, 1) || '**', '新朋友'),
        'status',     r.status,
        'created_at', r.created_at,
        'rewarded_at', r.rewarded_at
      ) AS item
      FROM public.referrals r
      LEFT JOIN public.profiles p ON p.id = r.referred_id
      WHERE r.referrer_id = auth.uid()
      ORDER BY r.created_at DESC
      LIMIT 20
    ) x;

  RETURN QUERY SELECT
    v_code,
    COALESCE(v_total, 0),
    COALESCE(v_rewarded, 0),
    COALESCE(v_rewarded * 14, 0),  -- 每次成功推薦拿 14 天
    COALESCE(v_list, '[]'::jsonb);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

REVOKE ALL ON FUNCTION public.get_my_referral_stats() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_my_referral_stats() TO authenticated;

-- ── 5. RLS on referrals table ───────────────────────────────────────
ALTER TABLE public.referrals ENABLE ROW LEVEL SECURITY;

-- 用戶可看自己作為推薦人的紀錄（頁面用）或自己作為被推薦人的紀錄
DROP POLICY IF EXISTS own_select ON public.referrals;
CREATE POLICY own_select ON public.referrals
  FOR SELECT
  USING (auth.uid() = referrer_id OR auth.uid() = referred_id);

-- 用戶不能直接 INSERT / UPDATE / DELETE（只能透過 RPC，SECURITY DEFINER）
-- 不建 policy 即等於擋掉

-- ═══════════════════════════════════════════════════════════════════
-- 驗證查詢
-- ═══════════════════════════════════════════════════════════════════
--
-- 1. 檢查表建立：
--    SELECT column_name, data_type FROM information_schema.columns
--    WHERE table_schema='public' AND table_name='referrals';
--
-- 2. 測試 claim_referral（以登入用戶身分）：
--    SELECT * FROM public.claim_referral('ABC12345');
--
-- 3. 測試 get_my_referral_stats：
--    SELECT * FROM public.get_my_referral_stats();
--
-- 4. 模擬 apply_referral_reward（需以 service role 執行）：
--    SELECT * FROM public.apply_referral_reward('<some uuid>');
-- ═══════════════════════════════════════════════════════════════════
