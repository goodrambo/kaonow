#!/usr/bin/env python3
"""把單一 paper 的所有 chunks 串成 single SQL（不含 paper INSERT），印到 stdout。
MCP execute_sql 一次灌完，避開 paper.sql/parents.sql/questions_*.sql 多次往返。

用法：
  python3 scripts/ingest/cap_combine_chunks.py 104 chinese

輸出：合併好的 SQL（parents + 所有 questions chunks），不含 paper.sql 因為已單獨灌過。
"""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
year, subject = sys.argv[1], sys.argv[2]
chunks_dir = REPO / "outputs" / f"cap_{year}_{subject}_chunks"

# 跳過 01_paper.sql（已單獨灌）
sql_files = sorted([f for f in chunks_dir.glob("*.sql") if f.name != "01_paper.sql"])
out = []
for f in sql_files:
    out.append(f.read_text(encoding="utf-8"))
sys.stdout.write("\n".join(out))
