#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""sync_exams_to_db.py — 同步 index.html 的 hardcoded exams[] 陣列與 DB 狀態：
1. 把 56 個 has-question exam 的 `available:false` flip 成 `available:true`
2. 加 8 個新 exam 物件（dietitian/food-tech/medical-tech/fire-eq-eng/fire-eq-tech/
   structural-eng/optician/optometrist）

執行：python3 scripts/sync_exams_to_db.py
"""
import re
from pathlib import Path

INDEX = Path(__file__).resolve().parent.parent / "index.html"

# 需要 flip available:false → available:true 的 exam id list
EXAMS_TO_ENABLE = [
    # 8 prof-exam (W1.3b/W1.4 既有 exam)
    "cpa", "bookkeeper", "real-estate-appraiser", "real-estate", "land-agent",
    "social-worker", "civil-engineer", "public-health-specialist",
    # 39 tech-cert (ntpc has q)
    "accounting-b", "accounting-c", "archi-cad-c", "auto-b", "auto-c",
    "barber-c", "beauty-c", "bread-cookie-c", "bread-loaf-c", "cook-c",
    "cook-v-c", "elec-c", "employment-svc-b", "forklift", "hair-c",
    "hvac-c", "ind-wire-c", "interior-design-b", "jewelry-c", "mason-brick-c",
    "mason-tile-c", "mech-elec-c", "moto-c", "nail-art-c", "netinstall-b",
    "netinstall-c", "noodle-oil-c", "noodle-water-c", "osh-common",
    "osh-mgr-b",  # 已 true 跳過
    "pchw-b", "pchw-c", "swapp-b", "swapp-c", "tailor-w-b", "tailor-w-c",
    "telecom-c", "water-pipe-c", "western-c",
]

# 8 個 W1.3b/W1.4 新增的 exam，需要插入 array
NEW_EXAMS_TO_INSERT = [
    {
        "id": "dietitian", "categoryId": "prof-exam", "available": True,
        "name": "營養師考試", "short": "營養師",
        "desc": "考選部專技高考，營養相關科系畢業之執業資格。涵蓋公衛營養、團體膳食、生理學與生化、營養學、膳食療養、食品衛生與安全 6 科。",
        "issuer": "考選部", "examFormat": "筆試・選擇題＋申論",
        "mock_question_count": 50, "mock_time_minutes": 90, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "公共衛生營養學"}, {"id": 1, "name": "團體膳食設計與管理"},
            {"id": 2, "name": "生理學與生物化學"}, {"id": 3, "name": "營養學"},
            {"id": 4, "name": "膳食療養學"}, {"id": 5, "name": "食品衛生與安全"},
        ],
    },
    {
        "id": "food-tech", "categoryId": "prof-exam", "available": True,
        "name": "食品技師", "short": "食品技師",
        "desc": "考選部專技高考，食品工程與安全的核心證照。涵蓋食品分析、加工、化學、工廠管理、微生物與食安法規 6 科，多為純申論卷。",
        "issuer": "考選部", "examFormat": "筆試・申論",
        "mock_question_count": 40, "mock_time_minutes": 90, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "食品分析與檢驗"}, {"id": 1, "name": "食品加工學"},
            {"id": 2, "name": "食品化學"}, {"id": 3, "name": "食品工廠管理"},
            {"id": 4, "name": "食品微生物學"}, {"id": 5, "name": "食品衛生安全與法規"},
        ],
    },
    {
        "id": "medical-tech", "categoryId": "prof-exam", "available": True,
        "name": "醫事檢驗師", "short": "醫檢師",
        "desc": "考選部專技高考，醫檢相關科系畢業之執業資格。涵蓋臨床生化、血液、血清免疫、生理病理、微生物及鏡檢學等。",
        "issuer": "考選部", "examFormat": "筆試・選擇題",
        "mock_question_count": 80, "mock_time_minutes": 100, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "生物化學與臨床生化學"}, {"id": 1, "name": "臨床生理學與病理學"},
            {"id": 2, "name": "臨床血液學與血庫學"}, {"id": 3, "name": "臨床血清免疫學與臨床病毒學"},
            {"id": 4, "name": "微生物學與臨床微生物學"}, {"id": 5, "name": "醫學分子檢驗學與臨床鏡檢學"},
        ],
    },
    {
        "id": "fire-eq-eng", "categoryId": "prof-exam", "available": True,
        "name": "消防設備師", "short": "消防設備師",
        "desc": "考選部專技高考，消防安全設備設計與審查必備。涵蓋消防法規、火災學、化學/水/警報/避難系統消防安全設備 6 科。",
        "issuer": "考選部", "examFormat": "筆試・申論＋選擇",
        "mock_question_count": 50, "mock_time_minutes": 90, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "消防法規"}, {"id": 1, "name": "火災學"},
            {"id": 2, "name": "化學系統消防安全設備"}, {"id": 3, "name": "水系統消防安全設備"},
            {"id": 4, "name": "警報系統消防安全設備"}, {"id": 5, "name": "避難系統消防安全設備"},
        ],
    },
    {
        "id": "fire-eq-tech", "categoryId": "prof-exam", "available": True,
        "name": "消防設備士", "short": "消防設備士",
        "desc": "考選部專技普考，消防安全設備檢修與裝置必備。涵蓋消防法規概要、水與化學系統消防、警報與避難系統消防安全設備概要等。",
        "issuer": "考選部", "examFormat": "筆試・選擇題",
        "mock_question_count": 50, "mock_time_minutes": 90, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "消防法規概要"}, {"id": 1, "name": "火災學概要"},
            {"id": 2, "name": "水與化學系統消防安全設備概要"},
            {"id": 3, "name": "警報與避難系統消防安全設備概要"},
        ],
    },
    {
        "id": "structural-eng", "categoryId": "prof-exam", "available": True,
        "name": "結構工程技師", "short": "結構技師",
        "desc": "考選部專技高考，結構工程設計與簽證必備。涵蓋結構學、鋼結構、鋼筋混凝土、結構動力分析與耐震、土壤力學、材料力學等 6 科。",
        "issuer": "考選部", "examFormat": "筆試・申論",
        "mock_question_count": 40, "mock_time_minutes": 90, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "結構學"}, {"id": 1, "name": "結構動力分析與耐震設計"},
            {"id": 2, "name": "鋼結構設計"}, {"id": 3, "name": "鋼筋混凝土設計與預力混凝土設計"},
            {"id": 4, "name": "土壤力學與基礎設計"}, {"id": 5, "name": "材料力學"},
        ],
    },
    {
        "id": "optician", "categoryId": "prof-exam", "available": True,
        "name": "驗光生", "short": "驗光生",
        "desc": "考選部專技普考，驗光師法授權之驗光從業人員資格。涵蓋眼球構造與倫理法規概要、眼鏡光學概要、驗光學概要、隱形眼鏡學概要 4 科。",
        "issuer": "考選部", "examFormat": "筆試・選擇題",
        "mock_question_count": 50, "mock_time_minutes": 80, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "眼球構造與倫理法規概要"}, {"id": 1, "name": "眼鏡光學概要"},
            {"id": 2, "name": "驗光學概要"}, {"id": 3, "name": "隱形眼鏡學概要"},
        ],
    },
    {
        "id": "optometrist", "categoryId": "prof-exam", "available": True,
        "name": "驗光師", "short": "驗光師",
        "desc": "考選部專技高考，驗光師法授權之高階驗光人員資格。涵蓋眼球解剖生理與倫理法規、視光學、視覺光學、低視力學、隱形眼鏡學與配鏡學 5 科。",
        "issuer": "考選部", "examFormat": "筆試・選擇題",
        "mock_question_count": 50, "mock_time_minutes": 80, "mock_pass_score": 60,
        "links": {"official": "https://wwwc.moex.gov.tw", "reg": "https://register.moex.gov.tw", "bank": "https://wwwq.moex.gov.tw"},
        "chapters": [
            {"id": 0, "name": "眼球解剖生理學與倫理法規"}, {"id": 1, "name": "視光學"},
            {"id": 2, "name": "視覺光學"}, {"id": 3, "name": "低視力學"},
            {"id": 4, "name": "隱形眼鏡學與配鏡學"},
        ],
    },
]


def flip_available_to_true(text: str, exam_ids: list) -> tuple[str, list]:
    """For each exam_id, find its line and replace available:false → available:true.
    Returns (new_text, list of (id, status)) — status: 'flipped' / 'already_true' / 'not_found'.
    """
    results = []
    for eid in exam_ids:
        # 找該 exam 的 line — 排除 fix 過的
        # match 整個物件起點 `{id:'<id>',`，可能跨行
        pattern = re.compile(
            r"(\{id:'" + re.escape(eid) + r"'[^}]*?available:)(false|true)",
            re.DOTALL,
        )
        m = pattern.search(text)
        if not m:
            results.append((eid, "not_found"))
            continue
        if m.group(2) == "true":
            results.append((eid, "already_true"))
            continue
        text = pattern.sub(lambda match: match.group(1) + "true", text, count=1)
        results.append((eid, "flipped"))
    return text, results


def python_dict_to_js(d: dict) -> str:
    """轉 Python dict 為 JS object literal（單引號 keys，符合 index.html 風格）"""
    if isinstance(d, dict):
        items = []
        for k, v in d.items():
            items.append(f"{k}:{python_dict_to_js(v)}")
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


def insert_new_exams(text: str, new_exams: list) -> str:
    """在 exams[] 的最後一個 prof-exam 後插入新 exam objects，
    最簡單：直接插在 `];` 結尾 marker 之前。"""
    # 找 const exams=[ ... ] 結束處
    start = text.find("const exams=[")
    end = text.find("\n];", start)
    if start == -1 or end == -1:
        raise SystemExit("找不到 exams[] 陣列起終點")

    # 已存在的 ID
    existing_ids = set(re.findall(r"\{id:'([^']+)'", text[start:end]))
    additions = []
    for ex in new_exams:
        if ex["id"] in existing_ids:
            print(f"  [skip add] {ex['id']} 已在 array")
            continue
        additions.append("\n  " + python_dict_to_js(ex) + ",")
    if not additions:
        return text
    insertion = "".join(additions) + "\n"
    return text[:end] + insertion + text[end:]


def main():
    text = INDEX.read_text(encoding="utf-8")
    original_len = len(text)

    # 1. flip available
    print("=== Flip available:false → true ===")
    text, results = flip_available_to_true(text, EXAMS_TO_ENABLE)
    flipped = sum(1 for _, s in results if s == "flipped")
    already = sum(1 for _, s in results if s == "already_true")
    not_found = [eid for eid, s in results if s == "not_found"]
    print(f"  Flipped: {flipped}")
    print(f"  Already true: {already}")
    if not_found:
        print(f"  NOT FOUND ({len(not_found)}): {not_found}")

    # 2. add new exams
    print("\n=== Insert new exams ===")
    new_text = insert_new_exams(text, NEW_EXAMS_TO_INSERT)
    text = new_text

    if len(text) == original_len:
        print("\n(no changes — text identical)")
        return

    INDEX.write_text(text, encoding="utf-8")
    print(f"\nWrote {INDEX} (size: {original_len} → {len(text)})")


if __name__ == "__main__":
    main()
