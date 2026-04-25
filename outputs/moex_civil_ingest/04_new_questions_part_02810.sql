-- W1.6 questions batch 2810/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-acfc4025-moex-00202', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-6fd7282b', 'sub-disabled-acfc4025-07', NULL, 'essay', '如圖二所示電路：
試求出 a-b 端點之戴維寧（Thevenin）等效電路，須畫出等效電路。
（20分）
若 a-b端點接上一個負載電阻R ，試求電阻R 為何值時，電阻R 可消
L L L
耗最大功率？並求被消耗的最大功率值？（10 分）
12
5  8
a
72V 20
b
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "0d2d54d89768", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00203', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-6fd7282b', 'sub-disabled-acfc4025-07', NULL, 'essay', '如圖三所示電路，電路中的開關S 已經關上很長一段時間，且在t 0時被
打開。試求在t 0時，電容器儲存的初始能量、t 0時的v(t)的數值表示
式及t 0時電阻 50 kΩ所消耗的能量？（30 分）
2200kkΩ SS
tt==00
+
7.75.5mmAA 8800kΩk 0.04.4μμFF vv((tt)) 5500kΩk
_
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "0d2d54d89768", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00204', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-6fd7282b', 'sub-disabled-acfc4025-07', NULL, 'essay', '如 圖 四 所 示 電 路 ， 其 中 電 壓 源 v (t)8sin(2t30)(V) ， 電 流 源
s
i (t)cos2t(A)。試求電流i (t)、2 Ω電阻所消耗的平均功率、電流源i (t)
s o s
所提供的複數功率？（30分）
00..2255FF 22HH
2  1 H
2Ω 1H
i (t)
io(t)
o
v (t)) + 0.5 F i (t)
_ 0.5F s
s
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "0d2d54d89768", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00205', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '透過下列那一種機制，可讓記憶體和硬碟之間的大量資料轉移的工作，不 需要依賴中央處理器去逐筆處理？', '["I/O映射I/O（I/O-mappedI/O）", "記憶體映射I/O（memory-mappedI/O）", "直接記憶體存取（directmemoryaccess）", "快取記憶體（cache）"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00206', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '某一處理器的指令運算碼（operationcode）長度為7個位元，該運算碼最 多可解碼出幾種不同的指令？', '["7", "28", "64", "128"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00207', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '下列技術，何者可以協助電腦系統實現虛擬記憶體？', '["管線（Pipeline）", "分頁（Paging）", "推測執行（Speculativeexecution）", "快取（Caching）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00208', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '將十進制含有小數點的數字0.625用二進制表示，答案為：', '["0.10100", "0.11001", "0.11010", "0.11011"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00209', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '將三進位數值(2012) 轉換為九進位數值表示，下列何者正確？ 3', '["(65)", "(67)", "(52)", "(81)"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00210', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '9 9 9', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 9, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL),
  ('disabled-acfc4025-moex-00211', 'disabled-acfc4025', 'disabled-acfc4025-moex-111-156cbda0', 'sub-disabled-acfc4025-01', NULL, 'single_choice', '若要用同樣數量的位元來描述100種不同狀態中的任一狀態，則至少要用 多少個位元才足夠？', '["5", "6", "7", "8"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:02+00:00", "source_pdf_sha1": "19302b37a76b", "answer_pdf_sha1": "ee1da828a2c7", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "407", "s": "1413", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
