# Session Handoff — 2026-04-16

> 這份是上一個 session 的交接紀錄。新 session 開始時請先讀這份 + `context.md`。
> 讀完後可視情況刪掉或改寫。canonical 專案狀態在 `context.md`。

---

## 🚨 未解動作（user 端需手動執行）

**`git push` 被 sandbox 網路擋掉**，commit 已在本地建好但沒推上 GitHub：

```
cd ~/Documents/Claude/Projects/KaoNow && git push origin main
```

- Local HEAD：`a616b1d`（UX polish 4 批次合併提交）
- Remote HEAD：`f9b69da`（docs: batch prompts + roadmap）
- 差 1 個 commit；push 完 GitHub Pages 約 1–2 分鐘會自動部署到 kaonow.com
- Git author 已在本地 repo 設好（`Rambo <goodrambo2013@gmail.com>`）

---

## ✅ 本 session 完成的事

上一個 session 已做完批次 1–2，本 session 接著做批次 3 + 4，總共 4 批全部完成並寫入 `context.md`（「9. 最近完成」節底下，標記 2026-04-16）。

### 批次 1（P0 + P1）— 題庫來源誠實化
- **[P0-1] 隨機測驗 source filter 拿掉**：v8 把 osh-a 改成 `ai_generated` 後，原本只抽 `source='official'` → 按鈕直接壞掉。改用 `cloud.loadQuestions()` / `cloud.loadQuestionsBySubject()` 不分來源，題目右上 badge 標來源
- **[P0-2] alert 內容洗過一輪**：刪掉「用管理員產出題目」「執行 `generate_ai_questions.py`」等洩漏腳本名稱的字樣；全面 `alert()` → `showToast()`
- **[P0-3] 定價頁「立即升級」改「即將上線」** + `.price-cta.coming` disabled 樣式
- **[P1-1] mode card 文案誠實化**（exam + subject 兩處同步）：
  - 弱點加強「AI 分析你的答題紀錄」→「依錯題與弱章節加強」
  - AI 考題「AI 從講義產出的新鮮題」→「AI 生成練習題」
- **[P1-6] 考試 hero 補題源分佈**：題目數 stat 載入後異步抓 `cloud.loadQuestions()` 統計，有 official + ai 會在 label 下補「(N 官方 / M AI 生成)」

### 批次 2（P1 + P2）— Quiz / 設定 / Form
- **Quiz 加「← 上一題」按鈕**：`prevQuestion()` 新函式；`margin-right:auto` 推到最左
- **殘留 alert 清光**：`startChapter` / `startSubjectChapter` / `resetProgress` 全改 `showToast`
- **Me 頁設定區重構**：`#me-settings` 在 `renderMe()` 裡動態填：未登入 → 顯示「登入 / 註冊」+ 解釋；已登入 → 顯示「登出」；清除鍵沒紀錄時 disabled；confirm 文字依登入狀態變（登入時說「雲端資料不受影響」）
- **建置中章節 hover 誤導修掉**：`.chapter-item.is-placeholder { pointer-events:none }`，替換掉原本 inline style
- **全域 disabled 按鈕 cursor**：`button[disabled],button:disabled { cursor:not-allowed; opacity:0.55 }` + 停用 hover transform
- **Email 驗證強化**：magic-email input 加 `required autocomplete="email" inputmode="email"`；`sendMagicLink` 用 regex 驗證，失敗時 border 變紅 2 秒並 focus 回 input

### 批次 3（Quiz / Catalog / Toast）
- **時間到自動交卷凍結作答**：`_countdownInterval` tick 到 `remain<=0` → `state.quizFrozen=true`、question-area opacity 0.55 + pointer-events:none、showToast「⏰ 時間到！正在計算結果…」，1.2 秒後才呼叫 `showResult()`；`selectAnswer` 加 guard，`initQuiz` 重設 flag
- **結果頁「複習錯題」動態隱藏**：全對時 `#result-review-btn` 直接 `display:none`，不再跳 alert；若硬點也改 showToast
- **Catalog 切分類自動清 search**：home category card、`__bookmark` chip、一般 category chip 三處 onclick 都補 `state.catalogSearch=''`
- **Toast 排隊**：`_toastQueue` + `_toastShowing` flag；每則 2.5s，間隔 250ms；back-to-back 相同字串略過；呼叫端介面不變

### 批次 4（Mock 續考 + 結果頁 fallback + a11y + 行動版）
- **[P0] Mock 模擬考快照續考**：`QUIZ_SNAPSHOT_KEY = 'kaonow_active_quiz'` 用 **sessionStorage**（tab 關掉自然清）。`saveQuizSnapshot()` 只在 `state.mode === 'mock'` 存；hooks：`initQuiz` 結尾 save、`selectAnswer` / `nextQuestion` / `prevQuestion` / `goToQuestion` 每次切換 save；`clearQuizSnapshot()` hooks：`initQuiz` 開頭（清舊）、`showResult`、`confirmExit`。頁面 boot 改用 `bootApp()` wrapper：`bootAuth()` → 400ms 後 `checkResumeQuiz()` 讀快照，`mockDeadline` 沒過就 `confirm("發現未完成的模擬考（N/M 題已作答，剩約 X 分鐘）")`；接受則 `resumeQuizFromSnapshot()` 自動接回倒數
- **[P2] 結果頁章節分析無 ch fallback**：`q.ch` 為 null / NaN / -1 時改 bucket 到 `UNCAT = '__uncategorized'`，label「綜合／其他」；排序把 UNCAT 放最後；整份題目只剩 UNCAT 一桶時直接隱藏整個「各章節表現」區（不再顯示一格沒意義的分析，更不會「第 NaN 章」）
- **[P1] 行動版 mode-grid 保持 2×2**：取消 `@media(max-width:760px)` 的 `.mode-grid { grid-template-columns:1fr }` 強制單欄；改只縮 gap=8px、mode-card padding=14px、min-height=84px、icon/title/desc font-size 微縮
- **[P3] Bookmark 按鈕 a11y**：`examCardHTML` 生成的按鈕補 `aria-pressed="${bookmarked?'true':'false'}"`；`toggleBookmark` 既有的 re-render（renderCatalog / renderHome / renderMe）會自動帶新狀態，不用另外 DOM patch

---

## 🧠 工作模式 / user 偏好

- **user 給的 feedback 很簡短**：「可以，繼續下一批」「可以，按你的規劃開始動刀」。每批之間要自己審查/驗證（node syntax check + `python3 -m http.server` 確認能 serve），不要等回饋
- **每完成一批要寫回 `context.md`**（「9. 最近完成」節），不是只改程式就算數
- **Explore agent 會誤報**（已踩過幾次坑）：breadcrumb href、最近練習 href、clearCatalogSearch 的 inp.value 清除等，都要手動翻程式碼驗證過才能下手改
- **Commit 訊息習慣用中文**（user 自己的 commit 也是），條列式、每批次自成一段
- **language**：與 user 用繁中，程式碼內文案也是繁中
- **單檔 SPA**：整個 app 在 `/Users/suchinglun/Documents/Claude/Projects/KaoNow/index.html`（~3420+ 行），改動幾乎都在這裡
- **不要亂開新檔**：`context.md` / `QUESTION_BANK_ROADMAP.md` / `BATCH_PROMPTS.md` 是持續維護的，新檔只在有明確需求時建

---

## 📋 驗證流程備忘

本 session 用的自檢 pipeline（下次可重用）：

1. **Node parser 檢查 inline script 語法**（`outputs/check.js`）：抓所有不含 `src=` 的 `<script>` 內容丟 `new Function()`，catch SyntaxError
2. **python3 -m http.server 8000 serve 驗證**：`curl http://localhost:8000/index.html` 看 bytes，確認沒有 500 / 空白
3. **Regression grep**：對修改的關鍵符號做 grep 確認 call sites 數量對得上（例如 `saveQuizSnapshot` 應該出現 6 次 = 1 def + 5 call sites）

用 `mcp__workspace__bash` 時要小心：

- pkill 回 exit code 143 是 **正常**（被自己殺掉的訊號值），不是錯誤
- 長時間 background process 要 `nohup ... & disown`，再 sleep + curl，最後 pkill，否則會 timeout
- heredoc (`<<'EOF'`) 在某些字元（例如 `(?!` 的 `!`）會被 shell 展開，改 `Write` 工具寫檔更保險

---

## 🎯 下一步（依 `context.md` 規劃）

**主軸**：題庫內容建置（見 `QUESTION_BANK_ROADMAP.md` + `BATCH_PROMPTS.md`，共 74 批覆蓋 158 個考試）

還沒動的未追蹤檔（git status 看得到但沒進這次 commit，之後要獨立處理）：

- `DATA_COLLECTION_PROMPT.md` — 題庫資料蒐集 prompt 草稿
- `raw/` — 題庫來源原始檔
- `supabase_schema_v8.sql` — v8 schema 的完整 SQL（osh-a source 改 ai_generated 那版）

這三個 **不在** 本次 UX 批次的 commit 範圍，下次評估要不要合併成一個「v8 schema + content pipeline」的 commit。

---

## 🔑 重要路徑 / ID

- **Supabase**：`https://myvfboezhnzgovowhaff.supabase.co`（Tokyo region，免費方案）
- **網域**：kaonow.com（線上）、kaonow.app（已購未上）
- **GitHub**：https://github.com/goodrambo/kaonow（public）
- **題庫快取 prefix**：`kaonow_q2_`（v1 已失效，本 session 沒再 bump）
- **Mock 快照 key**：`kaonow_active_quiz`（sessionStorage）
- **localStorage main state**：`kaonow_v2`
- **Mode 類型**：`'random'` / `'mock'` / `'weak'` / `'ai'` / `'chapter'`
- **Quiz scope**：`state.quizScope = { kind: 'exam'|'subject', id }`
