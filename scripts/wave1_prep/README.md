# Wave 1 Prep Scripts

## overnight_prep_mac.sh — 你睡覺時讓 Mac 幫你處理

**目的**：把 `_inbox` 下 ~40k 份 PDF 預先 `pdftotext` 成純文字檔，同時建 SHA1 索引與掃描件（需 OCR）清單。這些快取能讓後續 parser / dedup 工作快數十倍。

**先決條件**（只要裝一次）：

```bash
brew install poppler      # 提供 pdftotext
```

**睡前一鍵啟動**（讓 Mac 保持不睡、跑完自動停）：

```bash
caffeinate -i -m -s bash \
  "/Users/suchinglun/Documents/Claude/Projects/KaoNow/scripts/wave1_prep/overnight_prep_mac.sh" &
disown
```

`caffeinate -i -m -s` 的作用：
- `-i` 系統不會 idle sleep
- `-m` 硬碟不會睡
- `-s` 只在接電源時生效（插電才會防睡；拔掉電源自動讓睡）

關螢幕可以，闔蓋要設定 `pmset` 或 Amphetamine 才能繼續；最安全是**開著螢幕+插電**。

**早上起來檢查**：

```bash
tail -30 /Users/suchinglun/Documents/Claude/Projects/KaoNow/content/cache/overnight_prep.log
wc -l    /Users/suchinglun/Documents/Claude/Projects/KaoNow/content/cache/sha1.index.jsonl
# 預期：~39,678 行（= 全部 PDF）；需要 OCR 的筆數在 scan_flags.jsonl
```

**可重跑**：腳本幫你記錄哪些已處理，中途中斷再跑會從斷點續。

**產出**：

- `content/cache/text/<source_family>/...pdf.txt` — 每份 PDF 的純文字版本
- `content/cache/sha1.index.jsonl` — 每行一筆 `{"path":…,"sha1":…,"size":…,"text_bytes":…}`
- `content/cache/scan_flags.jsonl` — text_bytes < 100 的 PDF（可能是掃描件）
- `content/cache/overnight_prep.log` — 完整 log

**預估時間**：4 核 Mac ~30–60 分鐘；舊 Mac 2–3 小時。

**範圍**：non-moex (ntpc + public-com-tw + ceec + cap + cpu + exam-tpa + tcte + wdasec)。moex (861 exam / 154k PDFs) 不在範圍內，量級不同，另外處理。

**目前進度**：2026-04-23 午後在 sandbox 已先跑了約 6,889 份，這個腳本 resume 會自動跳過這些。

---

## overnight_prep.sh — sandbox 版（Claude 用）

同樣功能，只差路徑是 sandbox 的 `/sessions/.../mnt/...` 版。給下次 Claude session 直接用。
