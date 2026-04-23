# 模組：Progress & Bookmarks（進度聚合與收藏）

## 目的
使用者的學習狀態匯總（每章/每考/總計）+ 收藏題目與考試 + 弱點分析的資料基礎。主要是**聚合表 / 冗餘表**，由作答流程寫入，供 UI 快速讀取。

## 目前狀態
✅ Schema 完整；✅ `bookmarks` / `exam_bookmarks` 上線；✅ **v15 (2026-04-20) 起聚合 trigger 已上線**，`chapter_progress` / `exam_progress` / `user_stats` 由 trigger 自動維護

## 相關表

| 表 | 粒度 | 寫入時機 |
|---|---|---|
| `bookmarks` | per question | 用戶按 ☆ 時（前端直寫） |
| `exam_bookmarks`（v7） | per exam | 用戶在 catalog 收藏考試時（前端直寫） |
| `chapter_progress` | per (user, exam, chapter) | `trg_attempt_update_progress` → `update_progress_on_attempt()` |
| `exam_progress` | per (user, exam) | 同上 + `trg_session_complete_*` → `update_progress_on_session()` |
| `user_stats` | per user | 同上兩個 trigger |

## 相關檔案

| 檔案 | 用途 |
|---|---|
| `supabase_schema.sql` §5 / §6 | 本模組所有表的 base schema |
| `supabase_schema_v7.sql` | `exam_bookmarks` 表 |
| `index.html` `toggleBookmark()` / `toggleExamBookmark()` | 收藏 UI handler |
| `index.html` `cloud.loadWeakPoints()` | 弱點分析讀 `question_attempts` |
| `index.html` `#/my/bookmarks` 路由 | 收藏清單頁 |

## 資料表細節

### `bookmarks`（收藏題目）

```sql
CREATE TABLE public.bookmarks (
  id          UUID PK DEFAULT gen_random_uuid(),
  user_id     UUID FK auth.users ON DELETE CASCADE,
  question_id TEXT FK questions   ON DELETE CASCADE,
  note        TEXT,
  created_at  TIMESTAMPTZ,
  UNIQUE(user_id, question_id)
);
```

**前端同步邏輯**：
- **登入狀態**：直接 upsert 到 DB
- **未登入**：寫 `localStorage.kaonow_bookmarks`（array of question_id）
- `SIGNED_IN` 事件：把 localStorage 內容 upsert 上去再清本地

### `exam_bookmarks`（v7，收藏考試）

```sql
CREATE TABLE public.exam_bookmarks (
  id         UUID PK,
  user_id    UUID FK,
  exam_id    TEXT FK exams ON DELETE CASCADE,
  note       TEXT,
  created_at TIMESTAMPTZ,
  UNIQUE(user_id, exam_id)
);
```

**RLS**：`auth.uid() = user_id` 四把（SELECT/INSERT/UPDATE/DELETE），詳見 `supabase_schema_v7.sql`。

**沒有 localStorage fallback**：收藏考試必須登入。

### `chapter_progress`（聚合）

```
PK: (user_id, exam_id, chapter_id)
總攻次:   total_attempts       INT
答對次:   correct_attempts     INT
熟練度:   mastery_level        INT CHECK 0-5
最後作答: last_attempted_at    TIMESTAMPTZ
```

**Mastery 計算規則**（v15 起由 DB helper `public.compute_mastery(total, correct)` 維護，trigger 寫入時即算好）：
- 0：未練習（total = 0）
- 1：練習 < 5 題
- 2：練習 ≥ 5 題，正確率 < 60%
- 3：練習 ≥ 5 題，正確率 60-75%
- 4：練習 ≥ 10 題，正確率 75-90%
- 5：練習 ≥ 15 題，正確率 ≥ 90%

改規則 = 改 `compute_mastery` function + 對既存 `chapter_progress` rows 全表重算一次（見 `supabase/migrations/v15_*` backfill block）。

### `exam_progress`（聚合）

```
PK: (user_id, exam_id)
total_attempts, correct_attempts             -- 題目層 (每 attempt +1)
total_sessions, best_mock_score              -- session 層 (每 session complete +1)
current_streak   INT       -- 連續答對題數（答錯歸零）
max_streak       INT
first_practiced_at, last_practiced_at
```

### `user_stats`（全域總計）

```
PK: user_id
total_questions_answered, total_correct, total_sessions
total_study_seconds        -- 累加 question_attempts.time_spent_seconds
exams_practiced            -- 練過幾個不同 exam（xmax=0 偵測第一次）
current_streak, max_streak -- 連續答對題數（與 exam_progress 語義同步）
longest_study_day_seconds  -- 目前 trigger 不維護，留白等未來 nightly
```

## v15 聚合 trigger 實作細節

### Trigger 結構

```
question_attempts INSERT
  └── trg_attempt_update_progress (FOR EACH ROW)
      └── update_progress_on_attempt()
          ├── UPDATE questions.times_answered / times_correct
          ├── UPSERT chapter_progress (含 mastery_level via compute_mastery)
          ├── UPSERT exam_progress (含 streak 邏輯) RETURNING xmax=0 → v_is_new_exam
          └── UPSERT user_stats (exams_practiced += v_is_new_exam)

exam_sessions INSERT/UPDATE (is_completed flips to true)
  └── trg_session_complete_insert  (AFTER INSERT WHEN NEW.is_completed=true)
  └── trg_session_complete_update  (AFTER UPDATE WHEN is_completed flips to true)
      └── update_progress_on_session()
          ├── UPSERT exam_progress (total_sessions +1, best_mock_score if mode='mock')
          └── UPSERT user_stats (total_sessions +1)
```

### Streak 語義

**`current_streak` = 連續答對題數**，答錯歸 0。與 frontend `state.streak`（index.html:5716-5718）對齊：

```js
if (correct) { state.streak++; if (state.streak > state.maxStreak) state.maxStreak = state.streak; }
else state.streak = 0;
```

**不是**「每日連續學習天數」。如果未來要加「每日 streak」要另開欄位（如 `daily_streak_days`），不要覆用 `current_streak`。

### Scale 後的性能隱憂（v15 已在 trigger comment 內標記）

| 問題 | 現狀影響 | 未來解法 |
|---|---|---|
| mock 批次 INSERT 50 題 | 50 次循序 UPSERT 同 `exam_progress` 列 → 列鎖爭用 | statement-level trigger + transition table，一次 GROUP BY 寫入 |
| `questions.times_answered/correct` 熱點 | 熱門題每用戶共寫同一列 → lock contention | nightly rollup from `question_attempts`；或前端寫 `mv_stats` queue 由 cron 聚合 |
| user-level aggregate hot row | per-user 一列，同時只會有一個 session → serialized，短期不會爆 | 極端 scale 再用 append-only log + batch fold |
| `longest_study_day_seconds` | 目前 trigger 未維護（需日期切割） | nightly job 從 `question_attempts` GROUP BY date 計算 |

## 弱點加強（`weak` mode）資料來源

由 `cloud.loadWeakPoints({examId, userId, limit})` 查 `question_attempts`：

```sql
-- 簡化版邏輯
SELECT q.*
  FROM questions q
  JOIN question_attempts qa ON qa.question_id = q.id
 WHERE qa.user_id = <uid>
   AND qa.exam_id = <eid>
   AND q.is_active
 GROUP BY q.id
HAVING sum((NOT qa.is_correct)::int) >= 1    -- 至少錯過一次
ORDER BY (sum((NOT qa.is_correct)::int)::float / count(*)) DESC   -- 錯誤率最高
LIMIT <limit>;
```

即查即算，沒快取。用戶量大後可能要做 materialized view。

## `bookmarks` 前端 localStorage 對照

**Key**：`kaonow_bookmarks`
**值**：`JSON.stringify(["q-osh-a-001", "q-osh-a-042", ...])`

同步時機：
1. 未登入按 ☆ → 寫 localStorage
2. `SIGNED_IN` 事件 → 抽 localStorage → 逐筆 upsert 到 DB → 清 localStorage
3. `SIGNED_OUT` → 清 localStorage（避免共用電腦時別人看到）

## 收藏清單頁 (`#/my/bookmarks`)

路由渲染 `renderMyBookmarks()`：
- 顯示該用戶所有 `bookmarks` 的題目（JOIN questions）
- 同時顯示 `exam_bookmarks`（v7）：用戶關注的考試，快速跳轉
- 每筆可取消收藏

## 改這個模組時的地雷

- **`bookmarks.question_id ON DELETE CASCADE`**：題目下架會把收藏也刪掉。若未來要保留收藏「歷史紀錄」要改 SET NULL
- **聚合表由 trigger 唯一維護，前端別直寫**：v15 之後聚合是 DB-owned。前端 `saveSession()` 對 chapter_progress/exam_progress/user_stats 的 UPSERT 早就被 RLS 擋掉（這三表只有 own_select policy，沒有 insert/update policy），等於 dead code。修改聚合邏輯只能改 trigger function
- **改 mastery 規則要重算全表**：`compute_mastery()` 是 IMMUTABLE 純計算，改規則後記得跑 `UPDATE chapter_progress SET mastery_level = compute_mastery(total_attempts, correct_attempts);` 一次
- **mock 批次寫入是 scale 隱憂**：目前 50 題逐筆 UPSERT 同一 exam_progress 列，scale 後會 lock contention。加監控但先不優化 — 用戶量到臨界再換 statement-level trigger
- **`questions.times_answered/correct` 熱點寫入**：熱門題在 trigger 裡被每用戶共寫，scale 後會變瓶頸。方案待未來改 nightly rollup
- **弱點模式不是 materialized**：`(user_id, exam_id) WHERE NOT is_correct` 的 partial index (`idx_attempts_wrong`) 已經在，查詢應該夠快。若再慢考慮 `exam_progress` 加 wrong_question_ids JSONB 陣列
- **`exam_bookmarks` 沒有 localStorage 版本**：未登入無法收藏考試；別在 catalog UI 顯示收藏按鈕給未登入用戶
- **改 `bookmarks.UNIQUE(user_id, question_id)` 約束前**要考慮是否影響既存 upsert 邏輯
- **`longest_study_day_seconds` 目前是 0**：v15 trigger 沒維護這個欄位（需要日期切割聚合）。前端若用要自己查或等 nightly job

## 驗證 / 快速檢查

### 某人的收藏

```sql
SELECT b.created_at, q.id, q.question_text
  FROM bookmarks b JOIN questions q ON q.id = b.question_id
 WHERE b.user_id = '<uuid>'
 ORDER BY b.created_at DESC;
```

### 某人最弱的 10 題

```sql
SELECT q.id, q.question_text,
       count(*) AS total,
       sum((NOT qa.is_correct)::int) AS wrong
  FROM questions q JOIN question_attempts qa ON qa.question_id = q.id
 WHERE qa.user_id = '<uuid>' AND qa.exam_id = 'osh-a'
 GROUP BY q.id
HAVING count(*) >= 2
 ORDER BY (sum((NOT qa.is_correct)::int)::float / count(*)) DESC
 LIMIT 10;
```

### 檢查某人已練習的考試 / 章節數

```sql
SELECT count(DISTINCT exam_id), count(DISTINCT chapter_id)
  FROM question_attempts
 WHERE user_id = '<uuid>';
```

### 驗證 trigger 維護的 aggregate 一致性

```sql
-- 對照 user_stats vs 原始表
WITH expected AS (
  SELECT user_id,
         COUNT(*)::int AS q_total,
         SUM(CASE WHEN is_correct THEN 1 ELSE 0 END)::int AS q_correct,
         SUM(COALESCE(time_spent_seconds, 0))::int AS study_sec
    FROM question_attempts GROUP BY user_id
)
SELECT us.*, e.*
  FROM user_stats us LEFT JOIN expected e USING (user_id)
 WHERE us.total_questions_answered IS DISTINCT FROM COALESCE(e.q_total, 0)
    OR us.total_correct IS DISTINCT FROM COALESCE(e.q_correct, 0)
    OR us.total_study_seconds IS DISTINCT FROM COALESCE(e.study_sec, 0);
-- 期待 0 rows
```

若有 mismatch → trigger 有 bug 或 backfill 沒跑完；跑 migration 的 backfill block 重算一次。

## 待辦 / 延伸

- [ ] Frontend cleanup：`index.html` `saveSession()` 內對 aggregate 表的冗餘 UPSERT 是 dead code（被 RLS 擋），可移除
- [ ] `user_stats.longest_study_day_seconds` 的 nightly 計算 job
- [ ] Mastery 徽章 UI（章節熟練度 0-5 視覺化）— 現在 DB 真的有數字了
- [ ] 如果要做「每日連續學習天數」需要另建 `user_daily_activity` 表或用 `question_attempts` 日切 GROUP BY
- [ ] `bookmarks.note` 欄位目前 UI 沒用上（僅 DB 預留）
- [ ] 弱點模式支援跨考試（目前只支援 per-exam）
- [ ] Scale 監控：mock 批次寫入延遲、`questions.times_answered` 熱點 lock wait
