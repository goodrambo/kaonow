# Question Bank Ingest — 題庫建置計畫 v2

> 建立日期：2026-04-21（v2 納入 10 類覆蓋矩陣 + 題型分類學）
> 狀態：**Phase A 已完成（ntpc 40 exams / 7,399 questions 已上）；Phase B 方向 2026-04-21 重定調**
> 範圍：把 `content/sources/_inbox/` 下的所有題庫轉成 `public.questions` 可用的 dataset；為「10 類考試 × 多種題型 × 年份維度」設計 schema 與 pipeline。

> 🔀 **2026-04-21 v3 方向重定調**：原本 Wave 1 鎖定「tech-cert + finance 純 MCQ」的計畫，在實地抽樣 publiccom state-jobs / license 混合卷 / moex 國文題後，改為「三來源廣灌 + 多題型並存」。
>
> - **題型 taxonomy 完整規格 + Wave 1 新版計畫請讀：[./question-types-taxonomy.md](./question-types-taxonomy.md)**
> - 本文 §3（題型分類學）與 §5.4（Wave 切分）的內容**已由 taxonomy doc 取代**，保留在此僅作歷史脈絡
> - Phase A 已完成的事實：v16 migration 上、ntpc 40 papers/7,399 questions 均為 single_choice、category_id='tech-cert'

---

## 0. TL;DR

**3 個真實來源**（v1 已重新確認）：
1. `_inbox/openclaw-data/public-com-tw/` — 公職王，36,374 rows，答案覆蓋率 96.6%，完全結構化 JSON
2. `_inbox/openclaw-data/moex-gov-tw/` — 考選部，225,387 PDF，民國 081-115（35 個年份），完全結構化
3. `_inbox/ntpc/` — 新北勞動雲，46 PDF，**手動抓取**、6 大類，PDF 格式**極規範可解析**（內嵌答案）

**10 類覆蓋真相**（前端 examCategories）：
- ✅ 有來源的 7 類：`tech-cert`, `prof-exam`, `civil`, `soe`, `teacher`, `finance`, `military-police`（部分）
- ❌ 缺來源的 3 類：`language`、`it-cert`、`academic`（升學）— 三個現有來源都沒抓到
- ⚠️ 覆蓋不完整：`military-police` 缺警專/軍校/志願役；`academic` 只有警大警專（publiccom 放在升學進修類）

**題型分類學**：enum 目前有 7 種（`single_choice, multiple_choice, true_false, fill_blank, ordering, matching, stem_shared`）。實際素材觸發的新題型至少要加 3 種：**`essay` 申論 / `short_answer` 簡答 / `listening` 聽力**。`stem_shared` 命名怪、要重新定位（見 §5.2）。

**第一版決策主線**：
- 年份走 **`exam_papers` 獨立表 + `questions.paper_id` FK**（見 §4）
- Wave 1 只做 **`tech-cert` + `finance`**（剛好是前端 `STANDARD_CATEGORIES`）— 題型只碰純 MCQ，覆蓋標準方案商業目標
- Wave 2 擴 `civil` / `prof-exam` / `soe` MCQ（publiccom 主力）
- Wave 3 申論 paper metadata + `teacher` / `academic` 小量
- Wave 4 想辦法做 `language` / `it-cert`（合法來源、AI 輔助、或合作授權）

---

## 1. 10 類考試現況盤點

### 1.1 前端定義（index.html:3259 `examCategories`）

| # | id | 名稱 | 描述摘要 |
|---|---|---|---|
| 1 | `tech-cert` | 技術士證照 | 甲/乙/丙級，246 職類（勞動部）|
| 2 | `prof-exam` | 專技人員考試 | 醫師/律師/會計師/建築師/護理師/導遊領隊 |
| 3 | `civil` | 公職考試 | 高普初、特考、地特、司法、鐵路 |
| 4 | `soe` | 國營事業 | 台電/中油/台水/台糖/台鐵/中鋼/中華電信/中華郵政 |
| 5 | `teacher` | 教師資格與甄試 | 教檢、教甄、代理代課 |
| 6 | `military-police` | 軍警校院 | 警特、警專、軍校、志願役 |
| 7 | `language` | 語言檢定 | 多益、全民英檢、雅思、托福、JLPT、TOPIK |
| 8 | `academic` | 升學考試 | 學測、分科、統測、會考、研究所 |
| 9 | `finance` | 金融證照 | 信託、證券、期貨、保險、銀行內控、CFP/AFP |
| 10 | `it-cert` | IT 國際認證 | AWS/Azure/GCP、CompTIA、Cisco、PMP、TQC+ |

### 1.2 10 類 × 來源覆蓋矩陣

| 類別 | ntpc | publiccom | moex | 缺口／備註 |
|---|---|---|---|---|
| tech-cert | ✅ 46 PDF / 6 領域 | ⚠️ publiccom license 裡部分重疊 | — | 需補：246 職類 vs ntpc 只 46 份 → 還有 200+ 職類無題庫；**建議導 `L07300` 等勞動部技檢公告檔** |
| prof-exam | — | ✅ license 16 exams + legal 3 exams | ✅ moex 涵蓋所有專技年份 | 含醫/律/會/建/食品/營養/社工/土木/消防/驗光等 |
| civil | — | ✅ civil-service 24 exams / 26,900 rows | ✅ moex 全年份 | 主力，最豐富 |
| soe | — | ✅ state-jobs 22 exams / 4,839 rows | — | 有台電/中油/郵局/臺鐵/中鋼/國稅局/捷運/菸酒/農會 — 全對上 |
| teacher | — | ✅ education 3 exams / 1,795 rows | — | 教檢/教保員/教甄，**沒有「代理代課」** |
| military-police | — | ⚠️ 警特在 civil-service 裡；警大/警專在 **study**（publiccom 歸升學進修類）| — | **缺**：軍校聯招、志願役入營；publiccom 沒抓 |
| language | — | — | — | **完全缺**。TOEIC/TOEFL/IELTS 題庫有版權，**不能爬** |
| academic | — | ⚠️ study 只有 警大/警專 498 rows | — | **學測/分科/統測/會考/研究所完全缺**；題目在大考中心，可抓但另闢來源 |
| finance | — | ✅ finance 17 exams / 878 rows | — | 含「防制洗錢」「金融科技力」證照；但**信託/證券/期貨/保險業務員** publiccom 沒單獨抓（混在銀行招考考古題裡）|
| it-cert | — | — | — | **完全缺**。題庫版權敏感，合法面不能爬 |

### 1.3 關鍵 mismatch 要處理

- **警大/警專**：publiccom 放 `study/升學進修類/警校招生`，我們 10 類把它放 `military-police`。mapping 要翻譯。
- **警察特考**：publiccom 放 `civil-service`（警消海巡移民），我們 10 類放 `military-police`。→ 我們的 `civil` 跟 publiccom 的「公職特考類」定義不完全一樣（我們把警察抽出來了）。需要 **per-exam mapping table** 處理這些例外。
- **專技證照 vs 技術士證照**：publiccom 叫「專技證照類」（會計師、建築師），跟我們 `tech-cert`（甲/乙/丙級技能檢定）**不是同一類**；`prof-exam` 才對應 publiccom 專技證照。命名易混淆。

---

## 2. 三個來源的結構實況

### 2.1 ntpc（新北勞動雲，手動抓，46 PDF）

**目錄**：`_inbox/ntpc/<top_cat>/*.pdf`，6 大類：
```
餐飲與美食類    9 files     中餐烹調葷/素、烘焙、西餐、中式麵食…
工業          23 files    職安衛、冷凍、堆高機、室內配線、建築製圖、汽修、機電…
電腦與網路類    6 files    網架丙/乙、電腦硬體丙/乙、電腦軟體丙/乙
商業與行銷類    2 files    會計事務資訊丙/乙
家政(事)類      2 files    女裝丙/乙
美容類          4 files    女子美髮、男子理髮、美容丙、指甲彩繪初級
TOTAL: 46
```

**PDF 格式（實測樣本 4 份，格式一致）**：
```
全國技術士技能檢定第 2 梯次
114 年度 10000 美容丙級技術士技能檢定學科測試試題
本試卷有選擇題 80 題，每題 1.25 分，皆為單選選擇題，測試時間為 100 分鐘
...
1. (2) 正三角型臉兩頰及下顎部宜以何種色調粉底修飾？ ①基本色 ②暗色 ③明色 ④綠色。
2. (4) 健康皮膚的 ph 值約為 ①9～10 ②3～4 ③7 ④5～6。
...
```

**可解析欄位**（從 PDF 文字抓）：
- `roc_year`（如「114 年度」）、`session_code`（「第 2 梯次」）、`exam_code`（如「10000」美容丙）
- 每題：`question_number`, `correct_answer`（題號後 `(N)`）, `stem`, `options[①②③④]`
- 題型分佈：**丙級清一色 80 題單選**；**乙級 60 單選 + 20 複選（multiple_choice）**

**parser 複雜度**：**低**。正確答案已內嵌、option marker 固定是 ①②③④。`pdfplumber` + 一支 regex 就解完。

**注意**：
- 首頁可能是版本聲明頁（如職安學科 900060A18）不是題目，要 skip
- 檔名有年度資訊可冗餘 cross-check（`114年題庫` / `115年題庫`）
- 同一職類可能有多個梯次檔（如第 1/2/3 梯次），建議都進庫、用 `paper_id` 區分

### 2.2 publiccom（公職王，openclaw 抓，36,374 rows）

已在 v1 詳述，核心重點：
- 7 top categories，87 exams
- `indices/rows.questions.json` 每 row 結構化：`year`, `exam_name`, `level_or_region`, `category`, `subject`, `question_pdf.local_path`, `answer_pdf.local_path`
- PDF 格式**不一致**（見 Wave 0 坑：初等考沒 A/B/C/D marker、高考三級是申論）
- answer PDF 常有「公」「王」浮水印字插入文字，parse 前要先清

### 2.3 moex（考選部，openclaw 抓，225,387 PDF）

- 按 `roc_year/exam_code/` 組織（081-115）
- `exam_code` 編碼制：如 `114080`=114 年高普考（8=高普）
- 每 row 含 `c`（類科代碼 201-307 高考、401-462 普考）、`s`（科目代碼）、`q`（題組）
- 三種 PDF：Q (question) / S (answer) / M (answer-correction 疑義釋覆)
- 答案覆蓋率 37%（104080 樣本）— 比 publiccom 低，因為只有有提供答案的科目才有 S

---

## 3. 題型分類學（question_type enum）

### 3.1 現有 enum（來自 questions.question_type CHECK）

```
single_choice       單選 ← 目前 Wave 0 全部 7,399 筆都是這個
multiple_choice     多選 ← 乙級技術士有 20 題複選
true_false          是非
fill_blank          填充
ordering            排序
matching            配對
stem_shared         共用題幹（parent 型，不是 leaf）
```

### 3.2 實際素材會觸發的題型

| 題型 | 出現場景 | 現 enum 是否支援 |
|---|---|---|
| 單選 | 幾乎全部類別 | ✅ single_choice |
| 多選 | 乙級技術士、部分專技、金融 | ✅ multiple_choice |
| 是非 | 考選部學科、部分技術士 | ✅ true_false |
| 填充 | 英文科、國文科、部分專技 | ✅ fill_blank |
| 配對 | 醫事、護理、歷史 | ✅ matching |
| 排序 | 歷史、流程、法律 | ✅ ordering |
| **申論** | 高考三級、律師司法官、教甄、專技醫師 | ❌ **沒有 `essay`** |
| **簡答 / 計算** | 專技、國文、國營理工科 | ❌ **沒有 `short_answer`** |
| **閱讀測驗（共用文本）** | 英文、國文、專技 | ⚠️ `stem_shared` 命名不清，且不能描述 child 是什麼題型 |
| **聽力（音訊 + 選擇）** | 語言檢定、高中英聽 | ❌ 需 `media.audio_url`；可沿用 `single_choice` + media，但 filter 時會麻煩 |
| **聽力填空 / 跟述** | 語言檢定 | ❌ 需新 type |
| **寫作 / 口說** | 語言檢定、學測國寫 | ❌ 需新 type + 錄音上傳 |
| **圖表題** | 地理、數學、專技 | ⚠️ 可用 `image_url` + single_choice 表達，但解析 pipeline 要能切圖 |

### 3.3 建議新增 enum value

```sql
ALTER TABLE public.questions DROP CONSTRAINT IF EXISTS questions_question_type_check;
ALTER TABLE public.questions ADD CONSTRAINT questions_question_type_check CHECK (
  question_type IN (
    'single_choice',
    'multiple_choice',
    'true_false',
    'fill_blank',
    'ordering',
    'matching',
    'stem_shared',     -- 保留向後相容；未來改名 reading_passage
    'essay',           -- 新增：申論
    'short_answer',    -- 新增：簡答/計算/解釋名詞
    'listening_mcq',   -- 新增：聽力選擇（有 media.audio_url）
    'listening_free',  -- 新增：聽力填空/跟述
    'writing',         -- 新增：寫作/國寫
    'speaking'         -- 新增：口說
  )
);
```

**`stem_shared` 的定位（釐清）**：這是個 **parent question**，自己不是一題、只承載文本。child questions 透過 `parent_question_id` 指回它，child 的 `question_type` 是 `single_choice` / `fill_blank` 等等。Wave 0 沒用過 parent/child。Wave 2 的閱讀測驗要用。

### 3.4 自動批改 vs 人工/AI 批改

| question_type | 自動可判分 | Wave 1 是否納入 |
|---|---|---|
| single_choice / multiple_choice / true_false | ✅ | ✅ |
| fill_blank | ⚠️ 答案字串比對（需標準化）| Wave 2 |
| ordering | ✅ array 比對 | Wave 2 |
| matching | ✅ pair 比對 | Wave 2 |
| essay / short_answer / writing / speaking | ❌ 靠 LLM rubric 或人工 | Wave 3+（只存題目、不判分）|
| listening_* | ✅（若 child 是 MCQ）| Wave 4（需 audio）|

**第一版 quiz engine 只判分 choice 系列題**，其他題型先存起來但不計入 `is_correct`（`is_correct=NULL`）。這樣申論題也能進題庫不阻塞進度。

---

## 4. 資料 schema 設計

### 4.1 核心決策：年份走 `exam_papers` 獨立表

理由見 v1 §3.1（三方案比較，方案 C 勝）。這裡給 **v2 更新版** schema：

```sql
CREATE TABLE public.exam_papers (
  id TEXT PRIMARY KEY,                   -- e.g. 'pukao-113-accounting-currency-banking'
  exam_id TEXT NOT NULL REFERENCES public.exams(id),
  subject_id TEXT REFERENCES public.subjects(id),

  -- 時間維度
  roc_year SMALLINT,                     -- nullable：ntpc 題庫版本如 '115' 題庫；publiccom/moex 必填
  year SMALLINT GENERATED ALWAYS AS (CASE WHEN roc_year IS NOT NULL THEN roc_year + 1911 END) STORED,
  session_code TEXT,                     -- 年內區分：一試/二試、第 1/2/3 梯次
  exam_date DATE,                        -- 實際考試日期（若已知）

  -- 分類維度
  level_or_track TEXT,                   -- '三等', '四等', '薦任', '桃園市', '乙級', '丙級'
  category TEXT,                         -- 類科：'一般行政', '航務管理', '美容', '中餐烹調葷食'
  paper_title TEXT NOT NULL,             -- 人類可讀：'113 年普考-貨幣銀行學概要'、'114 年度 10000 美容丙級'

  -- 來源
  source_family TEXT NOT NULL CHECK (source_family IN
    ('public-com-tw','moex-gov-tw','ntpc','manual','ai_generated')),
  source_ref JSONB NOT NULL DEFAULT '{}',  -- 抓取原始定位（見 §4.3）

  -- aggregate（trigger 維護，同 v15 哲學）
  question_count INT NOT NULL DEFAULT 0,
  answer_tier TEXT CHECK (answer_tier IN ('official','verified','publiccom_own','unknown','ai_generated')),

  meta JSONB NOT NULL DEFAULT '{}',
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_papers_exam_year ON public.exam_papers(exam_id, roc_year DESC NULLS LAST);
CREATE INDEX idx_papers_source ON public.exam_papers(source_family);
CREATE INDEX idx_papers_answer_tier ON public.exam_papers(answer_tier);

-- questions 加 paper_id
ALTER TABLE public.questions
  ADD COLUMN paper_id TEXT REFERENCES public.exam_papers(id);
CREATE INDEX idx_questions_paper_id ON public.questions(paper_id) WHERE paper_id IS NOT NULL;
```

### 4.2 question_type enum 擴充（見 §3.3）

### 4.3 `source_ref` 形狀（三來源）

```jsonc
// publiccom
{ "source_family":"public-com-tw",
  "exam_id":"22738",              // publiccom 自己的 exam_id
  "exam_path":"civil-service/diplomatic-aviation-customs/aviation",
  "file_name":"114民航特考三等-航空運輸與安全管理(官方).pdf",
  "local_path":"_inbox/openclaw-data/public-com-tw/.../114/...pdf",
  "question_pdf_sha256":"...",
  "answer_pdf_sha256":"..." }

// moex
{ "source_family":"moex-gov-tw",
  "exam_code":"114080",
  "c":"201", "s":"0101", "q":"1",
  "subject":"國文（作文、公文與測驗）",
  "local_path":"_inbox/openclaw-data/moex-gov-tw/exams/114/114080/questions/by-subject/...pdf",
  "has_answer_pdf":true,
  "has_correction_pdf":false }

// ntpc
{ "source_family":"ntpc",
  "ntpc_filename":"美容丙級證照輔導班（甄試題庫.pdf）.pdf",
  "class_name":"美容丙級證照輔導班–中高齡優先班",
  "pdf_sha256":"...",
  "pdf_version_code":"900060A18"   // 若有版次編號 }
```

### 4.4 `answer_tier` 分層規則

| Tier | 條件 | 前端行為 |
|---|---|---|
| `official` | moex answer_pdf / publiccom PDF 檔名含「(官方)」/ ntpc 內嵌答案 | 直接判分、不加註記 |
| `verified` | publiccom 檔名含「已核對考選部答案」 | 直接判分、不加註記 |
| `publiccom_own` | publiccom 普通 answer_pdf（無上述 tag） | 判分但顯示 ⚠️「此解答為公職王提供」 |
| `ai_generated` | 之後 LLM 補解答 | 判分但顯示「AI 解答，請自行驗證」 |
| `unknown` | 沒答案（moex 某些科目、ntpc 職安聲明頁）| **不判分**、只供閱覽、排除於錯題本 |

---

## 5. Ingest Pipeline

### 5.1 Layer 定義（延續 Wave 0）

```
Layer 0: _inbox/                  ← 抓取／手動置入（已完成）
Layer 1: parsed/                  ← PDF → 中間 JSON（每題 stem/options/answer/type）
Layer 2: validated/               ← 結構驗證 + answer_tier 標記 + 人工抽檢 hook
Layer 3: sql/                     ← idempotent INSERT/UPSERT SQL
Layer 4: loaded/                  ← 執行後的 log + diff
```

### 5.2 Parser 分工

| Source | 類型 | Parser | 複雜度 |
|---|---|---|---|
| ntpc MCQ | 丙級 80 單選 | regex `(\d+)\. \((\d)\) (.+?) ①(.+?)②(.+?)③(.+?)④(.+?)。` | ⭐ 低 |
| ntpc 乙級複選 | 60 單 + 20 複選 | 同上 + 偵測「複選題」分段線 | ⭐⭐ 中 |
| publiccom MCQ | 初等/普考 | 已知需客製（無 ABCD marker、OCR 浮水印） | ⭐⭐⭐ 中 |
| publiccom 申論 | 高考三級、律師 | 不拆題、paper 層只存 metadata + PDF 路徑 | ⭐ 低 |
| moex 全部 | Q + S + M | 同 publiccom 邏輯；早年 081-099 PDF 需 OCR | ⭐⭐⭐⭐ 高 |
| language / it-cert / academic | — | 沒素材，暫不做 | — |

### 5.3 Exam ID mapping 策略

建 `content/sql/exam_id_map.json`（作為 ingest script 查表用）：

```jsonc
{
  "public-com-tw": {
    // 主幹（exam_name 直接 map）
    "高考二級": "gaokao-2",
    "高考三級": "gaokao-3",
    "普考":     "pukao",
    "初等考":   "chukao",
    "地方特考:三等": "local-3",
    "地方特考:四等": "local-4",
    "警察特考:三等": "police-3",   // 注意：10 類裡屬 military-police
    "警察特考:四等": "police-4",
    "一般警察特考:三等": "police-gen-3",
    "一般警察特考:四等": "police-gen-4",
    "司法特考:三等": "judicial-3",
    "司法特考:四等": "judicial-4",
    "司法特考:五等": "judicial-5",
    "關務特考:三等": "customs-3",
    "關務特考:四等": "customs-4",
    "民航特考":     "aviation",
    "外交特考":     "diplomatic",
    "調查局特考":   "investigation",
    "警大考試":     "__military_police_police_college",  // publiccom 歸 study，我們歸 military-police，待建 exams.id
    "警專考試":     "__military_police_police_academy",

    // 金融類
    "土地銀行":    "bank-landbank",       // 多半 exams 表還沒有，需新增
    "臺灣銀行":    "bank-boat",
    ...

    // 教職
    "教師資格考":  "teacher-cert",
    "教師甄試":    "teacher-recruit",
    "教保員考試":  "teacher-kindergarten"
  },
  "moex-gov-tw": {
    // c 代碼區段（moex 編碼規律）
    "__c_prefix_rules__": [
      { "pattern":"^2[01][0-9]$", "exam_id":"gaokao-3" },    // 201-299
      { "pattern":"^3[01][0-9]$", "exam_id":"gaokao-2" },    // 301-307
      { "pattern":"^4[0-6][0-9]$", "exam_id":"pukao" }        // 401-462
    ],
    "__exam_code_overrides__": {
      // exam_code 整體鎖定（如警特考）
      "114060": "police-special"
    }
  },
  "ntpc": {
    // 以 ntpc 檔案的「工種+等級」map；大部分 exams.id 還沒建，ingest 時一併 UPSERT
    "美容丙級": "techcert-cosmetology-c",
    "美容乙級": "techcert-cosmetology-b",
    "中餐烹調─葷食丙級": "techcert-chinesecooking-meat-c",
    ...
  }
}
```

**未命中策略**：寫到 `content/sql/unresolved_exams.json`，每日打一份新增 exam 清單，由 Rambo 決定要不要在 exams 表新增或棄置。

### 5.4 Wave 切分（v2 新版）

| Wave | 範圍 | 題數估計 | Paper 估計 | 時程 |
|---|---|---:|---:|---|
| **Wave 1** | `tech-cert`（ntpc 46 PDF + publiccom license 前 5 個熱門）+ `finance`（publiccom finance 全部 MCQ）| 4,000-6,000 | 80-120 | **1-2 週** |
| **Wave 2** | `civil` + `prof-exam` + `soe` 純 MCQ（publiccom 110-114 年）| 15,000-20,000 | 500-700 | 3-4 週 |
| **Wave 3** | 申論 paper metadata（高考三級、律師司法官、教甄申論卷）+ `teacher` MCQ + `academic`（只警大警專）+ `military-police` 警特 | +500 paper、+3,000 MCQ | +600 paper | 4-6 週 |
| **Wave 4** | moex 早年 081-099（OCR 補齊）| +50,000 | +2,000 | 6-8 週（需 OCR 基建）|
| **Wave 5** | `language` + `it-cert` 策略待定 | — | — | 待商模決策 |

**Wave 1 選 tech-cert + finance 的商業理由**：與前端 `STANDARD_CATEGORIES = ['tech-cert', 'finance']`（index.html:2275）完全吻合，標準方案剛好能賣。這比「全部類別都做一點點」更聚焦。

### 5.5 Wave 1 具體步驟

1. **schema migration**（一次性）
   - 建 `exam_papers` 表 + 擴 question_type enum + 加 `questions.paper_id`
   - 加 trigger 維護 `exam_papers.question_count`
2. **ntpc ingest**（46 PDF → ~3,680 題）
   - Parser 寫 `scripts/ingest/ntpc_parser.py`，輸出 `content/parsed/<paper_slug>.json`
   - 建對應 `exams.id`（46 個 exam 大部分新增，如 `techcert-cosmetology-c`）
   - 為每個 PDF 建 paper row + N 筆 questions
3. **publiccom finance MCQ ingest**（估 ~500 題）
   - 先做防制洗錢、金融科技力等 MCQ 證照
   - 銀行招考考古題排在 Wave 2
4. **人工抽檢**：Rambo 檢 50 題（每來源 25 題）
5. **前端驗證**：在前端 `/practice` 起一場 tech-cert mock，確認流程通

---

## 6. 不在三來源覆蓋內的類別對策

### 6.1 `language` 語言檢定

**法律風險**：TOEIC（ETS）、TOEFL（ETS）、IELTS（Cambridge/British Council/IDP）、JLPT（日本財團法人國際交流基金會）題庫皆有版權，**直接爬會侵權**。

**可能來源**：
- 官方出版的**樣題 / 例題**（ETS 官網、劍橋雅思官方指南）— 只有 20-50 題／類型
- 坊間出版社的**模擬題**（需採購 / 合作）
- **AI 生成類題**（依照官方題型規範產出）— 已進 `source = 'ai_generated'` schema
- 全民英檢（LTTC）部分題目有公開

**建議**：v1 不做題庫，只做「考試介紹 + 學習資源連結 + LLM 出題練習」 widget；v2 考慮跟出版社授權。

### 6.2 `it-cert` IT 國際認證

**法律風險**：AWS/Azure/GCP/CompTIA/Cisco 題庫都是認證機構/培訓商的版權物，爬不得。

**可能來源**：
- 官方**釋出的 sample questions**（每張 cert 通常 10-20 題）
- **AI 生成類題**依考綱（cert exam objectives 是公開的）
- 合作授權（如 Tutorials Dojo 對 AWS）
- 英中翻譯題庫（需小心版權）

**建議**：同 language，v1 只做 AI 生成題 + 學習資源。

### 6.3 `academic` 升學考試

**正當來源存在**：
- 大學入學考試中心（ceec.edu.tw）每年公告學測/分科試題與參考答案，**公開可抓**
- 技專校院入學測驗中心（tcte.edu.tw）統測/四技二專
- 國中教育會考（cap.rcpet.edu.tw）
- 研究所：各校自考，題目零散

**建議**：開第 4 個 openclaw 來源 `ceec-edu-tw`，Wave 3 納入。

### 6.4 `military-police` 缺警專/軍校/志願役

**來源**：
- 警專（tpa.edu.tw）：官網會放歷屆試題
- 軍校聯招（mnd.gov.tw）：同上
- 志願役：無公開題庫（多為內部教材）

**建議**：Wave 3 補警大警專（publiccom study 裡已有）+ 開第 5 個 openclaw 來源 `tpa-edu-tw`（警專官方）。

---

## 7. 給 Rambo 的決策清單（D1-D5）

### D1. 年份維度要 `exam_papers` 獨立表嗎？（同 v1）
- ✅ **推薦：方案 C（新表 + paper_id FK）** — §4.1
- 替代：只加欄位到 questions（B）

### D2. Wave 1 範圍要對齊標準方案還是全類薄薄做？
- ✅ **推薦：對齊 `tech-cert + finance` 標準方案目標**
- 替代 a：同 v1 建議（publiccom 近 5 年 MCQ ~8,000 題）
- 替代 b：全 10 類各來一點 MVP（難管理，不建議）

### D3. question_type enum 要不要一次加滿 `essay / short_answer / listening_*` 等？
- ✅ **推薦：一次加到位**（§3.3），避免未來再改 CHECK 常被 PostgREST cache 咬
- 替代：Wave 1 只加 `essay`（給高考三級 paper metadata 用），其他按需加

### D4. 答案可信度分層要幾層？
- ✅ **推薦：5 層**（official / verified / publiccom_own / ai_generated / unknown）存在 `exam_papers.answer_tier`
- 替代：3 層（official / unofficial / unknown）簡化前端

### D5. language / it-cert 要怎麼處理？
- 選項 1：v1 **暫不做題庫**、只做介紹 + 連結 + AI 出題（**推薦**）
- 選項 2：找合作授權（成本高、時程久）
- 選項 3：爬公開 sample + AI 補量（版權邊界要諮詢）

### D6（bonus）. academic / military-police 缺口要 Wave 幾補？
- 推薦：academic 開新來源 `ceec-edu-tw`，排 Wave 3
- 推薦：警專官網 `tpa-edu-tw` 排 Wave 3

---

## 8. Open issues / future work

- **OCR 基建**：moex 081-099 掃描 PDF、部分 publiccom 圖表題、未來紙本題庫 — 建議 Wave 4 前評估 `PaddleOCR zh-TW` 或 Google Vision API
- **圖表題 pipeline**：PDF → 切圖 → 上傳 Supabase Storage → 回寫 `questions.image_url`
- **閱讀測驗共用題幹 pipeline**：偵測「根據下文回答第 N-M 題」模式、建 parent + child
- **題庫去重**：同一題可能在不同年份、不同 exam 重複出現；需建 `question_hash`（基於 stem 標準化）做 dedupe warning（不一定阻擋插入）
- **錯題回報**：題庫會有錯字/答案錯，`question_reports` 表已在，流程要跟 ingest 綁（Wave 1 就要能接）
- **試用配額與 paper 關聯**：trial_questions_used 現不分 paper；未來「試用只能練最新 3 年」要基於 paper.roc_year
- **paper 層 RLS**：`exam_papers` 設 RLS public read（跟 exams 一樣），manage 給 admin
- **模擬考 vs 真實卷**：mock 模式要不要強制「從同一 paper 抽」模擬真實考試（同一年同一科一整張）？目前是洗牌抽題

---

## 9. 相關文件

- `docs/modules/content-pipeline.md` — layer 1-4 原理（Wave 0 版，會更新）
- `docs/modules/content-model.md` — chapter / subject / exam 關係
- `docs/DATA_MODEL.md` — schema overview
- `docs/DECISIONS.md` — 會新增 ADR「D-016 exam_papers 獨立表」「D-017 question_type enum 擴充」「D-018 Wave 切分與商業對齊」

---

## 10. Changelog

- 2026-04-21 **v2**：補 ntpc 手動抓資料（46 PDF/6 類）；盤點前端 10 類與 3 來源覆蓋矩陣；加題型分類學（新增 essay/short_answer/listening_*/writing/speaking）；Wave 1 對齊 tech-cert+finance 商業目標；列出 language/it-cert/academic/軍校 4 個缺口與對策；決策清單擴 D1-D6
- 2026-04-21 v1：初版 proposal（public-com-tw + moex-gov-tw）
