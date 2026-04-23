# 模組：v13 新用戶 7 天 Pro 試用

## 目的
新註冊用戶自動獲得 7 天 Pro 等級 + 200 題額度（二者先到先結束），不需綁信用卡、不進 subscriptions 表。

## 目前狀態
✅ Shipped 2026-04-20（commit `d81f7b1`）
⚠️ 端到端尚未驗證（Rambo 自己的帳號不是新用戶），需要用匿名視窗開新帳號實測

## 設計原則：Overlay 而非新 tier

試用期間 `profiles.current_tier` 保持 `'free'`，**不**新增 `'trial'` tier。前端靠 `trial_expires_at > now() && trial_questions_used < 200` 判斷為 effective pro。付費後 `current_tier` 改 `standard/pro`，試用自然失效（不用額外清理）。

理由詳見 [../DECISIONS.md #10](../DECISIONS.md)。

## 相關檔案

| 檔案 | 用途 |
|---|---|
| `supabase_schema_v13_trial.sql` | Migration（欄位 + trigger + RPC） |
| `index.html` `billing.getTier()` | Tier 判斷 overlay 邏輯 |
| `index.html` `.trial-banner` | 試用中橫幅（剩餘天數/題數） |
| `index.html` paywall 的 `trial_ended` / `trial_upgrade` 文案 | 試用結束後的升級 CTA |

## 資料表

### `profiles` 新欄位

| 欄位 | 型別 | 用途 |
|---|---|---|
| `trial_started_at` | `TIMESTAMPTZ` | 試用開始時間；NULL 表示未開通（v13 前的舊用戶） |
| `trial_expires_at` | `TIMESTAMPTZ` | 試用到期；NULL 或 `< now()` 皆視為結束 |
| `trial_questions_used` | `INTEGER` | 累積答題數（不區分模式）；達 200 結束 |

**Column-level privileges**：`authenticated` 的 UPDATE 權限被 REVOKE 掉這三欄，用戶改不到（只能透過 `SECURITY DEFINER` 的 RPC）。

索引：
```sql
CREATE INDEX idx_profiles_trial_expires
  ON profiles(trial_expires_at)
  WHERE trial_expires_at IS NOT NULL;
```
供未來「試用剩 1 天提醒信」批次查詢。

## RPCs

### `handle_new_user()`（trigger on `auth.users` insert）

新用戶註冊時自動執行：

```sql
INSERT INTO public.profiles (
  id, display_name, email, avatar_url, referral_code,
  trial_started_at, trial_expires_at, trial_questions_used
) VALUES (
  NEW.id, ..., ...,
  NOW(),                          -- trial_started_at
  NOW() + INTERVAL '7 days',      -- trial_expires_at
  0                               -- trial_questions_used
) ON CONFLICT (id) DO NOTHING;
```

同時也產 `referral_code`（8 字元 MD5 前綴）。

### `increment_trial_question(p_count INTEGER DEFAULT 1)`

**Caller**：前端（每答一題呼叫）
**Security**：`SECURITY DEFINER`，GRANT EXECUTE TO authenticated

**邏輯**：
1. UPDATE `profiles` SET `trial_questions_used += max(p_count, 0)` WHERE `id = auth.uid()` AND `trial_expires_at > now()` AND `current_tier = 'free'`
   - 用 SQL-level 原子遞增，避免 read-modify-write race
2. 若 UPDATE 沒匹配（已付費、已過期、未開通試用），直接讀現況
3. 回傳 `(trial_questions_used, trial_expires_at, still_in_trial)`

**`still_in_trial` 計算**：`expires IS NOT NULL AND expires > now() AND used < 200`

### 前端呼叫

```js
const { data, error } = await cloud.rpc('increment_trial_question', { p_count: 1 });
// data: [{ trial_questions_used: 42, trial_expires_at: ..., still_in_trial: true }]
```

## Tier 判斷邏輯（前端）

```js
function getTier() {
  const p = state.currentProfile;
  if (!p) return 'free';
  if (p.current_tier === 'standard' || p.current_tier === 'pro') {
    return p.current_tier;
  }
  // 試用 overlay
  const inTrial = p.trial_expires_at
    && new Date(p.trial_expires_at) > new Date()
    && (p.trial_questions_used || 0) < 200;
  if (inTrial) return { tier: 'pro', isTrial: true };
  return 'free';
}
```

## UX：試用橫幅

顯示於登入後 header 附近：

- **剩 N 天 / 剩 M 題**（二者取較緊迫者）
- 點擊 → 導向 `#/pricing`
- 試用結束 → 橫幅消失，下一次做題時觸發 paywall（`reason=trial_ended`）

## 改這個模組時的地雷

- **RPC 的 `SECURITY DEFINER` 很關鍵**：沒這個前端改不到欄位（因 column-level REVOKE）
- **新增 `current_tier` 判斷條件時要同步改 `increment_trial_question`** 的 WHERE（目前只擋 `'free'`，若未來多加試用類型要改）
- **試用額度上限 200 是前後端都寫死的**，要改要兩邊一起改（`increment_trial_question` 的 `< 200` + 前端 `still_in_trial` 判斷）
- **v13 遷移前建立的舊 free 用戶**沒有 `trial_started_at`，所有試用欄位為 NULL — 這是預期行為，Rambo 定案「既有 free 用戶不補發」
- **`handle_new_user()` 同時處理 referral_code 產生跟試用欄位寫入**，改 trigger 要一起測兩個功能

## 驗證 / 快速檢查

### 確認新用戶自動獲得試用

```sql
SELECT id, email, trial_started_at, trial_expires_at, trial_questions_used
  FROM profiles
 ORDER BY created_at DESC LIMIT 5;
-- 新註冊的應該：trial_started_at ≈ now, trial_expires_at ≈ now + 7d, used = 0
```

### 以登入 session 測 RPC

```sql
SELECT * FROM public.increment_trial_question(1);
-- 期待：used += 1, still_in_trial = true（若仍在試用）
```

### 手動結束某人試用（測試用）

```sql
UPDATE profiles
   SET trial_questions_used = 200
 WHERE email = 'test@example.com';
-- 或
UPDATE profiles
   SET trial_expires_at = NOW() - INTERVAL '1 day'
 WHERE email = 'test@example.com';
```

## 待辦 / 延伸

- [ ] 試用期間 email 通知（剩 1 天、已到期）— 需 Google Workspace SMTP 部署
- [ ] A/B 測試：試用期改 10 天 or 300 題 看轉換率
- [ ] 試用結束 3 天內升級額外送 3 天（留存 hook）
