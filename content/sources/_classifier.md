# Content Sources — Inbox 分類工作流

> 這份 = 抓原始檔進專案的操作手冊。新 session 進來先讀 `context.md` + 這份。
> 最後更新：2026-04-16

---

## 🎯 Inbox 模式（你只要做一件事：全抓到 _inbox/）

```
content/sources/
├── _inbox/              ← 📥 你抓下來的全部往這裡丟，原檔名原封不動
├── _classifier.md       ← 本檔
├── _folders.md          ← 中文 ↔ exam_id 對照表（Claude 持續維護）
├── osh-b/               ← 分類後的歸位目錄（Claude 自動建）
│   ├── _meta.json       ← 本考試所有檔案索引 + 下載 URL + 授權
│   ├── questions/
│   ├── lectures/
│   ├── images/
│   ├── legal/
│   └── misc/
└── osh-c/
```

**你的工作就三步**：

1. 從網頁全選下載 → 全部丟 `content/sources/_inbox/`
2. 回 KaoNow 對話說「inbox 滿了，處理一下」
3. Claude 列分類表 → 你掃一眼有無誤標 → 回「OK」 → Claude 自動 move + 寫 manifest

---

## 🤖 Claude 的分類邏輯

### Step 1: 檔名關鍵字匹配（多數能直接判）

從原檔名抓 **考試名關鍵字** + **類型標記**，查下表的「已知對照表」，信心度分三級：

- 🟢 **高**：完全命中對照表 → 直接 move
- 🟡 **中**：部分命中 or 新考試變體 → 列清單給 user 秒確認
- 🔴 **無法辨識**：開 PDF/DOCX 掃內文（前 2 頁 + 目錄）→ 再判一次

### Step 2: 類型（questions / lectures / images / legal / misc）

檔名後綴規則：

| 檔名含 | 歸類到 | type 代碼 |
|---|---|---|
| `(160題)` / `(110題)` / `題庫` / `題目` | `questions/` | `q` |
| `含答案` / `含解答` / `解析` | `questions/` | `qa` |
| `模擬試題` / `模擬試卷` | `questions/` | `sim` |
| `訓練教材` / `講義` / `教材` | `lectures/` | `lec` |
| `課綱` / `測驗範圍` | `lectures/` | `syl` |
| `法規` / `條文` / `施行細則` | `legal/` | `law` |
| `簡章` / `報名` / `FAQ` / `規則` | `misc/` | `meta` |
| `.jpg` / `.png` 附圖 | `images/` | `img` |

### Step 3: 章節 hint

若檔名出現 `ch01` / `第一章` / `單元1` → 填 `chapter_hint`；否則 null，留到 extract 階段再判。

---

## 📋 已知考試對照表（Claude 持續累積）

### 職安衛系列（prof-exam 類）

| 檔名關鍵字 | exam_id | 備註 |
|---|---|---|
| 甲種職業安全衛生業務主管 | `osh-a` | 已有 153 題（標 ai_generated） |
| 乙種職業安全衛生業務主管 | `osh-b` | 🎯 重點抓 |
| 丙種職業安全衛生業務主管 | `osh-c` | 🎯 重點抓 |
| 堆高機操作（單一級/一般） | `forklift` | |
| 荷重式 3 噸以上堆高機 | `forklift-heavy` | ⚠️ 新增 exam_id |
| 乙種危險性機械(移動式起重機) | `crane-mobile` | ⚠️ 新增 exam_id |
| 乙種危險性機械(固定式起重機) | `crane-fixed` | ⚠️ 新增 exam_id |

### 技術士 — 工業類（tech-cert）

| 檔名關鍵字 | exam_id | 備註 |
|---|---|---|
| 室內配線丙級 / 乙級 | `elec-c` / `elec-b` | |
| 工業配線丙級 / 乙級 | `ind-wire-c` / `ind-wire-b` | |
| 冷凍空調裝修丙級 / 乙級 | `hvac-c` / `hvac-b` | |
| 電銲丙級 | `weld-c` | |
| 氬氣鎢極電銲單一級 | `tig-weld` | |
| 汽車修護丙級 / 乙級 | `auto-c` / `auto-b` | |
| 汽車車體修護乙級 | `auto-body-b` | ⚠️ 新增 |
| 汽車車體板金丙級（白天/夜間） | `auto-body-c` | ⚠️ 新增（白/夜同一考試） |
| 機器腳踏車修護丙級 / 乙級 | `moto-c` / `moto-b` | ⚠️ `moto-b` 新增 |
| 通信設備乙級（用戶迴路） | `telecom-b` | ⚠️ 新增 |
| 泥水(面材鋪貼)丙級 | `mason-tile-c` | ⚠️ 新增 |
| 泥水(粉刷)丙級 | `mason-paint-c` | ⚠️ 新增 |
| 建築製圖乙級 | `archi-draft-b` | |
| 建築識圖應用(CAD)丙級 | `archi-cad-c` | ⚠️ 新增（與 `archi-draft-b` 不同層級） |
| 建築物室內裝修工程管理乙級 | `interior-mgr-b` | |
| 園藝丙級 | `gardening-c` | |

### 技術士 — 電腦網路類（tech-cert）

| 檔名關鍵字 | exam_id | 備註 |
|---|---|---|
| 電腦硬體裝修丙級 / 乙級 | `pchw-c` / `pchw-b` | |
| 電腦軟體應用丙級 / 乙級 | `swapp-c` / `swapp-b` | |
| 電腦軟體設計乙級 | `swdesign-b` | |
| 網頁設計丙級 / 乙級 | `webdesign-c` / `webdesign-b` | |
| 網頁安全乙級 | `websec-b` | ⚠️ 新增（非 webdesign） |
| 視覺傳達設計丙級 | `visualdesign-c` | |

### 技術士 — 家政/餐飲類（tech-cert）

| 檔名關鍵字 | exam_id | 備註 |
|---|---|---|
| 中餐烹調(葷食)丙級 / 乙級 | `cook-c` / `cook-b` | |
| 中餐烹調(素食)丙級 | `cook-v-c` | |
| 西餐烹調丙級 | `western-c` | |
| 烘焙食品丙級 / 乙級 | `bread-c` / `bread-b` | |
| 中式麵食加工丙級 | `noodle-c` | |
| 中式米食加工丙級 | `rice-c` | |
| 調酒丙級 | `bartend-c` | |
| 女子美髮丙級 / 乙級 | `hair-c` / `hair-b` | |
| 美容丙級 / 乙級 | `beauty-c` / `beauty-b` | |
| 保母人員單一級 | `nanny` | |
| 照顧服務員單一級 | `care-giver` | |

### 公職共用科目（civil / _subjects/）

| 檔名關鍵字 | subject_id | 備註 |
|---|---|---|
| 行政法 | `sub-admin-law` | 跨考試共用 |
| 憲法 | `sub-constitution` | 跨考試共用 |
| 國文 | `sub-chinese` | 共同 |
| 法學緒論 / 法學大意 | `sub-legal-intro` | 共同 |
| 英文（公職） | `sub-english` | 共同 |
| 行政學 | `sub-admin-studies` | 專業 |
| 民法 | `sub-civil-law` | 專業 |

### 語言類（language）

| 檔名關鍵字 | exam_id | 備註 |
|---|---|---|
| TOEIC / 多益 | `toeic` | ⚠️ 版權敏感，只收 sample |
| 全民英檢初級 / 中級 / 中高級 / 高級 | `gept-elem/int/hint/adv` | LTTC 有公開樣題 |
| IELTS / 雅思 | `ielts` | ⚠️ 版權敏感 |
| TOEFL iBT | `toefl-ibt` | ⚠️ 版權敏感 |
| JLPT N1-N5 | `jlpt-n1` ~ `jlpt-n5` | ⚠️ 版權敏感 |
| TOCFL / 華語文 | `tocfl` | |

---

## 🆕 遇到新考試怎麼辦

檔名命中 ⚠️ 新增標記的 → Claude 會：

1. 自動提議 `exam_id`（照下方命名規則）
2. 記一筆到 `content/sources/_new_exams.md`（待討論清單）
3. 等累積幾筆後，一次 batch 更新 `exams` seed + schema + catalog

**命名規則**：
- 全小寫、`-` 分隔
- 等級後綴：`-c`（丙）、`-b`（乙）、`-a`（甲）、`-s`（單一級）
- 同系列不同項目用形容詞：`mason-tile-c` / `mason-paint-c`
- 避免超過 15 字

---

## 🔀 特殊情況處理

1. **同考試多份題庫**（例：osh-b 抓到 3 個 PDF）
   - 全部保留，不覆蓋
   - `_meta.json` 的 `files[]` 記 3 筆
   - 解析階段 Claude 會 dedupe 相同題目

2. **白天班/夜間班同考試**
   - 同一 `exam_id`，檔名差異在 `_meta.json` 的 `notes` 欄位註明

3. **完全無法辨識的檔案**（檔名是 `123456.pdf` 類）
   - Claude 讀 PDF 前 2 頁 + 目錄判定
   - 仍無法判 → 移到 `_unknown/` 目錄，列清單請 user 手動認

4. **壓縮檔（.zip / .rar）**
   - Claude 解壓到臨時位置 → 逐檔分類 → 原壓縮檔移到對應考試 `misc/` 並在 `_meta.json` 記錄

5. **重複下載的檔案**（瀏覽器自動加 `(1)`）
   - 比對 file hash，相同 → 刪掉新的；不同 → 後綴改 `_v2_yyyymmdd`

---

## 📝 `_folders.md` 範本（Claude 維護）

```
osh-b        乙種職業安全衛生業務主管      prof-exam
osh-c        丙種職業安全衛生業務主管      prof-exam
elec-c       室內配線丙級                  tech-cert
hvac-c       冷凍空調裝修丙級              tech-cert
auto-c       汽車修護丙級                  tech-cert
...
```

純人類對照表，Claude 每次分類後自動補新列。

---

## 🔗 與其他檔案的關係

- **`DATA_COLLECTION_PROMPT.md`**：openclaw 自動抓（與本檔並行，自動化版）。那邊 output `raw/{exam_id}.json`（待改名 `content/parsed/`）
- **`QUESTION_BANK_ROADMAP.md`**：題庫建置 spec / ID 格式 / SQL template
- **`BATCH_PROMPTS.md`**：74 批 session prompt
- **`context.md`**：canonical 專案狀態，每批完成要回寫

---

## 📊 狀態機

每個檔案在 `_meta.json` 裡有一個 `status`：

```
raw        ← 剛下載，還沒處理
extracted  ← 已 OCR / PDF→text
parsed     ← 已切成結構化題目 JSON
inserted   ← 已進 Supabase questions/lectures 表
```

Claude 每跑完一階段會 update。
