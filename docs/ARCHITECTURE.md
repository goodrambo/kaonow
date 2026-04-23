# KaoNow 架構總覽

> **Living doc** — 跟著 code 一起維護，不是 frozen PRD。改到涉及架構的事就順手更新這份。
> **讀者**：未來的 Claude session（或 Rambo 自己）
> **最後更新**：2026-04-20

## 一句話

KaoNow 是台灣考試題庫 SaaS，**前端純 vanilla HTML/CSS/JS 單檔**（`index.html`）託管在 GitHub Pages，**後端全靠 Supabase**（PostgreSQL + Auth + Edge Functions），**金流接綠界 ECPay**，採三層訂閱制（免費 / 標準 / 完整）+ 新用戶 7 天 Pro 試用 + 推薦雙方 +14 天機制。

## 技術棧

| 層 | 技術 | 備註 |
|---|---|---|
| 前端 | 純 vanilla HTML + CSS + JS（單檔 `index.html`） | 無框架、無 bundler、無 `.env` |
| CSS | 自訂 CSS variables | 不用 Tailwind |
| 字體 | Google Fonts — Noto Sans TC | CDN 載入 |
| Auth | Supabase Auth（Magic Link + Google OAuth） | Google OAuth 仍為測試模式 |
| DB | Supabase PostgreSQL 17.6（region: ap-northeast-1 / Tokyo） | Project ID `myvfboezhnzgovowhaff` |
| 資料存取 | 直接 REST API（繞過 `@supabase/supabase-js`） | 見 [DECISIONS.md](./DECISIONS.md) §「為什麼繞過 Supabase JS client」 |
| Edge Functions | Deno runtime，3 支 | 見 [modules/payment-ecpay.md](./modules/payment-ecpay.md) |
| 金流 | 綠界 ECPay（個人戶 + 一次性購買） | 審核中（商家編號 3497735） |
| 託管 | GitHub Pages（`goodrambo/kaonow` repo, `main` branch） | CNAME → kaonow.com |
| 網域 | kaonow.com（主站）+ kaonow.app（備用未上線） | Cloudflare DNS |
| Email | Google Workspace SMTP + Supabase Edge Function | **尚未部署**（見 `email-setup-guide.md`） |

## 部署拓撲

```
[使用者瀏覽器]
    │
    │ HTTPS
    ▼
[Cloudflare DNS] ──► [GitHub Pages] ──► index.html（單檔 SPA）
                                             │
                                             │ fetch REST API
                                             ▼
                                        [Supabase]
                                        ├─ PostgreSQL（27 張表 + RPC）
                                        ├─ Auth（Magic Link / Google OAuth）
                                        └─ Edge Functions（Deno）
                                             │
                                             │ 付款時 redirect
                                             ▼
                                        [綠界 ECPay]
                                             │
                                             │ ReturnURL（server-to-server）
                                             ▼
                                        Edge Function: webhook-ecpay
                                             │
                                             ▼
                                        更新 subscriptions
                                             │
                                        （如有 pending referral）
                                             │
                                             ▼
                                        RPC: apply_referral_reward
```

## 前端路由

Hash-based routing（GitHub Pages 靜態託管不支援 History API）。路由定義見 `index.html` 裡的 `router()` 函式（約行 3782）。

| 路由 | 用途 | 登入要求 |
|---|---|---|
| `#/home` | 首頁（預設） | 否 |
| `#/catalog` | 考試目錄、搜尋、篩選 | 否 |
| `#/exam/{examId}` | 考試詳情（概覽/講義/題庫/時事 4 tab） | 否 |
| `#/subject/{subjectId}` | 科目詳情（v6 新增，3 tab） | 否 |
| `#/quiz` | 做題流程（單選 + 複選） | 建議登入 |
| `#/result` | 答題結果、弱點分析 | — |
| `#/me` | 個人中心、儀表板 | 是 |
| `#/review` | 錯題本（重點複習） | 是 |
| `#/referral` | 推薦好友（v14） | 是（且必須付費） |
| `#/pricing` | 訂閱定價 | 否 |
| `#/terms`、`#/privacy`、`#/contact` | 法律文件 | 否 |

URL 可帶 `?ref={code}` 觸發推薦碼捕獲，或 `?v={hash}` 做 CDN cache-bust。

## 全域狀態管理

沒有 Redux / Vuex。所有狀態在一個全域 `state` 物件：

```js
state = {
  route, mode, currentIdx, questions, answers, score, streak,
  quizScope, fromExamId, fromTrack, catalogSearch,
  currentUser, tier, trialStatus, targetExam, totalDone, ...
}
```

**持久化分兩層**：

- **localStorage** — 不登入也能用（`kaonow_v2` 用戶進度、`kaonow_recent_exams`、`kaonow_exam_bookmarks`）
- **Supabase** — 登入後雲端同步（`profiles`、`subscriptions`、`exam_sessions`、`question_attempts`、`exam_progress` …）

auth 狀態變化時觸發 sync。

**關鍵 localStorage keys**：

```
kaonow_v2                  用戶進度（totalDone, streak）
kaonow_trial_*             試用狀態
kaonow_recent_exams        最近瀏覽
kaonow_exam_bookmarks      考試書籤
sb-*                       Supabase session（auto-managed）
kaonow_active_quiz         Mock 續考快照（sessionStorage）
kaonow_offline_queue       網路斷線時暫存的 mutation
```

## JS 模組組織

純 vanilla，用 IIFE 切分。全部掛在 `index.html` 裡：

| 模組 | 起始行（約） | 職責 |
|---|---|---|
| `cloud` | ~1529 | 集中化 Supabase 互動：token 管理、失敗重試、offline queue、RPC 呼叫 |
| `billing` | ~2146 | 訂閱付款（ECPay checkout、tier gate、paywall） |
| `cookieConsent` | ~2490 | Cookie 同意橫幅與偏好設定 |
| `render*` 系列 | 各處 | 路由對應的畫面渲染（renderHome / renderCatalog / renderExam / renderSubject / renderQuiz / renderResult / renderMe / renderReferralPage …） |

## 模組地圖

看得見的「功能」對應哪份 doc：

| 功能 | 文件 |
|---|---|
| 登入、註冊、Profile 管理 | [modules/auth-and-profile.md](./modules/auth-and-profile.md) |
| 題庫內容模型（類別/考試/科目/章節/題目） | [modules/content-model.md](./modules/content-model.md) |
| 做題流程、題型、答題紀錄 | [modules/quiz-engine.md](./modules/quiz-engine.md) |
| 訂閱方案、tier gate、paywall | [modules/subscription-and-tier.md](./modules/subscription-and-tier.md) |
| ECPay 付款整合 | [modules/payment-ecpay.md](./modules/payment-ecpay.md) |
| 新用戶 7 天 Pro 試用 | [modules/trial-v13.md](./modules/trial-v13.md) |
| 推薦好友 | [modules/referral-v14.md](./modules/referral-v14.md) |
| 書籤、進度、弱點分析 | [modules/progress-and-bookmarks.md](./modules/progress-and-bookmarks.md) |
| 題目檢舉 | [modules/question-reports.md](./modules/question-reports.md) |
| 題庫內容建置管線（PDF → SQL） | [modules/content-pipeline.md](./modules/content-pipeline.md) |

## 跨模組的共同慣例（不可忘）

這些是踩過坑才定案的硬規則，改的時候務必遵守。詳見 [DECISIONS.md](./DECISIONS.md)。

1. **`questions.correct_answer` 一律 0-indexed** — bulk UPDATE 前必做 per-exam MIN 檢查
2. **應用層欄位都在 `public.profiles`**，不在 `auth.users`
3. **驗證腳本禁止手抄 `correct_answer`** — 一定要從 raw_*.json 讀
4. **新 RPC 一律 `SECURITY DEFINER`**，且 `REVOKE ALL FROM PUBLIC` 後視情況 `GRANT EXECUTE TO authenticated`
5. **Edge Function 部署用 Supabase MCP 的 `deploy_edge_function`**，不走 CLI
6. **所有表 RLS 全開**，新表記得 `ENABLE ROW LEVEL SECURITY` + 至少一個 policy
7. **hash routing 不會觸發 reload**，部署後驗證要用 `?cb=$(date +%s)` 繞 CDN cache
