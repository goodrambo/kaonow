# 模組：Auth & Profile

## 目的
使用者身份管理（登入 / 登出 / 狀態同步）+ `public.profiles` 資料列生命週期。所有訂閱、試用、推薦的狀態都掛在 profiles。

## 目前狀態
✅ Google OAuth + Magic Link 雙通道皆上線；email/password 未開啟

## 登入通道

| 通道 | 前端函式 | Supabase API | 備註 |
|---|---|---|---|
| Google OAuth | `signInWithGoogle()` @ index.html:2734 | `supa.auth.signInWithOAuth({provider:'google', options:{redirectTo}})` | Google Cloud Console OAuth client 目前 **test mode**，上限 100 users（見 [../EXTERNAL_PLATFORMS.md](../EXTERNAL_PLATFORMS.md) §4） |
| Magic Link | `sendMagicLink(email)` @ index.html:2742 | `supa.auth.signInWithOtp({email, options:{emailRedirectTo}})` | 前端做 RFC email regex 驗證（index.html:2747） |
| email/password | ❌ 未啟用 | — | 刻意不開；降低密碼管理負擔 |

兩通道皆走 Supabase Auth，session 由 `supabase-js` 放 `sb-*` localStorage keys。

**為何繞過 supabase-js 的某些呼叫用 raw fetch**：見 [../DECISIONS.md #3](../DECISIONS.md) — MetaMask SES conflict。

## Auth state 同步

**核心監聽器**：`supa.auth.onAuthStateChange` @ index.html:2613

```
SIGNED_IN  → 1. 同步 kaonow_bookmarks localStorage 到 bookmarks 表
             2. 檢查 localStorage.kaonow_ref_pending → 呼叫 claim_referral（見 v14）
             3. refresh billing tier（重取 profiles）
             4. 更新 UI

SIGNED_OUT → 1. 清空 state.currentUser
             2. 清 kaonow_bookmarks localStorage
             3. 更新 UI
```

**UI 更新入口**：`updateAuthUI()` @ index.html:2641 — 切換 `[data-when="logged-in"]` / `[data-when="logged-out"]` 區塊，更新 header avatar pill。

## 登出流程

`signOut()` @ index.html:2775：

1. 前端立即清 `state.currentUser = null`
2. 手動清 `localStorage` 所有 `sb-*` prefix keys（index.html:2781）
3. `updateAuthUI()` 立刻反映登出
4. 背景 async 呼叫 `cloud.logout()` → `supa.auth.signOut()`

順序重要：**先清 UI 再打 API**，用戶看起來登出是立即的，不會卡在 network round-trip。

## localStorage keys（auth 相關）

| Key | 寫入時機 | 清除時機 |
|---|---|---|
| `sb-*` (Supabase 內部) | 登入成功 | 登出 |
| `kaonow_ref_pending` | URL query `?ref=XXX` 被前端捕獲時（index.html:2581, 2594） | `claim_referral` 成功後 |
| `kaonow_bookmarks` | 登入前收藏題目 | 登出 |
| `kaonow_last_exam` | 進入考試頁時 | — |

## `public.profiles` schema

### 核心欄位（supabase_schema.sql:166-183）

| 欄位 | 型別 | 用途 |
|---|---|---|
| `id` | `UUID PK FK auth.users` | Supabase Auth user id |
| `display_name` | `TEXT` | 暱稱（Google OAuth 抓 raw_user_meta_data.full_name，Magic Link 用 email prefix） |
| `email` | `TEXT` | 冗餘存 email 方便查詢（auth.users 也有） |
| `avatar_url` | `TEXT` | Google 頭像 URL / NULL |
| `phone`, `locale`, `timezone` | `TEXT` | 目前都不填 |
| `current_tier` | `TEXT CHECK in ('free','standard','pro')` | 訂閱層級，付費 webhook 更新 |
| `current_subscription_id` | `UUID FK subscriptions` | 指向目前 active subscription |
| `onboarded`, `marketing_opt_in` | `BOOLEAN` | 預留欄位 |
| `meta` | `JSONB` | 彈性存推薦獎勵累計（`meta->>'referral_bonus_days'`）等 |
| `created_at`, `updated_at` | `TIMESTAMPTZ` | 標準時間戳 |

### v13 試用欄位

| 欄位 | 型別 | 用途 |
|---|---|---|
| `trial_started_at` | `TIMESTAMPTZ` | 試用開始 |
| `trial_expires_at` | `TIMESTAMPTZ` | 試用到期 |
| `trial_questions_used` | `INTEGER` | 已用題數（上限 200） |

**column-level REVOKE**：`authenticated` 的 UPDATE 權限被 REVOKE 掉這三欄（v13:126-128）。只能透過 `increment_trial_question` RPC 修改。詳見 [./trial-v13.md](./trial-v13.md)。

### v14 推薦欄位（實際上已在 v1 schema 預留）

| 欄位 | 型別 | 用途 |
|---|---|---|
| `referral_code` | `TEXT UNIQUE` | 8 字元邀請碼，註冊時 trigger 產生 |
| `referred_by` | `UUID FK auth.users` | 誰推薦我的（claim_referral 寫入） |

詳見 [./referral-v14.md](./referral-v14.md)。

## 新用戶建檔 trigger

`handle_new_user()` on `auth.users INSERT`（v13 版本已整合試用邏輯）：

```sql
INSERT INTO public.profiles (
  id, display_name, email, avatar_url,
  referral_code,                              -- UPPER(SUBSTRING(MD5(id) FROM 1 FOR 8))
  trial_started_at, trial_expires_at, trial_questions_used
) VALUES (
  NEW.id,
  COALESCE(raw_user_meta_data->>'full_name', split_part(email,'@',1)),
  email,
  raw_user_meta_data->>'avatar_url',
  UPPER(SUBSTRING(MD5(NEW.id::text) FROM 1 FOR 8)),
  NOW(), NOW() + INTERVAL '7 days', 0
) ON CONFLICT (id) DO NOTHING;
```

**兩個功能綁在同一 trigger**：referral_code 產生 + 試用開通。改 trigger 要一起測兩個路徑。

## RLS policies

`profiles` 的 RLS：
- **SELECT**：`id = auth.uid()`（只能讀自己）
- **UPDATE**：`id = auth.uid()`，但 trial 三欄有 column-level REVOKE
- **INSERT**：只能透過 trigger 或 SECURITY DEFINER RPC（authenticated 沒直接 INSERT 權）
- **DELETE**：全擋

## 改這個模組時的地雷

- **`handle_new_user()` 是 trigger 不是 RPC**，改了要跑 migration 重建 trigger，不能只改函式
- **`raw_user_meta_data` 的 key 會因為 provider 不同而不同**：Google 是 `full_name` / `avatar_url`，Magic Link 沒有這些 → `COALESCE` fallback 重要
- **登出一定要手動清 `sb-*`**：`supa.auth.signOut()` 有時 race / network fail，光靠它會有殘留 session
- **`referred_by` 是在 `claim_referral` 寫進去的，不在 trigger**：trigger 只負責產 `referral_code`
- **`display_name` 在 profile 建好後前端不會再更新**，目前沒有「改暱稱」UI
- **`trial_started_at/expires_at/questions_used` 的 REVOKE 別忘記**：新增類似試用相關欄位要記得 REVOKE，否則前端可以直接改

## 驗證 / 快速檢查

### 檢查最近註冊的 profile

```sql
SELECT id, email, display_name, referral_code,
       trial_started_at, trial_expires_at, current_tier
  FROM profiles ORDER BY created_at DESC LIMIT 5;
```

### 檢查 referral_code 重複（應該永遠 0）

```sql
SELECT referral_code, count(*) FROM profiles
 WHERE referral_code IS NOT NULL
 GROUP BY referral_code HAVING count(*) > 1;
```

### 手動 re-trigger 試用（測試用）

```sql
UPDATE profiles
   SET trial_started_at = NOW(),
       trial_expires_at = NOW() + INTERVAL '7 days',
       trial_questions_used = 0
 WHERE email = 'test@example.com';
```

## 待辦 / 延伸

- [ ] Google OAuth 上正式（離開 test mode）— 需要 Google workspace verified domain
- [ ] 改暱稱 / 改頭像 UI（目前無）
- [ ] email/password 通道（目前刻意不開，未來若要做企業戶再開）
- [ ] 刪除帳號流程（GDPR / 個資法合規）
