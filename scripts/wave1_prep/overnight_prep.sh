#!/usr/bin/env bash
# Wave 1 overnight prep — pdftotext cache + SHA1 index + scan flags
# Safe to re-run: all outputs are additive, existing cache files are skipped.
# Scope: non-moex sources only (~40k PDFs); moex is intentionally excluded.

set -u
ROOT="/sessions/confident-nice-wright/mnt/KaoNow"
INBOX="$ROOT/content/sources/_inbox"
CACHE="$ROOT/content/cache"
TEXT_DIR="$CACHE/text"
LOG="$CACHE/overnight_prep.log"
SHA1_INDEX="$CACHE/sha1.index.jsonl"
SCAN_FLAGS="$CACHE/scan_flags.jsonl"
mkdir -p "$TEXT_DIR" "$CACHE"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG"; }

log "===== overnight_prep start ====="
log "ROOT=$ROOT INBOX=$INBOX CACHE=$CACHE"

# --- 1. Collect target PDFs (non-moex) -------------------------------------
log "step 1: enumerating non-moex PDFs"
TMP_LIST="$CACHE/.pdflist.$$"
{
  find "$INBOX/ntpc" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/public-com-tw" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/ceec-edu-tw" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/cap-rcpet-edu-tw" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/cpu-edu-tw" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/exam-tpa-edu-tw" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/tcte-edu-tw" -name '*.pdf' 2>/dev/null
  find "$INBOX/openclaw-data/wdasec-gov-tw" -name '*.pdf' 2>/dev/null
} | sort -u > "$TMP_LIST"
TOTAL=$(wc -l < "$TMP_LIST")
log "step 1 done: $TOTAL PDFs queued"

# --- 2. Parallel pdftotext + SHA1 + scan-flag --------------------------------
# For each PDF:
#   - compute SHA1, append to sha1.index.jsonl
#   - pdftotext -layout to cache/text/<relpath>.txt (skip if already cached)
#   - if text length < 100, append to scan_flags.jsonl
process_one() {
  local pdf="$1"
  local relpath="${pdf#$INBOX/}"
  local txt="$TEXT_DIR/$relpath.txt"
  local txt_dir
  txt_dir="$(dirname "$txt")"
  mkdir -p "$txt_dir"

  # SHA1
  local sha
  sha=$(sha1sum "$pdf" 2>/dev/null | cut -d' ' -f1)

  # pdftotext (skip if cached)
  if [ ! -s "$txt" ]; then
    pdftotext -layout -enc UTF-8 "$pdf" "$txt" 2>/dev/null || true
  fi

  # length
  local len
  len=$(wc -c < "$txt" 2>/dev/null || echo 0)

  # emit sha1 record
  printf '{"path":"%s","sha1":"%s","size":%s,"text_bytes":%s}\n' \
    "$relpath" "$sha" "$(stat -c%s "$pdf" 2>/dev/null || echo 0)" "$len" \
    >> "$SHA1_INDEX"

  # flag if likely scan
  if [ "$len" -lt 100 ]; then
    printf '{"path":"%s","text_bytes":%s,"reason":"pdftotext_short"}\n' \
      "$relpath" "$len" >> "$SCAN_FLAGS"
  fi
}
export -f process_one
export INBOX TEXT_DIR SHA1_INDEX SCAN_FLAGS

# Resumable: keep existing indexes, skip paths already recorded
touch "$SHA1_INDEX" "$SCAN_FLAGS"
DONE_LIST="$CACHE/.done.$$"
awk -F'"path":"' 'NF>1{split($2,a,"\""); print a[1]}' "$SHA1_INDEX" | sort -u > "$DONE_LIST"
TODO_LIST="$CACHE/.todo.$$"
comm -23 <(awk -v root="$INBOX/" '{s=$0; sub(root,"",s); print s}' "$TMP_LIST" | sort) "$DONE_LIST" \
  | awk -v root="$INBOX/" '{print root $0}' > "$TODO_LIST"
TODO_N=$(wc -l < "$TODO_LIST")
log "step 2: extracting text + SHA1 (4 parallel workers); todo=$TODO_N (already=$((TOTAL-TODO_N)))"
cat "$TODO_LIST" | xargs -I{} -P 4 bash -c 'process_one "{}"'
rm -f "$DONE_LIST" "$TODO_LIST"
log "step 2 done"

# --- 3. Summary --------------------------------------------------------------
log "step 3: summarising"
SHA_COUNT=$(wc -l < "$SHA1_INDEX")
SCAN_COUNT=$(wc -l < "$SCAN_FLAGS")
DUP_COUNT=$(awk -F'"sha1":"' '{print $2}' "$SHA1_INDEX" | awk -F'"' '{print $1}' | sort | uniq -d | wc -l)
log "processed: $SHA_COUNT PDFs"
log "flagged needs_ocr: $SCAN_COUNT"
log "duplicate SHA1 groups: $DUP_COUNT"

rm -f "$TMP_LIST"
log "===== overnight_prep done ====="
