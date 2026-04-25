-- W1.6 questions batch 8682/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-9a509fdf-moex-00007', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-111-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '梁長 10m，材料剛度 EI為常數，在支承 A為樞接，支承 C為滾接，承
受集中載重及均佈載重如圖三所示。試求距離左支承（A 支承）x 處的
剪力 V（x）和彎矩Ｍ（x）的函數，繪製梁的剪力圖和彎矩圖，並標示此
梁之零彎矩的位置。（30分）
30kN
x
5kN/m
B D
A C
3m 5m 2m
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "b3cab284b2b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "435", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00008', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-111-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '板為均質等向性材料，尺寸為45065020mm。
若板承受雙軸平面應力 31MPa及 17MPa作用，其相對的應
x y
變為 240106和 85106，求板的彈性模數 E 及柏松比
x y
（Poisson’sratio）。（10分）
若板為鋼材，承受雙軸平面應力 67MPa及 23MPa作用，
x y
鋼材的彈性模數E 200GPa，柏松比0.30，求鋼板的面內最大剪
應變 。（10 分）
max', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "b3cab284b2b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "435", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00009', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-110-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '圖示之桁架結構，各桿件之斷面積均為 2000 mm2。試求 AE、AF及 EG
桿件之內力。（25 分）
A B
3m
C D E
3m 3m 4m F
40kN 70kN 4m
G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00010', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-110-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '圖示 ACG為剛性桿，由 A點鉸接與兩水平鋼纜 BC及 FG支撐。鋼纜的
斷面積為50 mm2，彈性模數為 200 GPa。若 G點受 300 kN垂直載重作
用，試求 G點之垂直位移。（25分）
F G
1.5m
300kN
B C
45∘
1.5m
A
43830', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00011', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-110-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '圖示 AD 梁受外力 P=Q=500 N 作用。試求點 A、C 間的跨距 a，使得
AD梁中彎矩的絕對值盡可能小。（25 分）
P Q
1.0m 1.0m
B C
A D
a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00012', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-110-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '若有材料、長度與重量均相同的三支直梁，其橫斷面分別為正方形
圓形深度為其寬度兩倍的矩形。考慮這三個斷面受相同彎矩作用
下，試求三者之最大彎曲應力比。（25分）
a h=2b
a
d
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00001', 'pukao-a677e516', 'pukao-a677e516-moex-114-d4755da2', 'sub-pukao-a677e516-01', NULL, 'essay', '下表為某地區一年內不同道路型態之交通事故資料，請分別計算兩種道
路的事故率與致死率，並判斷那種道路的事故危險度較高，且說明原因。
（25分）
道路類型 行駛總里程（百萬公里） 發生事故數 死亡人數
高速公路 300 90 27
市區道路 100 200 8', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "d665ec1ce77b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "441", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通安全概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00002', 'pukao-a677e516', 'pukao-a677e516-moex-114-d4755da2', 'sub-pukao-a677e516-01', NULL, 'essay', '請說明「行人最大路權」的涵義及其背後的交通安全理念。為何交通安
全教育中此一觀念之宣導對整體用路人有重要意義？試舉實際情境說
明。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "d665ec1ce77b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "441", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通安全概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00003', 'pukao-a677e516', 'pukao-a677e516-moex-114-d4755da2', 'sub-pukao-a677e516-01', NULL, 'essay', '某日於都市路口發生一起機車與小客車碰撞事故。警方到場時，小客車
駕駛主張自己綠燈左轉時，機車闖紅燈直行，但現場並無明顯煞車痕或
行車影像記錄畫面。試問：鑑定人員應如何進行初步事故分析？若後續
取得附近監視器影片，應如何運用以佐證雙方說法？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "d665ec1ce77b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "441", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通安全概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00004', 'pukao-a677e516', 'pukao-a677e516-moex-114-d4755da2', 'sub-pukao-a677e516-01', NULL, 'essay', '請說明在進行道路安全改善成效評估時，常用的量測指標為何。並分析
各指標的優缺點及適用時機。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "d665ec1ce77b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "441", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通安全概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
