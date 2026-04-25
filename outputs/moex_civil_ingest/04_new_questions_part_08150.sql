-- W1.6 questions batch 8150/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00068', 'pukao-0f640084', 'pukao-0f640084-moex-110-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '某單相變壓器之一次繞組為 2000 匝，而二次繞組為 400 匝。一次繞組
之電阻值為 2 Ω，漏電抗為 8 Ω；而二次繞組之電阻值為0.1 Ω，漏電抗
為 0.5 Ω。二次側接一 10 Ω之電阻負載。假設該變壓器一次繞組端點之
外加電壓為 1200V，若忽略磁化電流，試求出：
該變壓器二次側之端電壓。（18 分）
該變壓器之電壓調整率。（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ead727d2f026", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00069', 'pukao-0f640084', 'pukao-0f640084-moex-110-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '於 690V三相配電系統中，有一台三相感應電動機，於以下非對稱三相
電壓下運轉：V =450∠0°V，V =450∠-90°V，V =900∠-225°V。
a b c
計算此非對稱三相電壓之對稱分量，包含正序電壓V+、負序電壓V-、
a a
與零序電壓 V0 。（15 分）
a
假設此三相感應電動機之正序轉差率為0.05，求出三相感應電動機之
負序轉差率與零序轉差率。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ead727d2f026", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00070', 'pukao-0f640084', 'pukao-0f640084-moex-110-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '某一配電系統由一台變壓器、一台斷路器及輸電線路所組成，以 20 kV
電壓等級，供電給 500 kW 的負載，如圖一所示。變壓器之額定容量為
630kVA，電壓等級為 20/0.4kV。負載的功率因數（PowerFactor，簡稱
PF）為 0.75滯後。若在負載末端加裝進相電容器，使用戶末端的功率因
數提高至0.93 滯後。計算：
由進相電容器提供的無效功率。（8分）
變壓器剩餘之視在功率（ApparentPower）容量。（8分）
流經輸電線路無效功率之下降百分比。（9分）
變壓器 負載
電源 斷路器 輸電線
630 kVA
20/0.4 kV
500 kW
PF=0.75
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ead727d2f026", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00071', 'pukao-0f640084', 'pukao-0f640084-moex-110-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '推導下圖電路之轉移函數 V (s)/V(s)。（5 分）
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
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00072', 'pukao-0f640084', 'pukao-0f640084-moex-110-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '下圖電路V =5V，I=1mA，R =R =2k。電晶體參數：V =0.8V，
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
45050', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00073', 'pukao-0f640084', 'pukao-0f640084-moex-110-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '下圖電路R =12k，R =12k，電晶體參數：g =2mA/V，g =1mA/V。
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
-VSS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00074', 'pukao-0f640084', 'pukao-0f640084-moex-110-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '下圖電路 C=1 nF。
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
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00075', 'pukao-0f640084', 'pukao-0f640084-moex-110-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '下圖電路g =2mA/V，r =20k，R =10k，R =20k，C =20fF，
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
L L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00076', 'pukao-0f640084', 'pukao-0f640084-moex-110-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '圖一為一個單相、15 kVA、60 Hz、2,300/230 V變壓器設計的交付到一
次側等效電路。
若在一次（2,300V）側分別進行短路與開路實驗，試計算瓦特表記錄
到的功率應各為多少瓦？（10 分）
若 此 變 壓 器 二 次 側 負 載 電 壓 為 額 定 230 V ， 負 載 阻 抗 為
Z 3 j1.85 ，試計算此變壓器的效率與電壓調整率（V.R.%）。（15分）
L
+ j6.5
4.4
V 100k j10k Z
1 L
-
2,300:230
圖一、單相變壓器等效電路', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "9781d9187c5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00077', 'pukao-0f640084', 'pukao-0f640084-moex-110-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '圖二為一個三相、220V、接線運轉的感應電動機定子三相繞組示意圖。
若欲以電磁接觸器設計Y 接線啟動，請繪出主電路接線，並說明動
作原理。（15分）
以公式說明，比較以Y 接線啟動與直接以接線啟動對此感應電動
機的啟動電流與啟動轉矩有何差異。（10分）
a a''
b b''
c c''
圖二、三相感應電動機的定子繞組示意圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "9781d9187c5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
