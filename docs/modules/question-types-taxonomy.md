# 模組：題型分類學 (Question Types Taxonomy) v1

> 建立日期：**2026-04-21**
> 狀態：**Schema v17 已上 production（2026-04-21）；parser v1.1-v1.3 + 前端 renderer 擴充 待開工**
> 相關：
> - 前身：[./question-bank-ingest.md](./question-bank-ingest.md) §3（v2 題型草稿，由本文取代）
> - 決策：`../DECISIONS.md` §19 D3 題型 enum 擴充
> - 影響：`../DATA_MODEL.md` / `./quiz-engine.md` / `./content-model.md`

**⚠️ Schema 修正（2026-04-21）：** `questions.options` 是 `jsonb NOT NULL`（既有 schema）。非選擇型題（essay / short_answer / calculation / reading_passage parent / listening_passage parent / composite_paper）的 `options` 一律填 `'[]'::jsonb` 空陣列，不填 NULL。§4.1 表格內「options = null」請改讀為「options = `[]`」。

---

## 0. TL;DR

Wave 0 整體假設「KaoNow = 單選題庫」在實地抽樣三來源後**已破**：

| 來源 | 題型真實分佈 |
|---|---|
| ntpc 46 PDFs | 100% 單選（丙級）／單選 + 複選（乙級） |
| publiccom 18k+ PDFs | MCQ 35% ／複選 18% ／申論 25% ／計算 8% ／閱讀題組 5% ／其他 9% |
| moex 154,767 Q PDFs | 混合 PDF：一支檔內可含「甲、申論題 50 分 + 乙、單選 35 題 + 複選 10 題」 |

**核心設計原則：**

1. **不丟任何題** — 混合 PDF 要能拆成多個 questions rows，不同區段用不同 `question_type`。申論題沒答案也要進庫（當閱覽素材）。
2. **先存起來，批改能不能自動做是第二步** — `auto_gradable` 新欄位標示；前端 quiz engine 只對可自動判分題算對錯，其他類型「只顯示模範答案（若有）」。
3. **schema 一次到位、前端漸進支援** — schema CHECK 放寬吃下 13 types，前端 renderer 可以先支援 5 種（single / multi / true_false / essay_readonly / reading_group），其他型別先存但用 `is_active=false` 藏起來。
4. **題組靠 `parent_question_id`** — 不再靠 `stem_shared` naming；parent 題掛文本（或音檔），child 題掛小題，繼承 parent 的 media。

**13 種正式 types**（詳見 §4）：
`single_choice` / `multiple_choice` / `true_false` / `fill_blank` / `ordering` / `matching` /
`short_answer` / `essay` / `calculation` /
`reading_passage` (parent) / `listening_passage` (parent) / `image_ref` /
`composite_paper` (parent：整張卷的 container，答案分散在下面)

---

## 1. 為什麼重新設計

**事件線：**

- 2026-04-16 Wave 0：只做 ntpc MCQ，parser 吃 `①②③④` 四選項 regex、答案是題號後 `(N)`，`question_type='single_choice'`，硬寫死。跑出 7,246 題乾淨入 Supabase。
- 2026-04-20 v16 migration：上 `exam_papers` 表 + `questions.paper_id` FK + question_count trigger，為了支援年份/梯次維度。仍預設 MCQ。
- 2026-04-21 Phase B 準備開始灌 publiccom finance。抽樣檔案發現：
  - publiccom `finance/` ≠ KaoNow `finance`（是銀行招考 bank recruitment，不是金融證照）
  - publiccom `state-jobs/` 純申論題，一張卷 4 題每題 25 分
  - publiccom `license/patent-tax/accountant/` 會計師試題是**混合卷**：前半申論 50 分、後半測驗 25 題 50 分
  - moex 114060/questions/by-subject 一支「國文」PDF 是「單選 35 + 複選 10」
- Rambo 的方向重定調（同日）：
  1. 忽略題庫缺口
  2. 擴充 schema + 前端 + PDF parser 以支援多題型
  3. 三來源廣灌，讓網站內容看起來豐富，並同時預想未擷取考試的題型，避免日後大改

**觸發的問題：**

- 既有 `question_type` CHECK 只允許 7 種舊 enum，沒有 `essay` / `short_answer` / `calculation`
- 既有 `correct_answer INTEGER NOT NULL CHECK (>=0)` 對申論/寫作題語義不通 — 申論題沒有 index 型答案
- 既有 `questions_answer_payload_valid` CHECK 強制「非 single 必須填 correct_answer_json」— 申論題要放什麼？
- parser 是 MCQ-only；碰到混合卷整支跳掉
- 前端 `renderQuestion()` 只分「單選 radio」vs「複選 checkbox」
- `stem_shared` 命名怪、語義不清（是 parent 還是 child？）

---

## 2. 實測觀察到的題型（三來源）

### 2.1 ntpc（新北勞動雲技能檢定）

**實測：** 46 PDFs 全吃過 → 40 exams / 7,399 questions 均為 `single_choice`。乙級少量複選但 Wave 0 parser 當單選處理（已知 bug，留待 Wave 1 修）。

**結論：** ntpc = 單選 + 極少複選。parser 變更只需加「複選題區段」偵測。

### 2.2 publiccom（公職王歷屆試題）

**子類 Q/A 覆蓋率（2026-04-21 盤點）：**

| 子類 | Q PDFs | A PDFs | 覆蓋率 | 題型主幹 |
|---|---:|---:|---:|---|
| civil-service | 12,679 | 12,407 | 97.9% | MCQ heavy（高普初、特考） |
| education | 1,510 | 1,475 | 97.7% | MCQ + 申論（教檢教甄） |
| legal | 338 | 311 | 92.0% | MCQ + 申論（律師司法官） |
| license | 1,124 | 1,110 | 98.8% | **混合卷**：MCQ + 申論（會計師、建築師、社工師、食技師...） |
| finance | 468 | 458 | 97.9% | MCQ（銀行招考、防制洗錢、金融科技力） |
| study | 262 | 262 | 100.0% | MCQ（警大警專） |
| state-jobs | 2,026 | 1,664 | **82.1%** | **純申論**（各署處專業科目）|

**抽樣實證：**

- `state-jobs/agriculture-agencies/fishery/.../土地政策.pdf`：4 題每題 25 分，全申論（見 sample 1）
- `license/patent-tax/accountant/104會計師-公司法、證券交易法與商業會計法.pdf`：
  - 甲、申論題 50 分（3 題）
  - 乙、測驗題 50 分（25 單選）
  - 同一支 PDF、需要按 section 切、產生 3 申論 rows + 25 MCQ rows

**地雷：**

- 一題申論常內含**子題 (1)(2)**，每子題各配分（如「試問 X？（10 分）Y？（10 分）」）— 要拆成子題還是當一題？建議：當一題存，`correct_answer_json.sub_questions[]` 存子題結構。
- 答案 PDF 有「公職王」浮水印字插入正文，抽 OCR 前要 de-watermark
- `state-jobs` 答案覆蓋率 82% — 18% 純題幹沒解答，依舊進庫，`answer_tier='unknown'`

### 2.3 moex（考選部考畢試題查詢平臺）

**正確盤點（2026-04-21）：**

- `exams/` 按 roc_year 081-115（35 個年份）
- 每個考試梯次（如 `114060`）下有平行 `questions/by-subject/` + `answers/by-subject/` + `answer-corrections/by-subject/`
- 總計 **154,767 questions PDFs + 57,293 answers PDFs + 13,327 others（多半是 answer-corrections 疑義釋覆）**
- Q:A 比約 2.7:1 — 不是每科都提供官方答案（申論題尤其少）

**抽樣實證：**

- `114/114010/questions/by-subject/114010-c501-s0101-q1-國文.pdf`（初等考國文）：
  - 「單選題 35 題 70 分 + 複選題 10 題 30 分 = 45 題」
  - 題幹包含**閱讀短文 → 根據上文回答**的 pattern（§4.4 reading_passage）
  - 題幹含大量古文／白話文引用

**地雷：**

- 081-099 年早期 PDF 是掃描圖，沒有文字層，需 OCR
- moex 的 exam_code（如 114060）要 map 到我們的 exam_id（如 `police-special`）；本文不細談，見 ingest doc §5.3

---

## 3. 預想未擷取考試可能的題型

為避免未來大改，先把預期題型列清。下表對 KaoNow 10 類標示是否已 ingest + 未來題型需求：

| 類別 | 已 ingest | 未 ingest 的主要考試 | 預期新題型 |
|---|---|---|---|
| `tech-cert` 技術士 | ✅ ntpc 40 職類 | 剩 200+ 職類（勞動部 L07300 公告檔）| 維持 MCQ + 複選 |
| `prof-exam` 專技 | ❌ | 醫師/律師/會計師/建築師/食技師/營養師/驗光師/醫檢師 | MCQ + 申論 + 計算 + image_ref（影像解剖）|
| `civil` 公職 | ❌ | 高普初、特考、地特 | MCQ + 申論（高考三級）+ reading_passage（國文）|
| `soe` 國營 | ❌ | 台電/中油/台水/中鋼/中華電信/中華郵政 | MCQ + 申論（理工科）+ calculation |
| `teacher` 教職 | ❌ | 教檢、教甄、代理代課 | MCQ + essay + 教學演示（不收錄）|
| `military-police` 軍警 | ❌ | 警察特考、警專、軍校聯招、志願役 | MCQ + 申論（申論的國文作文）|
| `language` 語言 | ❌ | TOEIC / TOEFL / IELTS / JLPT / TOPIK / 全民英檢 | **listening_passage（parent）+ listening_mcq（child）/ reading_passage / writing / speaking / cloze（fill_blank）** |
| `academic` 升學 | ❌ | 學測、分科、統測、會考、研究所 | MCQ + short_answer（國寫）+ essay（作文）+ calculation（數學）+ image_ref（地理/生物）|
| `finance` 金融證照 | ❌（資料在）| 信託、證券、期貨、保險、銀行內控、CFP/AFP | MCQ 為主，少量 calculation |
| `it-cert` IT 證照 | ❌ | AWS/Azure/GCP/CompTIA/Cisco/PMP | MCQ + multiple_choice + ordering（步驟排序）+ matching |

**兩個最大的 shape shift：**

1. **語言類需要音檔 pipeline** — `listening_passage` 是 parent，media.audio_url 掛音檔（mp3/m4a），children 是 `listening_mcq`。v1 不做音檔抓取，只在 schema 預留欄位。
2. **學測國寫 + 警專國文作文 = writing** — 無模範答案可比對、不自動批改，和 `essay` 差別在「產出長度要求 500-800 字」+「作答 UI 是長 textarea 不是短」。但本質相同，**併入 `essay` type，用 `correct_answer_json.word_limit` 區分**，不額外新增 type。

---

## 4. 正式 taxonomy（13 types）

### 4.1 型別一覽表

| # | type | 中文 | 自動批改 | `correct_answer`<br>(int) | `correct_answer_json`<br>(jsonb) | `options`<br>(jsonb) | `media`<br>(jsonb) | `parent_id` | Wave 1 納入 |
|---|---|---|---|---|---|---|---|---|---|
| 1 | `single_choice` | 單選 | ✅ | **正確 index（0-idx）** | null | `["A","B","C","D"]` | 可選 | ❌ 或繼承 | ✅ |
| 2 | `multiple_choice` | 複選 | ✅ | `0`（placeholder）| `[0,2,3]`（idx array）| 同上 | 可選 | 同 | ✅ |
| 3 | `true_false` | 是非 | ✅ | `0`=否 / `1`=是 | null | `["是","否"]` 固定 | 可選 | 同 | ✅ |
| 4 | `fill_blank` | 填空 | ⚠️ | `0` | `{"answers":[["A","a"]],"mode":"exact\|normalize\|regex"}` | null | 可選 | 同 | 🟡 Wave 2 |
| 5 | `ordering` | 排序 | ✅ | `0` | `[2,0,3,1]` | `["步驟1","步驟2",...]` | 可選 | 同 | 🟡 Wave 2 |
| 6 | `matching` | 配對 | ✅ | `0` | `{"pairs":[[0,2],[1,0]]}` | `{"left":["..."],"right":["..."]}` | 可選 | 同 | 🟡 Wave 2 |
| 7 | `short_answer` | 簡答（1-3 句）| ⚠️ 關鍵字 | `0` | `{"model_answer":"...","keywords":["稅賦","租稅中性"],"accept_synonyms":true}` | null | 可選 | 同 | 🟢 存題，不判分 |
| 8 | `essay` | 申論 / 作文 | ❌ 人工 | `0` | `{"model_answer":"...全文...","sub_questions":[{"text":"...","points":10}],"total_points":25,"word_limit":null\|800}` | null | 可選 | 同 | ✅ 存題，不判分 |
| 9 | `calculation` | 計算（含解題）| ⚠️ 數值比對 | `0` | `{"final_answer":"12.5%","tolerance":0.01,"unit":"%","steps_markdown":"..."}` | null | 可選 | 同 | 🟢 存題，不判分 |
| 10 | `reading_passage` | 閱讀題組 **parent** | ❌（自己不作答）| `0` | `null` | `null` | 必含 `{"passage_text":"..."}` 或 `{"passage_md":"..."}` | ❌ 自己是 parent | ✅ |
| 11 | `listening_passage` | 聽力題組 **parent** | ❌ | `0` | `null` | `null` | 必含 `{"audio_url":"...","transcript":"..."}` | ❌ 自己是 parent | ❌ Wave 4（需音檔）|
| 12 | `image_ref` | 題目含圖但題幹靠圖（通常也是 MCQ）| 視 child 定 | 若是選擇：0-idx | 若是選擇：同 single_choice 規則 | 同 single | 必含 `{"image_url":"...","figures":[...]}` | 可選 | 🟡 先標 `is_active=false`，有圖資產再開 |
| 13 | `composite_paper` | 整張卷 parent（混合卷 wrapper）| ❌ | `0` | `{"sections":[{"title":"甲、申論","range":[1,3]},{"title":"乙、測驗","range":[4,28]}]}` | null | 可選 | ❌ 自己是 parent | 🟡 Wave 2 需要；Wave 1 先不用 parent，每題拿 `paper_id` 即可 |

**硬規則（寫成 CHECK）：**

1. `correct_answer INTEGER NOT NULL` 保留，所有非 index 型別一律填 `0` 當 placeholder。這延伸「0-indexed 硬規則」的語義：「沒有 index 時填 0 不代表答案是 0」。Memory `kaonow_correct_answer_indexing_bug.md` 的 per-exam MIN 檢查不受影響（仍只對 single_choice 的 exam 做）。
2. **parent 型別**（`reading_passage` / `listening_passage` / `composite_paper`）必須 `correct_answer_json IS NULL`，`parent_question_id IS NULL`。其 child question 的 `parent_question_id` 指向它。
3. **非 parent 且非 single_choice** 的題型，`correct_answer_json` 必須 NOT NULL（即使是 essay 也要有 `{}` 最低限度，因為沒答案還是要記錄 `{"model_answer":null}`）。
4. 新增 `auto_gradable BOOLEAN NOT NULL DEFAULT TRUE` — 決定 quiz-engine 要不要算對錯。以題型為預設值，但可 per-row overrule（例如某題 fill_blank 因答案不乾淨，標 `auto_gradable=false`）。

### 4.2 per-type JSON 範例

#### 4.2.1 `single_choice`（Wave 0 現狀）

```jsonc
{
  "id": "ntpc-cosmetology-c-114-001",
  "question_type": "single_choice",
  "question_text": "正三角型臉兩頰及下顎部宜以何種色調粉底修飾？",
  "options": ["基本色", "暗色", "明色", "綠色"],
  "correct_answer": 1,
  "correct_answer_json": null,
  "auto_gradable": true
}
```

#### 4.2.2 `multiple_choice`（既有 6 題 + 擴充到 moex 國文複選）

```jsonc
{
  "id": "moex-114010-c501-s0101-q36",
  "question_type": "multiple_choice",
  "question_text": "下列各組「」內字音，前後相同的選項是：",
  "options": ["「徜」徉／「倘」若", "「憑」藉／「憩」息", "..."],
  "correct_answer": 0,
  "correct_answer_json": [0, 2, 4],
  "auto_gradable": true
}
```

#### 4.2.3 `essay`（公職王 state-jobs 漁業署土地政策 Q1）

```jsonc
{
  "id": "pukao-fishery-111-B-tp-q1",
  "question_type": "essay",
  "question_text": "國家可以動用徵收權，強制剝奪受憲法保障的私有財產權，其正當合理之基礎在於「公共利益」之滿足...",
  "options": null,
  "correct_answer": 0,
  "correct_answer_json": {
    "model_answer": null,  // state-jobs 無解答
    "sub_questions": [
      {"text": "此一「公共利益」的內涵為何？", "points": 13},
      {"text": "政府辦理區段徵收時是否會與「公共利益」有所違背？試申論之。", "points": 12}
    ],
    "total_points": 25,
    "word_limit": null
  },
  "auto_gradable": false
}
```

#### 4.2.4 `calculation`（會計師試題示例）

```jsonc
{
  "id": "cpa-104-company-law-q26",
  "question_type": "calculation",
  "question_text": "A 公司實收資本額 1 億元...請計算 A 公司最多可收買之自己股份金額？",
  "options": null,
  "correct_answer": 0,
  "correct_answer_json": {
    "final_answer": "3.5",
    "unit": "億元",
    "tolerance": 0.001,
    "steps_markdown": "依公司法 §167-1...\n1. 盈餘公積 2 億\n2. 資本公積 1 億...\n合計 3.5 億"
  },
  "auto_gradable": true  // 數值比對可自動
}
```

#### 4.2.5 `reading_passage`（parent）+ `single_choice`（child）

```jsonc
// parent
{
  "id": "moex-114010-c501-s0101-passage-fda",
  "question_type": "reading_passage",
  "question_text": "閱讀下文，回答第 8 至 10 題：",
  "options": null,
  "correct_answer": 0,
  "correct_answer_json": null,
  "media": {
    "passage_text": "美國食品暨藥物管理局（FDA）為簡化接種疫苗策略..."
  },
  "auto_gradable": false,
  "parent_question_id": null
}

// child
{
  "id": "moex-114010-c501-s0101-q8",
  "question_type": "single_choice",
  "question_text": "根據上文，下列選項錯誤的是：",
  "options": ["雙價疫苗可能作為每年都施打的疫苗", "..."],
  "correct_answer": 1,
  "correct_answer_json": null,
  "parent_question_id": "moex-114010-c501-s0101-passage-fda",
  "auto_gradable": true
}
```

#### 4.2.6 `image_ref`（預留，Wave 1 不做）

```jsonc
{
  "id": "...",
  "question_type": "image_ref",
  "question_text": "根據下圖 A 所示的電路，求 I1 的值為？",
  "options": ["2A", "3A", "4A", "5A"],
  "correct_answer": 1,
  "correct_answer_json": null,
  "media": {
    "image_url": "https://r2.kaonow.com/figures/nnn.png",
    "figures": [{"label": "圖 A", "caption": "一電路圖..."}]
  },
  "auto_gradable": true,  // 答案結構還是 single_choice
  "is_active": false      // 圖未抓之前藏起來
}
```

---

## 5. Schema 變更（v17 migration spec）

> 檔案命名：`supabase_schema_v17_question_types.sql`
> 風險：CHECK 擴充屬於放寬，不會炸既存資料。所有既有 `single_choice` / `multiple_choice` 資料不動。
> 既有 Wave 0 的 7,399 筆不受影響。

```sql
BEGIN;

-- 1. 放寬 question_type CHECK（拔掉 stem_shared，加 7 種新 type；stem_shared 保留別名層）
ALTER TABLE public.questions
  DROP CONSTRAINT IF EXISTS questions_question_type_valid;

ALTER TABLE public.questions
  ADD CONSTRAINT questions_question_type_valid CHECK (
    question_type IN (
      'single_choice',
      'multiple_choice',
      'true_false',
      'fill_blank',
      'ordering',
      'matching',
      'short_answer',
      'essay',
      'calculation',
      'reading_passage',
      'listening_passage',
      'image_ref',
      'composite_paper',
      -- legacy alias: 舊 `stem_shared` data 先允許，Phase B 再統一改成 reading_passage
      'stem_shared'
    )
  );

-- 2. 放寬 correct_answer_json CHECK：
--    single_choice：可 null
--    parent 型（reading_passage/listening_passage/composite_paper）：必須 null
--    其他：必須 NOT NULL
ALTER TABLE public.questions
  DROP CONSTRAINT IF EXISTS questions_answer_payload_valid;

ALTER TABLE public.questions
  ADD CONSTRAINT questions_answer_payload_valid CHECK (
    (question_type = 'single_choice')
    OR (question_type IN ('reading_passage','listening_passage','composite_paper','stem_shared')
        AND correct_answer_json IS NULL)
    OR (question_type NOT IN ('single_choice','reading_passage','listening_passage','composite_paper','stem_shared')
        AND correct_answer_json IS NOT NULL)
  );

-- 3. 新增 auto_gradable 欄位
ALTER TABLE public.questions
  ADD COLUMN IF NOT EXISTS auto_gradable BOOLEAN NOT NULL DEFAULT TRUE;

-- 4. per-type 預設值：parent 型 / essay / short_answer / fill_blank 預設不自動批改
UPDATE public.questions
  SET auto_gradable = FALSE
  WHERE question_type IN ('essay','short_answer','fill_blank',
                          'reading_passage','listening_passage','composite_paper','stem_shared');

-- 5. 新增 trigger：插入/更新時若 question_type 對應 default false 且 caller 未顯示設值，設為 false
--    （這行可略，因為 caller 會明確填；留此註記）

-- 6. 刷新 view 讓 questions_published 帶出 auto_gradable
DROP VIEW IF EXISTS public.questions_published CASCADE;
CREATE VIEW public.questions_published AS
  SELECT *
  FROM public.questions
  WHERE is_active = TRUE;

-- 7. 索引：parent 題查 children 的 query（quiz render 時用）
CREATE INDEX IF NOT EXISTS idx_questions_parent
  ON public.questions(parent_question_id)
  WHERE parent_question_id IS NOT NULL;

COMMIT;
```

**回滾：** 新 CHECK 是「放寬版」，要回滾先把 `question_type` 非舊 7 種的資料清掉或改回舊 7 種，再 DROP + ADD 舊 CHECK。

---

## 6. Parser 策略 per 題型

### 6.1 Parser 決策樹（PDF → questions rows）

```
PDF 進來
├─ 是 ntpc？（檔名規律、開頭有「技術士技能檢定」）
│   → ntpc_parser v1.1（Wave 0 現行 + 加「複選題」section 偵測）
├─ 是 publiccom？（路徑 contains openclaw-data/public-com-tw/）
│   ├─ state-jobs/                  → publiccom_essay_parser（純申論）
│   ├─ license/ 或 legal/ 或 education/  → publiccom_mixed_parser（混合卷：切 section）
│   ├─ civil-service/ 或 finance/ 或 study/ → publiccom_mcq_parser（MCQ 主幹 + 偶含複選）
│   └─ 答案 PDF 走獨立 answer_linker
├─ 是 moex？
│   ├─ 年份 >= 100 → moex_parser（有文字層）
│   └─ 年份 < 100 → moex_ocr_parser（Wave 4，要 OCR）
└─ fallback → 人工上傳 / skip
```

### 6.2 section 偵測規則（混合卷最關鍵）

Parser 掃首兩頁若符合下列 pattern，就進「混合卷模式」：

| Pattern | 切成 | 每區段 parser |
|---|---|---|
| `甲、申論題部分：（N分）` ... `乙、測驗題部分：（N分）` | 2 區段 | 申論區 → `essay` ；測驗區 → `single_choice` 主、若遇「複選題」子標題再切 `multiple_choice` |
| `一、單選題（第 1 題至第 N 題，占 M 分）` ... `二、複選題（第 N+1 題至第 M 題）` | 2 區段 | `single_choice` + `multiple_choice` |
| `閱讀下文，回答第 X 題至第 Y 題：` + 段落 + 題目 | 3+ | 前段成 `reading_passage` parent；X-Y 題 child 指向它 |
| 無上述 marker，題幹以 `一、` `二、` `三、` 連續數字 | 全部 `essay` | state-jobs 模式 |

**confidence 門檻：**

- 若切出的 section 題數與 PDF 首頁聲明的題數 mismatch（如「本試題共 45 題」但切出 40 題），整支 PDF 退回**整體存成 `composite_paper` parent + 若干 `essay` child**（題幹抽得到、答案全部 null）。這樣題庫仍然豐富，**只是那份卷不會被 mock session 選到**（`auto_gradable=false`）。
- 不要丟掉 PDF。每個失敗的 parse 要寫 `content/parsed/_errors/` log，Rambo 之後人工 review。

### 6.3 答案 linker 規則

答案 PDF 是獨立檔（publiccom）或子資料夾（moex），抽完 questions 之後再 link：

1. 題目 row 先進 `content/parsed/<paper_slug>/questions.json`，`correct_answer` 留 `null`
2. 答案 PDF 用 `answer_linker.py` 抽 `{題號: 答案}` dict：
   - MCQ：`(A)` `(B)` 或 `A.` `B.` pattern → 轉 0-idx 存 `correct_answer`
   - 複選：`(ABC)` `(A、B、C)` → 轉 idx array 存 `correct_answer_json`
   - 申論：先存 model_answer 全文到 `correct_answer_json.model_answer`
   - 計算：抽 final numeric answer → `correct_answer_json.final_answer`
3. linker 輸出 `content/parsed/<paper_slug>/answers.json`
4. merge 階段：`answers.json` 的題號對不上 questions.json 的題號 → 記錄 mismatch，但**題目照進庫** `answer_tier='unknown'`

### 6.4 哪些可自動抽、哪些要人工

| type | 自動抽可行性 | 失敗 fallback |
|---|---|---|
| `single_choice` / `multiple_choice` / `true_false` | 高 | 退成 essay 整段題幹 |
| `fill_blank` | 中（答案比對難）| 存 essay |
| `ordering` / `matching` | 低（PDF 沒 marker）| 存 essay |
| `essay` | 高（題幹可抽）| n/a |
| `short_answer` | 中（無法判別長度）| 存 essay |
| `calculation` | 中（final answer 好抽、tolerance 難定）| 存 essay |
| `reading_passage` + child | 中（passage 邊界需正則）| 存 composite_paper |
| `image_ref` | 低（pdfplumber 抽圖難）| flag `needs_image=true`，`is_active=false` |
| `listening_*` | n/a（沒音檔）| Wave 4 |

**hard rule：** parser 寧可把題存成 `essay` 也不要丟。題庫看起來豐富的前提是「題量有」，不是「題型分類細」。細的分類可以人工後修。

---

## 7. 前端 renderer per 題型

### 7.1 現況 vs 目標

**現況（index.html:5557 `renderQuestion()`）：**

```
if (isMulti) → checkbox + 送出鈕
else → 即選即提交（radio）
```

**目標（v1 題型 renderer）：**

```js
function renderQuestion() {
  const q = state.questions[state.currentIdx];
  switch (q.type) {
    case 'single_choice':    renderSingleChoice(q); break;
    case 'multiple_choice':  renderMultipleChoice(q); break;
    case 'true_false':       renderTrueFalse(q); break;          // radio A=是 B=否
    case 'essay':            renderEssayReadonly(q); break;      // 顯示題幹 + 模範答案 toggle + 無對錯
    case 'short_answer':     renderShortAnswerReadonly(q); break;// 同 essay 但 textarea 小、加 keyword hint
    case 'calculation':      renderCalculationFreeform(q); break;// textarea 輸入、送出後比對 final_answer ± tolerance
    case 'reading_passage':  /* 不渲染 — parent 題會被 prefetch，children render 時順便把 passage 秀在上方 */ break;
    case 'listening_passage':/* Wave 4 */ break;
    case 'image_ref':        renderImageRef(q); break;           // 圖片 + 依 child type 的 UI
    case 'composite_paper':  /* 不渲染，只是 wrapper */ break;
    // 舊 stem_shared 當 reading_passage 處理
    default:                 renderEssayReadonly(q);             // 未知型別 fallback
  }
}
```

### 7.2 新增 renderer 的 UI 規格

**`renderEssayReadonly(q)`：**
- 題幹 + sub_questions 列表（若有）每項標配分
- 「顯示模範答案」toggle button（預設收起）
- 無對錯標記、不計入 score
- 進度 dot 顯示灰色（vs MCQ 綠/紅）、加「📝 閱覽」小 tag

**`renderShortAnswerReadonly(q)`：**
- 題幹 + textarea 讓使用者自行寫
- 「顯示模範答案與關鍵字」toggle，展開後 highlight 使用者 textarea 內有打到的 keyword
- 不自動判對錯

**`renderCalculationFreeform(q)`：**
- 題幹 + 一個輸入框（number/text）
- 使用者送出後，比對 `correct_answer_json.final_answer` ± tolerance
- 顯示 `steps_markdown`（若有）作為詳解
- **算正式對錯**，計入 score

**`renderTrueFalse(q)`：**
- 兩顆大按鈕「是 / 否」
- 邏輯同 single_choice（0=否 1=是）

**共用 prefetch：`reading_passage` parent 處理：**
- `state.questions` load 時若 child 的 `parent_question_id` 不為 null，把 parent 的 `media.passage_text` 塞進 child 的 `_passage` 欄位
- `renderSingleChoice` / `renderMultipleChoice` 若發現 `q._passage`，在題卡最上方顯示文本區塊 + 「展開/收起」toggle（長文本預設收起最後 3 行）

### 7.3 計分策略修正

**`state.totalCorrect`** 只對 `auto_gradable=true` 的題目加分。
**`state.totalDone`** 包含所有已「過」的題（申論題點了「下一題」就算過）。
**score %** 改成 `totalCorrect / countAutoGradable(state.questions)` — 避免申論題稀釋分母。

**進度 dot 色碼：**
- 綠：已作答且對
- 紅：已作答且錯
- 灰加 📝 icon：已瀏覽的申論/不自動批改題
- 空白：未作答

### 7.4 mock session 混合題卷的顯示

若 session 裡同時有 MCQ + essay + passage，順序依照 `questions.id` asc（Wave 0 慣例）。UI 不特別分區，交給題型 renderer 自然處理。

如果某 paper 是純申論（如 state-jobs 漁業署）且 session_type='mock'，**不開自動計時結算**，改顯示「閱卷模式」：
- 可自由前後翻題
- 結束時顯示「本卷共 N 題申論，均為閱覽用途」
- 不進排行榜、不計入 streak、不扣 quota（在 `billing.bumpDailyCount` 邏輯加 `if (q.auto_gradable)`）

---

## 8. Wave 1 重新 scope（廣灌計畫）

**舊版 Wave 1（v2）：** `tech-cert` + `finance` 純 MCQ

**新版 Wave 1（v3，2026-04-21）：** **三來源廣灌 MCQ + essay，多題型並存**

### 8.1 執行順序

| 步驟 | 內容 | 預估題數 |
|---|---|---:|
| W1.1 | 先上 schema v17（§5）+ legacy 資料 auto_gradable 標記 | — |
| W1.2 | 改 frontend renderer 支援 `essay` / `true_false` / `reading_passage`（5 種 renderer） | — |
| W1.3 | 寫 3 個 parser：`ntpc_v1.1`（補複選）/ `publiccom_mixed` / `publiccom_essay` | — |
| W1.4 | publiccom **license/patent-tax**（會計師 / 記帳士 / 不動產估價師 / 專利師）混合卷 → 估 2,000 題（含申論）| +2,000 |
| W1.5 | publiccom **state-jobs agriculture-agencies / energy-agencies**（漁業署 / 台電 / 中油筆試）純申論 → 估 500 題（含 Q 未 link 答案者）| +500 |
| W1.6 | publiccom **finance**（銀行招考 + 防制洗錢 + 金融科技力）MCQ → 估 500 題 | +500 |
| W1.7 | publiccom **civil-service/diplomatic-aviation-customs**（民航/外交/關務）MCQ → 估 1,000 題 | +1,000 |
| W1.8 | moex 114 年（最新）的 `questions/by-subject/` 挑 5 支混合卷測試 parser → 估 500 題 | +500 |
| W1.9 | 前端驗證 + 抽檢 50 題 | — |

**目標：Wave 1 結束時題庫從 7,399 → ~12,000，涵蓋 5 種 type（single / multi / true_false / essay / reading_passage），涵蓋 5+ 類別（tech-cert / prof-exam / soe / finance / civil）。**

### 8.2 Wave 1 不做的事

- moex 081-099 OCR（Wave 4）
- 音檔抓取 / listening_passage（Wave 4）
- image_ref 抽圖 pipeline（Wave 2）
- fill_blank / ordering / matching parser（Wave 2，內容量少）
- `calculation` 的 final_answer + tolerance 自動比對（Wave 2，先全部存 `essay`）

### 8.3 跳過的題（技術負債記錄 — Rambo 2026-04-21 同意追蹤）

Parser 遇到以下情境把題標 `auto_gradable=false` 且 `answer_tier='unknown'` 吃下，不要丟：

- 混合卷 section 切失敗：整卷當 composite_paper，子題全是 essay 題幹
- MCQ 解答 PDF 版型異常：題目進、答案 null，之後人工補
- 含圖題：題目進、flag `needs_image=true`、`is_active=false`
- 答案 PDF 不存在（state-jobs 18%）：essay 型、model_answer=null
- 複選題抽錯當單選：`flags=['wave1_multichoice_as_single']`
- 題幹切斷（換頁、跨欄）：`flags=['stem_may_truncated']`

**預估技術負債比例：** 15-20%。高於這數字就停手，回來改 parser。

**追蹤機制（Rambo 要求）：**

1. Wave 1 灌完後跑 SQL 產出技術負債報表：

   ```sql
   SELECT
     source_meta->>'parser_version' AS parser,
     jsonb_array_elements_text(source_meta->'flags') AS flag,
     COUNT(*) AS n
   FROM public.questions
   WHERE source_meta ? 'flags'
     AND jsonb_array_length(source_meta->'flags') > 0
   GROUP BY 1, 2 ORDER BY 3 DESC;
   ```

2. 報表內容每週快照到 `content/parsed/_debt_snapshots/YYYY-MM-DD.md`，diff 追蹤哪些 flag 在增加（代表 parser 還有穩態 bug）
3. 任一 flag 累計 >500 題 → 開票解（優先順序 >> 推新題）
4. `auto_gradable=false` 的題**不在 mock session 隨機出題池**，但**進「題目瀏覽」模式**可被看到（靜態內容 widget 有值）
5. Wave 1 結束時 `auto_gradable=true` 的題佔比**目標 ≥ 65%**（單選 + 複選 + 是非的可自動批改題）

### 8.4 前端分類 `STANDARD_CATEGORIES` 要不要動？

v2 時 `STANDARD_CATEGORIES = ['tech-cert', 'finance']`（index.html:2275）是為了「標準方案剛好能賣」。

Wave 1 新版覆蓋 5+ 類，建議 **v3 也先不動 STANDARD_CATEGORIES**：
- 商業上標準方案還是鎖定 tech-cert + finance
- 其他類的題（prof-exam 會計師、soe 漁業署）算「pro 方案專屬」
- 等 Wave 2 灌完 civil 全部才考慮 STANDARD_CATEGORIES 擴到 ['tech-cert','civil','finance']

---

## 9. 地雷與後續

### 9.1 改 D3 會踩到的地雷

- **Wave 0 的 7,399 筆 questions.correct_answer 是 0-indexed MCQ** — 放寬 CHECK 後這些資料不動，per-exam MIN=0 的 invariant 仍成立。新增 essay / calculation 的 row 不跑 MIN 檢查（它們 `correct_answer=0` 但**不是 index**，會誤傷）。hard rule：**validator 的 per-exam MIN 檢查只針對 `question_type='single_choice'` 的 exam 做**。已寫入 memory `kaonow_correct_answer_indexing_bug.md`，改 validator 時一併更新。
- **`stem_shared` 別名層** — 保留在新 CHECK 裡是為了不動舊資料；未來 Wave 2 時 `UPDATE questions SET question_type='reading_passage' WHERE question_type='stem_shared'`，等資料清掉才拔掉 alias。
- **前端 cache 要換 key** — `Q_CACHE_PREFIX = 'kaonow_q3_'`（index.html:1778）是 v12 key。Schema 加了 `auto_gradable` 欄位之後，把 key bump 到 `kaonow_q4_` 強制舊用戶 refetch。

### 9.2 後續相關 ADR / doc 更新

- `../DECISIONS.md` 加 §19 D3 決議（指向本文）
- `./quiz-engine.md` 加 auto_gradable 計分策略章節
- `./content-model.md` 更新 question_type 表（13 types）
- `../DATA_MODEL.md` 更新 questions 表描述
- `./question-bank-ingest.md` §3 整段改為「見 question-types-taxonomy.md」

### 9.3 驗收清單（Rambo 2026-04-21 回應）

- [x] 13 types 命名 — 按現有命名
- [x] `correct_answer=0` placeholder vs. nullable — **方案 X（保留 NOT NULL + 0 placeholder）；已寫入 v17 applied**
- [x] v1 不做 listening / image parser，只預留 schema
- [x] W1.4-W1.8 廣度切法
- [x] 技術負債門檻 15-20%（要記錄，後續專門解）— 見 §8.3
- [x] `STANDARD_CATEGORIES` 維持 `['tech-cert','finance']`

**拍板後可直接執行的順序：** ~~schema v17~~（已上 2026-04-21 migration `v17_question_types_taxonomy`） → renderer 擴充（W1.2）→ parser v1.1-v1.3（W1.3）→ W1.4 執行 → W1.5 → … → 驗證。

**v17 驗證紀錄（2026-04-21 apply 後）：**

- 4 CHECK constraint 最終定義：
  - `questions_question_type_valid`：13 種 + `stem_shared` legacy alias
  - `questions_answer_payload_valid`：single_choice 免填 / parent 型必 NULL / 其他必 NOT NULL
  - `questions_correct_answer_check`：`correct_answer >= 0`（未動）
  - `questions_difficulty_check`：1-5（未動）
- 新增 column：`auto_gradable boolean NOT NULL DEFAULT TRUE`
- 新增 index：`idx_questions_auto_gradable` partial `WHERE is_active = true`
- View `questions_published` 重建：保留 visibility filter（official / reviewed AI / reviewed community）+ 新增 `paper_id` / `auto_gradable` / `source_meta` 欄位
- Wave 0 既存 7,399 筆：全數 `auto_gradable=true`（7,393 single_choice + 6 multiple_choice，無需 per-type flip）
- smoke test 結果：essay / reading_passage / multiple_choice / true_false 合法 insert pass；essay-without-json / passage-with-json / unknown-type 被 CHECK 拒絕

---

## 10. 避免日後重解析 PDF 的預防措施

> Rambo 2026-04-21 提醒：「題目的年份屬性要保留；其他可能性也想清楚，不要因為前期沒考慮到，後面得重新解析 PDF」。

PDF 解析是整個 pipeline 最昂貴的步驟（I/O + CPU + 人工抽檢）。**假設每年解一次 PDF 是可接受的，每月解一次就是災難**。為此，parsed JSON 和 questions row **要多存**「我現在用不到、但之後改 parser 或擴欄位時會救我一命」的資訊。

### 10.1 年份屬性的擺放（確定版）

**年份一律放在 `exam_papers` 級，不在 `questions` 級。**

```
exam_papers:
  - roc_year SMALLINT           ← 民國年（v16 已有）
  - year SMALLINT GENERATED     ← 西元年（v16 已有，generated column）
  - session_code TEXT           ← 梯次／一試二試（v16 已有）
  - exam_date DATE              ← 實際考試日期（v16 已有、多半空）

questions:
  - paper_id TEXT FK → exam_papers.id   ← 透過 FK 反查年份（v16 已有）
  - ❌ 不加 year 欄位（避免資料不一致）
```

**查詢慣例：**

- 查「114 年所有題目」：`JOIN exam_papers ON p.roc_year=114`
- 前端顯示「第 114 年考試」：透過 paper 關聯 payload 帶出
- filter UI「最近 5 年」：`WHERE p.roc_year >= 110`

**Edge case（現在不處理，但記錄）：**

- 同一題出現在多份 paper（常考題、改編題）→ 現階段允許重複 row，每 row 綁自己的 paper_id。**不做題目去重**。未來若要做，靠 `questions.question_hash`（待加）建反向 view。
- 題目原始出題年份 ≠ 卷年份（罕見）→ 不特別處理，預設「題目年份 = paper 年份」。

### 10.2 parsed JSON 保留更多原始資訊

**Wave 1 起的 `content/parsed/v1/<slug>/questions.json` 結構：**

```jsonc
{
  "exam_id": "cook-c",
  "parser_version": "ntpc_v1.0",           // 新增
  "parsed_at": "2026-04-16T...",           // 新增
  "source_pdf_sha1": "abc123...",          // 新增
  "unique_question_count": 180,
  "sections_detected": [...],
  "questions": [
    {
      "key": "114-002",
      "question": "...",
      "options": ["...","...","...","..."],
      "answer": 2,
      "type": "single_choice",
      "sections": [{"type":"year","label":"114 年度"}],
      "id": "cook-c-001",
      "exam_id": "cook-c",

      // ⬇ v3 新增：parser 層要多留的原始資訊
      "pdf_location": {
        "page": 5,
        "bbox": [100, 200, 500, 280]
      },
      "raw_stem_text": "1. (3) 正三角型...",    // 原始題幹（含題號與括號答案）
      "raw_answer_text": "(3)",                  // 原始答案文字
      "section_id": "section-1-mcq-1-80",        // 混合卷的 section 歸屬
      "sub_question_raw": null,                   // 申論題子題原文（若有）
      "layout_hints": {
        "font_size": 10.5,
        "has_figure_above": false,
        "column": 1
      },
      "parse_confidence": 0.98                    // parser 自評信心度 0-1
    }
  ]
}
```

**為什麼要存這些：**

| 欄位 | 救到什麼場景 |
|---|---|
| `parser_version` | 改 parser 後可以 bulk reparse 舊版、不動新版 |
| `source_pdf_sha1` | PDF 換版能偵測（新抓 PDF 重算 sha1 對不上就知道要重 parse） |
| `pdf_location` | 未來做「原 PDF 預覽」或「圖片裁剪」不用重跑 pdfplumber 整支 PDF |
| `raw_stem_text` / `raw_answer_text` | parser bug 發現後，不回頭讀 PDF 直接從 raw 重抽 |
| `section_id` | 混合卷的 section 歸屬；未來要 re-split 靠這個 |
| `sub_question_raw` | 申論題子題若之後要拆成獨立 row，不用重解 |
| `layout_hints` | parser 換 engine（pdfplumber → pdfminer / unstructured）時可不重 OCR |
| `parse_confidence` | 抽檢時優先看低信心題 |

### 10.3 questions.source_meta 塞什麼

現有 `questions.source_meta JSONB DEFAULT '{}'` 是本來就在 schema 上（v14）。Wave 1 起固定塞：

```jsonc
{
  "parser_version": "publiccom_mixed_v1.0",
  "parsed_json_path": "content/parsed/v1/pukao-fishery-111-B-tp/questions.json#001",
  "pdf_location": {"page": 2, "bbox": [...]},
  "parse_confidence": 0.87,
  "flags": ["needs_image", "answer_watermarked"],  // 問題 tag
  "answer_tier": "publiccom_own",                   // 冗餘：paper 也有，這裡留方便不 JOIN
  "original_question_number": "2"                   // PDF 裡的原題號（中文/阿拉伯數字）
}
```

這樣**換 parser 版本時能 bulk reparse 單題不動整表**：
```sql
WHERE source_meta->>'parser_version' = 'publiccom_mixed_v1.0'
```

### 10.4 media 欄位預留（即使 Wave 1 不做 image/audio）

schema 上 `questions.media JSONB` 已存在。Wave 1 起的 shape 約定：

```jsonc
{
  // 已有內容
  "passage_text": "...",        // reading_passage parent 用
  "audio_url": "...",           // Wave 4

  // ⬇ 預留欄位（Wave 1 parser 要標，不抽內容）
  "image_candidates": [
    {"page": 3, "bbox": [100, 400, 500, 600], "caption_guess": "圖 A"},
    {"page": 3, "bbox": [100, 650, 500, 750], "caption_guess": "圖 B"}
  ],
  "audio_candidates": [],       // 聽力題用，Wave 4 抽
  "table_candidates": [
    {"page": 2, "bbox": [...], "rows": 5, "cols": 4}
  ]
}
```

**Wave 1 parser 的責任：偵測並標示這些 candidates，不實際抽圖。** 未來 Wave 2 跑 image pipeline 時，只要 `SELECT * FROM questions WHERE jsonb_array_length(media->'image_candidates') > 0` 就能全吃，不用重解 PDF。

### 10.5 預防其他可能需要但現在沒設計的欄位

| 未來可能需要 | 現在要怎麼存 | 不存會發生什麼 |
|---|---|---|
| 題目中英文／繁簡版本 | `source_meta.language` 固定填 `'zh-TW'` | 之後補英文/日文題要多一張表 |
| 難易度標籤 | `questions.difficulty`（1-5，v1 schema 已有），parser 先填 3 | 沒欄位可寫，要 ALTER |
| 考點 / knowledge tag | `questions.tags TEXT[]`（v1 schema 已有），parser 先填 `[]` 並在 raw_stem 留原文 | 未來 AI 分類需要 reparse 才能取材 |
| 題目出處（法條引用） | `source_meta.citations = []`（Wave 1 空陣列預留） | 未來做法條跳轉功能要重抽 |
| 題目是否「新題」| `source_meta.is_new = null`（Wave 1 空白） | 沒基準，事後分析要重跑 |
| 相似題連結 | `source_meta.similar_question_ids = []` | 後做 similarity search 時，結果存哪? |

**規則：不確定欄位要不要，就塞 `source_meta` JSONB，schema 不動。** JSONB 以後可以建 GIN index 還是能查。

### 10.6 硬規則（寫進 parser base class）

1. parser 必須填 `parser_version` + `parsed_at` + `source_pdf_sha1`，缺一不可
2. parser 必須填 `source_meta.parser_version`（冗餘寫進 questions row），方便 SQL 直接查不用反查 parsed JSON
3. parser 遇到不確定情境**一律記錄到 `source_meta.flags[]`**，不要 silent drop
4. parsed JSON 結構要 version 化：`/content/parsed/v1/<slug>/questions.json`，parser 改版時寫到 `/content/parsed/v2/`，保留 v1 可 diff
5. `source_pdf_sha1` 與 `exam_papers.source_ref.pdfs[].sha1` 必須對得上 — 對不上代表 PDF 換版，觸發 reparse alert

### 10.7 Wave 0 既存 7,399 筆的回填

Wave 0 灌入時沒填上述欄位。**不 backfill PDF 解析層（pdf_location / raw_stem）**，因為重跑太貴且現資料已可用；只補以下輕量欄位：

```sql
UPDATE public.questions
SET source_meta = source_meta || jsonb_build_object(
  'parser_version', 'ntpc_v0.9',              -- Wave 0 版本標記
  'parsed_json_path', 'content/parsed/<legacy>/questions.json',
  'flags', '["wave0_legacy"]'::jsonb
)
WHERE source = 'official' AND exam_id IN (...wave 0 40 exams...);
```

之後 Wave 0 題若要補齊 pdf_location / raw_stem_text，一個一個 exam 重 parse 也可以（parser v1.1 會順便寫入）。
