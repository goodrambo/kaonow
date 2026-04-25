-- W1.6 questions batch 2409/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-0f640084-moex-00066', 'disabled-0f640084', 'disabled-0f640084-moex-113-61c13555', 'sub-disabled-0f640084-06', NULL, 'essay', '已知一弛緩振盪器（RO，如圖四所示）之電路參數：R =22k、R =60k、
1 2
R =18 k且 C = 0.022 F。試求：
3
此電路的振盪頻率(f)值。另當輸出頻率為 10 kHz 時，求此 RO 所需之
r
阻抗(R )值。（15 分）
1
假設此 RO 中的比較器輸出為10 V，求其三角波之振幅(V 與 V )
UTP LTP
值。（10分）
C
R
1
V
out
R
2
R
3
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "76c94723423b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "311", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00067', 'disabled-0f640084', 'disabled-0f640084-moex-113-61c8fe92', 'sub-disabled-0f640084-07', NULL, 'essay', '在圖一電路中，試求出 a-b 兩端之戴維寧（Thevenin）等效電路：E 及
Th
R 。（25 分）
Th
2
a
6 6
12V 12V
6
2 2
12V
b
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "60143d8f9c85", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "311", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00068', 'disabled-0f640084', 'disabled-0f640084-moex-113-61c8fe92', 'sub-disabled-0f640084-07', NULL, 'essay', '在圖二電路中，當 t>0 以後，試求出 v(t)。（25分）
t=0
1H
3A 10 v 5 4u(t)A
4F
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "60143d8f9c85", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "311", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00069', 'disabled-0f640084', 'disabled-0f640084-moex-113-61c8fe92', 'sub-disabled-0f640084-07', NULL, 'essay', '在圖三電路中，試求出閉迴路增益 v /v。（25 分）
o i
R
2
R /2 R /2
1 1
v R
i G
− −
R /2 R /2 + v
+ 1 1 R +o
2
−
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "60143d8f9c85", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "311", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00070', 'disabled-0f640084', 'disabled-0f640084-moex-113-61c8fe92', 'sub-disabled-0f640084-07', NULL, 'essay', '在圖四交流電路中，v =10 cos4t Vandv =20 cos(4t–30) V，試求出 i 及
1 2 1
i 。（25 分）
2
1H 1H
1 1
v 1F v
1 i i 2
1 2
1
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "60143d8f9c85", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "311", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00071', 'disabled-0f640084', 'disabled-0f640084-moex-112-bd2490ec', 'sub-disabled-0f640084-03', NULL, 'essay', '試利用拉氏轉換（Laplacetransform）求解：（25分）
10sin2t, 0<t<1
y''''+2y''+2y= ; y 0 =1, y'' 0 =-5,
0, t≥1
2
dy d y
 ( ) ( )
其中 y'' ， y'''' 。
dt dt2
≜ ≜
0 0 -2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "ffd96c3a291a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00072', 'disabled-0f640084', 'disabled-0f640084-moex-112-bd2490ec', 'sub-disabled-0f640084-03', NULL, 'essay', '令矩陣 A= 1 2 1 。
1 0 3
求A的反矩 陣 A-1（inverse matrix of A）。（5分）
求 的所有特徵值（eigenvalues）。（6分）
求矩陣 P與 D，使得 D -1AP為一對角矩陣（diagonal matrix）。
A
（8 分）
= 
求 A13。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "ffd96c3a291a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00073', 'disabled-0f640084', 'disabled-0f640084-moex-112-bd2490ec', 'sub-disabled-0f640084-03', NULL, 'single_choice', '求解線性方程組：x+y+z=3與x+2y-z=4之未知數x,y與z。下列敘述何者錯 誤？', '["該線性方程組有無限多組解", "[x,y,z]T=[2,1,0]T為該線性方程組之一組解", "[x,y,z]T=[-1,3,1]T為該線性方程組之一組解", "該線性方程組解集合之維度是2 A A -1 1 -1 0 1 0"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "ffd96c3a291a", "answer_pdf_sha1": "3d55594787ea", "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1607", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00074', 'disabled-0f640084', 'disabled-0f640084-moex-112-bd2490ec', 'sub-disabled-0f640084-03', NULL, 'single_choice', '矩陣 M = 11 12 ，其中A = ，A = ，A = ， A A 11 0 1 12 0 0 21 0 0', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "ffd96c3a291a", "answer_pdf_sha1": "3d55594787ea", "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1607", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00075', 'disabled-0f640084', 'disabled-0f640084-moex-112-bd2490ec', 'sub-disabled-0f640084-03', NULL, 'single_choice', '22', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "ffd96c3a291a", "answer_pdf_sha1": "3d55594787ea", "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1607", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 21, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
