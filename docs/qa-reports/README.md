# KaoNow QA Reports

定期 QA 自動化檢查的產出位置。**每份報告以日期命名**：`YYYY-MM-DD.md`。

## 為什麼需要這個

題庫 ingest 時會出現各種資料品質問題（OCR 失敗、PDF 抽取錯誤、KaTeX escape bug 等等），而 user 在實際作答時才會撞到。這個機制讓我們**在 user 之前發現問題**。

## 兩層架構

| 層級 | 內容 | 工具 | 頻率 | 一輪成本 |
|---|---|---|---|---|
| **L1: 資料層靜態檢查** | 對 localStorage cache 跑 schema/邏輯 assertion | 純 JS（[`scripts/qa/l1-check.js`](../../scripts/qa/l1-check.js)） | 每日全量 | 秒級 |
| **L2: 渲染層 visual 檢查** | Chrome MCP 真的點題、截圖、看渲染 | Chrome MCP / Playwright | 每週抽樣 | 分鐘級 |

**L1 跟 L2 不是替代關係**：L1 抓資料 bug（缺欄位、KaTeX 編碼、選項重複），L2 抓 UX bug（按鈕點不下去、跳轉錯、layout 跑掉、KaTeX 沒被前端吃進去）。

## L1 檢查的 assertion 清單

按嚴重度：

### Blocker（user 完全無法作答）

| code | 條件 | 為什麼是 blocker |
|---|---|---|
| `EMPTY_Q` | `q` 為空字串 | 沒題目 |
| `NO_OPTS` | `opts` 不是陣列 | 沒選項 |
| `OPTS_TOO_FEW` | `opts.length < 2` | 無從選 |
| `OPT_EMPTY` | 任一選項為空字串 | 選了會錯 |
| `ANS_NOT_NUM` | single_choice 但 `ans` 非 number | 答案無法判定 |
| `ANS_OUT_OF_RANGE` | `ans` 索引超出 `opts.length` | answer key bug，永遠答不對 |

### Major（user 能作答但體驗嚴重受損）

| code | 條件 | 為什麼是 major |
|---|---|---|
| `OPT_DUP` | 兩個以上選項字串完全相同 | user 困惑、答對也算錯 |
| `EXP_MISSING` | `exp` 為空或 < 10 字 | 詳解是 KaoNow 核心價值 |
| `KATEX_DOUBLE_ESC` | 文字含 `\\\\frac` `\\\\sqrt` 等雙重 escape | KaTeX 不渲染，user 看到 raw LaTeX |
| `IMG_MISSING` | 題幹提到「圖」但 `img` / `media.image_url` 都缺 | 圖題沒圖無法作答 |
| `PARENT_PASSAGE_MISSING` | `parent_id` 指向的 passage 不在 cache | 子題寫「根據本文」但無本文 |

### Minor（資料 hygiene）

目前無，未來可加：選項長度過短、source 標記不一致、ch (chapter) 為 null 等。

## 報告 schema

每份報告有四個區塊：

1. **Summary** — 一行總結 + 各嚴重度數量 + 跟前一份報告的 diff
2. **Blockers** — 每筆完整 `id / paper_id / 題幹 / opts / ans / exp / 推測根因 / 建議修法`
3. **Majors** — 同上，但可按 code group
4. **Open questions** — 需要 Rambo 確認的東西（如「PARENT_PASSAGE_MISSING 是 cache 設計還是真 bug」）

## 怎麼跑一輪

### L1（手動）
1. 開 https://kaonow.com 登入並進任一 exam 的 quiz（讓 cache 載入）
2. F12 打開 console
3. 把 [`scripts/qa/l1-check.js`](../../scripts/qa/l1-check.js) 貼進去執行
4. 把輸出貼進今日報告

### L1（自動 — 每日）
TODO：用 scheduled task 包成每天跑一次，自動 commit `docs/qa-reports/YYYY-MM-DD.md`。設計見 [docs/modules/qa-automation.md](../modules/qa-automation.md)（待建立）。

### L2（每週抽樣）
TODO：sample 5-10 題實際走作答流程，記錄 visual issues。

## 使用報告

- **修 bug 後**：在 commit message 引用報告日期 + issue id（例如 `fix(content): unescape KaTeX in cap-104-math-001 (qa 2026-04-26)`）
- **review 報告**：把當週新 issue 跟 ingest pipeline 對齊，看是不是某個 batch 的系統性問題
- **不歸檔**：報告不會 archive，舊報告留著作為「曾經有過什麼問題」的歷史
