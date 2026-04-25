-- W1.6 questions batch 1173/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00028', 'customs-d7421644', 'customs-d7421644-moex-114-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '線上影音伺服器傳送一分鐘的影音串流資料（Streamingdata），每秒有8000
樣本，每一樣本有 24 位元。
該影音串流每一樣本資料有多少個準位（Levels）（計算完整結果）？
（10分）
該影音串流數位化資訊需要多少Mbits（計算至小數點後2位）？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "29155ffd68fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00029', 'customs-d7421644', 'customs-d7421644-moex-114-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '試回答下列問題：
若從m個物件中，每次取出k個物件之各種組合數為c(m,k)，寫出其遞
迴演算法（RecursiveAlgorithm）的虛擬程式碼（PseudoCodes）。（12分）
若兩個整數的最大公因數為gcd(a,b)，寫出其遞迴演算法的虛擬程式碼。
（13分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "29155ffd68fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00030', 'customs-d7421644', 'customs-d7421644-moex-114-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '試條列、圖示和舉例，說明機器學習（Machine Learning）（15 分）與深
度學習（Deep Learning）。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "29155ffd68fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00031', 'customs-d7421644', 'customs-d7421644-moex-114-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '試回答下列關於金融科技（FinTech,Financial Technology）問題：
條列說明何謂金融科技？（15分）
舉例一種應用，並圖示說明之。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "29155ffd68fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00032', 'customs-d7421644', 'customs-d7421644-moex-114-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一台三相同步發電機，以傳輸線路，連接到無限匯流排（InfiniteBus），
該發電機所提供最大有效功率（Active Power）為 0.45 標么值（Per Unit,
簡稱 p.u.）。假設傳輸線路發生故障，導致發電機與傳輸線路間的電抗變
為故障前之 4倍。於故障清除後，可傳輸的最大有效功率是原始故障前最
大有效功率的 70%。請計算此情境下該發電機之臨界清除角度。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "793507700d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00033', 'customs-d7421644', 'customs-d7421644-moex-114-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '某功率因數（Power Factor）滯後的負載，連接於阻抗為R jX 的短程輸
電線路，而該輸電線路的送電端電壓與受電端電壓相等。試計算該輸電線
路的X/R比值，使得於穩態運轉條件下，該線路有最大之傳輸功率。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "793507700d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00034', 'customs-d7421644', 'customs-d7421644-moex-114-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '如圖所示之電力系統單線圖， V = V 1標么值。傳輸線路阻抗為
1 2
j0.05p.u.。如果每個匯流排所吸收之有效功率均為10p.u.，計算流出此二
匯流排的視在功率（ApparentPower）與對應之功率因數。（25 分）
V
10+j15 1
V
2
4+j5 10+j3
S S
1 2
6+j10 14+j8', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "793507700d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00035', 'customs-d7421644', 'customs-d7421644-moex-114-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一個 Y 形連接的三相不平衡負載的相電流分別為I (44 j33)A、
a
I (32 j24)A與I (40 j25)A。請計算相應此情境之正序相電流、
b c
負序相電流與零序相電流。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "793507700d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00036', 'customs-d7421644', 'customs-d7421644-moex-114-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '參考圖一之直流電路，假設R 100k、R 300k、R 200k、
1 2 3
R 400k、E135V，請求出電路中的I 、V 、V 之值。（25分）
4 1 1 2
R R
1 3
I I
1 2
E V R V R
1 2 2 4
圖一
500', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "d973aa0f5ccd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00037', 'customs-d7421644', 'customs-d7421644-moex-114-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '參考圖二之 RLC電路，其中交流電壓源v120 V，其頻率為 f  Hz，
電容C 20F。假設以電壓v為基準相位，電流i 之相位超前電流i 之相
2 1
位120，電流i 之大小為電流i 大小的 2 倍，試求電路中電阻 R 及電感 L
1 2
之值。（25分）
i i i
T 1 2
L
v C
R
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "d973aa0f5ccd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "109", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
