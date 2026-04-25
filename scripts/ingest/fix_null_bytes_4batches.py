#!/usr/bin/env python3
"""修 batch 899/900/901/903 的 \\u0000 + binary NULL — Postgres jsonb 拒絕 U+0000。
就地清掉這些字元並重產 SQL（ON CONFLICT DO NOTHING 讓重跑安全）。"""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2] / "outputs/moex_license_ingest"
BATCHES = [899, 900, 901, 903]

for n in BATCHES:
    fp = ROOT / f"03_questions_part_{n:03d}.sql"
    raw = fp.read_bytes()
    # 1) 二進位 NULL byte
    cleaned = raw.replace(b"\x00", b"")
    # 2) literal \u0000 escape (6-char sequence in JSON strings)
    cleaned = cleaned.replace(b"\\u0000", b"")
    if cleaned != raw:
        fp.write_bytes(cleaned)
        diff = len(raw) - len(cleaned)
        print(f"  {fp.name}: stripped {diff} bytes")
    else:
        print(f"  {fp.name}: no change")

print("\n完成。重跑：python3 scripts/ingest/apply_moex_questions.py")
print("（apply_moex_questions.py 會跳過已成功的 batch，只灌剩 4 個）")
