#!/usr/bin/env bash
# Wave 1 overnight prep — Mac-native version
# Runs on user's Mac overnight; resumable; non-destructive.
#
# Requirements:
#   - poppler (brew install poppler)  — provides pdftotext
#   - coreutils is optional
#
# Usage (before sleeping):
#   bash /Users/suchinglun/Documents/Claude/Projects/KaoNow/scripts/wave1_prep/overnight_prep_mac.sh &
#   disown
#   # then close laptop lid is fine ONLY if you've set caffeinate; otherwise wrap:
#   caffeinate -i -m -s bash overnight_prep_mac.sh &
#
# Check progress in morning:
#   tail -20 "$HOME/Documents/Claude/Projects/KaoNow/content/cache/overnight_prep.log"
#   wc -l "$HOME/Documents/Claude/Projects/KaoNow/content/cache/sha1.index.jsonl"

set -u
ROOT="/Users/suchinglun/Documents/Claude/Projects/KaoNow"
INBOX="$ROOT/content/sources/_inbox"
CACHE="$ROOT/content/cache"
TEXT_DIR="$CACHE/text"
LOG="$CACHE/overnight_prep.log"
SHA1_INDEX="$CACHE/sha1.index.jsonl"
SCAN_FLAGS="$CACHE/scan_flags.jsonl"
mkdir -p "$TEXT_DIR" "$CACHE"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG"; }

# dependency check
if ! command -v pdftotext >/dev/null 2>&1; then
  echo "FATAL: pdftotext not installed. Run: brew install poppler" >&2
  exit 1
fi

log "===== overnight_prep_mac start ====="
log "ROOT=$ROOT"
log "pdftotext: $(pdftotext -v 2>&1 | head -1)"

# --- 1. Enumerate ---
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
TOTAL=$(wc -l < "$TMP_LIST" | tr -d ' ')
log "step 1 done: $TOTAL PDFs queued"

# --- 2. Process one PDF ---
process_one() {
  local pdf="$1"
  local relpath="${pdf#$INBOX/}"
  local txt="$TEXT_DIR/$relpath.txt"
  local txt_dir
  txt_dir="$(dirname "$txt")"
  mkdir -p "$txt_dir"

  local sha
  sha=$(shasum -a 1 "$pdf" 2>/dev/null | cut -d' ' -f1)

  if [ ! -s "$txt" ]; then
    pdftotext -layout -enc UTF-8 "$pdf" "$txt" 2>/dev/null || true
  fi

  local len
  if [ -f "$txt" ]; then
    len=$(wc -c < "$txt" | tr -d ' ')
  else
    len=0
  fi

  local pdfsize
  pdfsize=$(stat -f%z "$pdf" 2>/dev/null || echo 0)

  printf '{"path":"%s","sha1":"%s","size":%s,"text_bytes":%s}\n' \
    "$relpath" "$sha" "$pdfsize" "$len" >> "$SHA1_INDEX"

  if [ "$len" -lt 100 ]; then
    printf '{"path":"%s","text_bytes":%s,"reason":"pdftotext_short"}\n' \
      "$relpath" "$len" >> "$SCAN_FLAGS"
  fi
}
export -f process_one
export INBOX TEXT_DIR SHA1_INDEX SCAN_FLAGS

# --- 3. Resumable filter ---
touch "$SHA1_INDEX" "$SCAN_FLAGS"
DONE_LIST="$CACHE/.done.$$"
awk -F'"path":"' 'NF>1{split($2,a,"\""); print a[1]}' "$SHA1_INDEX" | sort -u > "$DONE_LIST"
TODO_LIST="$CACHE/.todo.$$"
comm -23 <(awk -v root="$INBOX/" '{s=$0; sub(root,"",s); print s}' "$TMP_LIST" | sort) "$DONE_LIST" \
  | awk -v root="$INBOX/" '{print root $0}' > "$TODO_LIST"
TODO_N=$(wc -l < "$TODO_LIST" | tr -d ' ')
log "step 2: extracting text + SHA1 (4 parallel workers); todo=$TODO_N (already=$((TOTAL-TODO_N)))"

# bash while-loop with manual job throttle (portable on macOS bash 3.2)
MAX_PAR=4
COUNT=0
while IFS= read -r pdf; do
  # throttle: wait until fewer than MAX_PAR background jobs
  while [ "$(jobs -rp 2>/dev/null | wc -l | tr -d ' ')" -ge "$MAX_PAR" ]; do
    sleep 0.05
  done
  process_one "$pdf" &
  COUNT=$((COUNT+1))
  # progress heartbeat every 500 PDFs
  if [ $((COUNT % 500)) -eq 0 ]; then
    log "  ... $COUNT / $TODO_N dispatched"
  fi
done < "$TODO_LIST"
wait
log "step 2 done: dispatched $COUNT jobs"
rm -f "$DONE_LIST" "$TODO_LIST" "$TMP_LIST"

# --- 4. Summary ---
SHA_COUNT=$(wc -l < "$SHA1_INDEX" | tr -d ' ')
SCAN_COUNT=$(wc -l < "$SCAN_FLAGS" | tr -d ' ')
DUP_COUNT=$(awk -F'"sha1":"' 'NF>1{split($2,a,"\""); print a[1]}' "$SHA1_INDEX" | sort | uniq -d | wc -l | tr -d ' ')
log "processed: $SHA_COUNT PDFs"
log "flagged needs_ocr: $SCAN_COUNT"
log "duplicate SHA1 groups: $DUP_COUNT"
log "===== overnight_prep_mac done ====="
