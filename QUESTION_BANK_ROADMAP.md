# 題庫建置 Roadmap（Question Bank Building Spec）

> **目的**：定義 KaoNow 每個考試「題庫 + 講義骨架 + 章節」的建置流程、資料格式與優先序。
> **使用方式**：下次新對話時請我讀這份文件 + `context.md`，即可直接開工。
> **最後更新**：2026-04-16（初版）

---

## 0. 總目標（Big Picture）

**目標**：把目前的 158 個考試**全部**補上真題題庫 + 講義骨架（條列式重點）。

- 📝 **題庫** — 以**真實題目**為主來源：
  1. 官方歷屆考古（考選部、勞動部、大考中心等）
  2. 公開線上題庫（網路上公開可取）
  3. 有版權的商業認證（TOEIC/TOEFL 等）→ **跳過或原創擬真題**
  - **不做 AI 生成**（至少這個階段不做；品質無法把關、版權風險低但專業錯誤率高）
- 📖 **講義** — 先做**骨架版**：每章 1 頁條列式重點、常考陷阱、必背數字。
  - **不抄教材全文**（版權），**不做長篇論述**（耗時過高）
  - 骨架做完，未來再視流量/訂閱數據決定是否深化哪些
- 🎯 **階段性里程碑**：
  - M1：職安衛 3 種 + 共用科目 2 個（5 個考試）→ 驗證 workflow
  - M2：技術士/公職熱門 10 個 → 覆蓋技術士+公職年考人數 TOP
  - M3：語言/升學/金融/IT 熱門 10 個 → 7 大類都有代表作
  - M4：剩餘 130+ 個長尾覆蓋

---

## 1. 執行策略：Session 不等於 Project

**⚠️ 不要混淆：**
- **專案目標** = 158 個考試都要做
- **單次 session 範圍** = 1-3 個考試（受 context window 限制）

每個 session 的產出應該是**完整的**（避免半成品卡在 DB）：
- ✅ 該批考試的 chapters / questions / lecture skeleton 三支 SQL 檔齊全
- ✅ 自 lint 過檢查清單
- ✅ 更新本文件 §11 進度表

**批次大小建議**：
- 架構相似的連續做（如 osh-b + osh-c 可一個 session 內做完）
- 架構不同的分開做（如 TOEIC 和 室內配線 分兩個 session）

**📦 每個考試的標準交付物**：
1. Chapters（3-6 章）
2. Questions（≥ 60 題，來自官方歷屆 / 公開題庫；商業認證考試才允許原創擬真題）
3. Lectures 骨架（每章 1 則，條列式 ~200-500 字，不做長篇）
4. `UPDATE exams SET available=TRUE`

**優先序（ROI = 年考人數 × 複用難度）**

| 優先級 | 考試 | 年考人數 | 為何優先 |
|---|---|---|---|
| 🥇 P0 | **乙種職安衛** (osh-b) | ~5 萬 | 架構與甲種 100% 相同，可複用 schema |
| 🥇 P0 | **丙種職安衛** (osh-c) | ~3 萬 | 同上 |
| 🥈 P1 | **行政法** (sub-admin-law) | N/A（共用科目）| 一次建好 4 個考試都能抽（高考/普考/警察三等/律師）|
| 🥈 P1 | **憲法** (sub-constitution) | N/A（共用科目）| 同上，多考試共用|
| 🥈 P1 | **室內配線丙級** | ~15 萬 | 技術士年考最多|
| 🥉 P2 | **中餐烹調丙級** | ~10 萬 | 餐飲必備 |
| 🥉 P2 | **TOEIC** | ~40 萬 | 語檢熱門；但考古公開度較低，需人工出擬真題 |
| 🥉 P2 | **全民英檢中級** | ~15 萬 | 同上 |
| 🏅 P3 | **高考三級（各類科）** | ~8 萬 | 搭配共用科目後再補專業科 |
| 🏅 P3 | **護理師** | ~2 萬 | 專技熱門 |
| 後段 | 其他 148 個考試 | 依需求 | 依市場反應排序 |

**批次單位建議**：一個 session 完成 1 個考試的「章節 + 題庫 + 最小講義骨架」，commit message 寫 `content(osh-b): seed 120 questions + 5 chapters`。

---

## 2. 官方題目來源（Phase 0 必備）

每個考試進行前，Rambo 請先確認官方資料取得方式：

| 考試 | 官方題庫 URL | 格式 | 備註 |
|---|---|---|---|
| 甲/乙/丙種職安衛 | https://trains.osha.gov.tw/ · http://www.osh-soeasy.com/exam.html | 線上測驗 / PDF | **已完成甲種**；乙/丙種題目結構一致 |
| 技術士技能檢定 | https://skill.tcte.edu.tw/ | PDF | 有學科試題下載，注意年度最新版 |
| 公職（高考/普考/各特考） | https://wwwq.moex.gov.tw/ | 考畢試題查詢平台 | 考選部 — 可依考試名稱、年度、類科查歷屆 |
| 考選部考試資訊 | https://wwwc.moex.gov.tw/main/content/wfrmContent.aspx?menu_id=242 | 網頁 | 各考試簡章/時程/類科 |
| TOEIC | 無公開歷屆 | — | 版權問題，需自創擬真題或採購授權 |
| 全民英檢 | https://www.gept.org.tw/ | 樣題 PDF | 官方只釋出 samples（LTTC 發行）|
| 學測/分科 | https://www.ceec.edu.tw/ | PDF | 大考中心所有歷屆完整釋出 |
| JLPT | 無公開歷屆 | — | 日檢官方不公開，用樣題 |
| 華語文能力測驗 TOCFL | https://tocfl.edu.tw/ | 樣題 | 國家華語測驗推動工作委員會 |
| 證券/期貨業務員 | https://www.sfi.org.tw/exam/exam6/exam6-3 | 考題下載 | 證基會（SFI）|
| 人身保險業務員 | https://www.lia-roc.org.tw/ | 題庫 | 壽險公會 |
| 財產保險業務員 | https://www.nlia.org.tw/ | 題庫 | 產險公會（NLIA）|
| AFP / CFP | https://www.fpat.org.tw/ | 模擬題 | 理財規劃促進會 |
| TQC+ | https://exam.tqc.org.tw/TQCexamonline/ | 線上題庫 | 財團法人中華民國電腦技能基金會 |

**版權原則**：
- 政府考試題目（考選部、勞動部、教育部、大考中心）**屬公共財**，可直接引用
- 商業認證（TOEIC、TOEFL、IELTS、HSK）**有版權**，不可原文引用，必須原創擬真題
- 所有題目都要標註 source（official / ai_generated / community）

---

## 3. 資料格式規範

### 3.1 ID 命名規則

| 實體 | 格式 | 範例 |
|---|---|---|
| 章節 id | `{exam_id}-ch{N}` | `osh-b-ch0`, `osh-b-ch1` |
| 題目 id（官方・有章節） | `{exam_id}-ch{N}-{NNN}` | `osh-b-ch0-001` |
| 題目 id（官方・無章節） | `{exam_id}-{NNN}` | `toeic-0142` |
| 題目 id（AI・有章節） | `{exam_id}-ch{N}-ai{NNN}` | `osh-b-ch0-ai001` |
| 題目 id（AI・無章節） | `{exam_id}-ai{NNN}` | `toeic-ai0001` |
| 科目 id（v6） | `sub-{slug}` | `sub-admin-law`, `sub-constitution` |

**穩定 ID** 絕對不可靠 array index 識別 — 否則新增/刪除題會破壞所有用戶的答題紀錄。

### 3.2 SQL Template

**章節**（先建章節再建題目；章節 id 是 questions 的 FK）：

```sql
INSERT INTO public.chapters (id, exam_id, subject_id, chapter_number, name, description, sort_order) VALUES
('osh-b-ch0', 'osh-b', 'sub-osh-b', 0, '職業安全衛生相關法規', '職安法、相關子法', 1),
('osh-b-ch1', 'osh-b', 'sub-osh-b', 1, '職業安全衛生管理概論', NULL,               2);
```

**題目**（`options` 用 JSONB，`correct_answer` 是 0-based index）：

```sql
INSERT INTO public.questions
  (id, exam_id, subject_id, chapter_id, question_text, options, correct_answer, explanation, source, difficulty)
VALUES
('osh-b-ch0-001',
 'osh-b',
 'sub-osh-b',       -- v6：補上 subject_id，跨考試共用用
 'osh-b-ch0',
 '依《職業安全衛生法》，事業單位勞工人數幾人以上應設管理單位？',
 '[{"key":"A","text":"30人"},{"key":"B","text":"50人"},{"key":"C","text":"100人"},{"key":"D","text":"200人"}]'::JSONB,
 0,                 -- 正確答案 index（A=0, B=1, C=2, D=3）
 '依法第23條……',
 'official',
 3                  -- 難度 1-5（預設 3）
);
```

**講義骨架**（最小可上線版）：

```sql
INSERT INTO public.lectures
  (exam_id, subject_id, chapter_id, title, content, length_minutes, sort_order)
VALUES
('osh-b', 'sub-osh-b', 'osh-b-ch0',
 '第 0 章 · 職業安全衛生相關法規 重點',
 E'## 核心法規\n\n- 職業安全衛生法（2013）\n- 職業安全衛生法施行細則\n\n## 關鍵條文\n\n- 第 16 條：危險性機械定義\n- 第 23 條：30 人以上應設管理單位\n……',
 12,
 1);
```

> 講義 `content` 用 Markdown；資料庫只存 raw string，前端用 JS render（目前是 `innerHTML` + 簡易 parser，若要升級可考慮 marked.js）。

### 3.3 題目選項格式細節

```json
[
  {"key": "A", "text": "選項內文"},
  {"key": "B", "text": "選項內文"},
  {"key": "C", "text": "選項內文"},
  {"key": "D", "text": "選項內文"}
]
```

- 一律 4 個選項 A/B/C/D（不支援多選、不支援是非題）
- `text` 不要含 HTML（防 XSS）
- 如果原題是複選，要改寫成單選；或加 `type='multi'` 欄位（需擴充 schema）

### 3.4 章節結構建議

- 每個考試 **3-6 章**（太細用戶會迷失，太粗弱點分析不準）
- 章節名稱 ≤ 15 字
- `chapter_number` 從 0 開始，`sort_order` 從 1 開始（歷史包袱，不改）

---

## 4. 三階段 Workflow

**【階段 1】Rambo：資料收集**
1. 從官方 URL 下載 PDF / 抓線上題目
2. 整理成原始文字檔：`raw/osh-b.txt`（每題 1-2 行，先不管格式）
3. 上傳到 session 開頭或放專案資料夾

**【階段 2】Claude：格式化 + 產 SQL**
1. 讀這份 roadmap + 原始檔
2. 推敲章節分類（對照官方大綱）
3. 產 3 個 SQL 檔：
   - `bank_seeds/osh-b_chapters.sql`
   - `bank_seeds/osh-b_questions.sql`
   - `bank_seeds/osh-b_lectures.sql`
4. 自行 lint：
   - 所有 id 符合命名規則
   - `options` 剛好 4 個
   - `correct_answer` 在 0-3 之間
   - 沒有 SQL 注入風險（單引號 escape）

**【階段 3】Rambo：審核 + 匯入**
1. 隨機抽 10 題人眼審核（答案正確、explanation 合理）
2. Supabase SQL Editor 跑 `chapters.sql` → `questions.sql` → `lectures.sql`
3. 驗證：
   ```sql
   SELECT COUNT(*) FROM public.questions WHERE exam_id='osh-b';
   SELECT COUNT(*) FROM public.chapters  WHERE exam_id='osh-b';
   ```
4. 前端驗證：到 kaonow.com 點該考試，試做 10 題隨機測驗
5. 若考試在 `exams` 表還沒被標 `available=TRUE`，要 UPDATE：
   ```sql
   UPDATE public.exams SET available=TRUE WHERE id='osh-b';
   ```

---

## 5. 檔案結構規劃

新增一個 `bank_seeds/` 資料夾存所有題庫 SQL：

```
KaoNow/
├── bank_seeds/
│   ├── osh-b_chapters.sql
│   ├── osh-b_questions.sql
│   ├── osh-b_lectures.sql
│   ├── osh-c_chapters.sql
│   ├── osh-c_questions.sql
│   └── ...
├── raw/                    (Rambo 原始筆記，.gitignore)
│   ├── osh-b.txt
│   └── ...
```

---

## 6. 講義「骨架版」規格（本階段目標）

**本階段所有講義都只做骨架**（條列式重點）。未來視需求再深化某些熱門章節。

一章講義 ~200-500 字、閱讀 3-7 分鐘。**不要抄教科書**（版權），**不要寫長篇論述**（耗時過高）。

模板：

```
## 考試重點
- 法規/公式/概念的 3-8 個最關鍵條目
- 每條 1-2 行

## 常考陷阱
- 3-5 個容易混淆的點

## 必背數字/口訣
- 30/50/100/200 人分界
- 8 小時通報原則
- 「三級機關」「五等特考」對照
```

**審核標準**：一章講義的重點條目必須能對應到至少 5 題題目（不然重點根本沒考，不算重點）。

---

## 7. 共用科目（v6 subjects）特殊處理

共用科目（行政法、憲法、國文、英文等）題目同時會被多個考試用到。建置方式：

1. 題目 INSERT 時：
   - `exam_id` 填 **NULL**（v6 schema 已改 nullable）
   - `subject_id` 填對應科目 id
2. 章節 INSERT 時：
   - `exam_id` NULL
   - `subject_id` 填科目 id
   - chapter id 改用 `sub-admin-law-ch0` 格式

範例：
```sql
INSERT INTO public.chapters (id, exam_id, subject_id, chapter_number, name, sort_order) VALUES
('sub-admin-law-ch0', NULL, 'sub-admin-law', 0, '行政程序法', 1),
('sub-admin-law-ch1', NULL, 'sub-admin-law', 1, '行政救濟',   2);

INSERT INTO public.questions (id, exam_id, subject_id, chapter_id, question_text, options, correct_answer, explanation, source)
VALUES
('sub-admin-law-ch0-001', NULL, 'sub-admin-law', 'sub-admin-law-ch0',
 '行政處分未附記救濟期間，致相對人遲誤期間者，自處分送達後幾年內聲明不服均視為未逾期？',
 '[{"key":"A","text":"1 年"},{"key":"B","text":"2 年"},{"key":"C","text":"3 年"},{"key":"D","text":"5 年"}]'::JSONB,
 0, '依行政程序法第 98 條……', 'official');
```

這批題跑進去後，在 kaonow.com 進「高考三級 → 一般行政 → 行政法」科目頁，應該就抓得到。

---

## 8. 審核 checklist（Rambo 自我檢查）

提交前確認：
- [ ] 題目 id 沒重複（SQL 裡 `SELECT id FROM questions GROUP BY id HAVING COUNT(*)>1`）
- [ ] `correct_answer` 都在 0-3
- [ ] 選項都剛好 4 個
- [ ] explanation 有內容（不是空字串）
- [ ] 至少隨機抽 10 題人眼確認答案對
- [ ] 跑完 SQL 後 `available=TRUE` 已更新
- [ ] 到前端該考試頁，隨機測驗能順利跑完 10 題

---

## 9. 常見陷阱

1. **SQL 單引號 escape**：題目內文若有 `'` 要改 `''`；Python 自動生成時用 `sql.literal_string`。
2. **`::JSONB` 強制轉型**：`options` 一定要加 `::JSONB`，不加會被當 TEXT。
3. **章節 FK 順序**：一定要先跑 `chapters.sql` 再跑 `questions.sql`，否則 FK 失敗。
4. **Supabase SQL Editor 的 5 MB limit**：一次貼超過 5MB 會 timeout。分批跑（每次 ≤ 200 題）。
5. **Schema v6 的 `exam_id` 是 nullable**：共用科目題目 exam_id 填 NULL；一般考試題目 exam_id 要填。
6. **`questions_published` view 有過濾**：未審核的 AI 題前端抓不到。但官方題 `source='official'` 不需審核，自動上架。
7. **前端快取 24h**：`cloud.loadQuestions` 有 localStorage 快取；新題進 DB 後若前端沒看到，開 console 跑 `cloud.clearQuestionCache()`。
8. **測試帳號資料**：在 dev 環境別用 production user 測；或用 Supabase 的 row delete 清掉測試紀錄。

---

## 10. 開工模板（下次對話用）

**專案總目標是 158 個考試全部建完**，但受 context window 限制，一次只做一批（1-3 個考試）。

### 10.1 開新對話的標準起手式

```
我要繼續建置 KaoNow 的題庫（整個專案目標是 158 個考試全部都要做）。
這次 session 要處理：<一或多個考試名稱/id>

請先讀 context.md 和 QUESTION_BANK_ROADMAP.md，
確認進度表（§11）跟起手步驟，然後我們開始。

資料來源：<貼連結 / 上傳檔案 / 說「幫我找」>
```

### 10.2 常用批次建議

| Session 主題 | 範圍 | 預估交付 |
|---|---|---|
| 職安衛系列 | osh-b + osh-c | 2 考試 × ~100 題 = 200 題 |
| 公職共用科目 | sub-admin-law + sub-constitution | 2 科目 × ~80 題 |
| 技術士基礎 | 室內配線丙級 + 工業配線丙級 | 2 考試 × ~80 題 |
| 餐飲技術士 | 中餐丙 + 烘焙丙 | 2 考試 × ~80 題 |
| 大考中心 | 學測國文 + 學測英文 | 2 科目 × 歷屆 5 年 |
| 金融商業 | 信託業務員 + 證券商業務員 | 2 考試 × ~80 題 |

### 10.3 每個考試的最小交付物

為了保證可上線，每個考試至少要產出：
1. ✅ `chapters` SQL（3-6 章）
2. ✅ `questions` SQL（≥ 60 題；理想 100+）
3. ✅ `lectures` SQL（每章一則骨架重點，~300 字/章）
4. ✅ `UPDATE exams SET available=TRUE WHERE id='<exam_id>';`
5. ✅ 更新 §11 進度表

少一項都不算完成。

### 10.4 Claude 每次 session 的動作順序

1. 讀 `context.md` + `QUESTION_BANK_ROADMAP.md` §11 進度表
2. 確認這批要做的考試 id 清單與資料來源
3. 如果 Rambo 沒給資料，Claude 評估是否可線上抓（WebSearch / WebFetch 或自己寫題 for 無公開題庫的情況）
4. 照 §4 workflow 產 3 支 SQL / 考試
5. 跑 §8 審核 checklist（自 lint）
6. 把 SQL 交給 Rambo 貼進 Supabase
7. Rambo 回報執行結果 → Claude 前端驗證（瀏覽器實測）
8. 勾掉進度表 + commit
9. 若 context 還夠，繼續下一個考試；若快滿，提醒 Rambo 開新對話繼續

---

## 11. 進度追蹤（請在完成後更新）

| 考試 | 狀態 | 題數 | 完成日期 |
|---|---|---|---|
| 甲種職安衛（osh-a） | ✅ | 153 + 1 AI 測試 | 2026-04 |
| 乙種職安衛（osh-b） | ⏳ 待建 | — | — |
| 丙種職安衛（osh-c） | ⏳ 待建 | — | — |
| 行政法（sub-admin-law） | ⏳ 待建 | — | — |
| 憲法（sub-constitution） | ⏳ 待建 | — | — |
| 室內配線丙級 | ⏳ 待建 | — | — |
| 中餐烹調丙級 | ⏳ 待建 | — | — |
| 全民英檢中級 | ⏳ 待建 | — | — |
| 學測國文 | ⏳ 待建 | — | — |
| 學測數學 A | ⏳ 待建 | — | — |

> 每完成一個考試，請在這張表打勾並更新題數。

---

**END OF ROADMAP**
