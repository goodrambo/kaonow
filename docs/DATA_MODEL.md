# 資料模型

> Supabase PostgreSQL 所有表、依領域分群、重要欄位、常見關聯。
> 權威來源永遠是 DB 本身（用 Supabase MCP 的 `list_tables` 確認），這份文件是領域地圖。
> **最後更新**：2026-04-20（27 張表 + 1 張備份）

## 全表清單（按領域分組）

### 📚 內容（Content）

| 表 | 列數 | 用途 |
|---|---|---|
| `exam_categories` | 7 | 7 大考試系統（tech-cert / prof-exam / civil / language / academic / finance / it-cert） |
| `exams` | 182 | 每個具體考試（甲種職安衛、高考三級、學測…） |
| `subjects` | 224 | 題庫歸屬的最細單位（v6 架構，可跨考試共用） |
| `exam_subjects` | 263 | 考試 ↔ 科目 M:N 關聯 + `track_name` 類科欄位 |
| `chapters` | 663 | 章節（屬於 exam 或 subject） |
| `questions` | 7,399 | 題目（`question_type` 分 single/multiple/true_false/fill_blank/ordering/matching/stem_shared） |
| `lectures` | 0 | 講義內容（AI 生成前需人工 review，`is_active` 才算上線） |
| `exam_news` | 0 | 考試時事新聞（未啟用） |
| `promo_codes` | 0 | 優惠碼（未啟用） |

**內容模型詳細**：[modules/content-model.md](./modules/content-model.md)

### 👤 用戶（User）

| 表 | 列數 | 用途 |
|---|---|---|
| `profiles` | 2 | 應用層 profile（1:1 於 `auth.users`），放所有應用層欄位 |
| `admin_users` | 0 | 管理員權限（super_admin / content_editor / support） |

**`profiles` 重要欄位**：
- `id UUID PK` — FK 到 `auth.users.id`
- `current_tier` — `free` / `standard` / `pro`（CHECK constraint）
- `current_subscription_id` — 目前生效的訂閱
- `referral_code TEXT UNIQUE` — 8 字元邀請碼（註冊時 trigger 產生）
- `referred_by UUID` — 誰推薦我的（FK `auth.users.id`）
- `trial_started_at`, `trial_expires_at`, `trial_questions_used` — v13 試用欄位
- `onboarded`, `marketing_opt_in`, `meta JSONB`

> ⚠️ **絕對不要把應用層欄位放 `auth.users`**。應用層欄位一律在 `profiles`。
> trial / referral 欄位都在 `profiles`，不在 `users`。

### 💳 訂閱 & 付款（Subscription）

| 表 | 列數 | 用途 |
|---|---|---|
| `subscriptions` | 0 | 訂閱週期（tier / billing_period / current_period_end） |
| `payment_transactions` | 4 | 每筆付款紀錄（`gateway_order_id UNIQUE`，用於去重） |
| `referrals` | 0 | 推薦關係（`referred_id UNIQUE`：每人只能被推一次） |

**`subscriptions` 重要欄位**：
- `status` — active / cancelled / expired / pending / past_due
- `tier` — standard / pro（免費不進這表）
- `billing_period` — monthly / quarterly（UI 文案改成 30/90 天但內部欄位不動）
- `current_period_end` — 到期時間，被 cron 檢查
- `auto_renew` — 目前都是 `false`（個人戶只能一次性購買）
- `payment_gateway` — `ecpay`

**訂閱詳細**：[modules/subscription-and-tier.md](./modules/subscription-and-tier.md) / [modules/payment-ecpay.md](./modules/payment-ecpay.md) / [modules/referral-v14.md](./modules/referral-v14.md)

### 📝 做題紀錄（Practice）

| 表 | 列數 | 用途 |
|---|---|---|
| `exam_sessions` | 11 | 一次做題的 session（random / mock / chapter / weak / review_wrong / bookmarks） |
| `question_attempts` | 70 | 每一題的作答紀錄 |

**`question_attempts.selected_answer` 規則**：
- `single_choice`：0-indexed int 存 `selected_answer`
- 其他題型（multiple_choice 等）：存 `selected_answer_json`（JSONB）
- `selected_answer` 對 single 以外題型請留 `NULL`

**詳細**：[modules/quiz-engine.md](./modules/quiz-engine.md)

### 📊 聚合（Progress aggregates）

| 表 | 列數 | 用途 |
|---|---|---|
| `chapter_progress` | 8 | 章節熟練度（PK: user_id + exam_id + chapter_id） |
| `exam_progress` | 2 | 考試等級進度（PK: user_id + exam_id） |
| `user_stats` | 2 | 全域用戶統計（PK: user_id） |

原則：原始事件（`question_attempts`, `exam_sessions`）與聚合分離，trigger 自動同步。若聚合對不上可重跑 aggregation（權威是 attempts）。

**詳細**：[modules/progress-and-bookmarks.md](./modules/progress-and-bookmarks.md)

### ⭐ 個人化（Personal）

| 表 | 列數 | 用途 |
|---|---|---|
| `bookmarks` | 0 | 題目書籤 + 個人筆記 |
| `exam_bookmarks` | 3 | 整個考試的書籤（catalog 頁收藏） |
| `exam_reminders` | 0 | 考試日期提醒（未啟用） |
| `study_plans` | 0 | 個人化學習計畫（未啟用，AI 推薦保留欄位） |
| `notifications` | 0 | 站內通知（未啟用） |

### 🚨 Feedback & 事件（Community & Events）

| 表 | 列數 | 用途 |
|---|---|---|
| `question_reports` | 0 | 用戶檢舉題目（wrong_answer / unclear / other） |
| `user_events` | 0 | 用戶行為事件（分析用，目前沒埋點） |
| `webhook_events` | 0 | 外部 webhook 記錄（ECPay 等），`(source, external_event_id)` UNIQUE 防重 |

**詳細**：[modules/question-reports.md](./modules/question-reports.md)

### ⚙️ 系統（System）

| 表 | 列數 | 用途 |
|---|---|---|
| `app_settings` | 3 | KV store 全站設定 |

### 🗄️ 備份

| 表 | 列數 | 用途 |
|---|---|---|
| `_backup_correct_answer_20260417` | 7,393 | 2026-04-17 osh-a 事件前 `questions.correct_answer` 快照 |

> 這份備份是踩坑後留下的保險。見 [DECISIONS.md](./DECISIONS.md) §「為什麼 correct_answer 一律 0-indexed」。

## RPC 清單（`SECURITY DEFINER`）

| RPC | Caller | 用途 | 詳見 |
|---|---|---|---|
| `handle_new_user()` | trigger on `auth.users` insert | 新註冊自動建 `profiles` + `user_stats` + referral_code + 7 天試用 | [trial-v13](./modules/trial-v13.md) |
| `increment_trial_question(p_count)` | 前端（authenticated） | 原子遞增試用題數 | [trial-v13](./modules/trial-v13.md) |
| `claim_referral(p_ref_code)` | 前端（authenticated） | 綁定邀請碼 | [referral-v14](./modules/referral-v14.md) |
| `get_my_referral_stats()` | 前端（authenticated） | 讀自己的推薦戰績 | [referral-v14](./modules/referral-v14.md) |
| `apply_referral_reward(p_referred_user)` | Edge Function `webhook-ecpay`（service role） | 付款成功後雙方 +14 天 | [referral-v14](./modules/referral-v14.md) |

**慣例**：所有 RPC 都 `SECURITY DEFINER` + `REVOKE ALL FROM PUBLIC`，再視情況 `GRANT EXECUTE TO authenticated`（給前端用）或不 GRANT（只讓 service role 呼叫）。

## Trigger 清單

| Trigger | 表 | 時機 | 用途 |
|---|---|---|---|
| `on_auth_user_created` | `auth.users` | AFTER INSERT | 呼叫 `handle_new_user()`；建 profile + user_stats + referral code + trial 欄位 |
| `set_updated_at` | 多張 | BEFORE UPDATE | 自動更新 `updated_at` |
| 聚合同步 triggers | `question_attempts` → `chapter_progress` / `exam_progress` / `user_stats` | AFTER INSERT | 維持聚合表最新 |

## Schema 演進歷史

schema 檔散落在 repo 根（`supabase_schema_v*.sql`），每個檔是一個 migration：

| 版本 | 檔案 | 主題 |
|---|---|---|
| v1 | `supabase_schema.sql` | 初始 schema（含 app_settings、categories、exams、questions 等） |
| v2 | `supabase_schema_v2.sql` | — |
| v3 | `supabase_schema_v3.sql` | — |
| v4 | `supabase_schema_v4.sql` | — |
| v5 | `supabase_schema_v5.sql` | — |
| v6 | `supabase_schema_v6.sql`, `_v6_1.sql`, `_v6_2.sql` | subjects 架構（解決多類科 + 跨考試共用題庫） |
| v7 | `supabase_schema_v7.sql` | — |
| v8 | `supabase_schema_v8.sql` | — |
| v9 | `supabase_schema_v9.sql` | — |
| v10 | `supabase_schema_v10_question_reports.sql` | `question_reports` 表 |
| v11 | `supabase_schema_v11_question_types.sql` | `questions.question_type` + `correct_answer_json` |
| v12 | `supabase_schema_v12_multi_choice.sql` | 複選題支援 + `question_attempts.selected_answer_json` |
| v13 | `supabase_schema_v13_trial.sql` | 7 天試用 + 200 題 quota |
| v14 | `supabase_schema_v14_referral.sql` | 推薦好友 +14 天 |

**部署方式**：用 Supabase MCP 的 `apply_migration`（不走 CLI）。

## 驗證 SQL 速查

### 檢查 schema 完整性

```sql
-- v13/v14 部署後 sanity check
SELECT 'rpcs' AS what, count(*)::text AS n FROM pg_proc
 WHERE pronamespace='public'::regnamespace
   AND proname IN ('increment_trial_question','claim_referral',
                   'get_my_referral_stats','apply_referral_reward')
UNION ALL
SELECT 'profile_trial_cols', count(*)::text FROM information_schema.columns
 WHERE table_schema='public' AND table_name='profiles'
   AND column_name IN ('trial_expires_at','trial_questions_used','trial_started_at','referral_code')
UNION ALL
SELECT 'referrals_table', count(*)::text FROM information_schema.tables
 WHERE table_schema='public' AND table_name='referrals';
-- 期待：rpcs=4, profile_trial_cols=4, referrals_table=1
```

### 檢查 correct_answer 索引是否 0-indexed

```sql
-- 每個 exam 的最小 correct_answer；任何一個 >= 1 就表示可能有 1-indexed 污染
SELECT exam_id, MIN(correct_answer) AS min_ca, COUNT(*) AS total
  FROM questions
 GROUP BY exam_id
HAVING MIN(correct_answer) >= 1
 ORDER BY exam_id;
```
