# 模組：v14 推薦好友 +14 天

## 目的
付費用戶邀請朋友，朋友首次付費後雙方 `current_period_end += 14 天`。留存 + 增長雙用途。

## 目前狀態
✅ Shipped 2026-04-20（commit `d81f7b1`）
⚠️ 端到端未驗證（需 ECPay 審核過才能真金驗證 happy path）

## 核心規則（2026-04-20 Rambo 定案）

1. **邀請資格**：只有付費用戶（`current_tier ∈ ('standard','pro')` 且有 `status='active'` 的 subscription 尚未過期）能發邀請
2. **觸發條件**：被推薦人**首次付費成功**才觸發
3. **獎勵**：雙方 `current_period_end += 14 天`（延長現有訂閱，非新增一筆）
4. **不設冷靜期**：webhook 當下發放
5. **每個被推薦人只能貢獻一次獎勵**（`referrals.referred_id UNIQUE`）
6. **試用用戶不算付費**：既不能發邀請，付費後也算「首次付費」觸發獎勵

## 相關檔案

| 檔案 | 用途 |
|---|---|
| `supabase_schema_v14_referral.sql` | Migration（referrals 表 + 3 RPC + RLS） |
| `index.html` `renderReferralPage()` | `#/referral` 頁 |
| `index.html` user dropdown「💝 邀請好友拿 14 天」 | 入口 |
| `index.html` URL query `?ref={code}` 捕獲 | 落地頁邏輯 |
| `payment/edge_webhook.ts` | 付款成功後呼叫 `apply_referral_reward` |
| `supabase_schema_v13_trial.sql` 裡的 `handle_new_user()` | 註冊時產生 `profiles.referral_code` |

## 資料表

### `profiles`（v14 沿用 v13 欄位）

| 欄位 | 用途 |
|---|---|
| `referral_code TEXT UNIQUE` | 8 字元邀請碼，註冊時 trigger 產生（`UPPER(SUBSTRING(MD5(user_id) FROM 1 FOR 8))`） |
| `referred_by UUID` | 誰推薦我的（FK `auth.users.id`）；`claim_referral` 寫入 |

### `referrals`（v14 新表）

| 欄位 | 用途 |
|---|---|
| `id UUID PK` | — |
| `referrer_id UUID FK auth.users` | 推薦人 |
| `referred_id UUID FK auth.users UNIQUE` | 被推薦人（只能被推一次） |
| `ref_code TEXT` | 記當下的碼，即使推薦人之後改碼也能追溯 |
| `status` | `registered` / `rewarded` / `rejected` |
| `reject_reason` | 例如 `referrer_lost_paid_status`、`referred_has_no_active_sub` |
| `created_at` | 綁定時間（claim_referral 呼叫時） |
| `rewarded_at` | 發獎時間（apply_referral_reward 成功時） |

**CHECK constraints**：
- `no_self_referral`：`referrer_id <> referred_id`
- status ∈ `('registered','rewarded','rejected')`

**RLS**：
- SELECT policy：`referrer_id = auth.uid() OR referred_id = auth.uid()`
- INSERT/UPDATE/DELETE 全擋（只能透過 SECURITY DEFINER RPC）

## RPCs

### `claim_referral(p_ref_code TEXT)` — 註冊時綁定

**Caller**：前端（authenticated）
**Security**：`SECURITY DEFINER`, GRANT TO authenticated

**邏輯**：
1. 找 `profiles.referral_code = UPPER(TRIM(p_ref_code))` → 得 `referrer_id`, `referrer_tier`, `referrer_name`
2. 若找不到 → return `(false, 'invalid_code')`
3. 若 `referrer_id = auth.uid()` → return `(false, 'self_referral')`
4. 若 `referrer_tier NOT IN ('standard','pro')` → return `(false, 'referrer_not_paid')`
5. 若推薦人沒有 active subscription → return `(false, 'referrer_not_paid')`
6. 若 `referrals.referred_id = auth.uid()` 已存在 → return `(false, 'already_referred')`
7. INSERT referrals (status='registered')
8. UPDATE profiles SET referred_by = referrer_id WHERE id = auth.uid()
9. return `(true, 'claimed', referrer_name)`

### `apply_referral_reward(p_referred_user UUID)` — 付款時發獎

**Caller**：Edge Function `webhook-ecpay`（service role）
**Security**：`SECURITY DEFINER`，**不 GRANT 給 authenticated**

**邏輯**：
1. SELECT referrals WHERE `referred_id = p_referred_user AND status = 'registered'` → 得 `ref_row`
2. 若無 → return `(false, 'no_pending_referral')`
3. 再次檢查推薦人仍是付費 active → 若否則 UPDATE referrals SET status='rejected', reject_reason='referrer_lost_paid_status' → return `(false, ...)`
4. 延長推薦人最晚到期的 active sub（`ORDER BY current_period_end DESC LIMIT 1`）+14 天；累計到 `meta->referral_bonus_days`
5. 延長被推薦人剛建立的 active sub +14 天；`ORDER BY created_at DESC LIMIT 1`
6. 若被推薦人沒 active sub（理論上不該發生，因 webhook 剛建完才呼叫）→ 只給推薦人、status='rejected'、`reject_reason='referred_has_no_active_sub'`
7. UPDATE referrals SET status='rewarded', rewarded_at=NOW()
8. return `(true, 'rewarded', referrer_id, 14)`

### `get_my_referral_stats()` — 推薦頁顯示用

**Caller**：前端（authenticated）
**Return**：

```
(referral_code, total_invited, total_rewarded, total_bonus_days, recent_list)
```

`recent_list` 是最近 20 筆 jsonb array，每筆包含：
- `nickname` — 被推薦人暱稱首字 + `**`（SQL 層遮罩）
- `status`
- `created_at`
- `rewarded_at`

## 端到端流程

```
[A 是付費 Pro 用戶]
1. A 開 #/referral → 看到自己的 referral_code（例如 "AB12CD34"）
   → 複製「https://kaonow.com/?ref=AB12CD34」給 B

[B 第一次來]
2. B 開連結 → 前端抓到 ?ref=AB12CD34 → 存 localStorage
3. B 註冊（Magic Link 或 Google）→ auth.users insert trigger 建 profile
4. 登入完成後，前端看 localStorage 有 ref → 呼叫 claim_referral('AB12CD34')
   → referrals 寫 (A, B, 'AB12CD34', 'registered')
   → profiles.referred_by = A.id
   → UI 顯示「邀請碼已綁定，首次付費後雙方各 +14 天」

[B 付款]
5. B 點升級 → 綠界付款 → webhook-ecpay 收到
6. webhook 建 subscription for B, UPDATE profiles.current_tier='pro'
7. webhook 呼叫 apply_referral_reward(B.id)
   → referrals status='rewarded', rewarded_at=now
   → A 的 active sub.current_period_end += 14d
   → B 剛建的 sub.current_period_end += 14d
8. webhook 回 '1|OK' 給綠界

[A 下次進 #/referral]
9. get_my_referral_stats → total_rewarded +1, total_bonus_days +14
```

## Gating 行為（非付費用戶進 #/referral）

- 不顯示 referral_code（保密避免非付費用戶刷碼）
- 顯示「升級後就能邀請好友 → 查看方案 →」CTA

## 改這個模組時的地雷

- **`claim_referral` 跟 `apply_referral_reward` 都要雙重檢查推薦人付費狀態**，因為時間差間可能訂閱過期
- **`referrals.referred_id UNIQUE`** 是最後一道防線，即使 claim_referral 被平行呼叫兩次也擋得下
- **webhook 內呼叫順序**：先建 subscription，再呼叫 `apply_referral_reward`，否則 RPC 找不到被推薦人的 active sub
- **referral_code 大小寫不敏感**：`claim_referral` 會 `UPPER(TRIM())`；前端驗證時也要一致
- **隱私遮罩**：`get_my_referral_stats` 的 `recent_list` 只顯示暱稱首字+`**`，不洩漏 email，修改要維持這個原則
- **延長邏輯用 `ORDER BY current_period_end DESC LIMIT 1`**：用戶可能同時有多個 active sub（理論上不該，但保守處理），延最晚到期那筆
- **付費用戶失去資格的時間差**：若推薦人訂閱到期但 cron 尚未 run，`claim_referral` 會因 `current_tier` 還沒降級而誤判；但 `apply_referral_reward` 有再檢查 active sub，所以最終不會誤發獎

## 驗證 / 快速檢查

### 確認表與 RPC 到位

```sql
SELECT 'ref_table' AS what, count(*)::text FROM information_schema.tables
 WHERE table_schema='public' AND table_name='referrals'
UNION ALL
SELECT 'ref_rpcs', count(*)::text FROM pg_proc
 WHERE pronamespace='public'::regnamespace
   AND proname IN ('claim_referral','apply_referral_reward','get_my_referral_stats');
-- 期待: ref_table=1, ref_rpcs=3
```

### 測試 claim（以登入 session）

```sql
SELECT * FROM public.claim_referral('AB12CD34');
-- 預期錯誤：invalid_code / self_referral / referrer_not_paid / already_referred / claimed
```

### 以 service role 模擬發獎

```sql
SELECT * FROM public.apply_referral_reward('<uuid of referred user>');
```

### 看推薦成效

```sql
SELECT status, count(*) FROM referrals GROUP BY status;
-- registered: 尚未付費 / rewarded: 已發獎 / rejected: 失效
```

## 待辦 / 延伸

- [ ] 付費用戶進入 #/referral 時的實際 UI 驗證
- [ ] 成功推薦的通知信（「你的朋友 B 註冊了」、「你們都拿到 14 天」）
- [ ] 反刷：同 IP / device fingerprint 偵測（目前只靠「必須付費」門檻擋）
- [ ] 推薦碼客製（讓用戶改成好記的 `RAMBO14`）
