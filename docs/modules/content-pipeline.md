# 模組：Content Pipeline（題庫建置管線）

## 目的
把外部題庫來源（PDF / 網站 / 圖片）→ 轉成結構化 JSON → 產出可直接匯入 Supabase 的 SQL。這是 **build-time** 管線，不在 production 路徑上，但直接決定題庫品質。

## 目前狀態
🚧 Pipeline 持續運作中；Phase 1 high-priority 22 考試已跑完 batch1（2026-04-19, 3,780 pairs / 67,802 records）

## Layer 架構

```
Layer 1: sources           原始檔案（PDF / 網站下載 / 照片）
            │                .gitignored — 不進 repo
            ▼
Layer 2: extracted         純文字提取（.txt + .meta.json）
            │                raster OCR / EUDC decode / 手動轉寫
            ▼
Layer 3: parsed            結構化 JSON（題目陣列 + validation 報告）
            │                .json + .validation.json
            ▼
Layer 4: sql               可匯入的 seed SQL（UPSERT 到 Supabase）
                             layer4_seed.sql + layer4_stats.json
```

**核心原則**：後面的 layer 可以從前面的 layer **重新生成**，不手動改後層。若要修正題目，改 Layer 2 或 Layer 3，重跑後面 layer。

## 相關檔案與目錄

| 目錄 / 檔案 | 用途 |
|---|---|
| `content/sources/` | Layer 1 原始來源；按 exam slug 分目錄，加 `_inbox/`（新收到的待分類）+ `_classifier.md` / `_folders.md`（分類規則） |
| `content/extracted/` | Layer 2 純文字；per exam 一個子目錄，內含 `_q_*.txt` + `.meta.json` |
| `content/parsed/` | Layer 3 JSON；per exam 一個子目錄 |
| `content/sql/layer4_seed.sql` | Layer 4 合併 seed |
| `content/sql/split/layer4_part*.sql` | Layer 4 分割版（單檔 1-2MB，Supabase SQL Editor 有 size limit） |
| `content/sql/layer4_stats.json` | Layer 4 產出後的統計 |
| `content/images/` | 題目內圖片（per exam 子目錄；之後上到 Supabase Storage 或 CDN） |
| `tools/publiccom/` | 公職王網站 scraper + parser + validator（主力工具） |

**注意**：`content/` 和 `tools/` 都在 `.gitignore` 內（不進版本控制）。完整備份另外管理。

## `tools/publiccom/` 主要腳本

| 腳本 | 用途 |
|---|---|
| `build_mapping_csv.py` | 依 `_inbox` 內容建立 `exam_mapping.csv`（exam slug → 檔案清單） |
| `exam_mapping.csv` | 主控表；每 row = 一個 exam，帶 phase / priority / format 欄位供 batch filter |
| `parse_pilot.py` | raster-format PDF 解析器（從 OCR 後的 layout 推題號/選項） |
| `parse_eudc.py` | EUDC-v1 PDF 解析器（台電題本特殊 glyph 編碼） |
| `batch_runner.py` | 主 orchestrator：依 phase/priority 篩選後 dispatch 到對應 parser，per-pair try/except |
| `validate_parsed.py` | 驗證 parsed JSON；flag 空選項、私有字元、片段文字等異常；分 pass / review / fail |
| `*_summary.json` / `*_results.csv` | batch 跑完的成果報告 |
| `BATCH1_REPORT.md` / `PILOT_REPORT.md` | 人工審閱後寫的 batch 總結 |

## Validator 的 flag 機制

`validate_parsed.py` 對每筆 record 產出 flags：

| severity | 處理 |
|---|---|
| `fail` | 絕對不可進題庫；需人工介入或重解析 |
| `warn` | 建議審閱但可進；UI 顯示前需確認 |
| `info` | 僅提示（例：被標「送分」的題目） |

每 flag 有穩定的 `code`（字串）+ `detail`（人可讀）。輸出 JSON 結構：

```
{
  "file_issues": [...],   -- 整檔層級（如 page count 不對）
  "ok":     [...],        -- 無任何 fail / warn 的記錄
  "review": [...],        -- warn 但無 fail
  "fail":   [...]         -- 有 fail
}
```

**Validator 硬規則**：不能手抄 `correct_answer`。詳見 [../DECISIONS.md #18](../DECISIONS.md) + memory `kaonow_validator_no_manual_correct_answer.md`。

## Batch 執行範例

```bash
# 跑 phase 1 的 high-priority 考試
python3 tools/publiccom/batch_runner.py \
    --mapping tools/publiccom/exam_mapping.csv \
    --phase 1 --priority high \
    --formats raster eudc-v1 \
    --batch-tag batch1

# 限定單一考試 smoke
python3 tools/publiccom/batch_runner.py ... --slug tpa

# dry-run（只列 pairing 不實跑）
python3 tools/publiccom/batch_runner.py ... --dry-run
```

輸出：
- 每 (Q, A) pair 一個 parsed JSON + validation JSON
- `tools/publiccom/{batch_tag}_results.csv`（每 pair 一 row）
- `tools/publiccom/{batch_tag}_summary.json`（全域統計）

## 匯入 Supabase

Layer 4 `layer4_seed.sql` 的樣貌（簡化）：

```sql
INSERT INTO public.questions (id, exam_id, subject_id, chapter_id,
  question_text, options, correct_answer, question_type, source, is_active, meta)
VALUES
  ('q-osh-a-001', 'osh-a', 'sub-osh-a', 'osh-a-ch1',
   '勞工安全衛生法...', '[{"key":"A","text":"..."}, ...]'::jsonb,
   0, 'single_choice', 'official', true, '{"year":2024,"batch":"batch1"}'::jsonb),
  ...
ON CONFLICT (id) DO UPDATE
  SET question_text = EXCLUDED.question_text,
      options = EXCLUDED.options,
      correct_answer = EXCLUDED.correct_answer,
      ...
      updated_at = NOW();
```

**為什麼用 `ON CONFLICT DO UPDATE`**：Layer 4 可以多次重跑而不炸。但也代表**手動改過的題目會被覆蓋** — 修正邏輯要回溯到 Layer 2/3。

**分割 SQL**：Supabase SQL Editor 單次執行有限制，`content/sql/split/layer4_partNN.sql` 切成 ~1-2MB 可逐檔執行。

## correct_answer 硬規則（0-indexed only）

見 [../DECISIONS.md #6](../DECISIONS.md) + memory `kaonow_correct_answer_indexing_bug.md`。

**Layer 3 parser 統一輸出 0-indexed**（A=0, B=1, C=2, D=3）。
**Layer 4 SQL 生成器不做 index 調整**（完全信任 Layer 3）。
**bulk UPDATE 前必做 per-exam MIN 檢查**。

## 圖片處理（`content/images/`）

題目含圖（例如統測的數學 / 工程圖）時：
1. Layer 2 提取文字的同時把圖存到 `content/images/{exam}/{question_id}_fig{N}.png`
2. Layer 3 JSON 的 `media` 欄位記錄相對路徑 `[{"type":"image","url":"...","alt":"..."}]`
3. Layer 4 上傳到 Supabase Storage 或靜態 CDN，更新 `url` 為 public URL
4. 前端 `renderQuestion()` 讀 `q.media` 渲染

`content/images/_upload_manifest.json` 追蹤哪些圖已上傳、哪些還沒。

## 改這個模組時的地雷

- **不要手改 Layer 4 `layer4_seed.sql`**：任何修正都要回溯到 Layer 2 或 3。否則下次重跑 batch 你的修改會消失
- **validator 的 `fail` flags 一律不可略過**：若一筆題目有 `fail` 但你覺得沒問題，那是 validator 有 bug 要改，不是 skip
- **parse_eudc 的 glyph mapping 會因 PDF 版本不同而改變**：新收到的 EUDC-v2 要先 sample 幾頁確認 glyph mapping 還對
- **`exam_mapping.csv` 是主控表**：新增考試要先在這加 row；format 欄位決定走哪個 parser
- **`content/sources/_inbox/` 不是最終位置**：只是暫放區；跑完 classifier 會移到正式目錄
- **batch 出錯時單 pair 會 try/except 吞掉**：失敗記在 results CSV 的 `status='error'`；跑完要檢查 error count
- **題目上架前 `is_active` 預設 true 或 false？** 目前 layer4 SQL 是 `true`。若要做審核後上架，改成 `false` 然後站方逐題開啟

## 驗證 / 快速檢查

### 看 batch1 的結果統計

```bash
cat tools/publiccom/batch1_summary.json
cat tools/publiccom/BATCH1_REPORT.md
```

### 看某考試的 parsed 狀態

```bash
ls content/parsed/accounting-c/
# 每個 PDF pair 兩個檔：*.json + *.validation.json
```

### 重跑單一考試

```bash
python3 tools/publiccom/batch_runner.py \
    --mapping tools/publiccom/exam_mapping.csv \
    --slug accounting-c --batch-tag rerun
```

### 產出 Layer 4 SQL

Layer 3 → Layer 4 的腳本目前沒放進 `tools/publiccom/`（在其他位置或手動流程），若要補整成統一 pipeline 要新增 `tools/publiccom/build_layer4.py`。

### 上傳到 Supabase

```
1. 開 Supabase Studio SQL Editor
2. 逐檔貼 content/sql/split/layer4_partNN.sql 執行
   或用 psql：psql "$SUPABASE_DB_URL" -f content/sql/layer4_seed.sql
3. 執行 verify_schema.py（repo root）確認題數正確
```

## 待辦 / 延伸

- [ ] 整合 Layer 3 → Layer 4 的生成腳本（目前是半手動）
- [ ] 圖片自動上傳 Supabase Storage 的腳本
- [ ] `is_active = false` 審核流程（目前直接 true 上架）
- [ ] 接入 AI 解析（針對 OCR 爛的掃描檔）
- [ ] 題目版本追蹤：`questions.version` 欄位有但 Layer 4 沒維護，改版時手動 +1
- [ ] Batch 2（phase 1 medium-priority 考試）
