# Session Handoff — 2026-04-25 v18 + Wave 1 重灌 + 前端全面動態化

**日期**：2026-04-25
**session 長度**：~1 天
**相關 memory**：
- `kaonow_question_bank_wave1_state.md` v6（主要記錄）
- `kaonow_wave1_inbox_inventory_2026-04-24.md`（前置盤點）

---

## 0. TL;DR

完整處理 Wave 1 題庫從 schema 到使用者介面的整條路徑：

1. **v18 migration**（3 個 top-level categories + 放寬 CHECK + 2 個 index）
2. **徹底重灌題庫**：追查到 4/16 舊 parser v1.0 的 7,399 題是 DB 實際資料、v1.1 的 319 複選**從未 ingest**；走方案 C 全清重建 7,664 題 / 319 multi / 63 papers
3. **發現 chapter / subject 綁定斷掉**：backfill subject_id（v18c）、加 chapter_count trigger（v18d）
4. **前端動態化**：題數 / 章節 / 可練習狀態全從 DB 即時算；章節練習 fallback；新增「📅 依年度練習」UX；Pro → 完整方案文字統一
5. **快取層 bump**：`kaonow_v6_` → `v7_`、`kaonow_q4_` → `q5_`，讓所有舊 cache 失效

最終 DB 一致性完全驗證通過，前端實測 UI 正確反映。進下一個 parser（W1.3b publiccom_mixed）前的地基都鋪好了。

---

## 1. DB Migrations Applied（時間順序）

| Migration | 目的 | Apply 時間 |
|---|---|---|
| `v18_wave1_prep` | +3 exam_categories (soe/teacher/military-police), 放寬 `questions_answer_payload_valid` CHECK（auto_gradable=false 允許 correct_answer_json=NULL），+2 bulk-ingest indexes | 2026-04-25 |
| `v18b_wipe_question_bank_for_reingest` | 備份 6 張表 + TRUNCATE questions/exam_papers/question_attempts/聚合表 | 2026-04-25 |
| `v18c_backfill_ntpc_questions_subject_id` | UPDATE questions SET subject_id FROM exam_subjects（每 ntpc exam 1-to-1 對應 `sub-{exam_id}`）| 2026-04-25 |
| `v18d_chapters_question_count_trigger` | 建 `update_chapter_question_count()` trigger + backfill；chapters.question_count 變動態（跟 exam_papers.question_count 一樣的 pattern）| 2026-04-25 |

本地 SQL 記錄：`supabase_schema_v18_wave1_prep.sql`

---

## 2. 根本原因發現（重要！）

session 前期追查發現 memory 寫「ntpc parser v1.1 已完成 7,505 題入庫」是**半真半假**—parser 跑完了，但 ingest 從未做。

**證據鏈**：
- `content/parsed/_progress.md` 時間 2026-04-16T14:15 / 總題數 7,246（v1.0）
- `parse_report.json` 顯示 `parser_version=ntpc_v1.1, parsed_at=2026-04-20T18:56`
- DB 所有 ntpc row `created_at=2026-04-16` / `source_meta=NULL` / id `accounting-b-012`（3 位流水）
- parser v1.1 輸出 id `swapp-b-158`（跨年度、含 multi）+ 完整 source_meta
- 8 個乙級 exam 的 DB 數量 = parser 輸出 - 40 = parser 的 multi 數（319 全沒入庫）

**結論**：4/16 的 ingest 是 ad-hoc 操作、沒落下可重跑的腳本；v1.1 的 `content/parsed/` 之後就沒被再塞到 DB。

---

## 3. 方案 C 徹底重灌（全清重建）

Rambo 明確指令「把現有題庫全部刪除、重新做一遍，徹底解決問題」+「測試資料都先刪除」。

**Scope**：
- 刪 7,399 questions（含 osh-a 160 demo、含 6 條 v12 multi pilot）
- 刪 40 exam_papers
- 清 70 question_attempts + 聚合表（chapter_progress / exam_progress / user_stats）
- 清磁碟 `explanations/` → `_trash_20260425/explanations/`（144KB AI 生成的詳解 batch JSON）
- **保留**：exams / subjects / chapters / exam_subjects / profiles / subscriptions 等

**備份**：6 張 `_backup_*_20260425` 表保留，verify OK 後手動 DROP。

**重灌流程**：
1. Python `scripts/ingest/ntpc_ingest.py` 讀 parsed/*/questions.json，產 63 papers SQL + 154 批 questions SQL (BATCH_SIZE=50)
2. 7 個 Sonnet subagent 平行執行（每 agent 22 批 × Read + execute_sql）
3. 全程約 30 分鐘

**paper_id 新 pattern**：每 (exam_id, roc_year) 組合建一張 paper
- 有年度：`{exam_id}-ntpc-{year}`（如 swapp-b-ntpc-113）
- 無年度：`{exam_id}-ntpc-main`（forklift / mason-brick-c / nail-art-c / osh-common / osh-mgr-b）
- 總 63 張（比舊 40 多 23，因跨年度拆）

---

## 4. 前端改動（index.html）

### 4.1 章節練習 fallback（解「點章節 0 題」bug）
`startChapter` + `startSubjectChapter` 加：若 chapter_id filter 後為 0 題 → 從整 exam/subject bank 抽 10 題 + toast「章節分類建置中，先從全題庫抽題」

### 4.2 題數 / 狀態動態化（解「osh-a 顯示 155 題可練習」bug）
- 新增 `cloud.loadExamQuestionCounts()` / `cloud.loadExamPapers()`
- `bootApp` prefetch 所有 exam DB counts → 注入 `exams[].dbQuestionCount`
- `examCardHTML`「可練習」條件變成 `exam.available && dbCount > 0`；`dbCount=0` → 「📚 題庫建置中」
- `renderExam` hero stats 改用 dbCount 優先

### 4.3 Tier 文字統一（Pro → 完整方案）
7 處 user-facing 文字：banner、CTA 按鈕、trial 倒數 banner、dialog、home features、login modal。
內部 `tier='pro'` / `pro_monthly` subscription key / CSS class 保留不動（跟 DB backend 對齊）。

### 4.4 「📅 依年度練習」UX（新 feature）
- Subject page + Exam bank pane 雙入口
- `renderSubjectYearPanel(subjectId, questions)`：loadExamPapers → papers ≥ 2 時顯示
- `startQuizByPaper(paperId, examId)`：loadQuestions + filter `q.paper_id === paperId` → 抽 10 題
- 顯示格式：「113 年度 · 80 題 · 10 題隨機」可點；0 題顯示「題庫建置中」不可點

### 4.5 Cache bump（破 stale memory cache）
- `V6_CACHE_PREFIX`: `kaonow_v6_` → `kaonow_v7_`
- `Q_CACHE_PREFIX`: `kaonow_q4_` → `kaonow_q5_`
- `loadQuestionsBySubject` select 加 `exam_id`（給年度 panel 用）

---

## 5. 最終 DB 狀態（2026-04-25）

| 表 | row | 備註 |
|---|---:|---|
| `questions` | **7,664** | 7,345 single + 319 multi |
| `exam_papers` | **63** | 40 ntpc exam × 1-3 papers |
| `chapters` | 663 | **全部 question_count=0**（trigger 運作中，chapter_id=NULL 現況的正確反映）|
| `exam_categories` | 10 | +soe/teacher/military-police |
| `question_attempts` / `bookmarks` / `chapter_progress` / `exam_progress` / `user_stats` | 0 | 清空 |
| `_backup_*_20260425` × 6 | 原值 | 待 verify OK 後 DROP |

### 5.1 一致性驗證全通過
- ✅ multi=319，`correct_answer_json` 全合法 0-indexed array
- ✅ 39 exam single_choice `MIN(correct_answer)=0 / MAX≤3`（osh-a 事故防線生效）
- ✅ 0 個孤兒 FK / 0 重複 question.id / 0 options NULL
- ✅ v18 `answer_payload_valid` CHECK 0 違規
- ✅ `questions_published` view 7,664（沒被 visibility filter 過濾）
- ✅ trigger 維護的 `exam_papers.question_count` / `chapters.question_count` 都跟實際一致

### 5.2 前端 UI 實測（swapp-b subject page）
- 章節：「進階文書與樣式 · 分類建置中」× 4（chapter_id=NULL 的正確顯示）
- 年度 panel：「📅 依年度練習（2）」→ 114 年度 80 題 / 113 年度 80 題

### 5.3 catalog card 實測（技術士 128 張）
- 39 張「● 可練習」= ntpc 有灌題的 39 個 exam
- 25 張「📚 題庫建置中」= 規劃中未灌題
- osh-a（之前寫死 155 題可練習）現在正確顯示「📚 題庫建置中」

---

## 6. 已閉 3 個 user 提問（Q1/Q2/Q3）

| Q | 問題 | 結果 |
|---|---|---|
| Q1 | 前端題數/章節/狀態是否動態 | ✅ 全改動態：`exam.dbQuestionCount` 注入 + chapter trigger；catalog card / exam hero / subject chapter list 都用 DB 真值 |
| Q2 | 年份/考古題標籤是否儲存 | ✅ DB 原就存（`exam_papers.roc_year` / `source_meta.raw_section_label`），前端這次把它 surface 成「📅 依年度練習」UX |
| Q3 | Pro vs 免費/標準/完整 命名統一 | ✅ 7 處 user-facing 全改；內部 tier='pro' 保留 |

---

## 7. ⚠️ 未解的 3 個低優先 TODO

記在 memory `kaonow_question_bank_wave1_state.md` v6 中：

1. **jewelry-c 159 題 `source_meta={}`**
   - parser v1.1 對 jewelry-c 輸出 source_meta=None（其他 39 卷正常）
   - 疑似 section label 有空格（`'113 年度'` vs 其他卷 `'113年度'`）觸發
   - 題目本身正確（correct_answer / question_text 都有），只是 metadata 空
   - 修：parser 修空格處理 → re-ingest jewelry-c

2. **所有 7,664 題 `chapter_id=NULL`**
   - ntpc_ingest.py 沒做章節綁定（parser 輸出本來就沒章節）
   - 前端章節練習已靠 fallback 不卡使用者
   - 需要：`chapter_classifier` script（question_text NLP 或手動規則）backfill chapter_id
   - Backfill 後 trigger 會自動把 chapters.question_count 算回正常值

3. **69 題含圖題 options=[] / question_text=''**
   - parser v1.1 對「選項是圖示」題抽 PDF 文字抽不到
   - 分布：archi-cad-c 6、ind-wire-c 8、mech-elec-c 7、nail-art-c 4、tailor-w-c 11 為主
   - DB 已入庫（options='[]' 合法），前端看到是空選項按鈕
   - 短期：加 `source_meta.flags=['needs_image']` 讓前端隱藏
   - 長期：圖片 ingest + 手動補內容

---

## 8. 收尾動作（你可以決定時機）

- [ ] 登入前端實測：swapp-b 點「隨機測驗 → 做完 10 題」確認 multi/single 渲染 OK
- [ ] Verify OK 後 `DROP TABLE _backup_*_20260425` × 6
- [ ] osh-a demo：要嘛重寫 160 題手工示範題，要嘛改 `available: false` 讓它從 catalog 消失
- [ ] 下一步：**W1.3b `publiccom_mixed_parser`**（license/patent-tax 甲+乙混合卷，16 exams / 1,125 PDFs）

---

## 9. 可重用的工具

### 9.1 檔案
| 檔案 | 用途 |
|---|---|
| `scripts/ingest/ntpc_ingest.py` | Parser output → batched SQL（BATCH_SIZE=50 for Read 25K token limit）— W1.3b 可參考改 publiccom 版 |
| `supabase_schema_v18_wave1_prep.sql` | v18 migration 本地備份 |
| `outputs/ntpc_ingest/` | 63 papers + 154 批 questions SQL + 4 個 block 檔（Dashboard fallback） |
| `docs/wave1_ingest_inventory_2026-04-24.md` | Wave 1 完整 _inbox 盤點 + schema gap 分析 |

### 9.2 DB helper
- `exam_papers` 可讀：`GET /rest/v1/exam_papers?select=exam_id,question_count&is_active=eq.true` (anon 可讀)
- Catalog 動態 count：一條 PostgREST call 就能算所有 exam 題數

### 9.3 Subagent ingest 模板
7 個 Sonnet subagent 各做 22 批 × (Read + execute_sql) 在 30 分鐘內搞定 4MB SQL ingest。W1.3b publiccom_mixed ~1000 題等級可以用相同手法。

---

## 10. 執行手法的教訓

### 10.1 Claude tool 的硬限
- **Read output cap**：25K tokens/call（~100KB 中文 SQL 就超）
- **bash stdout cap**：~250KB/call（cat 大檔被截）
- **MCP execute_sql query param**：寬鬆（~1MB 可吃）
- **單一 session context**：不夠跑 4MB SQL ingest 的 154 個 tool round-trip

### 10.2 成功的路線
1. Python 分 BATCH_SIZE=50（一檔 ~36KB / ~14K tokens）
2. 7 個 Sonnet subagent 平行，每個負責 22 檔
3. Agent report 只回一句結果，不污染主 session context

### 10.3 失敗的嘗試（紀錄避免再走）
- 直接 execute_sql 500-題 SQL：Read 讀不下
- 單一 subagent 跑 16 批 150-題：context 爆
- bash curl Supabase REST：sandbox 無網路，403 proxy
- pip install psycopg2：同上
- Supabase Dashboard 4-block 貼：準備了但沒用（subagent 平行成功後就不需要）

### 10.4 前端 cache 的陷阱
- v6 有 **memory cache + localStorage 雙層**；單清 localStorage 不夠
- memory cache 只能 page reload 清，或 bump prefix 強制失效
- 每次改 DB schema 或 API select 欄位都要 bump cache prefix

---

## 11. 關鍵 SQL 片段（緊急時用）

### 11.1 回滾重灌前（備份表還在就能做）
```sql
TRUNCATE questions, exam_papers CASCADE;
INSERT INTO questions SELECT * FROM _backup_questions_20260425;
INSERT INTO exam_papers SELECT * FROM _backup_exam_papers_20260425;
INSERT INTO question_attempts SELECT * FROM _backup_question_attempts_20260425;
-- chapter_progress / exam_progress / user_stats 同理
```

### 11.2 Verify 一次跑齊
```sql
SELECT
  (SELECT COUNT(*) FROM questions) AS q_total,
  (SELECT COUNT(*) FROM questions WHERE question_type='multiple_choice') AS q_multi,
  (SELECT COUNT(*) FROM exam_papers) AS papers,
  (SELECT COUNT(*) FROM questions WHERE source_meta->>'parser_version'='ntpc_v1.1') AS v11,
  (SELECT COUNT(*) FROM questions WHERE subject_id IS NOT NULL) AS with_subject,
  (SELECT COUNT(*) FROM questions WHERE chapter_id IS NOT NULL) AS with_chapter,
  (SELECT SUM(question_count) FROM chapters) AS chapter_count_sum,
  (SELECT SUM(question_count) FROM exam_papers) AS paper_count_sum;
-- 預期：7664 / 319 / 63 / 7505 / 7664 / 0 / 0 / 7664
```

### 11.3 確認備份表還在
```sql
SELECT table_name FROM information_schema.tables
WHERE table_schema='public' AND table_name LIKE '\_backup%20260425' ESCAPE '\';
```

### 11.4 清掉備份表（確認前端 OK 後）
```sql
DROP TABLE IF EXISTS
  _backup_questions_20260425,
  _backup_question_attempts_20260425,
  _backup_exam_papers_20260425,
  _backup_chapter_progress_20260425,
  _backup_exam_progress_20260425,
  _backup_user_stats_20260425
CASCADE;
```

### 11.5 看 chapter 被 backfill 後的分布（未來 chapter_classifier 跑完驗證）
```sql
SELECT c.exam_id, c.id, c.name, c.question_count,
       (SELECT COUNT(*) FROM questions q WHERE q.chapter_id = c.id) AS actual
FROM chapters c
WHERE c.exam_id='swapp-b'
ORDER BY c.sort_order;
```

---

## 12. 已閉 issues（歷史紀錄）

- ~~memory 寫 +319 複選已入庫，DB 只 6 條~~ → 6 條是 osh-a demo；ntpc 319 從未 ingest；已全清重建。
- ~~v18 是否該 apply~~ → 已 apply，無 regression，advisor 只有 pre-existing warning。
- ~~osh-a 是否保留~~ → 全刪；demo 之後另外寫。
- ~~ingest 方式（psql / Dashboard / subagent）~~ → subagent 平行最乾淨，30 分鐘完成。
- ~~「點 exam 進去沒題」bug~~ → chapter fallback 修好；subject_id NULL 也 backfill 了。
- ~~catalog 顯示「可練習 / 155 題」假狀態~~ → exam.dbQuestionCount 動態注入。
- ~~Pro 命名混用~~ → user-facing 7 處統一完整方案。
- ~~chapter trigger 改完還是顯示 25~~ → v6 memory cache 擋著，bump v7 後乾淨。
- ~~年度 panel 沒 render~~ → questions[0].exam_id undefined，補 select 修好。

---

## 13. Notes：本檔案 git 注意事項

這份 handoff 被某條 .gitignore 規則 match（可能是 `SESSION_HANDOFF_*` 或 `2026*`），需要 `git add -f` 強推：

```bash
git add -f notes/SESSION_HANDOFF_2026-04-25_v18_wave1_reingest.md
git commit -m "notes: 2026-04-25 full session handoff (v18 + wave1 re-ingest + 前端動態化)"
git push origin main
```

若不想進 git 留本地就好也 OK，memory 系統（`kaonow_question_bank_wave1_state.md`）已記錄核心重點。
