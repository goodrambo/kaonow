# 模組：Content Model（內容資料模型）

## 目的
題庫的核心結構：類別 → 考試 → 科目 → 章節 → 題目。v6 引入 `exam_subjects` 支援多 track 考試（例如高考三級有「一般行政 / 一般民政 / 人事行政」等不同科目組合）。v11/v12 擴充 question_type 支援多選 / 是非題 / 閱讀測驗群組。

## 目前狀態
✅ Schema 完整；題庫建置持續進行中（詳見 `QUESTION_BANK_ROADMAP.md` / `EXAM_ROADMAP.md`）

## 層級結構

```
exam_categories (id: TEXT slug)        ← 7 大類
  │
  └── exams (id: TEXT slug)            ← 具體考試
        │
        ├── exam_subjects (M:N)        ← v6 引入；track_name 支援多 track
        │    └── subjects (id: TEXT)   ← v6 引入；科目池可跨考試共用
        │
        ├── chapters (exam_id, subject_id? nullable)
        │
        └── questions (exam_id, subject_id? nullable, chapter_id? nullable)
              │
              └── parent_question_id?  ← v11 引入；閱讀測驗群組（stem_shared）
```

## 相關檔案

| 檔案 | 用途 |
|---|---|
| `supabase_schema.sql` | v1 base schema（exam_categories, exams, chapters, questions, bookmarks） |
| `supabase_schema_v6.sql` | 加入 `subjects` + `exam_subjects` + `questions.subject_id` + `chapters.subject_id` |
| `supabase_schema_v6_1.sql` | 修 `questions_published` view 補 subject_id |
| `supabase_schema_v6_2.sql` | 資料遷移：單科考試的 subject_id 回填 |
| `supabase_schema_v11_question_types.sql` | 加 `question_type` / `correct_answer_json` / `media` / `parent_question_id` |
| `supabase_schema_v12_multi_choice.sql` | 多選題 pilot：`questions` check constraint + `question_attempts.selected_answer_json` |
| `content/` | 題庫 source pipeline（Layer 1-4，見 [./content-pipeline.md](./content-pipeline.md)） |
| `index.html` exam/catalog/quiz 前端邏輯 | 讀這些表的主要 consumer |

## 資料表

### `exam_categories`

**主鍵用 TEXT slug**（例：`public-service`, `tech-cert`, `finance`, `language`...）。理由：URL 好記、UI 直接顯示。

| 欄位 | 用途 |
|---|---|
| `id TEXT PK` | slug，如 `tech-cert` |
| `name` | 中文名稱，如「技術士證照」 |
| `icon` | emoji 或 icon 名 |
| `color`, `text_color` | 類別配色 HEX |
| `description` | 類別簡介 |
| `sort_order INT` | 首頁排序 |
| `is_active BOOLEAN` | 隱藏用 |

目前 **10 大類**（權威來源：`index.html` 內 `examCategories` 陣列，約 L3321–L3343；首頁「10 大考試系統」文案 L981）：

| slug | 中文名稱 | icon | 2026-04-23 活考試數 |
|---|---|---|---|
| `tech-cert` | 技術士證照 | 🔧 | 61 |
| `prof-exam` | 專技人員考試 | 🏛 | 25 |
| `civil` | 公職考試 | 📋 | 23 |
| `soe` | 國營事業 | 🏢 | 0 |
| `teacher` | 教師資格與甄試 | 🍎 | 0 |
| `military-police` | 軍警校院 | 🛡 | 0 |
| `language` | 語言檢定 | 🌐 | 17 |
| `academic` | 升學考試 | 🎓 | 8 |
| `finance` | 金融證照 | 💼 | 21 |
| `it-cert` | IT 國際認證 | 💻 | 25 |

共 180 種考試。舊版文件曾寫「7 大類 + slug `public-service` / `professional` / `corporate`」——**那是錯的，別信**。`examCategories` 陣列另有一筆 `id:'all'` 是「全部考試」虛擬類別，僅給篩選 UI 用，不落 DB。

### `exams`

| 欄位 | 用途 |
|---|---|
| `id TEXT PK` | slug，如 `osh-a`, `gaokao-3` |
| `category_id` | FK `exam_categories` |
| `name` | 中文全名 |
| `short_name` | UI 用縮寫 |
| `description` | 簡介 |
| `issuer` | 主辦單位 |
| `exam_format` | 例如「選擇題 + 申論題」 |
| `duration_hours` | 考試時間 |
| `target_audience` | 適合對象 |
| `difficulty 1-5` | 難度 |
| `annual_candidates` | 年度考生數（供 UI「每年約 X 人報考」） |
| `is_available BOOLEAN` | 控制是否開放（未開放的只顯示 "即將推出"） |
| `tier_requirement` | `free` / `standard` / `pro` — 進入此考試需要的最低 tier |
| `free_daily_question_limit INT default 10` | 免費用戶每日可做題數（per exam） |
| `official_url, registration_url, official_bank_url` | 外部連結 |
| `next_exam_date DATE` | 下次考試日期（首頁倒數用） |
| `mock_question_count` | 模擬考題數（v5 加入） |
| `mock_time_minutes` | 模擬考時間 |
| `mock_pass_score` | 及格分數 |
| `meta JSONB` | 彈性欄位 |
| `sort_order` | 同類別內排序 |

### `subjects`（v6 引入）

科目池，可跨考試共用。例：高普考共用同一個「行政法」科目 `sub-admin-law`。

| 欄位 | 用途 |
|---|---|
| `id TEXT PK` | slug，如 `sub-admin-law`, `sub-osh-a` |
| `name` | 中文全名 |
| `short_name` | UI 縮寫 |
| `description` | 簡介 |
| `category` | 大分類（legal / accounting / osh / ...） |
| `icon` | emoji |
| `meta JSONB` | 彈性 |

### `exam_subjects`（v6 引入，M:N）

這張表是 v6 的核心創新。**一個考試有多個 track，每個 track 對應一組不同科目**。

| 欄位 | 用途 |
|---|---|
| `id UUID PK` | — |
| `exam_id` | FK `exams` |
| `subject_id` | FK `subjects` |
| `track_name TEXT NULLABLE` | 例：`一般行政` / `一般民政` / `人事行政`；單 track 考試為 NULL |
| `is_required BOOLEAN` | 必考 or 選考 |
| `weight INT` | 分數加權（保留，UI 尚未用） |
| `sort_order INT` | 同 track 內排序 |

**UNIQUE**：`(exam_id, subject_id, track_name)`

**為什麼需要 track_name**：高考三級「一般行政」考行政法 + 行政學 + 公共政策...；「一般民政」考行政法 + 地方自治 + 人口政策...。同一個 exam (高考三級) 下，不同 track 拿到的科目清單不同。見 [../DECISIONS.md #5](../DECISIONS.md)。

### `chapters`

| 欄位 | 用途 |
|---|---|
| `id TEXT PK` | slug，如 `osh-a-ch2` |
| `exam_id` | FK `exams` |
| `subject_id NULLABLE` | FK `subjects`（v6 加入；單科考試可能為 NULL） |
| `chapter_number INT` | 章節編號 |
| `name` | 章節名 |
| `description` | 章節簡介 |
| `question_count INT` | 冗餘欄位，由 triggers 或手動維護 |
| `sort_order INT` | 排序 |

**UNIQUE**：`(exam_id, chapter_number)`

### `questions`

| 欄位 | 用途 |
|---|---|
| `id TEXT PK` | slug，如 `q-osh-a-001` |
| `exam_id` | FK |
| `subject_id NULLABLE` | FK（v6 加入） |
| `chapter_id NULLABLE` | FK |
| `question_text TEXT` | 題幹 |
| `options JSONB` | 選項陣列，格式 `[{key:'A',text:'...'}, ...]` 或 plain strings |
| `correct_answer INT` | **0-indexed** 正解（single_choice 用） |
| `correct_answer_json JSONB` | v11 加入；非 single_choice 型用這欄 |
| `explanation TEXT` | 解析 |
| `difficulty 1-5` | 難度 |
| `source TEXT` | `official` / `ai_generated` / `community` |
| `tags TEXT[]` | 標籤 |
| `is_active BOOLEAN` | 上架開關 |
| `version INT` | 題目改版追蹤 |
| `times_answered`, `times_correct` | 作答統計（冗餘） |
| `question_type TEXT` | v11 加入（見下表） |
| `media JSONB` | v11 加入；圖片/影片陣列 `[{type,url,alt}]` |
| `parent_question_id NULLABLE` | v11 加入；閱讀測驗群組用（子題指向題組 stem） |

### `question_type` 值（v11 引入）

| 值 | 儲存欄位 | 說明 |
|---|---|---|
| `single_choice` | `correct_answer` (INT) | 預設；單選題 |
| `multiple_choice` | `correct_answer_json` (JSONB array of INT) | v12 pilot；多選題，儲存 sorted 整數陣列如 `[0,2,3]` |
| `true_false` | `correct_answer_json` (JSONB bool) | 是非題 |
| `fill_blank` | `correct_answer_json` (JSONB array of string) | 填空題（未實作） |
| `ordering` | `correct_answer_json` (JSONB array) | 排序題（未實作） |
| `matching` | `correct_answer_json` (JSONB object) | 配對題（未實作） |
| `stem_shared` | — | 題組 stem（子題用 `parent_question_id` 指過來） |

**現狀**：實務 99% 都是 `single_choice`，少量 `multiple_choice`（osh-a 試點）。其他型別 schema 就位但 UI 未實作。

## `correct_answer` 硬規則：永遠 0-indexed

見 [../DECISIONS.md #6](../DECISIONS.md) + memory `kaonow_correct_answer_indexing_bug.md`。

2026-04-19 出過事故：osh-a 有題目 `correct_answer = 1` 實際是 A（= 0）。教訓：
1. **bulk UPDATE 前必做 per-exam MIN 檢查**：若 `MIN(correct_answer) = 1` 代表資料是 1-indexed，要先減一
2. **validator 嚴格禁止手抄 `correct_answer`**，必須從 `raw_*.json` 讀

## `questions_published` view（v6_1）

前端用的 view，只回傳 `is_active = true` 的題目，並 JOIN 補上 subject_id（給前端顯示用）。改題目 schema 要一起改 view。

## 改這個模組時的地雷

- **slug-based PK**：`exam_categories`, `exams`, `subjects`, `chapters`, `questions` 都用 TEXT slug 當 PK 而非 UUID。改 slug = 改 PK，會破壞既存 FK → 不要輕易改已上線的 slug
- **`subject_id` 是 nullable**：舊考試（v6 之前）可能沒有，查詢要處理 NULL
- **`track_name` 是 nullable**：單 track 考試為 NULL，查詢同一 exam 內所有科目要 `WHERE track_name IS NULL OR track_name = ?`
- **`correct_answer` 只給 `single_choice` 用**：其他 question_type 一律放 `correct_answer_json`，兩個欄位**不要同時填**（會讓 validator 混亂）
- **加新 question_type 時**：要同步改 `questions` 的 CHECK constraint（v12 patches 是抓這個）、前端 `renderQuestion()` 處理邏輯、validator 驗證邏輯
- **題庫匯入用 `upsert` 而非 `insert`**：避免手動重跑遷移時撞 PK conflict；但要小心會靜默覆蓋人工修正
- **`is_active = false` 的題目**不會進 `questions_published` view，但仍佔 `chapters.question_count`（若那欄有維護）
- **v6_2 的回填資料遷移已經跑完**：若重建測試環境要記得跑，否則舊題目沒 subject_id 會出現「無法依科目分類」bug

## 驗證 / 快速檢查

### 類別題庫鋪設狀況

```sql
SELECT ec.id, ec.name,
       count(DISTINCT e.id) AS exams,
       count(DISTINCT q.id) AS questions
  FROM exam_categories ec
  LEFT JOIN exams e ON e.category_id = ec.id
  LEFT JOIN questions q ON q.exam_id = e.id AND q.is_active
 GROUP BY ec.id, ec.name
 ORDER BY ec.sort_order;
```

### 某個考試的 track / 科目結構

```sql
SELECT es.track_name, s.id AS subject_id, s.name, es.is_required, es.sort_order
  FROM exam_subjects es JOIN subjects s ON s.id = es.subject_id
 WHERE es.exam_id = 'gaokao-3'
 ORDER BY es.track_name, es.sort_order;
```

### question_type 分佈

```sql
SELECT question_type, count(*) FROM questions
 WHERE is_active GROUP BY question_type;
```

### 檢查 correct_answer 是否 0-indexed（per exam）

```sql
SELECT exam_id, min(correct_answer), max(correct_answer), count(*)
  FROM questions
 WHERE is_active AND question_type='single_choice'
 GROUP BY exam_id
 ORDER BY exam_id;
-- 任何 exam 的 min < 0 或 max >= options 長度 → 警訊
```

## 待辦 / 延伸

- [ ] `fill_blank` / `ordering` / `matching` 題型 UI 實作
- [ ] `media` JSONB 的 UI 渲染（目前 `renderQuestion` 只處理單圖）
- [ ] `parent_question_id` 題組（閱讀測驗）的 UI（stem 顯示一次，下方連續顯示子題）
- [ ] `questions.times_answered / times_correct` 的 trigger 或定期重算（目前欄位存在但沒維護）
- [ ] `chapters.question_count` 自動同步（目前手工）
