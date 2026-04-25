#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sync_civil_exams_to_frontend.py — W1.6 把 350 個 civil exam 加進 index.html exams[] 陣列

從 content/config/moex_civil_service_map.json 讀 exam metadata，
產出 JS object literals 插入 exams[] 陣列尾端。

執行：python3 scripts/sync_civil_exams_to_frontend.py
"""
import json
import re
import hashlib
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
INDEX = REPO_ROOT / "index.html"
MAP_PATH = REPO_ROOT / "content/config/moex_civil_service_map.json"

SLUG_TO_LEVEL_CN = {
    "aboriginal":     "原住民族特考",
    "aviation":       "民航特考",
    "coastguard":     "海巡特考",
    "colonel":        "上校以上轉任",
    "commerce":       "國際經濟商務人員",
    "customs":        "關務人員特考",
    "customspromo":   "關務升官等",
    "diplomatic":     "外交人員特考",
    "disabled":       "身心障礙人員特考",
    "elementary":     "公務人員初等考試",
    "generalpolice":  "一般警察人員特考",
    "heelevel2":      "公務人員高等考試二級",
    "heelevel3":      "公務人員高等考試三級",
    "immigration":    "移民行政特考",
    "investigation":  "調查人員特考",
    "islands":        "離島地區公務人員",
    "judicial":       "司法人員特考",
    "locality":       "地方政府公務人員特考",
    "police":         "警察人員特考",
    "policepromo":    "警察升官等",
    "promotion":      "公務人員升官等",
    "pukao":          "公務人員普通考試",
    "retired":        "退除役轉任",
    "security":       "國家安全情報人員特考",
}
SLUG_TO_LEVEL_SHORT = {
    "aboriginal":     "原民特", "aviation": "民航", "coastguard": "海巡",
    "colonel": "上校轉任", "commerce": "經商人", "customs": "關務",
    "customspromo": "關務升等", "diplomatic": "外交", "disabled": "身障特",
    "elementary": "初考", "generalpolice": "一般警特",
    "heelevel2": "高考二級", "heelevel3": "高考三級",
    "immigration": "移民", "investigation": "調查", "islands": "離島特",
    "judicial": "司法", "locality": "地方特", "police": "警特",
    "policepromo": "警察升等", "promotion": "公升等", "pukao": "普考",
    "retired": "退除役", "security": "國安",
}


def python_dict_to_js(d):
    if isinstance(d, dict):
        items = [f"{k}:{python_dict_to_js(v)}" for k, v in d.items()]
        return "{" + ",".join(items) + "}"
    if isinstance(d, list):
        return "[" + ",".join(python_dict_to_js(x) for x in d) + "]"
    if isinstance(d, bool):
        return "true" if d else "false"
    if isinstance(d, (int, float)):
        return str(d)
    if isinstance(d, str):
        return "'" + d.replace("\\", "\\\\").replace("'", "\\'") + "'"
    if d is None:
        return "null"
    return repr(d)


def main():
    text = INDEX.read_text(encoding="utf-8")
    map_data = json.loads(MAP_PATH.read_text())

    # 哪些 exam_id 在 DB 是 is_available=true（從 ≥10 q 條件、之前已 set）— 我們以 entries 數判斷代替
    # exam 有 entries → 視為 available
    # 注：DB 已將 ≥10 q 設為 available，但前端的 available 是獨立 hardcoded
    # 這裡以 entries (PC 對應 PDFs 數) 估計：≥3 entries 的視為 available

    # parse 既有 exams[] 抓現有 ID set
    arr_start = text.find("const exams=[")
    arr_end = text.find("\n];", arr_start)
    if arr_start == -1 or arr_end == -1:
        raise SystemExit("找不到 exams[] 陣列")
    existing_ids = set(re.findall(r"\{id:'([^']+)'", text[arr_start:arr_end]))

    additions = []
    skipped = []
    for exam_id, info in sorted(map_data.items()):
        if exam_id in existing_ids:
            skipped.append((exam_id, "already_exists"))
            continue
        n_entries = len(info["entries"])
        if n_entries < 1:
            skipped.append((exam_id, "no_entries"))
            continue
        slug = info["slug"]
        cat = info["category"]
        pc_subjects = info.get("pc_subjects", [])

        level_cn = SLUG_TO_LEVEL_CN.get(slug, slug)
        level_short = SLUG_TO_LEVEL_SHORT.get(slug, slug)
        name = f"{level_cn}－{cat}"
        short = f"{level_short} {cat}"
        desc = f"考選部 {level_cn} {cat} 類科考古題（110-114 年度），{n_entries} 卷"
        # available: ≥3 entries 才 enable（避免空 catalog 卡）
        available = n_entries >= 3

        # chapters 從 pc_subjects 產生
        chapters = [{"id": i, "name": s} for i, s in enumerate(pc_subjects[:8])]

        exam_obj = {
            "id": exam_id,
            "categoryId": "civil",
            "available": available,
            "name": name,
            "short": short,
            "desc": desc,
            "issuer": "考選部",
            "examFormat": "筆試",
            "mock_question_count": 50,
            "mock_time_minutes": 80,
            "mock_pass_score": 60,
            "links": {
                "official": "https://wwwc.moex.gov.tw",
                "reg": "https://register.moex.gov.tw",
                "bank": "https://wwwq.moex.gov.tw",
            },
            "chapters": chapters,
        }
        additions.append("\n  " + python_dict_to_js(exam_obj) + ",")

    if not additions:
        print(f"No new exams to insert (skipped {len(skipped)})")
        return

    # 確認 exams[] 的最後一個 element 有 trailing comma（避免 SyntaxError，跟 W1.4 教訓相同）
    i = arr_end - 1
    while i > arr_start and text[i] in " \t\n\r":
        i -= 1
    if text[i] not in (",", "["):
        # 補 comma 在最後一個 } 之後
        text = text[:i+1] + "," + text[i+1:]
        arr_end += 1
        print("  [auto-fix] 補上 trailing comma after last existing entry")

    insertion = "".join(additions) + "\n"
    new_text = text[:arr_end] + insertion + text[arr_end:]
    INDEX.write_text(new_text, encoding="utf-8")
    print(f"\nInserted {len(additions)} new civil exams (skipped {len(skipped)})")
    print(f"index.html size: {len(text)} → {len(new_text)} chars")


if __name__ == "__main__":
    main()
