#!/usr/bin/env python3
"""把 moex_civil_service_map.json 轉成 parser 需要的 {exam_id: entries[]} 格式"""
import json
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parents[2]
src = REPO_ROOT / "content/config/moex_civil_service_map.json"
dst = REPO_ROOT / "content/config/moex_civil_service_map_flat.json"

data = json.loads(src.read_text())
flat = {exam_id: info["entries"] for exam_id, info in data.items() if info["entries"]}
dst.write_text(json.dumps(flat, ensure_ascii=False, indent=2))
print(f"Wrote {dst}: {len(flat)} exam_ids, {sum(len(e) for e in flat.values())} entries")
