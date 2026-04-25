-- W1.6 questions batch 8075/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-014e6a52-moex-00048', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-4c00feca', 'sub-pukao-014e6a52-04', NULL, 'essay', '試說明對向交互水準測量作業程序、應用時機與可消除那些誤差的影
響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00049', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-4c00feca', 'sub-pukao-014e6a52-04', NULL, 'essay', '如示意圖所示，AE 間為茂密樹林無法通視，應用開放導線分別於
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
43920', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00050', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-4c00feca', 'sub-pukao-014e6a52-04', NULL, 'essay', '若以 n種不同精度之經緯儀測量同一個水平角之觀測量（Observations）
及其權重分別以 L、p , i=1,2,…,n 表示，試計算觀測量最或是值、剩餘
i i
誤差、平均誤差、單位權中誤差及觀測量最或是值中誤差。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "92dc05951f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00051', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '使用某廠牌全站儀分四組觀測相同角度成果如下表所示，假設各組平均
數之權與測回數成正比，試分析該角度的最或是值。（20分）
組 測回數 平均數
1 5 120-15-21
2 3 120-15-23
3 2 120-15-19
4 3 120-15-16', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "05a73b0ab3d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00052', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '水準測量測線長度 k 公里往返閉合差精度要求須在一定之容許範圍，一
般均以a k mm 表示，因需求精度不同而規定不同之 a 值。設測線長
度為2 km時，允許之標準差為±14 mm，在同一標準要求下，當測線長
為 4 km時，則允許之誤差為若干？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "05a73b0ab3d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00053', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '自測站 O向 A、B、C、D四方向作等精度之水平角觀測（如圖所示），
以間接觀測平差求∠AOB、∠BOC、∠COD 的最小平方估計值，試列出
設計矩陣法係數矩陣（觀測方程式順序依序為 l 、l 、l 、l 、l 、l ，
1 2 3 4 5 6
否則本題不計分）。（20分）
A
O
B
C
D
2 1 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "05a73b0ab3d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00054', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '假設隨機變數L、L 、L ，已知其變方協變方矩陣為 1 4 2 ，求
1 2 3
3 2 3
1 5 1
函數 f  L  L  L 的標準差。（20 分）
3 1 2 2 4 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "05a73b0ab3d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-014e6a52-moex-00055', 'pukao-014e6a52', 'pukao-014e6a52-moex-110-83e2996c', 'sub-pukao-014e6a52-05', NULL, 'essay', '如圖閉合水準網中，點 A為已知點，高程為H 10.000m，P、P為高
A 1 2
程未知點。觀測高程差及路線長度分別為：
h 1.352m；S 2km
1 1
h 0.531m；S 2km
2 2
h 0.826m；S 1km
3 3
試以間接觀測平差求各高程差的平差值。（20分）
P
1
P
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:44+00:00", "source_pdf_sha1": "05a73b0ab3d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "439", "s": "2316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('pukao-0489de64-moex-00001', 'pukao-0489de64', 'pukao-0489de64-moex-114-80495972', 'sub-pukao-0489de64-01', NULL, 'essay', '請說明何謂「行人專用時相」。並請詳細說明設置行人專用時相時應考慮
之條件。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:08+00:00", "source_pdf_sha1": "53d02371e5dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "421", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通行政"}'::jsonb, NULL),
  ('pukao-0489de64-moex-00002', 'pukao-0489de64', 'pukao-0489de64-moex-114-80495972', 'sub-pukao-0489de64-01', NULL, 'essay', '在「國家道路交通安全綱要計畫（113-116年）」之駕駛人監理政策面向
中，提到應「建立完善之駕駛人訓練制度、考驗及資格管理制度」。請詳
細說明我國目前在駕駛人監理方面所面臨之問題，並同時提出在該政策
面向可採取之具體策略內容。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:08+00:00", "source_pdf_sha1": "53d02371e5dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "421", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
