-- W1.6 questions batch 4576/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00036', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '某三相、Y接線、220 V、8極、60 Hz的感應電動機，忽略激磁電抗及
鐵損等效電阻的等效至定子側每相電路如圖二所示，s 表示滑差率、
R  0.22、R  0.18、X  1.10、X  1.40。此感應電動機在
1 2 1 2
額定電壓、頻率操作，計算下列問題：（每小題 10 分，共 20分）
起動電流及功率因數。
最大電磁轉矩及其對應的轉速。
R jX jX
1 1 2
I
1 R
～V 2
1 s
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "7cc41d84bf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00037', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '如圖一，該開關已閉合一段長時間後，於時間為 t=100sec時，突然開關
打開（開路），請計算回答下列問題：
請計算開關打開（開路）前、後瞬間，累積於電容兩端的電荷量（單
位：庫倫）。（6分）
請計算開關打開（開路）前瞬間之電感電流i (t 100sec)。（6分）
L
請計算開關打開（開路）後瞬間之電感電壓v (t 100sec)。（6分）
L
請計算開關打開（開路）後，消耗在 5 Ω電阻之總能量（單位：焦耳）。
（7 分）
00..55FF
v t110000sseecc
C
44 Ω
2200VV 00.4.4HH v 55 Ω
L
i
L
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00038', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '如圖二，可變電阻R 連接於a、b兩端點，虛線內電路之雙埠電路表示式為
L
V  A BV
1  2
I C D I
1 2
請計算a、b兩端點之戴維寧等效電阻。（6分）
請計算a、b兩端點之戴維寧等效電壓。（6分）
調整可變電阻R ，使可變電阻溫度最高，請計算可變電阻R 的消耗功
L L
率。（6 分）
請計算參數 B（含單位）。（7分）
a
22Ω 22 Ω I I 66 Ω
1 2
1166VV 44 Ω V R
V 2 L
1
b
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00039', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '如圖三，該開關已開路一段長時間後，於時間為 t=0sec時，突然開關閉
合，記錄到之電流i (t 0sec)可用下列式子表示，請計算回答下列問題：
S
i (t 0)k cos(10t)k sin(10t)k ekk4tt (V)
4
S 1 2 3
請計算係數k 。（6 分）
1
請計算係數k 。（6 分）
2
請計算係數k 。（6 分）
3
請計算係數k 。（7 分）
4
tt=00sseecc
00.4.4Ω
0.01.F1F
v 22 Ω
i C
S i
C
10cos(10t)
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00040', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '如圖四，連接於 n、N 兩端點之支路電流為零安培，方塊內為功率因數
0.5 落後負載，請計算回答下列問題：
請計算方塊內負載之平均消耗功率。（8分）
請計算各理想電阻 R的平均消耗功率。（8分）
請計算各理想電感 L的平均消耗功率。（9分）
L R
116600ccooss((440000t)t)
R L
2
116600ccooss((440000tt )
3 00AA
n N
2
116600ccooss((440000tt )
3
PF0.5(落後)
2200ccooss((440000tt+))
圖∅ 四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00041', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bd2490ec', 'sub-heelevel3-0f640084-06', NULL, 'essay', '求yy''''(y'') 的通解（generalsolution）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00042', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bd2490ec', 'sub-heelevel3-0f640084-06', NULL, 'essay', '求 zdz，其中c代表複數平面上逆時針方向繞一圈的單位圓（圓點為圓心
c
且半徑為1的圓）。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00043', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bd2490ec', 'sub-heelevel3-0f640084-06', NULL, 'essay', '求平面2x y2z 1與平面x y 2之夾角（0900）。（10分）
2 0 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00044', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bd2490ec', 'sub-heelevel3-0f640084-06', NULL, 'essay', 'A 1 0 2 ， 求 特 徵 值 （ eigenvalues ） 與 其 對 應 的 特 徵 向 量
0 0 3
（eigenvectors）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00045', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bd2490ec', 'sub-heelevel3-0f640084-06', NULL, 'single_choice', '二階微分方程y''''y''12y2sinh2(x)，初始值未知，試問其全解（通解加特解）為何？', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": "0e25a0e0b0f7", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
