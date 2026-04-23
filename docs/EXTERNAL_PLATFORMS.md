# 外部平台依賴清單

> 這份文件列出 KaoNow 用到的每一個第三方服務，以及在哪裡用、帳號是誰、金鑰存在哪、壞掉會怎樣。
> **最後更新**：2026-04-20

## 核心依賴（KaoNow 活著必須的）

### 1. Supabase

| 項目 | 值 |
|---|---|
| 用途 | PostgreSQL 資料庫 + Auth + Edge Functions + Storage |
| Project ID | `myvfboezhnzgovowhaff` |
| Project URL | `https://myvfboezhnzgovowhaff.supabase.co` |
| Region | ap-northeast-1（Tokyo） |
| PostgreSQL 版本 | 17.6 |
| Organization ID | `kfzoreyazbksajwozzta` |
| 方案 | Free tier |
| 金鑰儲存位置 | anon key 硬編碼在 `index.html` 的 `<meta name="supabase-key">`（前端公開，靠 RLS 保護） |
| Service role key | 存於 Edge Functions secrets（`SUPABASE_SERVICE_ROLE_KEY`） |
| Edge Function secrets | `ECPAY_STAGE`, `ECPAY_MERCHANT_ID`, `ECPAY_HASH_KEY`, `ECPAY_HASH_IV`, `SITE_BASE_URL` |
| 管理方式 | Supabase MCP（Claude 可直接 `execute_sql`, `apply_migration`, `deploy_edge_function`） |
| **若壞掉** | 全站掛掉：登入、題庫、付款、進度同步全斷 |

**用到的 Supabase 產品**：
- Database（PostgreSQL）— 27 張表，全部 RLS 保護
- Auth — Magic Link + Google OAuth
- Edge Functions — 3 支（checkout-ecpay v3、webhook-ecpay v3、expire-subscriptions v2）
- Storage — 題目圖片（`content/images/` 有 `upload_to_supabase.py` 腳本）
- Realtime — 未使用
- Auth emails（Magic Link 驗證信）— Supabase 預設 SMTP

### 2. GitHub Pages

| 項目 | 值 |
|---|---|
| 用途 | 靜態網站託管（前端 `index.html` + `assets/`） |
| Repo | `https://github.com/goodrambo/kaonow`（public） |
| Branch | `main`（推到 main 即自動部署） |
| 自訂網域 | `kaonow.com`（CNAME 檔指定） |
| Jekyll 處理 | 關閉（`.nojekyll` 檔） |
| 部署延遲 | 通常 <1 分鐘，但 CDN cache 可能讓舊版存活數分鐘 |
| **若壞掉** | 網站連不到；Supabase 仍活著，但使用者沒前端可用 |

**部署驗證**：

```bash
curl -s "https://kaonow.com/index.html?cb=$(date +%s)" | grep -c "<關鍵字>"
```

### 3. 綠界 ECPay

| 項目 | 值 |
|---|---|
| 用途 | 金流（信用卡、ATM、超商代碼） |
| 帳戶型態 | 個人戶（stage），正式會員審核中（編號 3497735） |
| Stage API | `https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5` |
| Prod API | `https://payment.ecpay.com.tw/Cashier/AioCheckOut/V5` |
| API 版本 | AioCheckOut V5 |
| 金鑰存放 | Supabase Edge Function secrets（`ECPAY_MERCHANT_ID`, `ECPAY_HASH_KEY`, `ECPAY_HASH_IV`） |
| 切換 stage/prod | 改 `ECPAY_STAGE=true/false` secret（不用重部署） |
| Callback URL | `https://myvfboezhnzgovowhaff.supabase.co/functions/v1/webhook-ecpay` |
| Return URL | `https://kaonow.com/#/payment-result` |
| 簽章演算法 | CheckMacValue：SHA256（大寫 hex，URL encode 用綠界自家規則） |
| **若壞掉** | 沒人能升級付費；免費 + 試用仍可用 |

**已知狀態（2026-04-20）**：
- Stage 環境測試過，checkout → webhook → subscription 流程通
- 遇 ECPay 回 `10200141`（商家未綁定銀行帳戶）是預期錯誤，等正式審核過就會解
- 3497735 商家審核仍在等

**測試卡**：
- 成功：`4311-9522-2222-2222`
- 失敗：`4311-9522-2222-2221`

詳細流程見 [modules/payment-ecpay.md](./modules/payment-ecpay.md)。

### 4. Google OAuth（認證）

| 項目 | 值 |
|---|---|
| 用途 | 第三方登入 provider（Supabase Auth 的 OAuth connector） |
| 狀態 | **測試模式** — 只有 Google Cloud Console 裡加入的測試用戶能登入 |
| Redirect URL | `https://kaonow.com`（Supabase Auth 管理） |
| **若壞掉** | Google 登入按鈕失敗，但 Magic Link 仍可用 |

**未完成**：OAuth consent screen 尚未送審發布，一般用戶用 Google 登入會看到「未驗證」警告。計畫是流量起來後再送審。

### 5. Cloudflare（DNS）

| 項目 | 值 |
|---|---|
| 用途 | DNS 解析 kaonow.com → GitHub Pages；未來 email MX、SPF、DKIM、DMARC 也會在這 |
| 受影響 records | A/CNAME for apex + www、之後會加 MX + TXT（for Gmail） |
| **若壞掉** | 網站整個連不到（DNS 死） |

## 開發用依賴（不影響 production）

### 6. GitHub（repo + 版控）

- `https://github.com/goodrambo/kaonow`（public）
- 分支策略：直接推 `main`（一人專案不開 PR）
- Commit hook：無 CI/CD，純 GitHub Pages 的自動部署

### 7. Google Fonts（CDN）

| 項目 | 值 |
|---|---|
| URL | `https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@400;500;600;700;800;900&display=swap` |
| 用途 | 繁體中文字體 |
| **若壞掉** | 字體 fallback 到系統預設，排版稍微跑掉但不影響功能 |

### 8. jsDelivr CDN（Supabase JS SDK）

| 項目 | 值 |
|---|---|
| URL | `https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/dist/umd/supabase.js` |
| 用途 | 載入 Supabase JS SDK（但前端其實**沒用** SDK instance，只用它的 auth helpers） |
| 說明 | 因 MetaMask SES 衝突，資料 CRUD 改走純 `fetch()` REST API |
| **若壞掉** | Auth session 解析可能異常，但核心 CRUD 不受影響 |

### 9. Google Workspace（Email，尚未部署）

| 項目 | 值 |
|---|---|
| 方案 | Business Starter（NT$210/月） |
| 預計網域 | `@kaonow.com` |
| 預計地址 | `support@`, `billing@`, `contact@`, `hello@`, `noreply@` |
| 用途 | 付款通知、試用提醒、推薦獎勵通知 |
| 金鑰 | Gmail App Password → Supabase Edge Function secrets |
| 狀態 | **未部署** — `email-setup-guide.md` 有完整步驟，等 Rambo 執行 |

### 10. pg_cron（Supabase 內建）

| 項目 | 值 |
|---|---|
| 用途 | 每日 cron 呼叫 `expire-subscriptions` Edge Function，降級過期訂閱 |
| 觸發頻率 | 每天（具體時間待確認） |
| 狀態 | Edge Function 已部署，pg_cron 排程待 Rambo 驗證 |

## AI 工具（人工流程用，非 runtime）

### 11. Anthropic Claude

- 用於 Rambo 本地執行 `generate_ai_questions.py`（AI 題目生成）、題目解析生成、內容管線
- Key 存 Rambo 本地環境變數，不進 repo
- **不在 runtime 呼叫**，純離線工具

## 外部平台關係圖

```
                    kaonow.com
                        │
               [Cloudflare DNS]
                        │
                ┌───────┴───────┐
                ▼               ▼
        [GitHub Pages]    [MX → Gmail]  ← email（未部署）
                │                │
                │                ▼
                │         [Google Workspace]
                │
                ▼
          index.html（前端 SPA）
                │
                │ fetch + auth
                ▼
           [Supabase]
           ├─ DB
           ├─ Auth ──── OAuth ──► [Google OAuth]
           └─ Edge Functions ──► [綠界 ECPay]
                   │                    │
                   └◄──── webhook ──────┘
```

## 若某個平台出事，優先檢查清單

| 症狀 | 可能原因 | 檢查 |
|---|---|---|
| 全站打不開 | Cloudflare DNS 或 GitHub Pages | `curl -I https://kaonow.com` |
| 登入失敗但首頁 OK | Supabase Auth 或 Google OAuth | Supabase dashboard → Auth logs |
| 題目讀不到 | Supabase DB 或 RLS policy | `list_tables` + policy 檢查 |
| 付款跳不出綠界 | Edge Function secrets 或 ECPay API | Supabase logs `checkout-ecpay` |
| 付款完但沒升級 | Webhook 沒收到或驗簽失敗 | `webhook_events` 表 + Supabase logs `webhook-ecpay` |
| Magic Link 沒收到 | Supabase Auth 預設 SMTP 流量限制 | 未來改 Google Workspace SMTP |
