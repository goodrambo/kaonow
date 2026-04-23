# 模組：Quiz Engine（作答引擎）

## 目的
使用者進入考試 → 拉題目 → 作答 → 記錄 → 顯示結果的完整迴圈。這是前端最複雜的一塊邏輯。

## 目前狀態
✅ 主流程（practice / mock / weak / random）皆上線
✅ v12 多選題 UI 支援
⏳ `fill_blank` / `ordering` / `matching` 題型 UI 未實作

## 模式（modes）

| mode | 中文 | 題數來源 | tier 需求 |
|---|---|---|---|
| `random` | 隨機測驗 | 從 exam/subject pool 隨機抽 10 題 | `free` 受每日 10 題限制 |
| `practice` | 一般練習 | exam 全題庫隨機 | 同上 |
| `chapter` | 章節練習 | 單章題目 | 內部 tier 檢查當 `practice` 處理 |
| `mock` | 模擬考 | 按 `exams.mock_question_count` 抽 | `free` 不可（`mode_requires_upgrade`） |
| `weak` | 弱點加強 | 該用戶 `question_attempts` 中 `is_correct=false` 比例高的題 | 需登入 + 有歷史紀錄 |
| `ai` | AI 出題 | `cloud.loadQuestionsBySource('ai_generated')` | `pro` |
| `review_wrong` / `bookmarks` | （schema 有但 UI 未上） | — | — |

## 相關檔案

| 檔案 | 位置 | 用途 |
|---|---|---|
| `index.html` `startQuiz(mode)` | ~5235 | 有 exam context 的入口 |
| `index.html` `startChapter(ch)` | ~5296 | 章節入口 |
| `index.html` `startSubjectQuiz(mode)` | ~5317 | v6+ subject-scoped 入口 |
| `index.html` `initQuiz(pool)` | — | 初始化 state |
| `index.html` `renderQuestion()` | ~5557 | 每題 UI 渲染 |
| `index.html` `selectAnswer(oi)` | ~5735 | 單選點擊 handler |
| `index.html` `toggleMulti(oi)` / `submitMulti()` | ~5743 / ~5756 | 多選 handler |
| `index.html` `_recordAnswer(selected, correct)` | ~5700 | 統一的答案記錄 funnel |
| `index.html` `showResult()` | — | 結束頁 |
| `index.html` `saveSession()` | ~1627 | 把 session + attempts 寫進 DB |
| `index.html` `billing.canStartQuiz(examId, mode)` | ~2145 | 進入前 gate |
| `index.html` `loadQuizSnapshot()` / `resumeQuizFromSnapshot()` | ~5430 / ~5461 | 模擬考 sessionStorage 斷線續做 |

## 進入流程

```
[User clicks 「開始練習」/「模擬考」/「弱點加強」]
  │
  ▼
startQuiz(mode) or startChapter / startSubjectQuiz
  │
  ├─► billing.canStartQuiz(examId, mode)
  │     │
  │     ├─ ok:false, reason='trial_ended' | 'quota_exhausted' |
  │     │   'tier_locked' | 'mode_requires_upgrade'
  │     │     → billing.openPaywallModal(reason) → return
  │     │
  │     └─ ok:true
  │
  ├─► cloud.loadQuestions({examId, chapterId?, subjectId?, limit, shuffle})
  │   / cloud.loadQuestionsBySource({source:'ai_generated'})
  │   / cloud.loadWeakPoints({examId, userId, limit})
  │
  ├─► initQuiz(pool) → state.questions = pool
  │                    state.currentIdx = 0
  │                    state.answers = []
  │                    state.mode = mode
  │                    state.mockMeta = mode==='mock' ? {...} : null
  │
  └─► renderQuestion() → 進入作答 UI
```

## 單選 vs 多選 UI（renderQuestion）

關鍵分支：`q.question_type === 'multiple_choice'`

### 單選（single_choice）

- 每個選項是 `<button onclick="selectAnswer(oi)">`
- 點擊立即 `_recordAnswer(oi, correct_bool)`
- 顯示解析，繼續按「下一題」

### 多選（multiple_choice，v12）

- checkbox style button `onclick="toggleMulti(oi)"`
- 選項累積在暫存 `state.multiSelection = Set<int>`
- 顯示「已選 N 項」+「送出答案」按鈕
- 點送出 → `submitMulti()`：
  1. 取 `[...state.multiSelection].sort()`
  2. 跟 `q.correct_answer_json`（也是 sorted array）逐項比
  3. 全對 → correct=true，否則 false
  4. 呼叫 `_recordAnswer(sortedArr, correct_bool)`

**UI 關鍵 gotcha**：多選必須先顯示「送出答案」按鈕讓用戶確認；**不要 toggleMulti 立刻判卷**（否則用戶第一個勾就被當成最終答案）。

## `_recordAnswer(selected, correct)`（index.html:5700+）

統一的答案記錄 funnel：

1. `state.answers[state.currentIdx] = { selected, correct, time: secondsFromQuestionShown }`
2. `cloud.submitAnswer({...})` → 非同步寫 `question_attempts`
3. 若在試用期（`state.currentProfile?.trial_expires_at > now()`）→ 呼叫 `increment_trial_question(1)` RPC，更新 `state.currentProfile.trial_questions_used`
4. UI：把選中選項高亮、顯示正解、展開解析、顯示「下一題」

## `question_attempts` 寫入

**欄位**（supabase_schema.sql:246-257 + v12 addition）：

| 欄位 | 用途 |
|---|---|
| `id UUID PK` | — |
| `session_id UUID FK exam_sessions` | 歸屬 session |
| `user_id UUID FK auth.users` | 誰 |
| `question_id TEXT FK questions` | 哪題 |
| `exam_id, chapter_id` | 冗餘，方便查詢 |
| `selected_answer INT` | single_choice 用（0-indexed）；其他型別留 NULL |
| `selected_answer_json JSONB` | v12 加入；multi/true_false/其他用這欄 |
| `is_correct BOOLEAN` | — |
| `time_spent_seconds INT` | 該題耗時 |
| `attempted_at TIMESTAMPTZ` | — |

**寫入方式**：
- 即時 mode：每答一題直接 `upsert` 一筆（用 `(session_id, question_id)` 當唯一鍵，避免重複寫）
- Mock mode：結束後 `saveSession()` 批次寫

## `exam_sessions`

每次開始考試建一筆，結束更新：

| 欄位 | 用途 |
|---|---|
| `id UUID PK` | — |
| `user_id` | — |
| `exam_id, subject_id, chapter_id` | scope |
| `mode` | 見上表 |
| `score_percent` | 0-100 |
| `is_completed BOOLEAN` | 是否做完 |
| `started_at, completed_at` | — |
| `meta JSONB` | 存 mockMeta / time_spent_total 等 |

## 模擬考的 sessionStorage 斷線續做

**只有 mock mode 有**（practice / chapter 不需要）：

- 每答一題後 `sessionStorage.setItem(QUIZ_SNAPSHOT_KEY, {answers, time, totalTime})`（index.html:5409）
- 進首頁時 `loadQuizSnapshot()` 檢查是否有未完成 mock
- 若有 → 顯示「繼續上次模擬考」→ `resumeQuizFromSnapshot()`
- 完成或放棄後清 sessionStorage

**倒數計時器**：僅 mock（index.html:5492+）；時間到自動交卷。

## 試用題數計數（v13）

每答一題（不分 mode）前端呼叫：

```js
const { data } = await cloud.rpc('increment_trial_question', { p_count: 1 });
// data: [{ trial_questions_used, trial_expires_at, still_in_trial }]
state.currentProfile.trial_questions_used = data[0].trial_questions_used;
if (!data[0].still_in_trial) {
  // 試用剛結束，下次進考試會被 paywall 擋
}
```

RPC 邏輯（[./trial-v13.md](./trial-v13.md)）會自動忽略非試用用戶（WHERE `current_tier='free'` AND `trial_expires_at > now()`）。付費用戶呼叫了也不會亂算。

## 前端 state（Quiz 期間）

`state` 物件相關 keys：

| Key | 用途 |
|---|---|
| `state.currentIdx` | 目前在第幾題（0-indexed） |
| `state.questions` | 題目 pool array |
| `state.answers` | `[{selected, correct, time}, ...]` |
| `state.mode` | `'random' / 'practice' / 'chapter' / 'mock' / 'weak' / 'ai'` |
| `state.quizScope` | `{examId, chapterId?, subjectId?}` |
| `state.mockMeta` | mock 才有：`{startedAt, totalTime, passScore, questionCount}` |
| `state.multiSelection` | 多選暫存（Set<int>） |
| `state.currentQuestionShownAt` | 該題顯示的時間戳，算 time_spent |

結束時 `showResult()` 用這些 state 產出結束頁；`saveSession()` 用這些 state 寫 DB。

## 🚩 檢舉題目

每題右上角 🚩 按鈕：

- `openReportModal(questionId)` @ index.html:5628
- 檢舉類型：`wrong_answer` / `unclear` / `other`
- 存題目當下 snapshot（題幹 + options + correct_answer），避免題目之後被編輯追不到
- 寫 `question_reports` 表（詳見 [./question-reports.md](./question-reports.md)）

## 💾 收藏題目

題目工具列有 ☆ 收藏：

- `toggleBookmark(questionId)` @ index.html:4302
- **登入**：寫 `bookmarks` 表（user_id, question_id UNIQUE）
- **未登入**：寫 `localStorage.kaonow_bookmarks`，登入後 `SIGNED_IN` handler 同步上去

詳見 [./progress-and-bookmarks.md](./progress-and-bookmarks.md)。

## 改這個模組時的地雷

- **`_recordAnswer` 是所有答題的共通 funnel**：改計分邏輯、試用計數、記錄 DB 改這裡就好，不要在 `selectAnswer` / `submitMulti` 各改一份
- **多選不要即答即判**：一定要讓用戶點「送出答案」後才算分，否則單選與多選的 UX 混一起
- **mock 的 sessionStorage 清理**：完成 or 放棄 or 時間到都要清，不然下次進首頁又跳「繼續」誤導
- **`selected_answer` vs `selected_answer_json` 擇一填**：single_choice 用前者，其他用後者；validator 若兩者都填會報錯
- **`canStartQuiz` 檢查在進入前做，但答題中斷線回來不會重查**：模擬考續做時理論上 tier 可能已變（極少發生，但 corner case）
- **`increment_trial_question` 是 fire-and-forget**：網路壞了會少算一題；可接受（保守寬鬆）
- **`time_spent_seconds` 是 `Date.now() - currentQuestionShownAt`**：若用戶切到其他分頁這秒數會暴漲；目前接受此 noise
- **章節題數不夠怎麼辦**：若 `loadQuestions` 回傳少於請求數，直接拿到幾題算幾題（不報錯）；首頁 UI 的「章節題數」標籤靠 `chapters.question_count` 冗餘欄位，可能不準
- **加新 question_type 時**：`renderQuestion()` 的 branch、`_recordAnswer` 的 `selected` 型別、`question_attempts` 的哪欄儲存，三處都要動

## 驗證 / 快速檢查

### 某用戶的最近作答

```sql
SELECT qa.attempted_at, qa.question_id, qa.is_correct,
       qa.selected_answer, qa.selected_answer_json,
       qa.time_spent_seconds
  FROM question_attempts qa
 WHERE user_id = '<uuid>'
 ORDER BY attempted_at DESC LIMIT 20;
```

### 某題的正確率（產品層面）

```sql
SELECT question_id,
       count(*) AS total,
       avg(is_correct::int) AS pct_correct
  FROM question_attempts
 WHERE question_id IN ('q-osh-a-001','q-osh-a-002')
 GROUP BY question_id;
```

### 追查 session 結果

```sql
SELECT s.id, s.mode, s.score_percent, s.is_completed,
       count(qa.id) AS attempts,
       sum((qa.is_correct)::int) AS correct
  FROM exam_sessions s LEFT JOIN question_attempts qa ON qa.session_id = s.id
 WHERE s.user_id='<uuid>' GROUP BY s.id ORDER BY s.started_at DESC LIMIT 10;
```

## 待辦 / 延伸

- [ ] `fill_blank` / `ordering` / `matching` UI 實作
- [ ] 題組（`parent_question_id` 指向 stem）的閱讀測驗 UI
- [ ] `media` JSONB 的多媒體渲染（目前只處理單圖）
- [ ] 模擬考中途交卷功能（目前只能等時間到或全答完）
- [ ] 答題時允許「標記待回頭看」（目前只能線性作答）
- [ ] 模擬考成績 + 歷次成績趨勢圖
