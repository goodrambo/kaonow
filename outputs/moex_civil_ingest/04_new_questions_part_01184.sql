-- W1.6 questions batch 1184/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00138', 'customs-d7421644', 'customs-d7421644-moex-111-f9fb6a06', 'sub-customs-d7421644-06', NULL, 'single_choice', '①escaped ②excluded ③participated ④persuaded', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00139', 'customs-d7421644', 'customs-d7421644-moex-111-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '假設用 2 的補數表示式（two''scomplementrepresentation），使用八個位元
來表示整數。寫出所能表示的最大的二進位數字，以及其對應的十進位
的數值。（10分）寫出所能表示的最小（可能為負數）的二進位數字，
以及其對應的十進位的數值。（10 分）寫出等於十進位數字 0的二進位
數字。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "c08f5a521add", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1411", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00140', 'customs-d7421644', 'customs-d7421644-moex-111-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '若使用兩種不同電位分別代表0 以及 1，在沒有雜訊的頻道傳送資料，
傳送頻率為 2000 Hz，則最高的傳送速率（bit rate）為何？請說明計算
過程，否則不予計分。（10分）
若使用 4 種不同電位，在沒有雜訊的頻道傳送資料，傳送頻率為 2000
Hz，則最高的傳送速率為何？請說明計算過程，否則不予計分。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "c08f5a521add", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1411", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00141', 'customs-d7421644', 'customs-d7421644-moex-111-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '從資料結構的課程至少可以學習到陣列、堆疊、佇列、樹狀結構等，請分
別舉例說明這些結構適用的場合。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "c08f5a521add", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1411", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00142', 'customs-d7421644', 'customs-d7421644-moex-111-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '請說明結構化程式（structuredprogramming）設計的意義，並任舉至少三
種基本的控制程式流程結構的意義。另說明如果程式中不使用 go-to 敘述
來控制程式的執行順序，是否無法達成某些功能？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "c08f5a521add", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1411", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00143', 'customs-d7421644', 'customs-d7421644-moex-111-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一雙回路之三相輸電線，由 S 端送電至 R 端，單線圖如圖一(a)所示，每
個導體直徑為 2 cm，若導體排列方式如圖一(b)所示，回路 2 的 S 端接地
且 R端開路，回路 1 三相平衡電流有效值為 500A，忽略導線電阻。
求回路 2的 R端 A相電壓有效值。（10分）
若回路 2的 R端接地，試求回路 2 的 A相電流有效值。（10 分）
60km A A
1 2
回路1 6m 6m
S R
B B
回路2 1 2
6m 6m
8m
圖一(a) C C
1 2
20m
圖一(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00144', 'customs-d7421644', 'customs-d7421644-moex-111-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一電力系統單線圖如圖二所示：
試以變壓器容量及線路電壓為基準，繪出標么等效電路。（10分）
試以 Gauss法求出經 2 次疊代後的 V 實際值（V）。（10分）
2
E1
10MVA
13.8△-138YkV
Xl=0.1
|V1|=138kV V2
ZL= j476 Ω
P2=8MW
Q2=6MVAR
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00145', 'customs-d7421644', 'customs-d7421644-moex-111-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '某三相 60 Hz電力系統，以線路側 100 MVA、115 kV爲基值計算系統元
件各相序阻抗標么值如圖三(a)單線圖所示。若忽略故障前之電流，並假設
發電機電動勢爲1.00pu。
試繪出正序、負序、零序電路圖。（6分）
若匯流排 A 相發生阻抗接地故障，如圖三(b)所示，試求短路電流 I 實
f
際值（A）。（7分）
若匯流排 BC 相發生短路故障，如圖三(c)所示，試求短路電流 I 實際
f
值（A）。（7分）
A B C A B C
Y Δ-Y
I If
f
Zf=j0.1
X1=X2=10% X1=X2=X0=5%
X0=3%
圖三(a) 圖三(b) 圖三(c)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00146', 'customs-d7421644', 'customs-d7421644-moex-111-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一個電力系統具三匯流排，如圖四所示。在基值容量爲 1000MVA時，各
機組/負載的參數如下表所示：
機組/負載 發電量/用電量 頻率特性
機組 1 400 MW 速率調整率 R =6%
1
機組 2 600 MW 速率調整率 R =4%
2
負載 1 300 MW 頻率增加1%，負載增加 1.5%
負載 2 300 MW 頻率增加1%，負載增加 1.2%
負載 3 400 MW 頻率增加1%，負載增加 0.8%
所有機組並聯運轉在標稱頻率 60 Hz，若負載 3 突然增加 100 MW，且兩
部機組均有能力進行調整，試求：
系統穩態工作頻率。（8 分）
P 新的傳送功率。（6分）
13
P 新的傳送功率。（6分）
23
機組1 機組2
負載1 負載2
P P
13 23
負載3
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00147', 'customs-d7421644', 'customs-d7421644-moex-111-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '試繪接線圖，並說明工作原理：
試繪零相比流器（ZCT）之接線圖，並說明其工作原理。（10分）
試繪接地比壓器（GPT）之接線圖，並說明其工作原理。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
