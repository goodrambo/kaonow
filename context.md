# KaoNow 專案記憶檔

> 最後更新：2026-04-16
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

### 3.4 資料庫 Schema（23 張表）

**內容表**：`exam_categories`、`exams`、`chapters`、`questions`、`lectures`、`exam_news`、`promo_codes`

**用戶與訂閱**：`profiles`、`subscriptions`、`payment_transactions`

**學習紀錄**：`exam_sessions`、`question_attempts`、`chapter_progress`、`exam_progress`、`user_stats`

**個人化**：`bookmarks`、`exam_reminders`、`study_plans`、`notifications`

**系統**：`webhook_events`、`user_events`、`admin_users`、`app_settings`

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

目前 `exams` 表有 **58 筆考試 metadata**，其中只有「甲種職業安全衛生業務主管」有完整題庫（153 題官方 + 1 測試 AI 題）。

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
| `verify_schema.py` | 自動驗證 JS vs SQL schema 對齊 |
| `generate_ai_questions.py` | AI 批次產題模板（支援 OpenAI / Anthropic）|
| `EXAM_ROADMAP.md` | 7 大系統完整路線圖 |
| `TECH_CERT_RESEARCH.md` | 技術士考試詳細研究資料 |

---

## 9. 已完成里程碑

- ✅ kaonow.com 正式上線並綁定 DNS
- ✅ 首頁、考試目錄、個人中心、定價頁
- ✅ 7 大系統分類架構
- ✅ 58 個考試 metadata（含 25 個專技考試）
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

---

## 10. 待辦事項

### 近期（Phase B：付費分層）
- [ ] 讀取 `profiles.current_tier` 判斷訂閱狀態
- [ ] 免費版題數/考試次數限制
- [ ] 金流 webhook 基礎（綠界 / 藍新）— 需搬到 Vercel 加 serverless function
- [ ] 訂閱頁串接實際付款

### 中期（內容擴充）
- [ ] 批次產 AI 題（實際跑 `generate_ai_questions.py`，需 OpenAI API Key）
- [ ] 擴充其他 6 大系統題庫（技術士、公職、語言、升學、金融、IT）
- [ ] 乙種/丙種職安衛題庫（架構與甲種一致，最快複用）
- [ ] 室內配線丙級、中餐烹調丙級（技術士人氣最高）

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
