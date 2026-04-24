#!/usr/bin/env python3
"""ntpc_ingest.py — 讀 content/parsed/*/questions.json，產生：
  - outputs/ntpc_ingest/01_papers.sql     （exam_papers INSERT）
  - outputs/ntpc_ingest/02_questions_part_NN.sql  （questions INSERT 分批）
  - outputs/ntpc_ingest/report.json       （dry-run 統計）

原則：
  - 每個 (exam_id, roc_year) 組合建一張 exam_paper；沒年度的用 'main'
  - 題目全欄帶 source_meta、sections、options JSON
  - 非單選題（目前只有 multiple_choice）correct_answer 一律填 0 placeholder，真值放 correct_answer_json
  - INSERT 使用 ON CONFLICT DO NOTHING，可重跑

Batch size：每 500 題一個檔，避免單一 SQL 過大
"""
from __future__ import annotations
import json
import os
import re
import sys
from collections import defaultdict
from pathlib import Path

# --- 設定 -----------------------------------------------------------------
PARSED_ROOT = Path("content/parsed")
OUT_ROOT = Path("outputs/ntpc_ingest")
BATCH_SIZE = 50

# 排除：osh-c parser 為 0 題（掃描件待 OCR），跳過
SKIP_EXAMS = {"osh-c"}

# exam → 中文名 (DB exams.name)，作為 paper_title 基底
EXAM_NAMES = {
    "accounting-b": "會計事務資訊乙級",
    "accounting-c": "會計事務資訊丙級",
    "archi-cad-c": "建築製圖應用-電腦繪圖丙級",
    "auto-b": "汽車修護乙級",
    "auto-c": "汽車修護丙級",
    "barber-c": "男子理髮丙級",
    "beauty-c": "美容丙級",
    "bread-cookie-c": "烘焙食品(餅乾類)丙級",
    "bread-loaf-c": "烘焙食品(麵包類)丙級",
    "cook-c": "中餐烹調（葷食）丙級",
    "cook-v-c": "中餐烹調（素食）丙級",
    "elec-c": "室內配線（屋內線路裝修）丙級",
    "employment-svc-b": "就業服務乙級",
    "forklift": "堆高機操作單一級",
    "hair-c": "女子美髮丙級",
    "hvac-c": "冷凍空調裝修丙級",
    "ind-wire-c": "工業配線丙級",
    "interior-design-b": "建築物室內設計乙級",
    "jewelry-c": "金銀珠寶飾品加工丙級",
    "mason-brick-c": "泥水(砌磚)丙級",
    "mason-tile-c": "泥水(面材鋪貼)丙級",
    "mech-elec-c": "機電整合丙級",
    "moto-c": "機車修護丙級",
    "nail-art-c": "指甲彩繪初級",
    "netinstall-b": "網路架設乙級",
    "netinstall-c": "網路架設丙級",
    "noodle-oil-c": "中式麵食加工-酥(油)皮/糕(漿)皮類丙級",
    "noodle-water-c": "中式麵食加工-水調(和)麵類丙級",
    "osh-common": "職安衛業務主管通用題庫(甲/丙)",
    "osh-mgr-b": "職業安全衛生管理乙級",
    "pchw-b": "電腦硬體裝修乙級",
    "pchw-c": "電腦硬體裝修丙級",
    "swapp-b": "電腦軟體應用乙級",
    "swapp-c": "電腦軟體應用丙級",
    "tailor-w-b": "女裝乙級",
    "tailor-w-c": "女裝丙級",
    "telecom-c": "通信技術(電信線路)丙級",
    "water-pipe-c": "自來水管配管丙級",
    "western-c": "西餐烹調丙級",
}


# --- Helpers --------------------------------------------------------------
def normalize_roc_year(section: str | None) -> int | None:
    """從 parser section 萃 ROC 年度。'113年度' / '113 年度' → 113；None / '(none)' → None"""
    if not section:
        return None
    m = re.search(r"(\d{2,3})\s*年度", section)
    return int(m.group(1)) if m else None


def paper_id_for(exam_id: str, roc_year: int | None) -> str:
    return f"{exam_id}-ntpc-{roc_year}" if roc_year else f"{exam_id}-ntpc-main"


def paper_title_for(exam_id: str, roc_year: int | None) -> str:
    base = EXAM_NAMES.get(exam_id, exam_id) + " 題庫"
    return f"{base}（{roc_year} 年度）" if roc_year else base


def sql_literal(v) -> str:
    """Postgres literal。None→NULL；bool→TRUE/FALSE；str→跳脫單引號；number→原樣"""
    if v is None:
        return "NULL"
    if isinstance(v, bool):
        return "TRUE" if v else "FALSE"
    if isinstance(v, (int, float)):
        return repr(v)
    if isinstance(v, (list, dict)):
        return "'" + json.dumps(v, ensure_ascii=False).replace("'", "''") + "'::jsonb"
    # str
    return "'" + str(v).replace("'", "''") + "'"


# --- 主流程 ---------------------------------------------------------------
def main():
    OUT_ROOT.mkdir(parents=True, exist_ok=True)

    all_questions = []     # [(exam_id, paper_id, q), ...]
    paper_rows = {}        # paper_id -> {exam_id, roc_year, title, count}
    report = {"exams": [], "total_questions": 0, "total_papers": 0, "skipped": []}

    exam_dirs = sorted([d for d in PARSED_ROOT.iterdir() if d.is_dir()])
    for ed in exam_dirs:
        exam_id = ed.name
        if exam_id in SKIP_EXAMS:
            report["skipped"].append(exam_id)
            continue
        qfile = ed / "questions.json"
        if not qfile.exists():
            report["skipped"].append(f"{exam_id} (no questions.json)")
            continue

        data = json.loads(qfile.read_text())
        qs = data["questions"] if isinstance(data, dict) else data

        if not qs:
            report["skipped"].append(f"{exam_id} (0 questions)")
            continue

        exam_type_counts = defaultdict(int)
        exam_year_counts = defaultdict(int)

        for q in qs:
            sections = q.get("sections") or []
            roc_year = normalize_roc_year(sections[0] if sections else None)
            pid = paper_id_for(exam_id, roc_year)
            paper_rows.setdefault(pid, {
                "exam_id": exam_id,
                "roc_year": roc_year,
                "title": paper_title_for(exam_id, roc_year),
                "count": 0,
            })
            paper_rows[pid]["count"] += 1

            all_questions.append((exam_id, pid, q))
            exam_type_counts[q.get("question_type", "single_choice")] += 1
            exam_year_counts[str(roc_year or "main")] += 1

        report["exams"].append({
            "exam_id": exam_id,
            "total": len(qs),
            "type_counts": dict(exam_type_counts),
            "year_counts": dict(exam_year_counts),
        })

    report["total_questions"] = len(all_questions)
    report["total_papers"] = len(paper_rows)

    # --- 寫 01_papers.sql ----------------------------------------------
    with (OUT_ROOT / "01_papers.sql").open("w") as f:
        f.write("-- ntpc re-ingest papers (generated by ntpc_ingest.py)\n")
        f.write("-- paper_id pattern: {exam_id}-ntpc-{year} or {exam_id}-ntpc-main\n\n")
        rows = []
        for pid, p in sorted(paper_rows.items()):
            rows.append("  ({id}, {exam_id}, {roc_year}, {title}, 'ntpc', '{{}}'::jsonb, 0, '{{}}'::jsonb, TRUE)".format(
                id=sql_literal(pid),
                exam_id=sql_literal(p["exam_id"]),
                roc_year=sql_literal(p["roc_year"]),
                title=sql_literal(p["title"]),
            ))
        f.write(
            "INSERT INTO public.exam_papers "
            "(id, exam_id, roc_year, paper_title, source_family, source_ref, question_count, meta, is_active)\nVALUES\n"
            + ",\n".join(rows)
            + "\nON CONFLICT (id) DO UPDATE SET "
              "paper_title = EXCLUDED.paper_title, "
              "roc_year = EXCLUDED.roc_year, "
              "source_family = EXCLUDED.source_family, "
              "is_active = TRUE;\n"
        )

    # --- 寫 02_questions_part_NN.sql (每 BATCH_SIZE 題一檔) ----------
    # 順便按 exam_id, section, original_question_number 排序，讓 batch 可讀
    all_questions.sort(key=lambda x: (
        x[0],
        x[2].get("source_meta", {}).get("raw_section_label") or "",
        x[2].get("source_meta", {}).get("original_question_number") or 0,
    ))

    batches = [all_questions[i:i + BATCH_SIZE] for i in range(0, len(all_questions), BATCH_SIZE)]
    for idx, batch in enumerate(batches, start=1):
        fname = f"02_questions_part_{idx:02d}.sql"
        with (OUT_ROOT / fname).open("w") as f:
            f.write(f"-- questions batch {idx}/{len(batches)} — rows {len(batch)}\n\n")
            rows = []
            for exam_id, paper_id, q in batch:
                qtype = q.get("question_type", "single_choice")
                correct_answer = q.get("correct_answer")
                caj = q.get("correct_answer_json")
                # single_choice 必帶 correct_answer 0..N，其他型填 0 placeholder
                if qtype != "single_choice" and correct_answer is None:
                    correct_answer = 0
                if caj is None and qtype != "single_choice":
                    # 防禦：非單選但沒 json 答案 → auto_gradable=false
                    auto_gradable = False
                else:
                    auto_gradable = True

                options = q.get("options") or []
                source_meta = q.get("source_meta") or {}

                rows.append(
                    "  ({id}, {exam_id}, {paper_id}, {qtype}, {qtext}, {options}, "
                    "{ca}, {caj}, {ag}, 'official', TRUE, 1, {sm}, NULL, NULL)".format(
                        id=sql_literal(q["id"]),
                        exam_id=sql_literal(exam_id),
                        paper_id=sql_literal(paper_id),
                        qtype=sql_literal(qtype),
                        qtext=sql_literal(q["question"]),
                        options=sql_literal(options),
                        ca=sql_literal(correct_answer if correct_answer is not None else 0),
                        caj=sql_literal(caj) if caj is not None else "NULL",
                        ag="TRUE" if auto_gradable else "FALSE",
                        sm=sql_literal(source_meta),
                    )
                )
            f.write(
                "INSERT INTO public.questions "
                "(id, exam_id, paper_id, question_type, question_text, options, "
                "correct_answer, correct_answer_json, auto_gradable, source, is_active, version, "
                "source_meta, subject_id, chapter_id)\nVALUES\n"
                + ",\n".join(rows)
                + "\nON CONFLICT (id) DO NOTHING;\n"
            )

    # --- 寫 report.json ------------------------------------------------
    report["batch_files"] = [f"02_questions_part_{i:02d}.sql" for i in range(1, len(batches) + 1)]
    (OUT_ROOT / "report.json").write_text(json.dumps(report, ensure_ascii=False, indent=2))

    # --- 終端摘要 -------------------------------------------------------
    print(f"✅ Wrote {OUT_ROOT}/01_papers.sql  ({len(paper_rows)} papers)")
    print(f"✅ Wrote {OUT_ROOT}/02_questions_part_01..{len(batches):02d}.sql  ({len(all_questions)} questions)")
    print(f"   batch size: {BATCH_SIZE}")
    print(f"   skipped: {report['skipped']}")
    print(f"\nPer-exam:")
    for e in report["exams"]:
        print(f"  {e['exam_id']:<20} total={e['total']:<4}  types={e['type_counts']}  years={e['year_counts']}")
    print(f"\nTotal: {len(all_questions)} questions, {len(paper_rows)} papers")


if __name__ == "__main__":
    main()
