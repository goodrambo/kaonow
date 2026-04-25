-- W1.6 questions batch 8715/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-acfc4025-moex-00265', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '推導下圖電路之轉移函數 V (s)/V(s)。（5 分）
o i
當下圖電路之直流增益為 60 dB、3-dB 頻率為 10 kHz 且輸入阻抗為
200 ，求算 R 、R 、C 。（15分）
1 2 1
R
2
C
1
R
1
V
i V
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00266', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '下圖電路V =5V，I=1mA，R =R =2k。電晶體參數：V =0.8V，
DD D1 D2 tp
k ’(W/L)=4 mA/V2，忽略通道調變效應。
p
當 v =v =1V，求算 v 。（8分）
G1 G2 S
假設電流源 I所需最小跨壓為0.8V，求算此電路之輸入電壓共模範圍
（inputcommand-mode range）。（12 分）
V
DD
I
v
S
v M M v
G1 1 2 G2
v v
D1 D2
R R
D1 D2
|
45050', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00267', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '下圖電路R =12k，R =12k，電晶體參數：g =2mA/V，g =1mA/V。
D L m1 m2
當 v 短路時，推導小訊號增益G =v /v 並求算其值。（10 分）
2 v O 1
推導差模增益A =v /(v v )並求算其值。（10分）
d O 1 2
VDD
R
D
vO
v1 M M v R
1 2 2 L
I
-VSS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00268', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '下圖電路 C=1 nF。
畫出 v 與 v 的穩態波形並標註相關電壓大小。（5 分）
C O
當 v 震盪頻率為 100 kHz 且責任週期（duty cycle）為 70%時，求算
O
R 與 R 。（15分）
A B
VCC
RA R
1 Comparator1
R Q vO
RB
M1 R
1
vC
C S Q
R Comparator2
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00269', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '下圖電路g =2mA/V，r =20k，R =10k，R =20k，C =20fF，
m o sig L gs
C =5 fF，C =15 fF。
gd L
求算零點頻率。（10分）
求算 3-dB頻率。（10分）
v R C
sig sig gd
v C g v r
gs gs m gs o
v
o
R C
L L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00001', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-114-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '忽略繩索的質量，若兩艘拖拉船（A和 B）將貨船C拖往正 x軸的方向，
F 和 F 的合力 F 方向必須指向正 x 軸的方向，而且作用力 F 必須為
A B R B
最小值。F =6 kN。繪出自由體圖，再求出 F 和 F 的大小以及角度 θ。
A R B
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:33+00:00", "source_pdf_sha1": "eca87be99a86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "449", "s": "2712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00002', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-114-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '忽略摩擦及滑輪與繩索的質量，繪出物塊 B的自由體圖，求出質量 4.5 kg
的物塊 B下降時的加速度，以及繩索的張力。物塊 A的質量為 2.5 kg，
重力加速度為 9.81 m/s2。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:33+00:00", "source_pdf_sha1": "eca87be99a86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "449", "s": "2712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00003', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-114-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '忽略軸環和桿件之間的摩擦及彈簧的質量，質量3.5 kg 的軸環在 A處的
速度為向下5 m/s。若彈簧未變形的長度為1 m，彈簧常數 k=35 N/m，
求在 C處（y=2 m）時軸環的速度。重力加速度為 9.81 m/s2。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:33+00:00", "source_pdf_sha1": "eca87be99a86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "449", "s": "2712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00004', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-114-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖表示一個等截面的橫樑（prismaticbeam）及其受力狀態，忽略樑的
質量，A處用銷接（pin）結構支持，B為滾柱（roller）支持。請繪製所
示樑和載重的剪力圖（shear diagram）和彎矩圖（bending moment
diagram），並求剪力的最大絕對值和彎矩的最大絕對值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:33+00:00", "source_pdf_sha1": "eca87be99a86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "449", "s": "2712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00005', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-114-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '金屬粉末冶金（powdermetallurgy）的均壓壓製（isostaticpressing）可以
改善傳統壓製（pressing）的限制，請提供二種均壓壓製形式，並詳細說
明其特色及優缺點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:33+00:00", "source_pdf_sha1": "16d83d963969", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "449", "s": "2711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
