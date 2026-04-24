# KaoNow 題庫 Wave 1 — _inbox 盤點與 Schema 分析報告

**作成日期**：2026-04-24
**盤點範圍**：`content/sources/_inbox/{ntpc, openclaw-data}/`
**Schema 基準**：v17 (migration `v17_question_types_taxonomy`, 2026-04-20)

---

## 0. 本報告回答的四個核心問題

1. `_inbox` 裡現在有哪些來源、多少題、什麼題型？
2. 試題與解答是分開還是合一？哪些答案可直接對到題目？
3. 現行 production schema 能不能容納這些題型、這些量級？
4. 下一步 parser/ingest 排程、category 取捨、哪些 edge case 要先處理？

---

## 1. 來源盤點總表（一頁看懂）

### 1.1 ntpc（新北市府 勞工局／勞動雲 手動下載）

- **規模**：46 份 PDF，6 類，全部是丙/乙級 **技術士技能檢定學科題庫**
- **與 openclaw-data/wdasec-gov-tw 高度重疊**（wdasec 本身就是勞動部技能檢定中心 246 職類來源）
- **Wave 0 已 ingest**：透過 `scripts/ingest/ntpc_parser.py v1.1`，39/40 卷入庫，7,505 題（7,186 單選 + 319 複選 + osh-c 1 卷因掃描件待 OCR）
- **狀態**：此家族已完成，剩 osh-c OCR 一題工項，新資料靠 wdasec 補齊更完整

### 1.2 openclaw-data（crawler 自動下載、已整理）

| source_family | 來源 | exam_count | PDF_count | collection_status |
|---|---|---:|---:|---|
| `cap-rcpet-edu-tw` | 國中教育會考 | 1 | 96 | completed |
| `ceec-edu-tw` | 大學入學考試中心（學測 + 分科） | 2 | 430 | completed |
| `cpu-edu-tw` | 中央警察大學 | 2 | 112 | completed |
| `exam-tpa-edu-tw` | 警專 | 1 | 48 | completed |
| `moex-gov-tw` | **考選部**（高普考、特考、專技） | **861** | **154,767** | **structured**（骨架已建、內容 crawler 尚未 100%） |
| `public-com-tw` | **公職王**（聚合網站，7 大類） | **87** | **18,407** | completed |
| `tcte-edu-tw` | 技專校院入學測驗中心（統測） | 1 | 1,163 | completed |
| `wdasec-gov-tw` | 勞動部 技能檢定中心 | 1 | 312 | completed |
| **合計** | | **956** | **175,335** | |

> 備註：一個「exam」在 `moex-gov-tw` 指一個考試代碼（e.g. `115010`），內含多張 PDF；在 `public-com-tw` 指一個 category/sub-category 聚合節點，內含跨年度 PDF。不是同一粒度。

### 1.3 Q 與 A 合一 vs 分離 的快速結論

- **完整配對（Q+A 平行目錄）**：`public-com-tw` 85/87（97.7%）、`moex-gov-tw`、`cap-rcpet`、`exam-tpa`、`tcte`、`cpu/secretariat-announcements`
- **只有 Q，沒有 A**：`ceec/ast`、`ceec/gsat`、`cpu/historical-archive`
  - 其中 ceec 官方實際上有公布標準答案（大考中心網站），是 crawler 沒抓，後續可補
- **ntpc/wdasec**：Q+A 同一份 PDF（題幹括號內直接標 correct answer，parser v1.1 已處理）

### 1.4 題型組成估算（彙總 agent 抽樣）

| 題型 | 主要來源 | 估計比例 |
|---|---|---|
| 單選 `single_choice` | wdasec、ntpc、public-com civil-service/finance、moex 初考/普考、tcte | ~70–75% |
| 複選 `multiple_choice` | ntpc (319 題)、cap 英文、少量 tcte/ceec | ~3% |
| 申論 `essay` | public-com state-jobs / 律師 / 高考二級、cpu 警大歷年、tpa 警專、moex 三等以上 | ~15–20% |
| 混合卷（甲申＋乙測驗）| public-com license/patent-tax | ~3% |
| 閱讀測驗 `reading_passage` | ceec gsat/ast 英文國文社會自然、cap 英文 | ~3–5% |
| 寫作 `essay`（國寫／作文）| cap、ceec、tpa、cpu | ~2% |
| 計算題 `calculation` | tcte 工程類、ceec 數學分科、moex 會計/財稅 | ~3% |

沒看到的題型：`ordering` / `matching` / `listening_passage` / `fill_blank` — schema 有佔位但 Wave 1 資料暫不需填。

### 1.5 PDF 文字可萃取性

- **text-based**：抽樣 30+ 份 PDF 中 ≥95% 可 `pdftotext` 萃文（moex 新年份、public-com 近年、ntpc、wdasec 皆乾淨）
- **掃描件 / 需 OCR**：
  - ntpc/osh-c 1 份（已知，留 W1.9 前決定）
  - moex 早期年份（081–094，8 個 zero-pdf exam 屬於此群）— 暫列「低優先，或抽樣人工補」
  - cpu/historical-archive 部分年份為 ZIP/RAR 壓縮檔，需解壓

---

## 2. Supabase 線上 schema 現況（v17 applied）

### 2.1 已 apply migrations（最近 3 條）
- `v15_progress_aggregation_complete`（trigger-based 聚合）
- `v16_exam_papers_and_paper_id`（exam_papers 表 + questions.paper_id FK）
- `v17_question_types_taxonomy`（13 種 question_type + auto_gradable + 4 個 CHECK）

### 2.2 questions 表關鍵欄位
必要：`id, question_text, options (jsonb NOT NULL, 非選擇型填 '[]'), correct_answer (integer ≥0), question_type (default 'single_choice'), auto_gradable`
多題型：`correct_answer_json (jsonb), parent_question_id, paper_id, media (jsonb), source_meta (jsonb), explanation`
分類：`exam_id, chapter_id, subject_id, tags[], difficulty (1-5)`
品質：`source (CHECK: official/ai_generated/community), is_active, version, reviewed_by/at`

### 2.3 CHECK 約束（關鍵）
- `questions_question_type_valid`：14 種（含 stem_shared alias）
- `questions_answer_payload_valid`：single_choice 用 correct_answer；reading_passage/listening_passage/composite_paper/stem_shared 用 NULL；其餘必填 correct_answer_json
- `questions_correct_answer_check`：`correct_answer >= 0`（申論類填 0 placeholder 合法）
- `questions_difficulty_check`：1-5

### 2.4 exam_papers（v16 新增）
17 欄：`id, exam_id, subject_id, roc_year, year, session_code, exam_date, level_or_track, category, paper_title, source_family, source_ref (jsonb), question_count (trigger 維護), meta, is_active` — 足夠表達一張「特定年份/梯次/類科/科目」的試卷。

### 2.5 目前資料量
- `exam_categories` **7 筆**：tech-cert / prof-exam / civil / language / academic / finance / it-cert
- `exams` 182 筆、`subjects` 224、`exam_subjects` 263、`chapters` 663
- `exam_papers` 40 筆（都是 ntpc Wave 0）
- `questions` **7,399 筆**（tech-cert 7,239 + prof-exam 160，含 319 複選）

### 2.6 production 各 category 現況
| category_id | exams | chapters | subjects | questions |
|---|---:|---:|---:|---:|
| tech-cert | 63 | 171 | 63 | 7,239 |
| it-cert | 25 | 116 | 25 | 0 |
| prof-exam | 25 | 115 | 33 | 160 |
| civil | 23 | 92 | 38 | 0 |
| finance | 21 | 84 | 21 | 0 |
| language | 17 | 53 | 26 | 0 |
| academic | 8 | 32 | 23 | 0 |

---

## 3. Schema 合適性評估

### 3.1 ✅ 已覆蓋、不需改動的面向
1. **13 題型 + auto_gradable 旗標** 足以容納 ntpc / wdasec / moex 的所有單選、複選、申論、閱讀測驗、計算題
2. **parent_question_id + paper_id** 能處理「一張試卷多題」+「一篇 passage 多子題」的階層
3. **correct_answer_json jsonb** 能彈性表達：複選 `[0,2]`、排序 `[2,0,1]`、配對 `{"A":3,"B":1}`、計算 `{"value":3.14,"tolerance":0.01}`（預想未來擴充）
4. **source_meta jsonb** 已規範帶 parser_version / parsed_at / source_pdf_sha1（ntpc parser 已遵循）— 可再加 answer_pdf_sha1、answer_requires_login flag
5. **media jsonb** 給 `image_ref` / `listening_passage` 預留；圖片 URL + alt 都能塞
6. **申論題「閱卷參考答案 / 模範答案」**：直接放 `explanation` text 欄位即可，無需新欄位

### 3.2 ⚠️ 需要補強的面向（Wave 1 入庫前建議處理）

| # | 問題 | 建議解法 | 優先度 |
|---|---|---|---|
| **G1** | `exam_categories` 只有 7 筆，缺「國營事業 soe」「教職 teacher」「軍警 military-police」— public-com 的 state-jobs / education / cpu / tpa 都沒地方放 | migration v18 新增 3 筆 `exam_categories`，icon/color 比照既有 | **高** |
| **G2** | `academic` 只有 1 張 slug，但 Wave 1 會灌進「學測/分科/統測/會考/警大/警專」六種異質內容 | 不動 exam_categories；用 exam_papers.category 或 exams.short_name 分出 `gsat / ast / tcte / cap / cpu / tpa` 等 slug | 中 |
| **G3** | `moex-gov-tw` 861 exams × 154k PDFs 進來後，`exam_papers` 會從 40 跳到 ~20,000+；`questions` 可能達 5–8 M 量級。7,399 筆的效能經驗不能直接外推 | 先跑 `EXPLAIN` 看 `questions_published` view + `idx_questions_auto_gradable` 在 100k/1M 級表現；必要時加 `(exam_id, paper_id)` 複合 index | 中 |
| **G4** | 目前 `source` CHECK = (official, ai_generated, community) — public-com 嚴格說是「聚合第三方」，moex 才是「official」 | 方案 A：保留 official 代表「官方原卷」（moex/cpu/cap/ceec/tcte/wdasec 皆算）；方案 B：CHECK 加 `aggregator`。傾向 A，不改 CHECK | 低 |
| **G5** | 申論題 + reading_passage 的 `correct_answer=0 placeholder` 會讓「正確率計算」誤算 | 已有 `auto_gradable` 旗標；前端 Wave 0 已改 `_countAutoGradable` — 確認 W1.2 renderer 對 essay paper 仍正確（可能需一份 smoke test） | 中 |
| **G6** | 混合卷（license/patent-tax 甲申論＋乙測驗）同一 paper 內 2 種 question_type 共存 | paper_id 不變、question 各自帶 question_type — schema 已支援，parser 要能識別分段 | 中 |
| **G7** | ceec gsat/ast、cpu historical-archive **沒有 answer PDF** | 策略：先入庫 question，`correct_answer_json = null` + `auto_gradable = false`；UI 顯示「官方未公布解答 / 僅供自行研讀」— 但會撞到 `answer_payload_valid` CHECK（non-passage 必填 correct_answer_json）→ **須調 CHECK 放寬或把這類題定為 essay/short_answer 類型** | **高** |
| **G8** | 複選題 options 允許使用者選多項、但正確組合可能是「任一子集都算對」或「必須全對」— 目前只有 `correct_answer_json=[0,2]` 全對一種 | Wave 1 先只做「全對才算對」；未來若有部分分數需求再加 `scoring_rule` 欄位 | 低 |

### 3.3 新增 migration 建議：v18_wave1_prep

```sql
-- 1. 新增 3 個 top-level categories
INSERT INTO exam_categories (id, name, icon, color, text_color, description, sort_order, is_active) VALUES
  ('soe',             '國營事業就業考',   '🏭', '#E0F2F1', '#00695C', '台電、中油、台水、中華郵政、捷運等', 8,  true),
  ('teacher',         '教職人員考試',     '🍎', '#FFEBEE', '#B71C1C', '教師資格考、教師甄試、教保員',         9,  true),
  ('military-police', '軍警特考／招生',   '🛡',  '#ECEFF1', '#37474F', '警察特考、警大、警專、軍職轉公職',     10, true);

-- 2. 放寬 answer_payload_valid，允許「未公布答案」題
ALTER TABLE questions DROP CONSTRAINT questions_answer_payload_valid;
ALTER TABLE questions ADD CONSTRAINT questions_answer_payload_valid CHECK (
  (question_type = 'single_choice')
  OR (question_type IN ('reading_passage','listening_passage','composite_paper','stem_shared')
      AND correct_answer_json IS NULL)
  OR (question_type NOT IN ('single_choice','reading_passage','listening_passage','composite_paper','stem_shared')
      AND (correct_answer_json IS NOT NULL OR auto_gradable = false))   -- ← 新增：auto_gradable=false 時允許沒答案
);

-- 3. 為大量 ingest 加強 index
CREATE INDEX IF NOT EXISTS idx_questions_paper_id_active
  ON questions (paper_id) WHERE is_active = true;
CREATE INDEX IF NOT EXISTS idx_exam_papers_exam_year
  ON exam_papers (exam_id, roc_year);
```

（不建議這次就動 `source` CHECK 和 `academic` 分裂 — 留到資料進來後再看。）

---

## 4. KaoNow category 對應規劃

| 來源 | 建議 category_id | sub-grouping（放在 exams.short_name 或 exam_papers.category） |
|---|---|---|
| ntpc / wdasec | `tech-cert` | 各職類 slug（forklift / nail-art / osh-a ...）✅ 已在用 |
| public-com-tw/civil-service | `civil` | 高考 / 普考 / 初考 / 四等 / 五等 |
| public-com-tw/legal | `prof-exam` | 律師 / 司法官（或新增 category `law`？→ 不建議，prof-exam 已涵蓋） |
| public-com-tw/license | `prof-exam` | 各專技（會計師 / 建築師 / 地政士 / 記帳士…） |
| public-com-tw/state-jobs | `soe`（**新增**） | 經濟部 / 交通部 / 財政部 / 農業部 / 中鋼 / 捷運 |
| public-com-tw/finance | `finance` | 公股銀 / 央行 / 臺灣金控 / 必備證照 |
| public-com-tw/education | `teacher`（**新增**） | 資格考 / 教甄 |
| public-com-tw/study | `military-police`（**新增**） | 警大 / 警專（study 分類下的是警校招生，歸軍警） |
| cap (國中會考) | `academic` | `cap` slug |
| ceec/gsat | `academic` | `gsat` slug |
| ceec/ast | `academic` | `ast` slug |
| tcte | `academic` | `tcte` slug |
| cpu | `military-police`（**新增**） | `cpu-archive` / `cpu-announcement` |
| exam-tpa | `military-police`（**新增**） | `tpa` slug |
| moex-gov-tw | 分散到 `civil` / `prof-exam` / `military-police`（依 exam_code 映射） | 考選部原本就包多類考試 |

> 關鍵：moex 861 exam code 要做一次 **code→category 映射表**（可查考選部公布的「考試代號」對照）— 建議在 `content/config/moex_exam_code_map.json` 維護，不寫死 parser。

---

## 5. 建議 parser / ingest 排程（Wave 1.3+）

承既有 TODO（docs/modules/question-types-taxonomy.md §10、memory `kaonow_question_bank_wave1_state.md`），建議順序：

**Step 0（一次性、半天）**
- migration v18：補 3 categories + 放寬 CHECK + index
- 建立 `moex_exam_code_map.json` 骨架（先放高頻率的 100 個 code）

**Phase B — 高品質小量先做（預計 2–3 天）**
1. `W1.3b` publiccom_mixed_parser — license/patent-tax 甲+乙混合卷（16 exams, 1,125 PDFs, 答案齊）
2. `W1.3c` publiccom_essay_parser — state-jobs 純申論（22 exams, 2,026 PDFs, auto_gradable=false）
3. `W1.4` publiccom_license_remaining — 其餘 license 類
4. `W1.5` publiccom_civil_service — 公職 24 exams, 12,679 PDFs（主力，多為單選）

**Phase C — 中等複雜度（預計 1 週）**
5. `W1.6` publiccom_finance — 銀行招考 17 exams, 468 PDFs
6. `W1.7` publiccom_education — 教資考 / 教甄 3 exams, 1,510 PDFs
7. `W1.8` ceec_gsat + ceec_ast — reading_passage 型，passage+child 結構（**先試 parser 再決定量）**
8. `W1.9` cap、tcte、tpa、cpu — 6 類小量各 1–2 千題

**Phase D — 大規模（預計 2–3 週，多 batch、可暫停）**
9. `W1.10` moex_selected_recent — 先灌 105–114 年度的選擇題部分（估 50–80k 題）
10. `W1.11` moex_legacy — 100 年以下、掃描件、只灌高頻率考試
11. `W1.12` moex_essay — 三等以上申論（auto_gradable=false）

**Phase E — 補位與驗證**
12. `W1.13` wdasec（若比 ntpc 資料更新）
13. `W1.14` ceec 答案補抓（從大考中心官網）
14. `W1.15` osh-c OCR + moex 093–094 zero-pdf 評估是否放棄
15. `W1.16` **per-exam validator**：要每個 source_family 過一次 §3.5 的 correct_answer MIN=0 檢查 + auto_gradable 一致性 + options NOT NULL 檢查

**每個 parser 必守硬規則（覆核 memory §1.1 硬規則）**：
- options 欄位即便非選擇型也要填 `[]`
- source_meta 必帶 `parser_version / parsed_at / source_pdf_sha1`
- 單選型 correct_answer 用 0-indexed（per-exam MIN check）
- 非單選型 correct_answer=0 是 placeholder、不可當 index 用
- 複選題 correct_answer_json=[...0-indexed array...] + placeholder correct_answer=0
- 答案未公布 → question_type 不能是 single_choice，改用 short_answer/essay + auto_gradable=false

---

## 6. 必須提醒的 edge cases 與風險

1. **moex 量級炸裂**：154k PDF → 5–8M 題。DB 大小、index rebuild 時間、前端快取 cache key 都要重新考慮。建議 Phase D 之前先做一次 **100k 題 stress test**（可用 moex 105–108 年度選擇題）。
2. **掃描件 OCR 成本**：若 moex 早期年份確實需 OCR，用 Tesseract（中文+英文模型）估單卷 30s–2min，14 萬卷就是 90–280 小時 CPU-time。**建議暫不 OCR，只灌 text-based**，留 flag `needs_ocr=true`。
3. **public-com 是聚合站，版權與更新頻率**：source_meta 要清楚記錄「原始來源是考選部 / 金管會」而不只是 public-com。避免未來法律風險。
4. **ceec 沒答案**：若直接進 single_choice 會讓使用者練習完得到錯誤對錯。必須用 G7 的 auto_gradable=false + short_answer 策略，UI 明示「本卷未公布答案，請自行研讀」。
5. **複選題 placeholder 0 陷阱**：已有 osh-a 事故記憶（memory `kaonow_correct_answer_indexing_bug.md`）— 每次 parser 跑完必做 per-exam MIN 檢查，但要 filter `question_type='single_choice'`。
6. **ntpc / wdasec 可能重複**：Wave 0 用 ntpc 資料入庫，未來若灌 wdasec 要避免重建同一份 PDF。建議 `source_meta.source_pdf_sha1` 做 cross-source dedup。
7. **複選 vs 多答案單選**：cap / ceec 英文題偶有「下列哪**些**正確」型複選；scrap parser 要區分 `multiple_choice` 與 `single_choice with 可能多對`。
8. **ntpc osh-c**（1 卷）+ **moex 093–094 zero-pdf**（8 exam）— 總量很小可忽略，寫入 `edge_cases.md` 就好。

---

## 7. 結論 tl;dr

- **資料側**：`_inbox` 總共 175k+ PDFs、實際可灌題估 60–80 萬題（扣掉掃描件、沒答案卷、重複）。最大來源是 moex（考選部），但 crawl 未完成；public-com 是品質最好的起點。
- **Schema 側**：v17 已覆蓋 90% 需求。**Wave 1 開工前只需 1 條小 migration v18**（補 3 categories + 放寬 answer_payload_valid + 2 個 index）。其餘題型、階層、媒體、metadata 都已支援。
- **風險側**：主要是 moex 量級、ceec 無答案、掃描件 OCR 成本；皆有既有機制（auto_gradable / source_meta / flag）可處理，不需重構。
- **下一步**：通過 v18 migration → 開跑 W1.3b（publiccom_mixed）作為第一個「混合卷」parser 驗證案例。

---

## 附錄 A — 各 agent 抽樣報告原文（可選）

- public-com-tw 盤點（完整版另存）：抽樣 20 PDF 中 15 份單選、2 份申論、3 份混合；answer 配對率 97.7%
- moex-gov-tw 盤點：exams/ 依 ROC 年分層 081–115；indices/rows.questions.json 顯式綁 Q/A；8 個 zero-pdf exam 皆 093–094 年
- 其他 6 個家族盤點：cap 12 年、ceec gsat 17 年、ceec ast 10 年、cpu 15 年、tpa 9 年、tcte 20+ 年、wdasec 按職類代碼分

詳細抽樣報告與資料夾結構範例，已記錄於 session 對話；若要轉成常駐 docs，建議併入 `docs/modules/content-pipeline.md` 的 Wave 1 章節。
