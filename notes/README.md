# KaoNow — notes/

歷次 session handoff + 長期參考筆記。

> Handoff 慣例：每個 session 結束前產出一份 `SESSION_HANDOFF_YYYY-MM-DD_<topic>.md`，內容包含：本次決策、產出清單、踩坑/診斷、待辦、下次動工 quick ref。

## Handoffs（新→舊）

| 日期 | 檔案 | 主題 |
|---|---|---|
| 2026-04-20 | [SESSION_HANDOFF_2026-04-20_P3.3_browser_test.md](SESSION_HANDOFF_2026-04-20_P3.3_browser_test.md) | P3.3 pilot 六題正式站實測 pass + multiPending 兩 bug 修（commit `b5bd8df` 未 push） |
| 2026-04-20 | [SESSION_HANDOFF_2026-04-20_v13_v14_trial_referral.md](SESSION_HANDOFF_2026-04-20_v13_v14_trial_referral.md) | v13 註冊送 7 天試用 / v14 邀請好友 +14 天 / 定價文案 30 天 90 天 · commit `d81f7b1` 已 ship |
| 2026-04-20 | [SESSION_HANDOFF_2026-04-20_P1_P3.md](SESSION_HANDOFF_2026-04-20_P1_P3.md) | P1 付費方案邊界 + P3.3/P3.4 multiple_choice 端到端 pilot + collection prompt 擴充 |
| 2026-04-19 | [SESSION_20260419_HANDOFF.md](SESSION_20260419_HANDOFF.md) | 考試頁 Phase 2 single-scroll 重構 + Phase 3 多科目 picker modal |
| 2026-04-18 | [SESSION_HANDOFF.md](SESSION_HANDOFF.md) | 考試專區 UI/UX 重設計 + URL 重構（`#/catalog/{catId}` + `#/my/bookmarks`） |
| 2026-04-17 | [SESSION_20260417_HANDOFF.md](SESSION_20260417_HANDOFF.md) | Explanation 寫作標準 (Version B) + SOP + osh-a correct_answer 事故修復 |

## 使用建議

- 接手新 session 時，讀**最新那份 handoff**通常就夠；它會指回更早的 handoff 作背景。
- 上線任何 feature 前，先看最新 handoff 的「待辦」區有沒有阻塞項或必測事項。
- `MEMORY.md`（在專案根目錄）是高信號的長期規則庫（例：correct_answer 索引慣例、validator 禁手抄）；這裡的 handoff 是一次性交接備忘，保留可追溯時間軸用。

## 其他可能值得搬進來的文件（在專案根目錄）

這些是一次性 / 長期參考類文件，目前還留在 root。如果覺得 root 太亂，可以一併移進 `notes/`：
- `answer-verification-report.md` — 單次題庫答案驗證報告
- `explanation-pilot-accounting-c.md` — 會計 Explanation pilot 實驗紀錄
- `email-setup-guide.md` — transactional email 架設指南
- `TECH_CERT_RESEARCH.md` — 技術士證照分類研究
- `Taiwan_Professional_Licensing_Exams_2026.md` — 台灣證照市場研究
- `BATCH_PROMPTS.md` / `DATA_COLLECTION_PROMPT.md` — 題庫收集 prompt 模板（這兩個比較像 runbook，留 root 或搬 notes 都合理）

規劃期 / 路線圖類（建議留 root，常查閱）：
- `EXAM_ROADMAP.md`
- `QUESTION_BANK_ROADMAP.md`
- `context.md`（單一事實源）
- `MEMORY.md`
- `README.md`
