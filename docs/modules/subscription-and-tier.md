# 模組：訂閱 & Tier Gate

## 目的
三層訂閱制（免費 / 標準 / 完整）+ 天數制週期（30 / 90 天）+ 功能分層 tier gate。

## 目前狀態
✅ UI + 後端 schema 都上線；⏳ 付款流程等 ECPay 審核過才能真正收款（見 [payment-ecpay.md](./payment-ecpay.md)）

## 定價（2026-04-17 定案）

| 方案 | 30 天 | 90 天 | 適用 |
|---|---|---|---|
| 免費版 | NT$0 | — | 每日 10 題、需註冊 |
| 標準方案 | NT$99 / 30 天 | NT$249 / 90 天（省 16%） | 技術士 + 金融證照無限練習 |
| 完整方案 | NT$249 / 30 天 | NT$599 / 90 天（省 20%） | 全部 10 大類無限練習 + 所有功能 |

**UI 呈現**：一律寫「30 天 / 90 天」；內部 `billing_period` 仍為 `monthly` / `quarterly`（不動）。  
**標準方案適用範圍**：`tech-cert`（技術士 61 科）+ `finance`（金融 28 科），其他類別不開放。理由見 [DECISIONS.md #9](../DECISIONS.md)。

## 功能分層

| 功能 | 免費 | 標準 | 完整 |
|---|---|---|---|
| 題庫練習 | 每日 10 題 | 技術士 + 金融無限 | 全部無限 |
| 模擬考 | ❌ | ✅ 適用範圍內 | ✅ 所有考試 |
| 答題解析 | ✅ | ✅ | ✅ + AI 補充 |
| 弱點分析 | ❌ | ✅ | ✅ + 學習計畫 |
| 進度追蹤 | ❌ | ✅ | ✅ + 全國排名 |
| 考前衝刺包 | ❌ | ❌（升級誘餌） | ✅ |

## 相關檔案

| 檔案 | 用途 |
|---|---|
| `index.html` `billing` 模組（~行 2146） | `getTier()`、`startCheckout()`、paywall 判斷 |
| `index.html` `#screen-home` pricing section | 定價 UI（首頁下半） |
| `index.html` `#kn-paywall-modal` | 鎖定功能時彈出的 paywall |
| `payment/tier_gate_patch.js` | paywall modal CSS + JS（已 inline 進 index.html） |
| `payment/edge_checkout.ts` 裡 `PLANS` 表 | 伺服端 plan 對照表（4 個 plan_code） |

## 資料表

### `profiles.current_tier`
值：`free` / `standard` / `pro`（CHECK constraint）  
來源：付費成功 webhook 改 → 到期 cron 降回 free  
**試用用戶** `current_tier` 保持 `free`，tier 判斷走 overlay，見 [trial-v13.md](./trial-v13.md)

### `subscriptions`
- `tier` — `standard` / `pro`（免費不進這表）
- `status` — `active` / `cancelled` / `expired` / `pending` / `past_due`
- `billing_period` — `monthly` / `quarterly`
- `current_period_end` — 權威的「何時降級」判斷欄位
- `auto_renew` — 目前固定 `false`（個人戶沒定期定額）
- `payment_gateway` — `ecpay`

### `promo_codes`（未啟用）
schema 已就緒（`discount_type`, `max_uses`, `first_time_only` 等），checkout function 尚未接驗碼邏輯。

## Tier 判斷流程

前端 `billing.getTier()` 邏輯（簡化）：

```
1. 若 profiles.current_tier ∈ ('standard', 'pro') → 回該 tier（付費優先）
2. 否則若 trial_expires_at > now() && trial_questions_used < 200
   → 回 { tier: 'pro', isTrial: true }
3. 否則 → 回 'free'
```

PayWall 觸發點：
- 免費用戶每日答題 >10 題 → paywall
- 免費用戶點模擬考 / 弱點分析 → paywall
- 標準用戶點「非技術士/金融」考試的付費功能 → paywall（升級誘餌）

## Plan Code 對照（checkout 用）

| `plan_code` | tier | billing_period | 金額 | 天數 | 顯示名稱 |
|---|---|---|---|---|---|
| `standard_monthly` | standard | monthly | 99 | 30 | 標準方案 30 天 |
| `standard_quarterly` | standard | quarterly | 249 | 90 | 標準方案 90 天 |
| `pro_monthly` | pro | monthly | 249 | 30 | 完整方案 30 天 |
| `pro_quarterly` | pro | quarterly | 599 | 90 | 完整方案 90 天 |

來源：`payment/edge_checkout.ts` `PLANS` 常數。改價一律同時改：前端 pricing UI + edge function PLANS + 如適用 pricing 附近文案。

## 改這個模組時的地雷

- **改定價 UI 請同時改 `edge_checkout.ts` 的 `PLANS`**，否則前端寫 199 但 backend 還是 99 就出事
- **`billing_period` 欄位千萬不改成天數**（已有歷史訂單依賴），只改顯示文案
- **標準方案適用範圍硬寫在前端**（`tech-cert` + `finance`），要擴展記得兩邊都改
- **Tier 降級的權威**是 `expire-subscriptions` cron + `current_period_end`，不要手動改 `profiles.current_tier`（會被 cron 覆蓋或跟 subscription 不一致）

## 驗證 / 快速檢查

```sql
-- 目前付費用戶數
SELECT current_tier, count(*) FROM profiles GROUP BY current_tier;

-- active 訂閱 + 到期時間
SELECT user_id, tier, billing_period, current_period_end, auto_renew
  FROM subscriptions WHERE status = 'active'
 ORDER BY current_period_end;

-- 最近 10 筆付款
SELECT gateway_order_id, status, amount_twd, paid_at
  FROM payment_transactions
 ORDER BY created_at DESC LIMIT 10;
```
