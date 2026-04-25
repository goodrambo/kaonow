-- W1.6 questions batch 6950/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-8ec6300d-moex-00037', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '一有損雙導線傳輸線，其單位長度串聯電感為 L，單位長度串聯電阻為
R，單位長度並聯電容為 C，單位長度並聯電導為G，電壓相量為V(z)、
電流相量為I(z)。（每小題 5分，共 25分）
試繪出該傳輸線一小段Δz之等效電路圖。
應用克希荷夫（Kirchhoff）電壓定律及電流定律推導時間諧波（Time
harmonic）傳輸線方程式。
推導電壓相量V(z)及電流相量I(z)各自滿足的波動方程式。
求解電壓相量V(z)及電流相量I(z)。
推導傳播常數及特徵阻抗Z 與傳輸線分布式參數（R,L,G,C）的關係。
0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "0f43beaaadaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00038', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '如圖 1所示之電路，請求：
除了電阻 R外其他電路之戴維寧等效電路及諾頓等效電路。（15 分）
電阻 R為何值時可自電路吸收到最大功率，並求此最大功率值。（5 分）
i 2 Ω  4 Ω
1
v 5i A 20 Ω v R
12V 1 1 1
V
5
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00039', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '如圖 2 所示之電路中，若開關未關上前電容器及電感器之初值分別為
v (0)0V及i (0)0A，試求開關關上後t 0之v (t)及i (t)。（20分）
C L C L
1 1H
S
t  0 i
+ L
+
1V _ v 1F 1
C
_
圖 2
34470', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00040', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '如 圖 3 所 示 之 Y  三 相 平 衡 系 統 中 ， 其 電 源 之 線 電 壓 為
v (t)220 2cos(120t)V，負載每相之阻抗為Z 4 j3，請求：
ab P
線電流i (t)。（5 分）
a
三相負載所吸收之有效功率。（10 分）
電源端之功率因數。（5分）
v
_ an
+ a i A
a
Z
P
_ v
bn+ b i
n b Z
B
P
Z
P
v
_ cn
+ c i C
c
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00041', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '如圖 4所示之電路中，若v (0)  0 V，v  6u(t) V，其中u(t)為單位步
C i
階函數（unitstepfunction），求t  0之後的v 。（20 分）
o
4
4
1/4F 5
- +
vv
3 Cc
v - 10
i
-
+ v
o
+
圖 4
34470
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00042', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '如圖 5 所示之耦合電路，其兩電感器之耦合電感值為 H，電源電壓
2
v (t) 110 2cos2t V，試求穩態電流i (t)及i (t)。（20分）
s 1 2
1 Ω  i i
1 2
2Ω
4H
圖 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00043', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '請求下列微分方程式的解：
y4y 1xsinx, y(0)0, y(0)0
d2y dy
y , y （15分）
dx2 dx
0.9 0.1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00044', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '設A 。
0.2 0.8
求解A的特徵值（eigenvalue）與對應的特徵向量（eigenvector）。（4 分）
求解A2的特徵值與對應的特徵向量。（4 分）
解A limAn。（7分）
n
dx', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00045', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '請利用留數（residue）計算 。（10分）
0 (1 x2)2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00046', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '設X與Y的聯合機率密度函數（jointprobabilitydensityfunction）是
f (x,y)2e(xy), 0 x, 0 y
XY
=0, x0 或 y0
其中0。設Z  X Y。
求Z的期望值（mean）。（5 分）
求Z的累積分布函數（cumulativedistribution function）。（5分）
34570', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
