-- W1.6 questions batch 6587/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-4ece01bd-moex-00041', 'locality-4ece01bd', 'locality-4ece01bd-moex-113-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '鋼筋混凝土矩形梁斷面為b30 cm，h 50 cm，d43cm，在使用彎矩
2
M 5 tm作用下，配置 3-D25 拉力鋼筋，混凝土 f 280kgf/cm ，鋼
c
筋降伏強度 2。試計算混凝土最大壓應力  （單位：
f 4200kgf/cm f
y c,max
kgf/cm2）。（D25之A 5.07 cm2，n 值採計至小數點後一位）（25分）
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "51c3b8810232", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00042', 'locality-4ece01bd', 'locality-4ece01bd-moex-113-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '請說明規範為何要訂定鋼筋混凝土梁的最小鋼筋量A 規定；此外，矩
s,min
形斷面梁的最小鋼筋量為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "51c3b8810232", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00043', 'locality-4ece01bd', 'locality-4ece01bd-moex-113-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '一鋼筋混凝土單筋矩形梁，梁寬b30 cm，梁深h 60 cm，有效深度
d 53 cm。主筋配置 4-D25，箍筋配置D13@20 cm。若斷面受到靜載剪
力V 8 tf以及活載剪力V 9 tf，試檢核斷面剪力強度是否足夠？已
D L
2 2
知混凝土抗壓強度 f 280kgf/cm ，箍筋降伏應力 f 2800kgf/cm ，
c y
2
D13 之A 1.27 cm 。（25分）
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "51c3b8810232", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00044', 'locality-4ece01bd', 'locality-4ece01bd-moex-113-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '某一斷面為50 cm50 cm之正方形鋼筋混凝土一般橫箍筋短柱，試依規
範規定求此柱的最大與最小縱向主筋量及最少縱向主筋根數。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "51c3b8810232", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00045', 'locality-4ece01bd', 'locality-4ece01bd-moex-112-32aa8788', 'sub-locality-4ece01bd-07', NULL, 'essay', '某一方形基礎2m2m，基礎深度D =3 m，座落之土壤有效剪力強度參
f
數分別為 ϕ''＝30˚，c'' =10 kPa；單位重為 18 kN/m3，請計算極限承載力
（ultimate bearing capacity）及容許承載力（allowable bearing capacity）
（註ϕ''＝30˚之N =37,N =22,N =19，採用安全係數FS＝3作答）。（25分）
c q γ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "9e9650ecc5df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "331", "s": "2201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00046', 'locality-4ece01bd', 'locality-4ece01bd-moex-112-32aa8788', 'sub-locality-4ece01bd-07', NULL, 'essay', '統一土壤分類法中使用的符號（symbol）C、M、L、H、O 分別代表什
麼意思？必須符合那些條件？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "9e9650ecc5df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "331", "s": "2201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00047', 'locality-4ece01bd', 'locality-4ece01bd-moex-112-32aa8788', 'sub-locality-4ece01bd-07', NULL, 'essay', '某土壤進行 CU 三軸試驗，獲得下表數據，請求取此一土壤的有效摩擦
角及有效凝聚力（effectivefrictionangleand cohesion）。（25分）
試體編號 圍壓 軸差應力 破壞時試體孔隙水壓力
S-1 30 kN/m2 80 kN/m2 10 kN/m2
S-2 60 kN/m2 120 kN/m2 20 kN/m2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "9e9650ecc5df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "331", "s": "2201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00048', 'locality-4ece01bd', 'locality-4ece01bd-moex-112-32aa8788', 'sub-locality-4ece01bd-07', NULL, 'essay', '請詳述執行建築物基礎基地調查，應如何決定調查範圍、點數與深度。
（提示：可依內政部「建築物基礎構造設計規範」或對此一主題的學識、
經驗作答）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "9e9650ecc5df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "331", "s": "2201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00049', 'locality-4ece01bd', 'locality-4ece01bd-moex-112-26a322a4', 'sub-locality-4ece01bd-08', NULL, 'essay', '水準儀有那些主軸及各軸間關係為何？試繪圖說明之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "995862c6b3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "331", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "平面測量與施工測量", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00050', 'locality-4ece01bd', 'locality-4ece01bd-moex-112-26a322a4', 'sub-locality-4ece01bd-08', NULL, 'essay', '如圖四個水準點 A、B、C、D，由 A 點開始施測水準測量，點與點間之
高程差分別為-25.633 m、+37.457 m、+43.213 m及-55.026 m，點與點間
之距離為4.0km、6.0km、5.0km及3.0km，A點高程為534.596m，請
計算平差後的各點高程。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "995862c6b3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "331", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "平面測量與施工測量", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
