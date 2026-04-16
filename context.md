# KaoNow 專案記憶檔

> 最後更新：2026-04-17（前端大修：40 考試題庫上線 + 25 新考試加入 + 圖片題顯示 + questions_published view 加 image_url。總題庫 7,393 題 across 182 exams）
> 使用方式：每次開啟新對話時，請我先讀這份檔案即可快速接上進度。
> 維護：每完成一個階段後，請我「更新 context.md」。
>
> **🎯 下一步主軸**：題庫內容建置（詳見 `QUESTION_BANK_ROADMAP.md` + `BATCH_PROMPTS.md` + `content/sources/_classifier.md`）
> 直接從 `BATCH_PROMPTS.md` 選一批複製貼上就能開工，共 74 批覆蓋全 158 個考試。
> 新工作流：user 從官網抓 PDF 丟 `content/sources/_inbox/` → Claude 自動分類歸檔 → Layer 2 OCR/extract → Layer 3 parse → Supabase。

---

## 1. 專案背景

**KaoNow** 是專為台灣人打造的考試學習 web/app 平台，目標整合台灣各類證照與升學考試（甲乙丙級、國家技術士、經濟部 AI 應用規劃師、公職、語言檢定…等），提供：

- 講義學習
- 題庫練習
- 模擬考試（含倒數計時）
- 弱點加強（個人化分析）
- AI 生成題目（保持新鮮感）
- 考試新聞/時事

**用戶**：Rambo（goodrambo2013@gmail.com）
**品牌**：KaoNow
**網域**：kaonow.com（已上線）、kaonow.app（已購）
**GitHub**：https://github.com/goodrambo/kaonow（public repo）
**Supabase 專案**：kaonow（Tokyo region，免費方案，PostgreSQL 17.6）
- Project ID：`myvfboezhnzgovowhaff`
- Project URL：`https://myvfboezhnzgovowhaff.supabase.co`
- anon key 儲存於 `index.html`（前端公開，靠 RLS 保護）
- **Supabase MCP 已連接**：可從 Claude 直接 `execute_sql`、`list_tables`、`apply_migration` 等，不需手動貼 SQL Editor

---

## 2. 商業模式（混合訂閱 + 免費增值）

| 方案 | 價格 | 內容 |
|---|---|---|
| 免費版 | NT$0 | 有限題數、基本練習 |
| 標準方案 | NT$199/月 | 解鎖所有考試完整題庫 + AI 考題 |
| 進階方案 | NT$349/月 | 加上 AI 弱點分析、模擬考排名、學習計畫 |
| 季費/半年費 | 優惠價 | 照顧一次性需求考生 |

**各模式的付費分層設計**：

| 模式 | 免費 | 標準 | 進階 |
|---|---|---|---|
| 🎲 隨機測驗 | 每日 10 題上限 | 無限 | 無限 |
| 🏆 模擬考試 | 每週 1 次 | 無限 | 無限 + 歷次趨勢 |
| 🎯 弱點加強 | ❌ | ❌ | ✅ AI 弱點分析報告 |
| 🤖 AI 考題 | ❌ | 無限 | 無限 + 個人化 AI 題 |

---

## 3. 技術架構

### 3.1 前端
- 純 HTML/CSS/JS 單檔應用（`index.html`）
- Hash 路由：`#/home`、`#/catalog`、`#/exam/:id`、`#/quiz`、`#/result`、`#/me`
- 部署：GitHub Pages（`goodrambo/kaonow`）+ 自訂網域 `kaonow.com`
- 設計風格：森林綠 + Noto Sans TC + Notion/Linear 風格

### 3.2 後端 / 資料庫
- **Supabase**（PostgreSQL + Auth + RLS + Edge Functions）
- 所有雲端互動集中在 `cloud` 模組（失敗重試、offline queue、統一 log）
- 繞過 Supabase JS client（因 MetaMask SES 衝突），改用 fetch REST API
- Session 還原直接讀 localStorage 的 `sb-*` keys

### 3.3 認證
- Google OAuth（目前為測試模式，只有加入測試用戶的帳號能登入）
- Magic Link（Email 登入連結）
- Site URL 與 Redirect URL 都設為 `https://kaonow.com`

### 3.4 資料庫 Schema（25 張表）

**內容表**：`exam_categories`、`exams`、`subjects`、`exam_subjects`、`chapters`、`questions`、`lectures`、`exam_news`、`promo_codes`

**用戶與訂閱**：`profiles`、`subscriptions`、`payment_transactions`

**學習紀錄**：`exam_sessions`、`question_attempts`、`chapter_progress`、`exam_progress`、`user_stats`

**個人化**：`bookmarks`、`exam_reminders`、`study_plans`、`notifications`

**系統**：`webhook_events`、`user_events`、`admin_users`、`app_settings`

### 3.5 v6 Subjects 架構（2026-04 新增）

解決「高考三級/學測/普考等考試有多個類科、不同類科考不同科目」的架構問題，並讓題庫可跨考試共用。

**新增兩張表：**

- `subjects`（60 筆）：題庫歸屬的最細單位
  - 分類：`common`（6 共同科目）、`professional`（19 公職專業）、`academic`（18 升學）、`language`（13 語言）、`misc`（4 其他）
  - 例：`sub-admin-law`（行政法）、`sub-gsat-chinese`（學測國文）、`sub-toeic-l`（TOEIC Listening）

- `exam_subjects`（99 筆）：考試 ↔ 科目 M:N 關聯 + 類科欄位
  - 欄位：`exam_id`、`subject_id`、`track_name`（類科，nullable）、`is_required`、`weight`、`sort_order`
  - UNIQUE(exam_id, subject_id, track_name)

**擴充兩張表：**

- `chapters` 加 `subject_id`（可選），`exam_id` 改為 nullable
- `questions` 加 `subject_id`（可選），`exam_id` 改為 nullable
- 向下相容：甲種職安衛現有 153 題不受影響（仍綁 exam_id）

**類科邏輯：**

- `track_name IS NULL` = 共同科目（所有類科都要考）
- `track_name = '一般行政'` = 只有這個類科才要考

**已 seed 考試（18 個）：**

| 考試 | 類科 | 範例科目 |
|---|---|---|
| 高考三級 | 4 類科 | 共同 3 + 一般行政/民政/人事/財稅 各 4 科 |
| 普考 | 2 類科 | 共同 2 + 一般行政/人事行政 各 4 科 |
| 警察三等 | 2 類科 | 共同 2 + 行政/刑事警察 |
| 司法三等 | 2 類科 | 共同 2 + 書記官/檢察事務官 |
| 學測 | 2 組 | 共同國英 + 自然組(數A+自然) / 社會組(數B+社會) |
| 分科測驗 | 2 組 | 自然組 4 科 / 社會組 3 科 |
| TOEIC/IELTS/GEPT | 無類科 | Listening/Reading/... 分科 |
| 甲/乙/丙種職安衛 | 無類科 | 單一整合科目 |
| 律師/會計師/記帳士 | 無類科 | 多科共考 |

**跨考試共用範例：**

`sub-admin-law`（行政法）被 4 個考試引用（7 個 exam_subjects 列，因類科展開）：高考三級（行政/民政/人事 3 類科）、普考（行政/人事 2 類科）、警察三等（行政警察）、律師。未來這個科目一次建好題庫，4 個考試都能抽到。

特色：
- 原始資料（`*_attempts`）與聚合（`*_progress`）分離，trigger 自動同步
- RLS 全開，每張表都有行級安全性政策
- `webhook_events` 靠 `(source, external_event_id)` UNIQUE 防重複處理
- 新用戶自動建立 profile + 邀請碼（trigger）

---

## 4. 7 大考試系統分類

1. **國家技術士技能檢定**（勞動部）— 室內配線、中餐烹調、電腦軟體應用、烘焙食品…
2. **專門職業及技術人員考試**（考選部）— 律師、醫師、會計師、護理師、建築師…
3. **公務人員考試**（考選部）— 高考三級、普考、初等、特考
4. **語言能力檢定** — TOEIC、GEPT、IELTS、TOEFL、JLPT
5. **升學考試**（教育部）— 學測、分科、統測、會考
6. **金融 / 商業證照**（金管會）— 信託、內控、證券、保險
7. **資訊科技國際認證** — TQC+、AWS、Security+、PMP

目前 `exams` 表有 **182 筆考試 metadata**（原 159 + Layer 4 新增 23 個技術士丙級），其中 **40 個考試有完整官方題庫**（甲種職安衛 153 題 + 39 個新北勞動雲批次 6,931 題 = 共 7,085 題）。其餘顯示「📚 資料完整，題庫建置中」。

**重要 category ID 命名**（不要再踩雷）：
- `tech-cert`、`prof-exam`、`civil`、`language`、**`academic`**（不是 entrance）、`finance`、`it-cert`

---

## 5. 題目 ID 格式約定

| 類型 | 格式 | 範例 |
|---|---|---|
| 官方・有章節 | `{exam}-ch{N}-{NNN}` | `osh-a-ch0-001` |
| 官方・無章節 | `{exam}-{NNN}` | `toeic-0142` |
| AI 生成・有章節 | `{exam}-ch{N}-ai{NNN}` | `osh-a-ch0-ai001` |
| AI 生成・無章節 | `{exam}-ai{NNN}` | `toeic-ai0001` |

---

## 6. 四模式題庫設計

| 模式 | 題目來源 | 題數 | 特殊規則 |
|---|---|---|---|
| 🎲 隨機測驗 | 只抽 `source='official'` | 10 題 | 純官方考古題 |
| 🏆 模擬考試 | 全題庫 | 依 `exams.mock_question_count` | 倒數計時（<5 分鐘變紅閃爍）、時間到自動交卷 |
| 🎯 弱點加強 | `chapter_progress` + 錯題本 | 10 題 | 無紀錄時友善提示 |
| 🤖 AI 考題 | 只抽 `source='ai_generated'` | 10 題 | 每題顯示「🤖 AI 生成題」badge |

每道題都有 source badge：📝 官方 / 🤖 AI / 👥 社群

**狀態 badge 三態**：
- 🟢 可練習（有題庫）
- 🔵 📚 資料完整（有章節 + 官方連結，可看簡介）
- 🟡 ⏳ 建置中

---

## 7. AI 題目產製流程

**原則**：批次離線產題 + 人工審核後 INSERT，**不做 runtime API call**（避免花錢、品質不一、因人而異）。

工作流：
```
1. 編輯 generate_ai_questions.py 的 GENERATE_CONFIG
2. export OPENAI_API_KEY=sk-xxx
3. python3 generate_ai_questions.py
4. 人眼審核 output/ai_questions_*.sql（刪掉爛題）
5. 貼到 Supabase SQL Editor 執行 INSERT
6. 確認無誤後跑 UPDATE questions SET reviewed_at=NOW()
7. 下次用戶刷題庫時（24h 快取過期後）自動抽到
```

未審核的 AI 題會被 `questions_published` view 自動過濾，安全隔離。

---

## 8. 檔案清單

| 檔案 | 說明 |
|---|---|
| `index.html` | 主網頁（已與 Supabase 整合） |
| `README.md` | 專案說明 |
| `CNAME` | 綁定 kaonow.com |
| `.gitignore`、`.nojekyll` | GitHub Pages 配置 |
| `supabase_schema.sql` | v1 — 23 張表完整 schema + RLS + triggers + seed |
| `supabase_schema_v2.sql` | v2 — AI 題目欄位（source、source_meta、reviewed_by、reviewed_at、questions_published view）|
| `supabase_schema_v3.sql` | v3 — 模擬考設定欄位（mock_question_count、mock_time_minutes、mock_pass_score）|
| `supabase_schema_v4.sql` | v4 — 25 個專技考試 seed + 4 張表補 updated_at |
| `supabase_schema_v5.sql` | v5 — 6 大系統 133 個考試 seed + 533 章節 |
| `supabase_schema_v6.sql` | v6 — subjects + exam_subjects 架構 + 60 科目 + 99 關聯 |
| `supabase_schema_v6_1.sql` | v6.1 — 補丁：`questions_published` view 補上 `subject_id` 欄位 |
| `supabase_schema_v6_2.sql` | v6.2 — 資料遷移：單科 exam（甲種職安衛）的 questions/chapters 補 subject_id |
| `supabase_schema_v7.sql` | v7 — 考試收藏 `exam_bookmarks` 表 + RLS |
| `supabase_schema_v8.sql` | v8 — 誠實標註：osh-a 153 題 `source` 從 official 改 `ai_generated`（原為 Claude 依法規知識手寫，非官方考古題） |
| `QUESTION_BANK_ROADMAP.md` | 🆕 題庫建置 spec：ID 規則、SQL template、workflow、優先序、進度表 |
| `BATCH_PROMPTS.md` | 🆕 74 批預備好的 session prompt，一鍵複製開工 |
| `DATA_COLLECTION_PROMPT.md` | 🆕 給 openclaw/Computer Use 的 megaprompt，自動抓 158 個考試原始資料到 `raw/` |
| `verify_schema.py` | 自動驗證 JS vs SQL schema 對齊 |
| `generate_ai_questions.py` | AI 批次產題模板（支援 OpenAI / Anthropic）|
| `outputs/generate_six_systems.py` | 6 大系統考試生成器（可重跑） |
| `outputs/generate_subjects.py` | Subjects 架構生成器（可重跑）|
| `EXAM_ROADMAP.md` | 7 大系統完整路線圖 |
| `TECH_CERT_RESEARCH.md` | 技術士考試詳細研究資料 |

---

## 9. 已完成里程碑

- ✅ kaonow.com 正式上線並綁定 DNS
- ✅ 首頁、考試目錄、個人中心、定價頁
- ✅ 7 大系統分類架構
- ✅ **158 個考試 metadata 全線完成**（專技 25 + 技術士 39 + 公職 23 + 語言 17 + 升學 8 + 金融 21 + IT 25）
- ✅ 所有考試都有：簡介、發證單位、考試形式、訓練時數、年報考人數、官方連結、模擬考規則、章節結構
- ✅ 甲種職安衛 153 題完整題庫 + 5 章講義 + 6 則新聞
- ✅ Supabase Auth（Google OAuth + Magic Link）
- ✅ 23 張資料表 schema（含 RLS、triggers、indexes）
- ✅ cloud 集中模組（失敗重試、offline queue、token 管理）
- ✅ 題庫從 Supabase 動態讀取（24h 雙層快取）
- ✅ 四模式題庫（隨機/模擬/弱點/AI）
- ✅ 模擬考倒數計時器
- ✅ 題目 source badge
- ✅ 狀態 3 態 badge
- ✅ AI 題目端到端流程驗證（INSERT → 審核 → 前端抽到 → 答題）
- ✅ 自動化 schema 驗證腳本
- ✅ Header 垂直置中 bug 修復（flex 嵌套循環高度問題）
- ✅ **v6 Subjects 架構**：60 科目 + 99 exam_subjects 關聯，支援類科與跨考試題庫共用
- ✅ **發現機制**（2026-04-16）：catalog 搜尋（優先級打分，短英文不誤中 desc/issuer）、子分類（技術士/公職/語言/升學）、熱門考試 section、最近瀏覽（localStorage）、⭐ 考試收藏（localStorage + 雲端同步 `exam_bookmarks`，未登入點擊彈 modal）
- ✅ **首頁 UX polish**（2026-04-16）：hero 單一 CTA、trust pill、category grid 4+3 置中、features 3×2、時間顯示改「X 分 Y 秒」、對外術語去 v6 jargon
- ✅ **v6 Subjects UI 整合**（2026-04-16）：
  - `#/subject/:id` 新路由 + 獨立 `screen-subject` 區塊（概覽/講義/題庫三 tab）
  - 考試詳情頁偵測 `exam_subjects`：有關聯 → 題庫 pane 變成「類科選擇 + 科目卡片」；無關聯 → 維持舊流程（甲種職安衛）
  - 科目卡片標示共同/專業 badge（`.subj-badge`）
  - 科目頁顯示：題目總數、官方/AI 題數、章節、跨考試引用清單
  - 科目層四模式：隨機（依官方題）/ 單科模擬考（上限 30 題 · 45 分）/ 弱點（過濾本科目題）/ AI 題
  - cloud 模組新增：`loadExamSubjects / loadSubject / loadSubjectExams / loadSubjectChapters / loadQuestionsBySubject / loadQuestionsBySubjectAndSource`（6 h TTL 雙層快取）
  - `questions_published` view 補上 `subject_id`（須套 `supabase_schema_v6_1.sql`）
  - `state.quizScope` 區分 exam/subject 範圍，結果頁「回到學習」自動導回對應頁
  - 最近練習紀錄加上 `kind` 欄位，支援 subject-scoped 紀錄
  - 單科無類科的考試（如甲種職安衛）自動走舊版 4 模式 UI，不強迫多一次點擊；只在 overview 底端加個「🔗 本考試對應科目」小提示
  - v6.2 migration（`supabase_schema_v6_2.sql`）：把舊有 exam-bound 的 questions/chapters 補 subject_id
- ✅ **題庫來源誠實標註**（2026-04-16）：
  - 背景發現：v1 手刻的 153 題 osh-a 是 Claude 依法規訓練知識生成，非官方考古題；卻被 v2 誤標 source='official'
  - v8 SQL 把 osh-a 全數改為 `source='ai_generated'`，補 `reviewed_at=NOW()`、更新 `source_meta` 附免責聲明
  - 前端：考試/科目「題庫」tab 加題庫來源說明橫幅（`.source-notice`）；兩個隨機測驗 mode card 文案移除「官方考古題」誤導字眼；`Q_CACHE_PREFIX` 換版讓舊快取失效
  - 未來：真正官方題目透過 openclaw 抓進來後，`source_type='official'` 自動和 AI 題分流顯示
- ✅ **UX 審查回修批次 1（P0 + P1）**（2026-04-16）：
  - **P0-1 隨機測驗 source filter 修掉**：v8 把 osh-a 改成 ai_generated 後，`startQuiz('random')` / `startSubjectQuiz('random')` 還在只抽 `source='official'` → 直接讓「隨機測驗」按鈕壞掉。改成 `cloud.loadQuestions()` / `cloud.loadQuestionsBySubject()`（不分來源），靠每題右上 badge 標示來源
  - **P0-2 alert 內部字串清乾淨**：刪掉 `generate_ai_questions.py`、「用管理員產出題目」等洩漏腳本名稱的字樣；所有 `alert()` 改 `showToast()`
  - **P0-3 定價頁「立即升級」改「即將上線」**：標準 / 進階方案兩顆按鈕改 `disabled` + `.price-cta.coming` 灰態；先前的 `alert('訂閱功能即將上線')` 假 CTA 全移除
  - **P1-1 mode card 文案誠實化**：
    - 弱點加強「AI 分析你的答題紀錄」→「依錯題與弱章節加強」（現在是規則式不是 AI）
    - AI 考題「AI 從講義產出的新鮮題」→「AI 生成練習題」（講義還沒全量建置）
    - 兩處（exam bank + subject bank）同步改
  - **P1-6 考試 hero 補題源分佈**：hero 「題目數」stat 載入後異步抓 `cloud.loadQuestions()` 統計，若同時有 official / ai 會在 label 下補 `(N 官方 / M AI 生成)`；只有 AI 時補 `(AI 生成題)`
- ✅ **UX 審查回修批次 4（Mock 續考 + 結果頁 + a11y + 行動版）**（2026-04-16）：
  - **P0 Mock 模擬考快照續考**：刷新 / 誤關頁會整份掉光的最大痛點修掉。新增 `QUIZ_SNAPSHOT_KEY = 'kaonow_active_quiz'` 用 `sessionStorage` 存（tab 關掉自然清，不污染 localStorage）。`saveQuizSnapshot()` 只在 `state.mode === 'mock'` 存，內容含 questions、answers、currentIdx、mockDeadline、mode、quizScope、mockMeta 等；hooks：`initQuiz` 結尾 save、`selectAnswer` / `nextQuestion` / `prevQuestion` / `goToQuestion` 每次切換 save；`clearQuizSnapshot()` hooks：`initQuiz` 開頭（清舊）、`showResult`、`confirmExit`。頁面 boot 改用 `bootApp()` wrapper：先 `bootAuth()`，400ms 後 `checkResumeQuiz()` 讀快照，若 `mockDeadline` 還沒過就 `confirm("發現未完成的模擬考（N/M 題已作答，剩約 X 分鐘）")` 詢問續考；拒絕則清掉。續考會自動接回倒數（`startCountdown()`）
  - **P2 結果頁章節分析 無 ch fallback**：`showResult` 裡 `chStats[q.ch]` 當 `q.ch` 是 null / NaN / -1 時會跑出「第 NaN 章」。改成 bucket 到 `UNCAT = '__uncategorized'`，label 顯示「綜合／其他」；排序邏輯把 UNCAT 放最後；若整份題目只有 UNCAT 一桶（全無 chapter_id），整個「各章節表現」區直接隱藏，不再勉強顯示一格沒意義的分析
  - **P1 行動版 mode-grid 保持 2×2**：原本 `@media(max-width:760px)` 把 `.mode-grid` 改 `1fr` 單欄，造成 4 個模式卡片在手機上要捲很多。改回維持 2 欄，只縮 gap 到 8px、mode-card padding 14px、min-height 84px、icon/title/desc font-size 微縮，在 iPhone SE 寬度也放得下且更易點
  - **P3 Bookmark 按鈕 a11y**：`.bookmark-btn` 原本只有 `aria-label`，加上 `aria-pressed="true/false"`（收藏 = true、未收藏 = false），screen reader 會明確播報「切換按鈕」狀態；`toggleBookmark` 既有的 re-render 流程（renderCatalog / renderHome / renderMe）會自動重建 DOM，不用另外做 DOM patch
- ✅ **UX 審查回修批次 3（Quiz + Catalog + Toast）**（2026-04-16）：
  - **時間到自動交卷凍結作答**：`_countdownInterval` tick 到 `remain<=0` 時，設 `state.quizFrozen=true`、把 `question-area` opacity 壓到 0.55 + `pointer-events:none`，showToast「⏰ 時間到！正在計算結果…」，1.2 秒後才呼叫 `showResult()`；`selectAnswer` 加 guard 避免在這 1.2 秒還能偷答；`initQuiz` 進場時重設 flag 避免後續測驗卡住
  - **結果頁「複習錯題」動態隱藏**：全對時直接不顯示按鈕（`#result-review-btn` 的 `display:none`），不再跳 alert；若硬點也改 `showToast('🎉 恭喜全部答對...')`
  - **Catalog 分類切換自動清 search**：三處 onclick（home category card、`__bookmark` chip、一般 category chip）都補 `state.catalogSearch=''`，避免「切分類還殘留搜尋字 → 空白列表」的困惑
  - **Toast 排隊**：原本 `showToast` 連續呼叫會被覆蓋。改為 `_toastQueue` 陣列 + `_toastShowing` flag：每則顯示 2.5 秒，隊列下一則間隔 250ms；相同文字的 back-to-back 呼叫會略過（避免 double-tap）。整個系統向後相容，呼叫方式不變
- ✅ **Content Pipeline Layer 3 — 文字 → 結構化題目 JSON**（2026-04-16）：
  - **腳本**：`outputs/parse_layer3.py`
  - **支援 4 種 PDF 題庫格式**（從實戰中歸納）：
    - 格式 A「年度試題×2」：多數技術士丙級，2 年份共 160 題（auto-c / elec-c / hvac-c / …）
    - 格式 B「單年度」：80 題（cook-v-c / noodle-water-c）
    - 格式 C「工作項目分章」：forklift（4 章 598 題）/ mason-brick-c（11 章 606 題）/ osh-mgr-b（7 章 837 題）/ osh-common（100 題）
    - 格式 D「alt format」：`(答案)   題號    題幹\n   選項`（nail-art-c 獨有）
  - **題目正則**：standard 用 `^\s*(\d+)\.\s*\((\d)\)\s*(.+?)` 多行 + DOTALL；alt 用 `^\s*\((\d)\)\s+(\d+)\s+(.+?)`
  - **選項切分**：依 ①②③④ 全形字切 4 段；`tighten_cjk_spaces` 壓掉 pdftotext 斷行殘留的中中空格
  - **倒裝題處理**：台灣特殊題式「N.(A) ①選1 ②選2 ③選3 ④選4  XXXX（題幹接在最後）」—— 在原始（未 normalize）的 `④` 之後偵測 `\s{2,}` 分隔，把後半段當真題幹。例：`44. (3) ①髮蠟 ②燙髮劑 ③生髮水 ④染髮劑     非屬化粧品管理。` → Q="非屬化粧品管理" opts=["髮蠟","燙髮劑","生髮水","染髮劑"] ans=3
  - **章節偵測**：`年度` / `工作項目 NN：名稱` 兩類自動標註到每題的 `sections[]`
  - **題目去重**：MD5(question + options) 當 key；**圖片題**（`has_image`：題幹含「下圖/下表」等關鍵字，或任一選項為空→判定選項是電路圖/波形等圖像）改用 `(section, raw_qnum)` 當 key，避免誤合併視覺不同的題
  - **成果統計**：
    - 39 考試解析成功（osh-c 待 OCR 除外），全部 0 parser issues
    - 總 **7,246 題** 獨特題目
    - 其中 315 題（4.3%）標 `has_image`，需人工補圖源，但結構欄位（答案/已抽到的選項文字）仍保留
    - 格式分佈：38 standard + 1 alt
  - **產物**：`content/parsed/{exam_id}/questions.json`（完整題目）+ `parse_report.json`（健檢摘要）+ `_progress.md` 總表
  - **JSON 欄位**（每題）：`id` / `exam_id` / `question` / `options[4]` / `answer` / `sections` / `raw_qnums` / `occurrences` / `has_image` / `needs_manual_review` / `answer_conflicts`
  - **.gitignore**：`content/parsed/**` 忽略 `questions.json` 本體，白名單 `parse_report.json` + `_progress.md`
- ✅ **Content Pipeline Layer 2 — PDF → 純文字抽取**（2026-04-16）：
  - **工具**：Poppler `pdftotext -layout`（有文字層）+ Tesseract OCR 方案（影像 PDF，需本機跑）
  - **腳本**：`outputs/extract_layer2.py` — 自動判斷 chars/page < 100 就標 `ocr_pending`，否則 pdftotext 抽文字
  - **產物**：`content/extracted/{exam_id}/{stem}.txt` + `.meta.json`（pages / chars / extractor / status）+ `_progress.md` 總表
  - **成果**：40 份 PDF 中 **39 份成功抽取**（pdftotext 直接抽，格式完美：`數字. (答案) 題幹 ①選項1 ②選項2 ③選項3 ④選項4`，題目 + 答案同行，結構清晰好 parse）
  - **osh-c 例外**：5 頁 PDF 只抽到 5 字元（iLovePDF producer，純影像掃描版）→ 標 `ocr_pending`，寫 `content/extracted/osh-c/OCR_INSTRUCTIONS.md` 指引 user 在 Mac 上用 `brew install ocrmypdf tesseract-lang` + `ocrmypdf -l chi_tra` 處理（sandbox 因 sudo 被禁、`ports.ubuntu.com` 網路 allowlist 外無法自己裝繁中 tessdata）
  - **技術士 PDF 結構發現**：多數新北勞動雲檔是「共同科目 80 題 + 專業科目 80 題 = 160 題」雙 section 結構（題號各自 1-80），Layer 3 parser 需切 section 並用偏移量分配題號
  - **.gitignore 擴充**：`content/extracted/**` 忽略原文，白名單 `_progress.md` / `*.meta.json` / `OCR_INSTRUCTIONS.md`
- ✅ **Content Pipeline Layer 1 — Inbox 分類系統上線**（2026-04-16）：
  - **架構**：`content/sources/` 三層 pipeline：Layer 1 原始檔歸檔 → Layer 2 `content/extracted/` OCR/文字抽取 → Layer 3 `content/parsed/` 結構化題目 JSON → Supabase
  - **新增檔案**：
    - `content/sources/_inbox/` — user 下載檔暫存區（原檔名原封不動）
    - `content/sources/_classifier.md` — 分類工作流手冊 + 已知考試對照表（類型代碼、來源代碼、命名規則）
    - `content/sources/_folders.md` — 自動生成的 `exam_id ↔ 考試名稱` 對照表（每次分類後更新）
    - `outputs/migrate_inbox.py` — sandbox 內的 inbox 分類腳本（filename pattern match + MD5 dedup + 自動建資料夾 + 寫 `_meta.json` + 生成 `_folders.md`）
    - `.gitignore` 新增 whitelist 模式：`content/sources/**` 全忽略，但白名單保留所有子資料夾 + `_meta.json` + `_classifier.md` + `_folders.md` + `.gitkeep`（原始 PDF 因版權 + 檔案大小不入版控）
  - **檔名約定**：`{exam_id}_{type}_{source}_{yyyymmdd}.{ext}`
    - `type`：q（題庫）/ qa（含答案）/ sim（模擬）/ lec（講義）/ syl（課綱）/ law（法規）/ img（附圖）/ meta（簡章）/ ref（參考）
    - `source`：ntpc（新北勞動雲）/ osha（勞動部職安署）/ istsha / moe / ceec / lttc / tcte…
  - **每考試資料夾結構**：`{exam_id}/questions|lectures|images|legal|misc/` 五個子夾 + `_meta.json` 記錄所有檔案 metadata（原檔名、MD5、size、source URL、授權、status 狀態機：raw → extracted → parsed → inserted）
  - **首批成果**（新北勞動雲 職訓補給站題庫下載 48 份 PDF）：
    - 40 個考試資料夾建立，涵蓋 osh-c / osh-common / osh-mgr-b / 及 37 個技術士考試
    - 39 份獨特 PDF 歸位 + 7 份 MD5 重複檔去重（`_meta.json` 記 `status: "deduplicated"`）
    - 命中率 100%（PATTERNS 表 40 筆規則，全部自動分類無需人工介入）
    - 15 個「新考試」標記 ⚠️（等累積到一定數量批次補 `exams` seed + schema）
  - **Sandbox 限制踩雷**：session mount 禁止 `unlink` / `rm` / `mv` 覆寫。對策：腳本從 `shutil.move` 改 `shutil.copy2`（inbox 留原檔當備份），user 自行清理 inbox
- ✅ **UX 審查回修批次 2（P1 + P2）**（2026-04-16）：
  - **Quiz 加「上一題」按鈕**：`prevQuestion()` 新函式 + `renderQuestion` 時在 idx>0 顯示「← 上一題」；用 `margin-right:auto` 推到左邊，下一題留右邊；dots 仍可跨跳但現在有明顯按鈕，不必精準點小圓點
  - **殘留 alert 清光**：`startChapter`、`startSubjectChapter` 內「題庫載入失敗 / 此章節暫無題目」全改 `showToast`；`resetProgress` 的 alert 也改
  - **Me 頁設定區重構**：原本只有一顆「清除所有學習紀錄」按鈕。現在是動態卡片：未登入 → 顯示「登入 / 註冊」+ 解釋文字；已登入 → 顯示「登出」；清除按鈕文字改「清除本機學習紀錄」，沒紀錄時 disabled；confirm 文字依登入狀態變（已登入會說明雲端資料不受影響）
  - **建置中章節 hover 誤導修掉**：新增 `.chapter-item.is-placeholder` class 含 `pointer-events:none`；把 inline style 的 placeholder 改成用 class；hover 不再變色
  - **全域 disabled 按鈕 cursor**：加 `button[disabled],button:disabled{cursor:not-allowed;opacity:0.55}` + 停用 hover transform，解決 disabled 按鈕視覺上仍像可點的問題
  - **Email 輸入強化**：magic-email input 加 `required autocomplete="email" inputmode="email"`；`sendMagicLink` 改用完整 regex 驗證（`^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$`），失敗時 border 變紅 2 秒並 focus 回 input，提早擋住無效輸入不等 server 回 reject

---

## 10. 待辦事項

### 🔥 最優先（題庫內容建置）— 見 `QUESTION_BANK_ROADMAP.md` + `content/sources/_classifier.md`
**Layer 1-4 全部完成並部署到 Supabase。✅**

- [x] **Layer 1**：inbox 分類系統 + 40 考試原始 PDF 歸檔（新北勞動雲批）
- [x] **Layer 2**：pdftotext 抽 39/40 考試成功；osh-c 1 份影像 PDF 待 user 本機 OCR
- [x] **Layer 3**：解析 7,246 題結構化 JSON，涵蓋 4 種 PDF 格式 + 倒裝題處理 + 圖片題標記
- [x] **Layer 4**：JSON → Supabase — 6,931 題 + 23 新考試 + 18 章節（工作項目制）已全部寫入 Supabase ✅
  - SQL 產出 5.1 MB（冪等 ON CONFLICT），因 SQL Editor 大小限制分拆成 9 份 `content/sql/split/layer4_part{01-09}.sql`
  - 驗證通過：182 exams / 7,085 questions / 663 chapters / 全部 published
  - Supabase MCP 連接器已啟用（project ID: `myvfboezhnzgovowhaff`），可直接從 Claude 執行 SQL
- [x] **Layer 4.5**：308 題圖片題完成 ✅（2026-04-17）
  - `pdftoppm -r 200` 把 26 個考試 PDF 轉 326 頁 PNG → Pillow 裁切題目區域 → 308 張圖
  - Supabase Storage bucket `question-images`（public，1MB limit，png/jpg/webp）
  - 上傳腳本 `content/images/upload_to_supabase.py`（需 Mac 本機跑，因 sandbox 網路擋 supabase.co）
  - Public URL 格式：`https://myvfboezhnzgovowhaff.supabase.co/storage/v1/object/public/question-images/{exam_id}/{question_id}.png`
  - `questions` 表新增 `image_url TEXT` 欄位
  - 7 題仍缺圖：jewelry-c 2 題（無 PDF）+ nail-art-c 5 題（無 extracted text）
  - 最終：**7,393 題**（7,085 文字題 + 308 圖片題），24 個考試有圖片題
- [x] **前端大修**（2026-04-17）— 解決題庫上線但前端顯示「建置中」的問題
  - 16 個已有題目的考試 `available:false` → `available:true`（elec-c, hvac-c, forklift, cook-c 等）
  - 25 個新考試加入前端 exams array（mason-brick-c, nail-art-c, telecom-c, water-pipe-c 等 DB 有題但前端沒 entry 的）
  - `osh-b` 改 ID 為 `osh-mgr-b`（對齊 DB exam_id，837 題）
  - `questions_published` view 加 `image_url` 欄位（migration: `add_image_url_to_questions_published`）
  - 前端 SELECT 加 `image_url`、`_mapDbQuestion` 加 `img` 欄位、`renderQuestion` 加 `<img>` 渲染（點擊可放大）
  - 首頁預設題數 154 → 7,393（Supabase API 動態 count 也正常回 7,393）
  - **需 `git push` 部署到 GitHub Pages 才能生效**
- [ ] 乙種職安衛（osh-b / osh-mgr-b）— 題庫已有 837 題 ✅，但 inbox 原始 PDF 還可補更多
- [ ] 丙種職安衛（osh-c）— Layer 1 ✅ Layer 2 ⏳（user 需本機 OCR，見 `content/extracted/osh-c/OCR_INSTRUCTIONS.md`）
- [ ] 行政法（sub-admin-law）— 共用科目，4 考試都受益
- [ ] 憲法（sub-constitution）
- [ ] 室內配線丙級（elec-c）— Layer 1 ✅
- [ ] 中餐烹調（葷食/素食）丙級（cook-c / cook-v-c）— Layer 1 ✅
- [ ] 全民英檢中級
- [ ] 每做一個 commit 一次，更新 roadmap 的進度表

### 📥 Inbox 管理 TODO
- [ ] User 手動刪 `content/sources/accounting-c/questions/accounting-c_q_ntpc_20260416_v2.pdf`（第一次 script 崩潰的殘檔，sandbox 無法自刪）
- [ ] User 驗證後清空 `content/sources/_inbox/新北市勞動雲 職訓補給站題庫下載/`（48 份原檔已 copy 到對應考試）
- [ ] 累積 ⚠️ 新考試（15 個）達量後批次補 `exams` seed

### 舊 v6 整合相關（✅ 已完成 2026-04-16）
- [x] 考試詳情頁偵測 `exam_subjects` → 類科選擇器 + 科目卡片
- [x] 科目卡片：共同/專業 badge
- [x] 點科目 → `#/subject/:id` 科目詳情頁（概覽 / 講義 / 題庫）
- [x] `cloud.loadQuestionsBySubject(subjectId)` 新增
- [x] 單科模擬考模式（45 分 · 上限 30 題）
- [x] `supabase_schema_v6_1.sql` 補 `questions_published.subject_id`
- [ ] 跨科整卷模擬（例：高考三級-行政 7 科聯合卷）— 之後再做，等有題庫
- [ ] 科目層級講義內容 seed（跟題庫一起建）

### 近期（Phase B：付費分層）
- [ ] 讀取 `profiles.current_tier` 判斷訂閱狀態
- [ ] 免費版題數/考試次數限制
- [ ] 金流 webhook 基礎（綠界 / 藍新）— 需搬到 Vercel 加 serverless function
- [ ] 訂閱頁串接實際付款

### 中期（內容擴充）
- [ ] 批次產 AI 題（實際跑 `generate_ai_questions.py`，需 OpenAI API Key）
- [x] ~~擴充其他 6 大系統 metadata~~ ✅ 已完成（133 個新考試）
- [ ] 為高優先考試建立真題題庫：
  - 乙種/丙種職安衛（架構與甲種一致，最快複用）
  - 室內配線丙級（技術士年考人數最多，15萬+）
  - 中餐烹調丙級（餐飲業必備，10萬+）
  - TOEIC、全民英檢中級（語言測驗熱門）
  - 護理師、高考三級（專技 / 公職熱門）
- [ ] 後期校準冷門考試 metadata（URL、報考人數等）

### 架構升級
- [ ] `exams` / `categories` 改為從 Supabase 動態讀取（目前前端 hardcode）
- [ ] 搬到 Vercel + Next.js（為 SSR SEO + webhook 做準備）
- [ ] repo 改 private（搬 Vercel 後）
- [ ] TypeScript + Supabase 自動產型別定義

### 正式發布前
- [ ] Google Cloud Console 域名驗證 `kaonow.com`
- [ ] Google OAuth 從「測試」改為「正式發布」
- [ ] 申請公司行號（綠界/藍新金流必要）
- [ ] 隱私權政策、服務條款實際撰寫
- [ ] 清除測試 AI 題（`DELETE FROM questions WHERE id='osh-a-ch0-ai001'`）

### UI/UX 打磨
- [ ] 答題後動畫
- [ ] 更精緻的倒數計時 UI
- [ ] 首頁 hero 區塊細節調整

---

## 11. 重要注意事項（踩過的雷）

1. **Shell heredoc `!` 轉義陷阱**
   bash history expansion 會把 `!` 轉成 `\!`，導致 `<!DOCTYPE html>` 變 `<\!DOCTYPE html>`、`!important` 失效、SQL `!=` 出錯。
   **對策**：避免用 heredoc 寫長文字，改用 `Write` 工具直接寫檔，或用 `sed` 修復。

2. **MetaMask SES 衝突**
   瀏覽器裝了 MetaMask 會封鎖 `eval` 和 `Function` 建構子，導致 Supabase JS client 內部卡死。
   **對策**：繞過 JS client，直接用 fetch REST API 呼叫 Supabase。

3. **RLS 嚴格保護**
   一般用戶的 anon token 無法寫入 `questions` 表（這是對的）。AI 題只能透過 SQL Editor 或 service_role key 插入。

4. **題目穩定 ID 必須與 SQL seed 一致**
   不能靠陣列 index 識別題目，否則新增/刪除題目會破壞所有用戶的答題紀錄。

5. **Supabase 免費方案 7 天無活動會暫停**
   早期流量不穩時會造成 30 秒冷啟動。對策：設 cron 定時 ping，或升 Pro ($25/月)。

6. **前端 anon key 公開**
   RLS 必須嚴格設定（每張表都要開），否則資料會外洩。

7. **金流 webhook 需要後端**
   純靜態網站接不了 webhook。必要時搬 Vercel + serverless function。

8. **公司行號是金流門檻**
   綠界、藍新都需要統一編號。個人戶可先用但功能受限。

9. **測試 AI 題保留在 DB**
   `osh-a-ch0-ai001` 是 schema v2 測試時插入的，還在資料庫裡。要清掉用 `DELETE FROM public.questions WHERE id='osh-a-ch0-ai001';`

10. **驗證腳本是保命符**
    每次改 JS 與 Supabase 互動時跑 `python3 verify_schema.py`，確保表名/欄位對齊。

11. **Category ID 命名陷阱**
    升學類別 DB 是 `academic` 不是 `entrance`。INSERT 時 FK 會擋下錯誤 ID。v5 第一次跑失敗就是這個原因。

12. **pbcopy 後要開新 query tab**
    在 Supabase SQL Editor 貼新內容時務必點「+ New query」開新 tab，不要編輯舊 query tab，否則會跑到舊 SQL。

13. **flex 嵌套循環高度 bug**
    `.app-header { height: 80px }` + `.container`（無高度）+ `.header-inner { height: 100% }` 造成循環引用。修法：讓 `.app-header` 本身變 flex 容器（display:flex; align-items:center），並從 header-inner 移除 `height:100%`。

14. **Schema 抽象層級陷阱**
    不要把「考試」當成題庫最細單位。實際上一個考試（如高考三級）可能有多類科，不同類科考不同科目，同樣的科目（如行政法）會在多個考試出現。v6 的 subjects 架構就是解這個。切勿退回舊架構把「高考三級-行政」當獨立 exam，那會造成題庫重複維護噩夢。

15. **STRING_AGG 顯示截斷**
    Supabase SQL Editor 的 table 顯示會截斷長字串。驗證類科數量時用 `GROUP BY + COUNT` 分行顯示，不要用 STRING_AGG。

16. **chapters 表欄位名**
    是 `name` 不是 `title`、有 `chapter_number`/`question_count`/`sort_order`。第一次寫 `loadSubjectChapters` 時把欄位打錯導致章節 0 的 bug，已修。

17. **HTML attribute 塞 JSON.stringify 會爆**
    `onclick="foo(${JSON.stringify(str)})"` 會產生 `onclick="foo("中文")"`，攻破屬性雙引號。用 data-* + index 或單引號字串代替。類科切換第一版就踩雷。

18. **CREATE OR REPLACE VIEW 不能改欄位順序**
    PostgreSQL 限制：同位置不能改欄位名。在中間插欄位要先 `DROP VIEW` 再 `CREATE VIEW`。v6.1 patch 第一版踩到。

19. **state 殘留影響 render**
    `state.fromExamId` 跨路由不清空會導致科目頁的麵包屑顯示錯的父考試。每次 `renderSubject` 先驗證 `fromExamId` 是否真的引用本科目，否則清掉。

20. **Sandbox mount 禁止 unlink / rm / mv 覆寫**
    session mnt 下的檔案只能新建/讀，不能刪除或原地覆寫（連剛建的檔都不行）。第一次跑 inbox 分類時 `shutil.move` 炸 `Operation not permitted`。對策：改 `shutil.copy2` 讓原檔留在 inbox 當備份；重複執行 script 的目標檔若已存在會自動 `_v2` 後綴避免覆寫錯誤，但也會留下孤兒檔需 user 手動清。

21. **.gitignore 白名單要先 un-ignore 目錄**
    `content/sources/**` 會把子目錄也視為 ignored，造成 `!content/sources/**/_meta.json` 失效（Git 根本沒進到那個目錄）。必須先加 `!content/sources/**/` un-ignore 所有子目錄，再白名單個別檔案。驗證指令：`git check-ignore -v <path>`。

22. **PDF 檔名辨識順序**
    `match_pattern` 用 substring 比對，`"丙種職業安全衛生業務主管教育訓練班(1)"` 會被更長的 `"丙種職業安全衛生業務主管教育訓練班(2)"` 搶先命中。PATTERNS 列表順序必須「更具體的先、更廣的後」，否則會錯歸檔。

23. **台灣考題的倒裝題式**
    很多考試會出現「①選1 ②選2 ③選3 ④選4  題幹」這種題幹在最後的格式，例：`44. (3) ①髮蠟 ②燙髮劑 ③生髮水 ④染髮劑     非屬化粧品管理。` 這在 pdftotext 抽出後，因為 normalize 會吃掉多餘空格，單純依 `①` 前當題幹會抓到空字串。解法：在原始（未 normalize）的 `④` 之後偵測 `\s{2,}` 分隔，後半段才是真題幹。

24. **圖片題 / 電路圖題的選項抽不到**
    ind-wire-c、mech-elec-c、archi-cad-c 的電路圖題，選項 ①②③④ 本身是電路圖 / 波形 / 建築圖，pdftotext 抽不到文字→四個選項都是空字串。對策：判斷 `任一選項為空` 或 `題幹含「下圖/下表/圖示」`→ 標 `has_image=true` + `needs_manual_review=true`，且 dedup key 改用 `(section, raw_qnum)` 避免誤合併題幹相同但指不同圖的題。Layer 4.5 要另跑 pdftoppm 切圖 + 人工上傳 CDN 後補 `question.image_url`。

25. **技術士 PDF 通常是「2 年份試題 × 80 題」而非「共同 + 專業」**
    第一次估錯結構，以為是 80 題共同 + 80 題專業。實際多數檔是 113 年度 80 題 + 114 年度 80 題兩梯次歷屆試題疊在一起，兩個年份的 80 題大致獨立（跨年度重複率 < 5%）。forklift / mason-brick-c / osh-mgr-b 則是按「工作項目」章節分組。

26. **pdftotext 末題選項尾巴沾 PDF 頁腳/頁首**
    每頁最後一題的最後一個選項（④ 之後）會黏到 PDF 頁腳文字（如 `114 汽車修護丙 5 -5 (序 0 02)`）或下一頁頁首（年度+試題標題行）。共 46 題受影響（0.6%）。Layer 4 用 `RE_PAGE_NOISE` regex 在 SQL 生成時自動清除。

27. **Layer 4 章節策略：年份制 vs 工作項目制**
    年份型 sections（如 `113 年度`、`114 年度`）不建立新 chapters，questions.chapter_id = NULL。工作項目型（forklift 3 章 / mason-brick-c 11 章 / osh-common 1 章 / osh-mgr-b 3 章）才建 chapters。理由：v5 schema 已有以技術主題命名的 ch0-ch3（如 auto-c 的「引擎系統」「底盤系統」），年份不是主題維度，混在一起反而亂。

28. **Supabase SQL Editor 有大小限制**
    5.1 MB 的 SQL 檔會報 `Error: Query is too large to be run via the SQL Editor`。對策：用腳本分拆成 9 份 120-420 KB 的檔（每份自帶 `BEGIN; ... COMMIT;`），逐份在 SQL Editor 執行。或用 Supabase MCP `execute_sql` 直接從 Claude 推（但單次 payload 也有限制，適合中小量操作）。

29. **Sandbox 網路無法直連 Supabase**
    sandbox 的 curl 打 `supabase.co` 回 HTTP 000（exit 56），被網路 allowlist 擋。無法從 sandbox 用 REST API 推資料。對策：用 Supabase MCP 連接器（走 Cowork 的 MCP bridge，不受 sandbox 限制）或讓 user 在本機/SQL Editor 手動執行。

---

## 12. 常用指令速查

**更新網站**：
```bash
cd ~/Documents/Claude/Projects/KaoNow && \
git add . && \
git commit -m "描述" && \
git push
```

**複製 SQL 到剪貼簿**（貼到 Supabase SQL Editor）：
```bash
cat ~/Documents/Claude/Projects/KaoNow/supabase_schema_v4.sql | pbcopy
```

**跑驗證腳本**：
```bash
cd ~/Documents/Claude/Projects/KaoNow && \
python3 verify_schema.py
```

**批次產 AI 題**：
```bash
export OPENAI_API_KEY=sk-xxxxx
python3 generate_ai_questions.py
```

**清理測試 AI 題**（在 Supabase SQL Editor）：
```sql
DELETE FROM public.questions WHERE id = 'osh-a-ch0-ai001';
```

**跑 inbox 分類**（sandbox 內，Layer 1）：
```bash
python3 /sessions/funny-gracious-wozniak/mnt/outputs/migrate_inbox.py
```

**跑 Layer 2 抽取**（sandbox 內）：
```bash
python3 /sessions/funny-gracious-wozniak/mnt/outputs/extract_layer2.py
```

**跑 Layer 3 解析**（sandbox 內）：
```bash
# 全量
python3 /sessions/funny-gracious-wozniak/mnt/outputs/parse_layer3.py
# 指定考試
python3 /sessions/funny-gracious-wozniak/mnt/outputs/parse_layer3.py auto-c nail-art-c
```

**查某考試有哪些原始檔**：
```bash
cat content/sources/osh-c/_meta.json | jq '.files[] | {filename, type, status, size_bytes}'
```

**查抽取進度**：
```bash
cat content/extracted/_progress.md
```

**跑 Layer 4 SQL 生成**（sandbox 內）：
```bash
# 全量（39 考試 → 6,931 題 SQL）
python3 /sessions/funny-gracious-wozniak/mnt/outputs/generate_layer4_sql.py
# 指定考試
python3 /sessions/funny-gracious-wozniak/mnt/outputs/generate_layer4_sql.py auto-c forklift
```

**貼 Layer 4 SQL 到 Supabase**（Mac 本機）：
```bash
cat ~/Documents/Claude/Projects/KaoNow/content/sql/layer4_seed.sql | pbcopy
# 然後到 Supabase Dashboard → SQL Editor → 貼上 → Run
```

**Mac 本機 OCR osh-c**（掃描版 PDF）：
```bash
brew install ocrmypdf tesseract-lang
cd ~/Documents/Claude/Projects/KaoNow
ocrmypdf -l chi_tra \
  content/sources/osh-c/questions/osh-c_q_ntpc_20260416.pdf \
  content/sources/osh-c/questions/osh-c_q_ntpc_20260416_ocr.pdf
pdftotext -layout \
  content/sources/osh-c/questions/osh-c_q_ntpc_20260416_ocr.pdf \
  content/extracted/osh-c/osh-c_q_ntpc_20260416.txt
```

**查某考試的類科結構**（v6 架構常用）：
```sql
-- 看高考三級有哪些類科
SELECT DISTINCT track_name FROM public.exam_subjects WHERE exam_id = 'gaokao-3';

-- 看「高考三級行政類科」要考哪些科目
SELECT s.name, es.sort_order
FROM public.exam_subjects es
JOIN public.subjects s ON s.id = es.subject_id
WHERE es.exam_id = 'gaokao-3' 
  AND (es.track_name = '一般行政' OR es.track_name IS NULL)
ORDER BY es.sort_order;
```
