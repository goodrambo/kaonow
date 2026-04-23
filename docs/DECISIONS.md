# 設計決策紀錄（ADR）

> 每條決策都是「當初選了 A 不選 B，理由是…」。知道理由才能判斷 edge case、才知道何時該重新檢討。
> 新增決策時請加在最新的類別下，日期用 ISO 格式。

## 架構層級

### 1. 為什麼用 GitHub Pages 靜態託管而不是自架後端

**選擇**：GitHub Pages（純靜態）+ Supabase（DB + Auth + Functions）
**理由**：
- 一人專案，沒有運維能力支撐 VPS
- 免費方案完全夠用（Supabase 500MB DB、2GB egress；GitHub Pages 100GB/month traffic）
- 前端推 main 分支就部署，無需 CI/CD
- 後端 serverless（Edge Functions）按量計費，沒流量就不用錢
**缺點**：
- Hash routing 強制（靜態託管沒辦法寫 nginx rewrite）
- 無法做複雜的 server-side rendering / 中介層邏輯
- CDN cache flush 要靠 query string
**何時要重新檢討**：月 PV 破 10 萬、或需要 server-side A/B 測試時

### 2. 為什麼前端用純 vanilla 單檔，不用框架 + bundler

**選擇**：純 HTML/CSS/JS 全塞在一個 `index.html`
**理由**：
- 改完 push 就上線，沒 build step 失敗的風險
- 一人專案，不想維護 node_modules / package.json / bundler config
- 單檔體積 438KB，載入速度仍可接受（有 gzip）
- 無框架依賴 = 10 年後這程式碼還能跑
**缺點**：
- IDE 沒法做 import 跟 type 檢查（靠 grep + 肉眼）
- 檔案太長難找東西（需要清楚的 IIFE 模組 + 行號註解）
- 測試不好寫（沒 vitest / jest setup）
**何時要重新檢討**：index.html 超過 1MB、或有第二個開發者加入時

### 3. 為什麼繞過 Supabase JS client，直接用 `fetch` REST

**選擇**：CDN 載入 `@supabase/supabase-js` 只用 auth helper，資料 CRUD 自己打 REST
**理由**：
- MetaMask 瀏覽器擴充會把 Supabase client 搞壞（SES / realms 衝突）
- 曾經踩過：裝 MetaMask 的用戶整個前端 crash
**實作**：
- Session token 直接從 `localStorage` 讀 `sb-*` key
- 每個 API call 都自己組 `Authorization: Bearer <jwt>` header
- 集中在 `cloud` 模組（行 ~1529），有失敗重試 + offline queue
**何時要重新檢討**：Supabase 官方釋出修復、或我們放棄支援 MetaMask 用戶

## 資料模型

### 4. 為什麼應用層欄位都在 `public.profiles`，不在 `auth.users`

**選擇**：`auth.users` 只存認證相關；所有應用層欄位（tier / trial / referral / preferences）在 `public.profiles`
**理由**：
- Supabase 官方慣例 — `auth.users` 是 managed schema，自己改欄位會被覆蓋
- `public.profiles` 1:1 對 `auth.users.id`，建 FK + trigger 保持同步
- RLS policy 只要寫 profiles，不動 auth schema
**實作**：
- 新用戶註冊時 trigger `handle_new_user()` 自動建 profile row
- 有事需要檢查 schema 時：`table_name='profiles'`，不是 `users`
**何時要重新檢討**：不會變，這是 Supabase 的架構約束

### 5. 為什麼 v6 要引入 `subjects` 架構

**選擇**：加 `subjects` + `exam_subjects` 兩張表，`chapters` / `questions` 的 `exam_id` 改 nullable、新增 `subject_id`
**理由**：
- 高考三級有 4 類科（一般行政 / 民政 / 人事 / 財稅），不同類科考不同科目，原本 `chapters.exam_id` 無法表達
- 「行政法」這個科目被高考 3 類科 + 普考 2 類科 + 警察 + 律師共 7 個 exam_subjects 引用 — 題庫應該只建一次
- `track_name` 欄位表示類科，`NULL` = 所有類科共同科目
**向下相容**：原有甲種職安衛 153 題仍綁 `exam_id`，不受影響
**何時要重新檢討**：不會；這是長期架構

### 6. 為什麼 `questions.correct_answer` 一律 0-indexed

**選擇**：`single_choice` 題的正解存 0, 1, 2, 3（對應 A, B, C, D）
**理由**：
- JavaScript `options[correctAnswer]` 取值最自然（array 本來就是 0-indexed）
- 早期有一批 osh-a 考試題目被錯用 1-indexed 匯入，所有答案都錯一格 → 用戶答題全錯
- 2026-04-19 修復那次事件時，事先沒做 per-exam MIN 檢查，差點把其他考試也誤傷
**硬規則**：
- **所有 bulk UPDATE correct_answer 之前，必須先跑：**
  ```sql
  SELECT exam_id, MIN(correct_answer), MAX(correct_answer), COUNT(*)
  FROM questions GROUP BY exam_id;
  ```
- 任何 `MIN >= 1` 的 exam 都要先確認是不是 1-indexed 污染
- 每次大規模改動前先備份（例：`_backup_correct_answer_20260417` 表）
- 驗證腳本**不得手抄 correct_answer**（曾因手抄錯一個字害整批 batch 驗證失靈），必須從 `raw_*.json` 讀

**相關 memory**：`kaonow_correct_answer_indexing_bug.md`、`kaonow_validator_no_manual_correct_answer.md`

## 商業模式

### 7. 為什麼用綠界 ECPay 而不是 Stripe

**選擇**：綠界個人戶
**理由**：
- 台灣用戶支付習慣：信用卡外還要支援 ATM、超商代碼、LINE Pay
- 綠界費率（2.75%）與 Stripe 台幣通路接近，但 onboarding 容易得多
- Stripe 在台灣需公司戶，KaoNow 目前還是個人專案
- 綠界個人戶可先跑測試 + 上線，公司化後再升級正式會員
**缺點**：
- 不支援真訂閱（定期定額），目前所有訂閱都是 `auto_renew=false` 的一次性購買
- API 文件偏舊，CheckMacValue URL encode 規則要按綠界自家版本（不是標準 URI encode）
- 電子發票要另外整合綠界發票 API 或第三方 ezPeggy
**何時要重新檢討**：月營收破 2 萬 + 開公司時，評估 Stripe 或綠界定期定額

### 8. 為什麼訂閱不做真 recurring，而是一次性購買

**選擇**：每次購買建一個 30/90 天的 subscription，到期由 cron 降級
**理由**：
- 綠界個人戶不支援定期定額 API
- 「一次性付」對台灣用戶心理門檻較低（不用擔心自動扣款）
**實作**：
- `subscriptions.auto_renew=false`
- `current_period_end = now + 30/90 天`
- Edge Function `expire-subscriptions` 每日 cron 檢查 `current_period_end < now` → 改 `status='expired'` + `profiles.current_tier='free'`
**何時要重新檢討**：有公司戶後接綠界定期定額或 Stripe

### 9. 為什麼定價 UI 改成「30 天 / 90 天」而不是「月繳 / 季繳」

**選擇**：UI 文案全改成天數（`NT$99 /30 天`、`NT$249 /90 天`）
**理由**（2026-04-20 Rambo 定案）：
- 台灣用戶對「天」比對「月」更有具體感覺
- 避免月底購買吃虧的感受（「我買了一個月但只用 3 天」）
- 實際後端欄位 `billing_period` 仍為 `monthly` / `quarterly`（不動，避免破壞既有訂單相容性）
- 內部 `plan_code` 也維持 `standard_monthly` 等舊命名
**只改哪裡**：`index.html` pricing 區 + `edge_checkout.ts` 裡 `PLANS.name` 顯示文案

### 10. 為什麼新用戶試用是「overlay」而不是新 tier

**選擇**：試用期間 `current_tier` 仍為 `'free'`，前端靠 `trial_expires_at > now() && trial_questions_used < 200` 判斷為「effective tier = pro」
**理由**：
- 不破壞 `profiles.current_tier` 的 CHECK constraint（`'free'|'standard'|'pro'`）
- 付費後 webhook 把 `current_tier` 改為 `standard/pro`，試用自然失效（不用額外清理）
- `subscriptions` / `payment_transactions` 不受污染（試用不算訂閱）
**實作**：
- `billing.getTier()` 先看 `current_tier`，若是 free 再看 trial 欄位，回 `{tier:'pro', isTrial:true}`
- 付費用戶 `current_tier` 非 free 時，直接回 `current_tier` 不檢查試用
**詳見**：[modules/trial-v13.md](./modules/trial-v13.md)

### 11. 為什麼試用額度是「7 天 + 200 題」（任一先到）

**選擇**：雙重上限（天數 + 題數）
**理由**：
- 純時間制會被「註冊但不用」的人浪費；純題數制會被「刷題機器人」消耗
- 7 天夠 evaluate 產品、200 題夠試各種模式（random / chapter / weak）
- 200 題額度本身就是防薅羊毛（比 SMS 驗證成本低、體驗更好）
**何時要重新檢討**：轉換率太低（考慮延長到 10 天）或被 abuse（考慮降到 100 題）

### 12. 為什麼推薦獎勵要「付費觸發」而不是「註冊觸發」

**選擇**：朋友必須首次付費成功才觸發獎勵
**理由**：
- 阻擋最常見的薅羊毛：機器人註冊刷推薦碼
- 獎勵（+14 天）有真實成本，不能讓假用戶白白消耗
- 「推薦資格限付費用戶」+ 「觸發條件限真付費」雙重保險
**實作**：
- `claim_referral` RPC 在註冊時綁定（`referrals.status='registered'`）
- `webhook-ecpay` 在付款成功後呼叫 `apply_referral_reward` RPC
- `apply_referral_reward` 再次檢查推薦人目前仍為付費狀態（若失效則 `status='rejected'` 不發獎）
**詳見**：[modules/referral-v14.md](./modules/referral-v14.md)

### 13. 為什麼推薦獎勵是「延長 14 天」而不是「現金退款」或「抽成」

**選擇**：雙方 `current_period_end += 14 天`
**理由**：
- 現金退款有會計成本、綠界手續費、還要算稅
- 抽成機制鼓勵極端行為（大量推薦賺錢的 KOL）
- 延長天數 = 留存工具（推薦人會更黏、被推薦人會多用 2 週）
- 14 天是 7 天試用的 2 倍 — 有「從試用變成付費習慣」的心理暗示
**何時要重新檢討**：推薦轉換太低時試 30 天、或太高被 abuse 時降到 7 天

## UI/UX

### 14. 為什麼 v1 不做 persona switching（考生身份切換器）

**選擇**：一個首頁給所有人看，不根據「考生類型」切換介面
**理由**：
- 競品（阿摩、三等）都很醜，做個乾淨的站就有切入點
- 80% 的使用者在意的 widget 重疊度高（最近練習、考試倒數、弱點、推薦考試）
- 做 persona 要做 4-5 版 widget，維護成本暴增
- 先讓一種 user journey 跑順，之後觀察實際需求再切分
**相關 memory**：`kaonow_design_philosophy.md`

### 15. 為什麼類別頁 hub 先不做

**選擇**：URL 重構到 `#/catalog/{catId}` 完成，但類別專屬 widget（首頁卡片點進去不只是 filter 版目錄）延後
**理由**：
- 題庫建置才是 critical path，hub 在題庫空的時候沒意義
- 等題庫覆蓋率夠後，看哪幾個類別流量大再優先做
**相關 memory**：`kaonow_category_hub_roadmap.md`

## 運維

### 16. 為什麼 Edge Function 部署走 Supabase MCP 而不是 CLI

**選擇**：用 `mcp__5909ca13-0533-4738-afd4-ba8d85dd14f6__deploy_edge_function`
**理由**：
- Claude 可以直接在對話中部署，不用 Rambo 切到 terminal
- `supabase` CLI 需要本地裝 + `supabase login` + `supabase link`，多一層手續
- MCP 直接拿 access token，錯誤訊息直接回到對話裡 debug 較快
**Migration 同樣走 MCP**：`apply_migration`，不用 CLI
**何時要重新檢討**：需要本地 offline 開發時

### 17. 為什麼 SPA cache flush 要加 `?cb=$(date +%s)`

**選擇**：部署後驗證時 URL 帶 cache-bust query
**理由**：
- Hash routing（`#/xxx`）不會觸發 browser reload
- GitHub Pages 有 CDN cache，`location.reload(true)` 不保證繞過
- 加 query string 是最可靠的繞 cache 方法
**標準做法**：
```bash
curl -s "https://kaonow.com/index.html?cb=$(date +%s)" | grep -c "<關鍵字>"
```
**相關 memory**：`shell_git_sanity_rules.md`

### 18. 為什麼 validator 禁止手抄 correct_answer

**選擇**：驗證腳本必須從 `raw/*/xxx.json` 讀 `correct_answer`，不得在 code 裡硬寫 dict
**理由**：
- 曾因手抄 batch 1 第 014 題 letter mismatch，驗證通過但實際錯誤
- raw json 是人工比對過的權威，手抄就是引入第二個 source of truth
**硬規則**：validator 看到 correct_answer 一律 `json.load(raw_file)`，不得寫 `{"014": "C"}` 這種
**相關 memory**：`kaonow_validator_no_manual_correct_answer.md`

### 19. 為什麼 question_type 擴充到 13 種而不是維持 7 種

**選擇**：D3 拍板 — `question_type` CHECK 放寬到 13 種（single_choice / multiple_choice / true_false / fill_blank / ordering / matching / short_answer / essay / calculation / reading_passage / listening_passage / image_ref / composite_paper），`correct_answer` 維持 NOT NULL int（非 index 型填 0 當 placeholder），新增 `auto_gradable` bool

**理由**：
- Wave 0 的「KaoNow = 單選題庫」假設在 2026-04-21 抽樣三來源後破功：publiccom state-jobs 純申論、license/patent-tax 混合卷、moex 國文題內含閱讀題組
- 既有 7 種 enum 沒有 essay / short_answer / calculation；申論題沒地方存
- 重新設計 schema > 不存申論題（題庫縮水）或硬塞到 fill_blank（語義錯）
- `correct_answer` 改 nullable 要動太多 downstream code（前端、question_attempts、validator）；0 當 placeholder + `auto_gradable` 清楚分層是最小擾動解

**對應文件**：[modules/question-types-taxonomy.md](./modules/question-types-taxonomy.md)（完整 taxonomy + parser 策略 + 前端 renderer + Wave 1 廣灌計畫）

**執行進度**：
- [x] schema v17 migration `v17_question_types_taxonomy`（2026-04-21 apply 到 prod 並 smoke test 通過）
- [ ] parser v1.1-v1.3（ntpc 補複選 / publiccom mixed / publiccom essay）
- [ ] 前端 renderer 擴充到 5 種（single/multi/true_false/essay_readonly/reading_passage）
- [ ] Wave 1 廣灌（W1.4-W1.8）

**v17 附帶調整**：`questions.options` 欄位仍是 `jsonb NOT NULL`（既有 schema）；非選擇型題的 options 填 `'[]'::jsonb` 空陣列（convention-level fix，不 DROP NOT NULL）。details 見 taxonomy doc 頂部警告。

**何時重新評估**：Wave 2 開始前，若 13 種仍不夠（例如某新來源出現沒見過的題型），回來加。

## 決策待辦（未來要補的）

- [ ] OAuth consent screen 送審發布（目前 Google 登入還是 test mode 警告）
- [ ] 電子發票整合方式（綠界發票 API vs 第三方 ezPeggy）
- [ ] 真訂閱 recurring 架構（有公司後接綠界定期定額或換 Stripe）
- [ ] 分析工具選型（Plausible / PostHog / GA4 — 目前完全沒埋點）
- [ ] 客服信箱收件策略（目前是 support@kaonow.com aspirational，尚未部署）
