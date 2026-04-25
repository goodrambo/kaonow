#!/bin/bash
# 分批 parse civil-service map（避免 45s timeout）
# 用法：bash scripts/ingest/_civil_parse_batch.sh <START> <END>
#   START/END 是 slug index (0-based)
set -e
START=${1:-0}
END=${2:-100}
MAP=content/config/moex_civil_service_map_flat.json
OUT=content/parsed_civil

# 取 slug list 中 [START, END) 範圍
SLUGS=$(python3 -c "
import json
d = json.loads(open('$MAP').read())
keys = list(d.keys())
print(' '.join(keys[$START:$END]))
")

echo "Parsing slugs [$START..$END) — $(echo $SLUGS | wc -w) slugs"
python3 scripts/ingest/moex_license_parser.py --map $MAP --out $OUT $SLUGS 2>&1 | tail -8
