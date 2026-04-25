-- W1.6 questions batch 5196/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00219', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '某電路圖(a)及其等效電路圖(b)，如下圖所示，試計算：
該電路中圓形及菱形符號各是屬於那一種電源？（5分）
電路圖(a)中 v 、i 、i 及 i 之值？（8分）
1 2 a b
等效電路圖(b)中 R 、R 及 v 、i 之值？（7分）
a b a 1
5 Ω
i i
8Ω 2Ω 2 R 1
a
v
1
v
a
20Ω
2i 2i R
6V a 12Ω 24Ω 6V a b
i i
a b
(a) (b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00220', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '某開關電路如下圖所示，此開關在時間 t=0 前已經關閉很長一段時間，
試計算：（hint：ν(t)=V +(ν(0)V )et/(RC)）
oc oc
該電路中電容器兩端之初始電壓 v(0)、儲存於電容器之初始能量 W(0)
及開關打開後之穩態電壓 V 值？（10分）
oc
該電路在時間t>0 後之時間常數（timeconstant）值？（5 分）
該電路在時間t>0 後電容器之響應函數 ν(t)？（10 分）
該電路中電容器之能量釋放至原初始能量之25%所需要的時間？（5分）
t>0
20kΩ
7.5mA 80kΩ 0.2mF (t) 50kΩ
ν
37140', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00221', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '某具有弦波輸入之電路圖如下圖所示，此開關在時間 t=0 前已經關閉很
長一段時間，試計算該電路中之流經電容器之電流 i 值。（20分）（hint：
x
可將電路之元件轉換至頻域）
10Ω 1H
i
x
0.1F 5H
20cos4tV 2i
x', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00222', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '下列所示(a)、(b)及(c)三個電路為運算放大器（OPA）加上 RC選頻網路
所組合而成之主動濾波器電路，請分別計算三個電路之輸入 V 與輸出 V
i o
之轉移函數及截止頻率，並說明其為何種濾波器電路及其原因？（30 分）
R
C R
V 1
i V
i
A V A V
o o
R
R 1
C V
i
R R A
1 1 V
R o
R R
2 2 C
(a) (b) (c)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00223', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-bd2490ec', 'sub-heelevel3-8ec6300d-06', NULL, 'essay', '求y8xy+16y1+e4x的通解（generalsolution）。（15分）
求 z2dz ti2t  1 （10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00224', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-bd2490ec', 'sub-heelevel3-8ec6300d-06', NULL, 'essay', '，其中 ，0 t 。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00225', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-bd2490ec', 'sub-heelevel3-8ec6300d-06', NULL, 'essay', '一副標準52張的撲克牌，隨意抽出3張。求其為同花（3張為同一花色）的機率。
（5 分）
5 4 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00226', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-bd2490ec', 'sub-heelevel3-8ec6300d-06', NULL, 'essay', 'A 12 11 12，
4 4 5
求其行列式值（determinant）。（5 分）
求特徵值（eigenvalues）與其對應的特徵向量（eigenvectors）。（10分）
求 P，使P1AP為 A 之對角化（diagonalized）矩陣 （5 分）
。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00227', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-bd2490ec', 'sub-heelevel3-8ec6300d-06', NULL, 'single_choice', '22實數矩陣Q的特徵值為2、3。若定義矩陣跡（trace）為對角線元素相加，則Q的跡（trace） 為何值？', '["5", "3", "2", "5"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": "375d475f31ab", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00228', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-bd2490ec', 'sub-heelevel3-8ec6300d-06', NULL, 'single_choice', '令 T 和 S 為R3映射至R2的線性轉換（linear transformation），其中T(x,y,z)(xy,zy)， S(x,y,z)(xz,xy)。下列向量何者屬於TS的零空間（nullspace）？', '["(6,2,10)", "(3,2,5)", "(3,2,5)", "(6,2,10)"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": "375d475f31ab", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
