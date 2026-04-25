-- W1.6 questions batch 6452/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00039', 'locality-0f640084', 'locality-0f640084-moex-113-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖四為共源級放大器（common-source amplifier），其中訊號源電阻
R 20k，負載電阻R 10k，電晶體轉導值g 2mA/V，電晶體
sig L m
輸出電阻r 10k，電晶體內部電容C 20fF，C 5fF，採用米勒
o gs gd
等效電路（Millerequivalentcircuit）方法求出 3-dB頻寬（ f ）與零點頻
H
率（ f ）。（20分）
Z
V
O
R
L
R
sig
V
sig
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00040', 'locality-0f640084', 'locality-0f640084-moex-113-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '試以 CMOS 邏輯（CMOS logic）電路實現布林函數Y  ABCD之電
路圖。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00041', 'locality-0f640084', 'locality-0f640084-moex-113-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '磁路結構示意如下圖，鐵心的截面積為0.8cm2、平均長度為10cm、
導磁係數為100 、  4107H/m、線圈#1 匝數為 200 匝、線圈#2
o o
匝數為 100 匝、電流i (t)  4.0sin(1000t)A，忽略鐵心的磁飽和及磁滯
1
現象。計算線圈#2 穩態開路電壓v (t)的有效值。（20分）
2
鐵心
i(t)
1
e(t) v (t)
～ 2
1
線圈#2
線圈#1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "ef6f4057c534", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00042', 'locality-0f640084', 'locality-0f640084-moex-113-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台單相變壓器額定為 150kVA、2.4kV：240V，等效電路如下圖，參
數單位以變壓器額定為基值的標么（perunit）：R 0.02、jX  j0.04、
eq eq
R 60、jX  j40。負載端電壓為220V、實功率（平均功率）為100kW、
C m
功率因數為 落後。計算此變壓器高壓側電壓 ˆ 及變壓器效率。
0.80 V
H
（20分）
jX R
eq eq
ˆ Iˆ
I
H L
～ ˆ jX R ˆ 負載
V m c V
H L
高壓側 低壓側', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "ef6f4057c534", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00043', 'locality-0f640084', 'locality-0f640084-moex-113-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台三相、Y接、60 Hz、4極、線電壓為380 V、120 kVA的圓筒型同
步發電機，短路比（short-circuitratio）SCR1.25，忽略電樞電阻及損失。
在額定電壓、頻率操作，且其反電動勢與額定電壓相等，此發電機輸出
總實功率為 100 kW，計算發電機的轉速、輸出的總視在功率、總虛功
率。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "ef6f4057c534", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00044', 'locality-0f640084', 'locality-0f640084-moex-113-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台三相、Y接、60Hz、線電壓為 380V、6極的感應電動機，等效至定
子側的每相等效電路如下圖，參數為 R 0.12 、 R 0.15 、
1 2
jX  jX  j0.8、jX  j20。採用降壓起動方法，起動時其電源頻
1 2 m
率為 60Hz、線電壓為 100V，計算起動時電動機的線電流、起動轉矩。
（20分）
R jX jX
1 1 2
R
jX 2
m s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "ef6f4057c534", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00045', 'locality-0f640084', 'locality-0f640084-moex-113-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台並激式（shunt）直流電動機，電樞電阻為0.5 Ω，激磁場電阻為60 Ω。
輸入電壓為 120 V，輸入電流（含電樞電流及激磁場電流）為 20A，轉
速為 1200rpm，忽略鐵心及機械損失，且不考慮電樞反應。若輸入電壓
調整為 60V，其輸出轉矩為 6N-m，計算此電動機的輸入電流、反電動
勢、轉速。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "ef6f4057c534", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00046', 'locality-0f640084', 'locality-0f640084-moex-113-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '如圖 1所示之電路，請求：
除了電阻 R外其他電路之戴維寧等效電路及諾頓等效電路。（15 分）
電阻 R為何值時可自電路吸收到最大功率，並求此最大功率值。（5 分）
i 2 Ω  4 Ω
1
v 5i A 20 Ω v R
12V 1 1 1
V
5
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00047', 'locality-0f640084', 'locality-0f640084-moex-113-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '如圖 2 所示之電路中，若開關未關上前電容器及電感器之初值分別為
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
34470', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00048', 'locality-0f640084', 'locality-0f640084-moex-113-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '如 圖 3 所 示 之 Y  三 相 平 衡 系 統 中 ， 其 電 源 之 線 電 壓 為
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
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "577259da791a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
