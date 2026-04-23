# 測試 Cheat Sheet

不用為了測不同等級開一堆帳號——用 SQL 切換你自己帳號的狀態即可。測完記得還原。

**執行方式**：Supabase Studio → SQL Editor，直接貼以下 snippets。把 `<你的 email>` 換掉（或用 user_id）。

---

## 0. 先取得你的 user_id

```sql
SELECT id, email, current_tier,
       trial_started_at, trial_expires_at, trial_questions_used,
       referral_code, referred_by,
       current_subscription_id
  FROM public.profiles
 WHERE email = '<你的 email>';
```

之後的 snippet 預設用 `email = '...'` 當 where。若要對別人操作用 user_id (UUID)。

---

## 1. 切 Tier

### 切成 free（無訂閱）

```sql
UPDATE public.profiles
   SET current_tier = 'free', current_subscription_id = NULL
 WHERE email = '<你的 email>';

UPDATE public.subscriptions
   SET status = 'cancelled'
 WHERE user_id = (SELECT id FROM profiles WHERE email = '<你的 email>')
   AND status = 'active';
```

### 切成 standard 30 天

```sql
WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
INSERT INTO public.subscriptions
  (user_id, tier, status, billing_period, current_period_start, current_period_end,
   auto_renew, payment_gateway)
SELECT u.id, 'standard', 'active', 'monthly',
       NOW(), NOW() + INTERVAL '30 days',
       false, 'ecpay'
  FROM u
RETURNING id;

-- 把 profiles 指向剛建的 subscription
UPDATE public.profiles
   SET current_tier = 'standard',
       current_subscription_id = (
         SELECT id FROM subscriptions
          WHERE user_id = profiles.id AND status = 'active'
          ORDER BY current_period_end DESC LIMIT 1)
 WHERE email = '<你的 email>';
```

### 切成 pro 90 天

同上，只要把 `'standard'` 改 `'pro'`、`'monthly'` 改 `'quarterly'`、`30 days` 改 `90 days`。

### 快速還原成 free

```sql
UPDATE public.subscriptions
   SET status = 'cancelled', cancelled_at = NOW()
 WHERE user_id = (SELECT id FROM profiles WHERE email = '<你的 email>');

UPDATE public.profiles
   SET current_tier = 'free', current_subscription_id = NULL
 WHERE email = '<你的 email>';
```

---

## 2. 試用狀態

### 重新開啟 7 天試用

```sql
UPDATE public.profiles
   SET trial_started_at = NOW(),
       trial_expires_at = NOW() + INTERVAL '7 days',
       trial_questions_used = 0,
       current_tier = 'free',
       current_subscription_id = NULL
 WHERE email = '<你的 email>';
```

### 試用剩 1 天

```sql
UPDATE public.profiles
   SET trial_expires_at = NOW() + INTERVAL '1 day'
 WHERE email = '<你的 email>';
```

### 試用剩 5 題

```sql
UPDATE public.profiles
   SET trial_questions_used = 195
 WHERE email = '<你的 email>';
```

### 試用已過期（時間）

```sql
UPDATE public.profiles
   SET trial_expires_at = NOW() - INTERVAL '1 hour'
 WHERE email = '<你的 email>';
```

### 試用已達題數上限

```sql
UPDATE public.profiles
   SET trial_questions_used = 200
 WHERE email = '<你的 email>';
```

### 完全沒開過試用（模擬 v13 前的舊用戶）

```sql
UPDATE public.profiles
   SET trial_started_at = NULL,
       trial_expires_at = NULL,
       trial_questions_used = NULL
 WHERE email = '<你的 email>';
```

---

## 3. 推薦狀態（v14）

### 看自己是否被推薦 / 推薦了誰

```sql
-- 我被誰推薦
SELECT p.referred_by,
       r.status, r.ref_code, r.created_at, r.rewarded_at, r.reject_reason
  FROM profiles p LEFT JOIN referrals r ON r.referred_id = p.id
 WHERE p.email = '<你的 email>';

-- 我推薦了誰
SELECT r.status, r.created_at, r.rewarded_at,
       pr.email AS referred_email
  FROM referrals r JOIN profiles pr ON pr.id = r.referred_id
 WHERE r.referrer_id = (SELECT id FROM profiles WHERE email = '<你的 email>');
```

### 清掉自己被推薦的紀錄重測

```sql
WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.referrals WHERE referred_id IN (SELECT id FROM u);

UPDATE public.profiles SET referred_by = NULL WHERE email = '<你的 email>';
```

### 模擬「已被推薦但尚未付費」狀態

```sql
-- 先找某個付費推薦人的 referral_code
SELECT id, email, referral_code FROM profiles WHERE current_tier != 'free' LIMIT 5;

-- 以登入 session 呼叫 RPC（Supabase SQL Editor 預設用 service_role，這樣不會觸發 auth.uid）
-- → 用 Postman 或前端呼叫 supabase.rpc('claim_referral', { p_ref_code: 'ABCD1234' })
-- 或直接 INSERT（繞過 RPC 檢查，只建測試狀態）：
INSERT INTO public.referrals (referrer_id, referred_id, ref_code, status)
SELECT
  (SELECT id FROM profiles WHERE referral_code = 'ABCD1234'),
  (SELECT id FROM profiles WHERE email = '<你的 email>'),
  'ABCD1234',
  'registered'
ON CONFLICT (referred_id) DO NOTHING;

UPDATE public.profiles
   SET referred_by = (SELECT id FROM profiles WHERE referral_code = 'ABCD1234')
 WHERE email = '<你的 email>';
```

### 手動發獎（跳過綠界）

```sql
SELECT * FROM public.apply_referral_reward(
  (SELECT id FROM profiles WHERE email = '<被推薦人 email>')::uuid
);
```

注意：`apply_referral_reward` 是 `SECURITY DEFINER` 且**沒 GRANT 給 authenticated**，只能用 service role（= Supabase Studio SQL Editor）呼叫。詳見 [./modules/referral-v14.md](./modules/referral-v14.md)。

---

## 4. 作答紀錄 / 進度灌水

### 灌 50 筆假作答（測試弱點模式 / 進度 UI）

```sql
WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>' LIMIT 1),
     qs AS (SELECT id, exam_id, chapter_id FROM questions
             WHERE exam_id = 'osh-a' AND is_active
             ORDER BY random() LIMIT 50)
INSERT INTO public.question_attempts
  (user_id, question_id, exam_id, chapter_id,
   selected_answer, is_correct, time_spent_seconds, attempted_at)
SELECT u.id, qs.id, qs.exam_id, qs.chapter_id,
       0, (random() < 0.7),          -- 70% 答對
       (10 + random()*30)::int,
       NOW() - (random() * INTERVAL '7 days')
  FROM u, qs;
```

⚠️ 注意：這會觸發 `update_progress_on_attempt` trigger，聚合表會被更新。要乾淨測試先清聚合表。

### 清掉自己的所有作答紀錄 / 聚合

```sql
WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.question_attempts WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.chapter_progress WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.exam_progress WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.user_stats WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.exam_sessions WHERE user_id IN (SELECT id FROM u);
```

### 清自己的收藏

```sql
WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.bookmarks WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM public.exam_bookmarks WHERE user_id IN (SELECT id FROM u);
```

---

## 5. 檢舉 / 回報（v10）

### 看我的回報紀錄

```sql
SELECT q.question_text, r.report_type, r.description, r.status, r.created_at
  FROM question_reports r JOIN questions q ON q.id = r.question_id
 WHERE r.user_id = (SELECT id FROM profiles WHERE email = '<你的 email>')
 ORDER BY r.created_at DESC;
```

### 清我的回報重測

```sql
DELETE FROM public.question_reports
 WHERE user_id = (SELECT id FROM profiles WHERE email = '<你的 email>');
```

---

## 6. 付款測試

### 看最近交易

```sql
SELECT gateway_order_id, status, amount_twd, paid_at, failure_reason
  FROM payment_transactions
 WHERE user_id = (SELECT id FROM profiles WHERE email = '<你的 email>')
 ORDER BY created_at DESC LIMIT 10;
```

### 看所有 webhook 紀錄

```sql
SELECT received_at, source, external_event_id, processed_at
  FROM webhook_events
 WHERE source = 'ecpay'
 ORDER BY received_at DESC LIMIT 20;
```

### 模擬「訂閱剛到期」給 expire cron 測試

```sql
UPDATE public.subscriptions
   SET current_period_end = NOW() - INTERVAL '1 hour'
 WHERE user_id = (SELECT id FROM profiles WHERE email = '<你的 email>')
   AND status = 'active';

-- 手動呼叫 expire cron 的 RPC（視實作而定；或等 03:00 排程）
-- SELECT public.expire_subscriptions();  -- 若有這個 function
```

### ECPay Stage 測試卡

- ✅ 成功：`4311-9522-2222-2222` / 任何未來年月 / 任何 3 碼 CVV
- ❌ 失敗：`4311-9522-2222-2221`

---

## 7. 全部還原：從白紙狀態重開

```sql
-- 先關 subscription、清所有狀態
WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM question_attempts WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM chapter_progress WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM exam_progress WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM user_stats WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM exam_sessions WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM bookmarks WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM exam_bookmarks WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM referrals WHERE referrer_id IN (SELECT id FROM u) OR referred_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
DELETE FROM question_reports WHERE user_id IN (SELECT id FROM u);

WITH u AS (SELECT id FROM profiles WHERE email = '<你的 email>')
UPDATE subscriptions SET status = 'cancelled', cancelled_at = NOW()
 WHERE user_id IN (SELECT id FROM u);

-- 重開試用（當作新用戶）
UPDATE profiles
   SET current_tier = 'free',
       current_subscription_id = NULL,
       referred_by = NULL,
       trial_started_at = NOW(),
       trial_expires_at = NOW() + INTERVAL '7 days',
       trial_questions_used = 0
 WHERE email = '<你的 email>';
```

---

## 8. 常用查詢

### 用戶全貌

```sql
SELECT p.email, p.current_tier,
       p.trial_expires_at,
       p.trial_questions_used,
       p.referred_by IS NOT NULL AS was_referred,
       s.tier AS sub_tier,
       s.current_period_end AS sub_end,
       us.total_questions_answered,
       us.total_correct
  FROM profiles p
  LEFT JOIN subscriptions s ON s.id = p.current_subscription_id
  LEFT JOIN user_stats us ON us.user_id = p.id
 WHERE p.email = '<你的 email>';
```

### 付費用戶清單

```sql
SELECT p.email, p.current_tier, s.billing_period, s.current_period_end
  FROM profiles p JOIN subscriptions s ON s.id = p.current_subscription_id
 WHERE p.current_tier != 'free'
 ORDER BY s.current_period_end;
```

### 最近 7 天註冊

```sql
SELECT email, created_at, current_tier, referred_by IS NOT NULL AS referred
  FROM profiles
 WHERE created_at > NOW() - INTERVAL '7 days'
 ORDER BY created_at DESC;
```

---

## 進階：寫 admin RPC 簡化操作

若上面的 snippet 太繁瑣，可以寫一個只給 service_role 的 helper RPC：

```sql
CREATE OR REPLACE FUNCTION public.admin_set_test_state(
  p_email TEXT,
  p_tier TEXT DEFAULT 'free',                -- 'free' / 'standard' / 'pro'
  p_sub_days_left INT DEFAULT 0,             -- >0 建 active sub
  p_trial_days_left INT DEFAULT NULL,        -- NULL 不動；0 結束試用；>0 設到期
  p_trial_questions_left INT DEFAULT NULL
) RETURNS void
LANGUAGE plpgsql SECURITY DEFINER AS $$
...
$$;

-- 給 service_role 用
REVOKE ALL ON FUNCTION public.admin_set_test_state FROM PUBLIC;
```

目前沒實作。若測試需求變多再補。

---

## 注意事項

1. **SQL Editor 預設用 service_role**——繞過 RLS。測前端行為要用 Postman 或開瀏覽器實測
2. **每次 DELETE 前先用 SELECT 確認範圍**，尤其是對 `email` WHERE 條件
3. **production DB 慎用**：目前還沒很多用戶，但將來大量操作要先 branch / 備份
4. **trigger 會自動連動**：改 `question_attempts` 會觸發聚合更新；若要乾淨測試聚合邏輯先清聚合表
