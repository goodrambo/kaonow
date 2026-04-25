-- W1.6 questions batch 8074/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-014e6a52-moex-00038', 'pukao-014e6a52', 'pukao-014e6a52-moex-111-4c00feca', 'sub-pukao-014e6a52-04', NULL, 'essay', '如圖所示，量測兩個長方形 E和 F的四個邊長，長度分別為 a、b、c和
d，其量測標準差分別為 3σ、2σ、σ 和 σ。假設所有觀測量均獨立不相
關，試計算這兩個長方形 E和 F面積的標準差及其相關係數。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "541ea2870ac6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "436", "s": "1712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00039', 'pukao-014e6a52', 'pukao-014e6a52-moex-111-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '測量儀器觀測所得之資料，可能含有幾類誤差，其特性為何？今以全測
站儀測量某一方向的讀數分別為 359°59′58′′、350°59′59′′、359°59′59′′、
0°0′0′′、359°59′58′′、359°59′59′′，此組資料中位數、最或是值、觀測精度
以及最或是值中誤差各是多少？並說明此組資料包含那幾類誤差。（計
算結果四捨五入至整數秒小數點下一位）（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "cde526d2cd7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "436", "s": "1717", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00040', 'pukao-014e6a52', 'pukao-014e6a52-moex-111-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '兩已知點 A、B 平面坐標分別為（900.000 m, 1250.000 m）與
（1000.000 m, 1000.000 m），且已知 AB 方位角之中誤差為3.0′′；
今以全站儀架站順時鐘方向觀測得∠ABC 與∠BCD 之角度，分別
為 197°59′59′′3.0′′與 193°29′59′′3.0′′，試繪出相關點位略圖，並
求 AB、BC、CD 方位角，以及 BC、CD 方位角之中誤差。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "cde526d2cd7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "436", "s": "1717", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00041', 'pukao-014e6a52', 'pukao-014e6a52-moex-111-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '試說明直接觀測平差與間接觀測平差之異同；今以水準測量行經不同路
徑，觀測兩點之高差分別為－1.253m、－1.250m、－1.247m、－1.251m，
假設兩點之高差為xm，以直接觀測平差求解x時，四段高差對應之改正
數分別以 v（i 1～4）表示，試列出觀測方程式；若四段高差之權分別
i
為3、1、2、4，試計算x值及其中誤差。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "cde526d2cd7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "436", "s": "1717", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00042', 'pukao-014e6a52', 'pukao-014e6a52-moex-111-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '已知A、D之平面坐標如下表一所列，以衛星定位靜態觀測方式得到AB、
BD 之基線分量如下表二所列。假設 B 點坐標為（x, y），並將觀測值視
為等權，且基線各分量獨立不相關，令 AB、BD之基線分量改正數分別
是 v ～v ，試列出觀測方程式，並求出 B點坐標及其中誤差。（25 分）
1 4
表一
坐標 X方向（m） Y方向（m）
A 65777.218 －7798.316
D 59490.412 －4911.507
表二
基線 X方向分量（m） Y方向分量（m）
AB －7720.703 －1024.518
BD 1433.905 3911.321', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "cde526d2cd7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "436", "s": "1717", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00043', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-d29c54f1', 'sub-pukao-014e6a52-03', NULL, 'essay', '以地圖投影而言，依光源之位置，常見之投影方式包括中心射投影
（Central projection）、平射投影（Stereographic projection）、正射投影
（Orthographicprojection）等，試配合繪圖說明此三類投影之方式。若投
影面假設為切於球體，試說明此三類投影方式對投影結果可能造成之變
化。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "958296877dee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與製圖學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00044', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-d29c54f1', 'sub-pukao-014e6a52-03', NULL, 'essay', '我國之地形圖包括不同比例尺之系列地圖，因此有地圖概括化（縮編、
MapGeneralization）之需要，試說明比例尺與製圖範圍之關係，再進一
步說明概括化時可考慮之原則，最後說明如何以附圖突破固定比例尺地
圖展示之限制？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "958296877dee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與製圖學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00045', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-d29c54f1', 'sub-pukao-014e6a52-03', NULL, 'essay', '在目前的網路世界中，詮釋資料對於搜尋所需之地理資料及了解其內容
扮演重要的角色。試說明詮釋資料之意義及主要內容，並說明如何可以
依此發展搜尋機制及協助了解地理資料之內容？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "958296877dee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與製圖學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00046', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-d29c54f1', 'sub-pukao-014e6a52-03', NULL, 'essay', '近年使用者常透過應用程式介面（ApplicationProgrammingInterface）由
其他機關取得所需之資料，試說明其運作之模式。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "958296877dee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與製圖學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00047', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-4c00feca', 'sub-pukao-014e6a52-04', NULL, 'essay', '在一個 Y形網中，按同一等級直接水準測量分別由三個水準路線觀測得
到結點 P 之高程成果如下表所示，試求 P 點高程之最或然值及其中誤
差。（25分）
路線 P點之高程 路線長
1 63.640 m 6.0 km
2 63.655 m 5.0 km
3 63.676 m 4.0 km', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
