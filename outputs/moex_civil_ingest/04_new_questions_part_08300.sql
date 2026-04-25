-- W1.6 questions batch 8300/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-4ece01bd-moex-00061', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-92e63a65', 'sub-pukao-4ece01bd-01', NULL, 'essay', '鋼構橋梁之架設施工，承包商所提送之鋼橋架設安裝計畫書一般至少應
包含那些項目？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "72932d0af031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00062', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-c2c1a05c', 'sub-pukao-4ece01bd-04', NULL, 'essay', '圖示之桁架結構，各桿件之斷面積均為 2000 mm2。試求 AE、AF及 EG
桿件之內力。（25 分）
A B
3m
C D E
3m 3m 4m F
40kN 70kN 4m
G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00063', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-c2c1a05c', 'sub-pukao-4ece01bd-04', NULL, 'essay', '圖示 ACG為剛性桿，由 A點鉸接與兩水平鋼纜 BC及 FG支撐。鋼纜的
斷面積為50 mm2，彈性模數為 200 GPa。若 G點受 300 kN垂直載重作
用，試求 G點之垂直位移。（25分）
F G
1.5m
300kN
B C
45∘
1.5m
A
43830', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00064', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-c2c1a05c', 'sub-pukao-4ece01bd-04', NULL, 'essay', '圖示 AD 梁受外力 P=Q=500 N 作用。試求點 A、C 間的跨距 a，使得
AD梁中彎矩的絕對值盡可能小。（25 分）
P Q
1.0m 1.0m
B C
A D
a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00065', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-c2c1a05c', 'sub-pukao-4ece01bd-04', NULL, 'essay', '若有材料、長度與重量均相同的三支直梁，其橫斷面分別為正方形
圓形深度為其寬度兩倍的矩形。考慮這三個斷面受相同彎矩作用
下，試求三者之最大彎曲應力比。（25分）
a h=2b
a
d
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "de4a790b3579", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00066', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '在一個 Y形網中，按同一等級直接水準測量分別由三個水準路線觀測得
到結點 P 之高程成果如下表所示，試求 P 點高程之最或然值及其中誤
差。（25分）
路線 P點之高程 路線長
1 63.640 m 6.0 km
2 63.655 m 5.0 km
3 63.676 m 4.0 km', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00067', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '試說明對向交互水準測量作業程序、應用時機與可消除那些誤差的影
響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00068', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '如示意圖所示，AE 間為茂密樹林無法通視，應用開放導線分別於
A、B、C、D及 E設站觀測導線之水平距離與右旋角如下表。若已知測
站 A點平面坐標（E , N ）＝（5000.00, 5000.00）且後視 A→N之方位
A A
角為 5°11ʹ40ʺ，試計算 E點平面坐標（E ,N ）及 A→E方位角。（25分）
E E
水平距離
測站 右旋角 示意圖
（m）
A 115°18ʹ20ʺ
N
1,007.60
B 161°24ʹ10ʺ
567.66 A
B C
C 204°50ʹ5ʺ
D
582.24
D 273°46ʹ40ʺ
1,829.36
E
E
43920', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00069', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '若以 n種不同精度之經緯儀測量同一個水平角之觀測量（Observations）
及其權重分別以 L、p , i=1,2,…,n 表示，試計算觀測量最或是值、剩餘
i i
誤差、平均誤差、單位權中誤差及觀測量最或是值中誤差。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00070', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-a777794d', 'sub-pukao-4ece01bd-05', NULL, 'essay', '圖為一靜定梁，尺寸與載重配置如圖所示。試求此梁受力後支承A及支
承 B之垂直反力A 及 B 的大小及方向，並請繪製此梁之剪力圖及彎矩
y y
圖。（25分）
2P 2P w
(=P/L)
A D
B C
2L 2L 2L 2L 4L
A B
y y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "822a86181549", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
