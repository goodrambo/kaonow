# KaoNow 技術文件索引

這是 **給未來 Claude session 讀的** living documentation。目的：讓 session 切換時，Claude 能快速掌握「目前系統長什麼樣、為什麼這樣設計、改哪裡會炸哪裡」。

Rambo 負責維護這份文件。若實作與文件有出入，**以實作為準**並回頭修文件。

## 閱讀順序

1. [ARCHITECTURE.md](./ARCHITECTURE.md) — 頂層總覽：tech stack、deployment、前端路由、狀態管理、cross-module 硬規則
2. [DATA_MODEL.md](./DATA_MODEL.md) — 所有 27 張表 + 主要 RPC + trigger + schema 演進 v1-v14
3. [EXTERNAL_PLATFORMS.md](./EXTERNAL_PLATFORMS.md) — 11 個外部依賴（Supabase / GitHub Pages / ECPay / Google OAuth / Cloudflare ...）
4. [DECISIONS.md](./DECISIONS.md) — 18 條 ADR：重要決策的選擇、理由、缺點、何時重新評估
5. `modules/*.md` — 每個功能模組的深入細節（見下表）

## 模組目錄

| 模組 | 狀態 | 文件 |
|---|---|---|
| Auth & Profile | ✅ | [modules/auth-and-profile.md](./modules/auth-and-profile.md) |
| Content Model（exams / subjects / questions） | ✅ | [modules/content-model.md](./modules/content-model.md) |
| Content Taxonomy（10 大類 × 69 群分層規格） | 🟡 | [modules/content-taxonomy.md](./modules/content-taxonomy.md) |
| Content Pipeline（題庫建置 Layer 1-4） | 🚧 | [modules/content-pipeline.md](./modules/content-pipeline.md) |
| Question Bank Ingest（三來源 ingest 計畫） | 🚧 | [modules/question-bank-ingest.md](./modules/question-bank-ingest.md) |
| Question Types Taxonomy（D3 題型分類學） | 🚧 | [modules/question-types-taxonomy.md](./modules/question-types-taxonomy.md) |
| Quiz Engine（作答引擎） | ✅ | [modules/quiz-engine.md](./modules/quiz-engine.md) |
| Progress & Bookmarks（進度 / 收藏 / 弱點） | ✅ | [modules/progress-and-bookmarks.md](./modules/progress-and-bookmarks.md) |
| Question Reports（v10 題目回報） | ✅ | [modules/question-reports.md](./modules/question-reports.md) |
| Subscription & Tier Gate | ✅ | [modules/subscription-and-tier.md](./modules/subscription-and-tier.md) |
| Payment - ECPay | 🟡 審核中 | [modules/payment-ecpay.md](./modules/payment-ecpay.md) |
| Trial v13（7 天 Pro 試用） | ✅ | [modules/trial-v13.md](./modules/trial-v13.md) |
| Referral v14（推薦好友 +14 天） | ✅ | [modules/referral-v14.md](./modules/referral-v14.md) |

狀態圖例：✅ 上線 ⏳ 開發中 🚧 持續進行 🟡 待外部審核

## 寫 / 改這份文件的原則

1. **事實優於意見**：「目前 `correct_answer` 0-indexed」比「我認為 0-indexed 比較好」有用
2. **寫下地雷**：每個模組結尾都有「改這個模組時的地雷」— 這是最有價值的區塊
3. **連回 code**：儘量帶 `file:line` 或函式名稱；抽象描述沒 grep 友善
4. **小改直接改文件**：文件不是神主牌，code 變了就改
5. **重大決策寫進 DECISIONS.md**：不要讓決策理由只存在某人的腦袋 / chat log
6. **相對路徑**：模組檔間引用用 `./xxx.md` / `../DECISIONS.md`，別寫絕對路徑

## 不該寫進這份文件的東西

- 進行中的任務狀態（用 task list 或 notes/）
- 隨時會變的數據（用 SQL / Supabase MCP 即查即得）
- Code 可以直接 grep 到的東西（函式簽名、schema 欄位名等）—除非是「為什麼這樣設計」的脈絡
- 敏感資訊（secrets、用戶 PII）

## 與既存資料的關係

| 來源 | 是什麼 | 與 docs/ 的關係 |
|---|---|---|
| `MEMORY.md`（.gitignore） | Rambo 個人 Claude memory | 互補：memory 是個人偏好 / 歷史事故；docs/ 是 project-level 知識 |
| `notes/SESSION_HANDOFF_*.md`（.gitignore） | 各 session 交接筆記 | 短期；docs/ 是長期 |
| `README.md`（repo root） | GitHub-facing 簡介 | 最表層；docs/ 是深入細節 |
| `payment/README.md` | ECPay 部署步驟細節 | payment-ecpay.md 的補充（操作手冊 vs 設計文件） |
| `context.md`（repo root） | 產品規格書 | 產品視角；docs/ 是技術視角 |
| `EXAM_ROADMAP.md` / `QUESTION_BANK_ROADMAP.md` | 題庫建置路線圖 | 與 content-pipeline.md 互補 |
| `supabase_schema_v*.sql`（repo root） | 實際 migration 檔 | 權威來源；DATA_MODEL.md 是導讀 |
