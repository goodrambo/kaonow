# 模組：Question Reports（題目回報 v10）

## 目的
讓用戶作答時按 🚩 回報「答案錯 / 題目不清楚 / 其他」。資料進 `question_reports` 表；站方在 Supabase SQL Editor 手動審視（**目前無 admin UI**）。

## 目前狀態
✅ Shipped（schema v10, 2026-04-20 前後）；MVP 階段刻意不做通知 / admin UI，先讓資料進得來

## 相關檔案

| 檔案 | 用途 |
|---|---|
| `supabase_schema_v10_question_reports.sql` | 完整 migration（表 + RLS + constraints） |
| `index.html` `openReportModal(questionId)` @ ~5628 | 🚩 按鈕點擊入口 |
| `index.html` 檢舉 modal 表單 | 三個 radio + textarea |
| `index.html` `cloud.insertQuestionReport(...)` | 寫 DB 的 REST call |

## 資料表 `question_reports`

```sql
CREATE TABLE public.question_reports (
  id                UUID PK,
  question_id       TEXT FK questions ON DELETE SET NULL,
  user_id           UUID FK auth.users ON DELETE SET NULL,
  report_type       TEXT CHECK IN ('wrong_answer','unclear','other'),
  description       TEXT CHECK char_length <= 500,   -- 選填
  question_snapshot JSONB,                            -- 當下題目快照
  status            TEXT CHECK IN ('open','reviewing','resolved','dismissed')
                         DEFAULT 'open',
  admin_note        TEXT,                             -- 站方備註
  created_at, updated_at TIMESTAMPTZ
);
```

**關鍵設計**：
- `question_id ON DELETE SET NULL` — 就算題目下架也保留 report，能反查原始 snapshot
- `user_id ON DELETE SET NULL` — 用戶刪帳號也不刪 report
- `description` **前後端雙重 500 char 限制**（前端 UI + DB CHECK 雙保險）
- `question_snapshot JSONB` — 存 `{question_text, options, correct_answer, correct_answer_json, explanation}` 的副本，避免題目改版後報告失去 context

## 索引

```sql
idx_qreports_question  ON (question_id)
idx_qreports_status    ON (status) WHERE status = 'open'   -- partial index
idx_qreports_user      ON (user_id, created_at DESC)
```

partial index 的用法：站方審查只關心 `status='open'`，這樣 index 小很多。

## RLS

| Policy | 對象 | 規則 |
|---|---|---|
| `qreports_user_insert` | authenticated | `user_id = auth.uid()` |
| `qreports_user_read_own` | authenticated | `user_id = auth.uid()` |
| *（沒有 UPDATE / DELETE policy）* | — | 一律擋；admin 用 service role 從 Studio 操作 |

**沒 policy = 擋**。這是刻意選擇，確保用戶改不到 status / admin_note。

## 前端流程

```
用戶在 renderQuestion() 畫面點 🚩
  │
  ▼
openReportModal(questionId)
  │
  ▼
Modal 顯示：
  [ ] 答案錯 (wrong_answer)
  [ ] 題目不清楚 (unclear)
  [ ] 其他 (other)
  描述 textarea (選填，max 500 字)
  [送出] [取消]
  │
  ▼
  送出 → 組 payload：
    - question_id
    - report_type
    - description
    - question_snapshot = {
        question_text: q.question_text,
        options: q.options,
        correct_answer: q.correct_answer,
        correct_answer_json: q.correct_answer_json,
        explanation: q.explanation
      }
  │
  ▼
cloud.insertQuestionReport(payload)
  │
  ├── 成功：顯示「感謝回報」toast
  └── 失敗：顯示錯誤，可重試
```

## 站方審查 workflow

**目前純 SQL-based**（Supabase Studio）：

```sql
-- 看所有待處理的回報
SELECT id, question_id, report_type, description,
       question_snapshot, created_at
  FROM question_reports
 WHERE status = 'open'
 ORDER BY created_at;

-- 標記為處理中
UPDATE question_reports
   SET status = 'reviewing', admin_note = '確認中'
 WHERE id = '<uuid>';

-- 回報正確、已修題
UPDATE question_reports
   SET status = 'resolved', admin_note = '已修正 2026-04-21: correct_answer 改為 2'
 WHERE id = '<uuid>';

-- 回報錯誤或雜訊
UPDATE question_reports
   SET status = 'dismissed', admin_note = '使用者誤解題意'
 WHERE id = '<uuid>';
```

## 改這個模組時的地雷

- **`question_snapshot` 必須保留**：不要改成只存 `question_id` FK — 題目改版後就失去脈絡
- **`status` 只能用 service role 改**：前端改不到；未來若要做 admin UI，要另外建專門的 edge function 或用 admin role
- **`description` 的 500 字限制**：DB 有 CHECK，前端也要擋；違反會 insert 失敗
- **別刪既有 report**：即使題目下架，SET NULL 後仍保留 record（站方要看歷史）
- **別把 report 當成「客訴系統」**：這個表只給題目問題回報用；帳戶 / 付款 / 一般客服要另開通道（目前走 email）

## 驗證 / 快速檢查

### 確認表與 policy 存在

```sql
SELECT table_name FROM information_schema.tables
 WHERE table_schema='public' AND table_name='question_reports';
-- 期待: 1 row

SELECT policyname FROM pg_policies
 WHERE tablename='question_reports';
-- 期待: qreports_user_insert, qreports_user_read_own
```

### 看某題的回報歷史

```sql
SELECT report_type, description, status, admin_note, created_at
  FROM question_reports
 WHERE question_id = 'osh-a-ch2-015'
 ORDER BY created_at DESC;
```

### 最近 7 天的 report 分佈

```sql
SELECT report_type, status, count(*)
  FROM question_reports
 WHERE created_at > NOW() - INTERVAL '7 days'
 GROUP BY report_type, status
 ORDER BY report_type, status;
```

### 最多被回報的題目 top 10

```sql
SELECT q.id, q.question_text, count(r.id) AS reports
  FROM question_reports r JOIN questions q ON q.id = r.question_id
 WHERE r.status = 'open'
 GROUP BY q.id, q.question_text
 ORDER BY reports DESC LIMIT 10;
```

## 待辦 / 延伸

- [ ] 前端「你已回報過此題」UI（拿 `qreports_user_read_own` policy 做）
- [ ] Admin UI（status 流轉 + bulk actions）— 可能做成獨立 Supabase Edge Function + 簡單 HTML
- [ ] Slack / email 通知站方有新 `open` 回報（目前要主動 SQL 查）
- [ ] 自動化：同一題被回報 ≥ 3 次自動把 `is_active = false` 下架並通知
- [ ] 報告修題後自動回覆通知用戶（需 SMTP）
