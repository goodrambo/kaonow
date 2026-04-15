# KaoNow 專案記憶檔

> 最後更新：2026-04-16（v6 subjects 架構 + 6 大系統擴充）
> 使用方式：每次開啟新對話時，請我先讀這份檔案即可快速接上進度。
> 維護：每完成一個階段後，請我「更新 context.md」。

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
**Supabase 專案**：kaonow（Tokyo region，免費方案）
- Project URL：`https://myvfboezhnzgovowhaff.supabase.co`
- anon key 儲存於 `index.html`（前端公開，靠 RLS 保護）

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

`sub-admin-law`（行政法）被 5 個考試引用：高考三級、普考、警察三等（行政警察）、司法三等、律師。未來這個科目一次建好題庫，5 個考試都能抽到。

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

目前 `exams` 表有 **158 筆考試 metadata**（專技 25 + 技術士 39 + 公職 23 + 語言 17 + 升學 8 + 金融 21 + IT 認證 25），其中只有「甲種職業安全衛生業務主管」有完整題庫（153 題官方 + 1 測試 AI 題）。其餘 157 筆顯示「📚 資料完整，題庫建置中」。

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
- ✅ **v6 Subjects 架構**：60 科目 + 99 exam_subjects 關聯，支援類科與跨考試題庫共用（僅 DB 層，UI 未整合）

---

## 10. 待辦事項

### 🔥 最優先（UI 整合 v6 Subjects 架構）
**下一個對話的主要任務。Schema 已就緒，但前端完全未使用。**
- [ ] 考試詳情頁偵測 `exam_subjects`：
  - 無關聯 → 保持現狀（甲種職安衛流程）
  - 有關聯且有多個 `track_name` → 先顯示「選擇類科」selector
  - 選完類科後列出該類科的 subjects（共同科目 + 該類科專業科目）
- [ ] 科目卡片：顯示「共同」/「專業」badge
- [ ] 點科目 → 進科目詳情頁（類似現在的考試詳情，但顯示章節/題庫/講義）
- [ ] `cloud.loadQuestions(subjectId)`：新增依 subject 載題功能
- [ ] 模擬考模式：依科目組合決定抽題（例如選了「高考三級-行政」就抽 3 共同 + 4 行政專業科目的題）

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

**查詢某考試的類科結構**（v6 架構常用）：
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
