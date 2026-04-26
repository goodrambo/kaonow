#!/usr/bin/env python3
"""把 cap_X_Y_chunks/*.sql（不含 01_paper.sql）切成 ≤60KB 一塊
方便逐塊 cat → MCP execute_sql。

輸出到 outputs/cap_X_Y_mcp/ 目錄，命名 mcp_01.sql, mcp_02.sql, ...
"""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
year, subject = sys.argv[1], sys.argv[2]

chunks_dir = REPO / "outputs" / f"cap_{year}_{subject}_chunks"
out_dir = REPO / "outputs" / f"cap_{year}_{subject}_mcp"
out_dir.mkdir(exist_ok=True)
for f in out_dir.glob("*.sql"):
    f.unlink()

LIMIT = 60_000  # 60KB per MCP call

# 收集所有 chunk（不含 01_paper.sql）
sql_files = sorted([f for f in chunks_dir.glob("*.sql") if f.name != "01_paper.sql"])

current = []
current_size = 0
batch_idx = 1

def flush():
    global current, current_size, batch_idx
    if not current:
        return
    out_path = out_dir / f"mcp_{batch_idx:02d}.sql"
    out_path.write_text("\n".join(current), encoding="utf-8")
    print(f"  {out_path.name}: {current_size} bytes ({len(current)} chunks)")
    current = []
    current_size = 0
    batch_idx += 1

for sf in sql_files:
    content = sf.read_text(encoding="utf-8")
    sz = len(content.encode("utf-8"))
    if current_size + sz > LIMIT and current:
        flush()
    current.append(content)
    current_size += sz
flush()
print(f"split into {batch_idx - 1} mcp pieces -> {out_dir}")
