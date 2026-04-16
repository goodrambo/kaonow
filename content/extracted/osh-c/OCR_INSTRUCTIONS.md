# osh-c 需要 OCR 處理

這份 PDF 是純影像掃描版（5 頁、pdftotext 只抽到 5 字元），需要在本機跑 OCR。
Sandbox 無法安裝繁中 tessdata 語言包，所以這步要 Rambo 在 Mac 上執行。

## 方案 A：ocrmypdf（推薦，最簡單）

```bash
# 一次安裝（Homebrew）
brew install ocrmypdf tesseract-lang

# 跑 OCR：輸出是原 PDF + 文字層
cd ~/Documents/Claude/Projects/KaoNow
ocrmypdf -l chi_tra \
  content/sources/osh-c/questions/osh-c_q_ntpc_20260416.pdf \
  content/sources/osh-c/questions/osh-c_q_ntpc_20260416_ocr.pdf

# 再抽文字
pdftotext -layout \
  content/sources/osh-c/questions/osh-c_q_ntpc_20260416_ocr.pdf \
  content/extracted/osh-c/osh-c_q_ntpc_20260416.txt
```

## 方案 B：直接 tesseract（如果不想裝 ocrmypdf）

```bash
brew install tesseract tesseract-lang poppler

cd ~/Documents/Claude/Projects/KaoNow/content/extracted/osh-c

# PDF → PNG（每頁一張，300 DPI）
pdftoppm -r 300 -png \
  ../../sources/osh-c/questions/osh-c_q_ntpc_20260416.pdf page

# 每張 PNG → 文字
for png in page-*.png; do
  tesseract "$png" "${png%.png}" -l chi_tra
done

# 合併所有文字
cat page-*.txt > osh-c_q_ntpc_20260416.txt

# 清理中間檔
rm page-*.png page-*.txt
```

## 完成後

1. 確認 `content/extracted/osh-c/osh-c_q_ntpc_20260416.txt` 內容正確（題目結構是否清楚）
2. 手動更新 `content/extracted/osh-c/osh-c_q_ntpc_20260416.meta.json`：
   - `status`: `ocr_pending` → `extracted`
   - `extractor`: `ocrmypdf -l chi_tra` 或 `tesseract chi_tra`
   - `chars`: 填入實際字元數
3. 跟我說「osh-c OCR 好了」，我會繼續 Layer 3 解析
4. 本 OCR_INSTRUCTIONS.md 處理完可刪

## 為什麼 sandbox 不能做？

- sudo / apt-get install 被禁
- `tesseract-ocr-chi-tra` deb 要從 ubuntu ports 下載，sandbox 網路只通 allowlist（GitHub raw / ubuntu ports 回 403）
- Tesseract binary 本身有裝，但沒語言包就無法辨識繁中

---

_生成時間：2026-04-16｜Source hash: md5 `802580390fa50e9c9c37e2ad693d9a77`_
