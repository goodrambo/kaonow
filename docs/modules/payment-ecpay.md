# 模組：ECPay 付款整合

## 目的
綠界 ECPay 金流整合：使用者點「升級」→ 產生綠界表單 → 付款 → webhook → 建 subscription + 升級 tier。

## 目前狀態
🟡 程式碼都寫好並部署；Stage 環境測試通；**正式 prod 等 ECPay 商家審核（編號 3497735）**。遇 `10200141` 是預期（未綁定銀行帳戶）。

## 相關檔案

| 檔案 | 部署位置 | 用途 |
|---|---|---|
| `payment/edge_checkout.ts` | Edge Function `checkout-ecpay` v3 | 產 AioCheckOut 表單 + CheckMacValue |
| `payment/edge_webhook.ts` | Edge Function `webhook-ecpay` v3 | 處理 ReturnURL、驗簽、建 subscription、觸發 referral |
| `payment/edge_expire_cron.ts` | Edge Function `expire-subscriptions` v2 | 每日 cron 過期降級 |
| `payment/tier_gate_patch.js` | 已 inline 進 `index.html` | 前端 tier gate + paywall modal |
| `payment/ECPAY_STAGE_SETUP.md` | 文件 | Rambo 取得 stage key 的步驟（10-15 分鐘） |
| `payment/README.md` | 文件 | 部署流程 + 驗證清單 |
| `index.html` `billing` 模組 | 前端 | `startCheckout(plan_code)` → POST 到 edge function |

## 外部平台

**綠界 ECPay** — 詳見 [../EXTERNAL_PLATFORMS.md](../EXTERNAL_PLATFORMS.md) §3

- Stage API: `https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5`
- Prod API: `https://payment.ecpay.com.tw/Cashier/AioCheckOut/V5`
- 切換：改 `ECPAY_STAGE` secret（不用重部署 function）

## 資料表

- `subscriptions` — 付款成功後建立（見 [subscription-and-tier.md](./subscription-and-tier.md)）
- `payment_transactions` — 每筆交易紀錄（`gateway_order_id UNIQUE` 防重複）
- `webhook_events` — 記 ECPay 的原始 callback payload（`(source, external_event_id)` UNIQUE）
- `profiles.current_tier` — 付款成功後升級

## 端到端流程

```
1. 用戶在 index.html 點「升級完整方案」
   └─► billing.startCheckout('pro_monthly')
        └─► POST https://...supabase.co/functions/v1/checkout-ecpay
             body: { plan_code: 'pro_monthly', exam_id?: 'xxx' }

2. Edge Function checkout-ecpay:
   a. 驗 JWT（user 必須登入）
   b. 從 PLANS 表查 tier / amount / days
   c. 產 MerchantTradeNo（時間戳 + random）
   d. INSERT payment_transactions (status='pending', gateway_order_id=MerchantTradeNo)
   e. 組 AioCheckOut 參數 + 計算 CheckMacValue
   f. 回傳完整 HTML form 字串

3. 前端 document.write(form) + form.submit()
   └─► 跳轉到綠界 payment page

4. 用戶在綠界完成付款
   └─► 綠界 redirect 回 https://kaonow.com/#/payment-result（ClientBackURL）
   └─► 綠界 server-to-server POST 到 ReturnURL
        https://...supabase.co/functions/v1/webhook-ecpay

5. Edge Function webhook-ecpay:
   a. 驗 CheckMacValue（SHA256 + 綠界 URL encode 規則）
   b. 找 payment_transactions where gateway_order_id = MerchantTradeNo
   c. 若 RtnCode = 1（成功）：
      - UPDATE payment_transactions status='succeeded'
      - INSERT subscriptions (tier, current_period_end = now + days, status='active')
      - UPDATE profiles SET current_tier = tier, current_subscription_id = ...
      - 檢查 referrals where referred_id = user_id AND status='registered'
        → 若有，呼叫 RPC apply_referral_reward (見 referral-v14.md)
      - 記 webhook_events
   d. 回 '1|OK' 給綠界（綠界看到這個字串才停止重試）

6. 每日 03:00 pg_cron 呼叫 expire-subscriptions
   a. SELECT subscriptions WHERE status='active' AND current_period_end < now()
   b. UPDATE status='expired'
   c. UPDATE profiles SET current_tier='free'（若無其他 active sub）
```

## CheckMacValue 計算規則（綠界特有）

標準 URL encode 行為與綠界版本有差異，bug 很常在這出現：

```ts
// 1. 參數按 key 字母排序（不分大小寫）
// 2. 拼 HashKey=xxx&key1=val1&key2=val2&HashIV=xxx
// 3. URL encode 後轉小寫，但以下保留原字符：
//    - → %2d 不轉
//    _ → %5f 不轉
//    . → %2e 不轉
//    ! → %21 不轉
//    * → %2a 不轉
//    ( → %28 不轉
//    ) → %29 不轉
// 4. SHA256
// 5. 轉大寫 hex
```

實作在 `payment/edge_checkout.ts` 的 `ecpayEncode()` + `generateCheckMacValue()`。改這段請務必對綠界官方 demo tool 驗證。

## Secrets 清單

存在 Supabase Edge Function secrets（`supabase secrets set` 或 MCP 設定）：

| Secret | 用途 |
|---|---|
| `ECPAY_STAGE` | `true`（stage）/ `false`（prod），決定打哪個 endpoint |
| `ECPAY_MERCHANT_ID` | 綠界商家編號 |
| `ECPAY_HASH_KEY` | 對帳簽章用 |
| `ECPAY_HASH_IV` | 對帳簽章用 |
| `SITE_BASE_URL` | `https://kaonow.com`（組 ReturnURL / ClientBackURL 用） |
| `SUPABASE_URL` | Supabase 自動注入 |
| `SUPABASE_SERVICE_ROLE_KEY` | Supabase 自動注入，webhook 用來改 subscriptions |

切換 stage → prod 只改前 4 個 secrets，不用重 deploy function。

## 改這個模組時的地雷

- **CheckMacValue 的 URL encode 規則是綠界自訂版本**，不是標準 `encodeURIComponent`，有 7 個例外字符要保留原形
- **綠界會重試 webhook**（最多 3 次間隔 5 分鐘），必須靠 `gateway_order_id UNIQUE` + `webhook_events.external_event_id UNIQUE` 做 dedupe
- **回傳綠界的字串必須是 `'1|OK'`**（管道符號），不是 `{"status":"ok"}` 這類 JSON
- **Stage 的測試卡**：成功 `4311-9522-2222-2222`，失敗 `4311-9522-2222-2221`
- **Edge Function 必須 `--no-verify-jwt`**（因為綠界不會帶 Supabase JWT）
- **改 `PLANS` 表要同步改前端 pricing UI**，不然前後端金額對不上
- **webhook 內呼叫 `apply_referral_reward` 前要先建好 subscription**，否則 RPC 會找不到被推薦人的 active sub

## 驗證 / 快速檢查

### 測試 checkout

```js
// 在已登入的 kaonow.com console
await billing.startCheckout('pro_monthly')
// 應跳到綠界 stage checkout 頁
```

### 確認 webhook 收到

```sql
SELECT * FROM webhook_events
 WHERE source = 'ecpay'
 ORDER BY received_at DESC LIMIT 5;
```

### 看最近交易

```sql
SELECT gateway_order_id, status, amount_twd, paid_at, failure_reason
  FROM payment_transactions
 ORDER BY created_at DESC LIMIT 10;
```

### Edge Function logs

用 Supabase MCP 的 `get_logs`：
```
service=edge-function, slug=webhook-ecpay, limit=50
```

## 待辦 / 延伸

- [ ] ECPay 正式會員審核通過（3497735）→ 切換 `ECPAY_STAGE=false`
- [ ] 7 天退款政策 → 新增 `refund-order` Edge Function
- [ ] 優惠碼驗證邏輯 → checkout function 加 `promo_codes` 查驗
- [ ] 真訂閱 recurring → 有公司戶後接綠界定期定額
- [ ] 電子發票 → 綠界發票 API 或第三方 ezPeggy（月營收 >2 萬後）
