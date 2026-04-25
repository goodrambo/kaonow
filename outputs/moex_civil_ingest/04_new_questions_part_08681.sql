-- W1.6 questions batch 8681/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-8ec6300d-moex-00264', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '下圖電路V =5V，I=1mA，R =R =2k。電晶體參數：V =0.8V，
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
45050', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00265', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '下圖電路R =12k，R =12k，電晶體參數：g =2mA/V，g =1mA/V。
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
-VSS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00266', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '下圖電路 C=1 nF。
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
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00267', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '下圖電路g =2mA/V，r =20k，R =10k，R =20k，C =20fF，
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
L L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00001', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-112-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '圖一之結構，水平力800N作用於A點，使得AC桿產生1000N的壓力，
則AB桿及AC桿之夾角？又AB桿的內力F ？（25分）
AB
B
20
C
880000NN
A
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "5ff197cda7e3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "434", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00002', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-112-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '有一重量為w之物體掛在E點，如圖二所示。圖二之系統是由五條不伸長
之繩索所組成，若每條繩索之最大張力為500N，則此系統能支撐物體之
最大重量w 為多少？（25分）
max
C
A B
30
4 D
3 E 30
w
圖二
43430', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "5ff197cda7e3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "434", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00003', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-112-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '圖三之結構，均質桿件AB是剛體，長L3m，重w8kN；電纜（cable）
AC的截面積A10mm2，楊氏模數E120GPa，柏松比（Poisson’sratio）
0.3。試求平衡時電纜AC之伸長量 及其側向應變（Lateralstrain）
AC
。（25分）
AC
3m
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "5ff197cda7e3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "434", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00004', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-112-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '圖四(a)所示之簡支梁AB，長L320mm，承受10N/m之自重，在梁中點
之集中載重P。梁AB是由三片相同材料之板粘接而成的，截面如圖四(b)
所示，截面對z軸之慣性矩I  67,500mm4。若粘接面之允許剪應力
0.3MPa；梁之允許彎曲應力（bendingstress） 8MPa。試
allow allow
求最大允許集中載重P 之大小。（25分）
allow
y
1100mmmm
y
P z
L/2 1100mmmm
1100mmmm
A B
x
自自重重=1100NN/m/m 3030mmmm
LL=332200mmmm （梁之截面）
圖四(a) 圖四(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "5ff197cda7e3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "434", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00005', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-111-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '左右對稱的箱型梁斷面，若斷面積的形心位置在x''軸與y''軸的交點 O，
如圖一所示。試求箱型梁的形心位置y和斷面積對x''軸的慣性矩。（25分）
20m
1m
y''
O x''
8m
y
2m
10m
4m 4m
12m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "b3cab284b2b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "435", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL),
  ('pukao-9a509fdf-moex-00006', 'pukao-9a509fdf', 'pukao-9a509fdf-moex-111-c2c1a05c', 'sub-pukao-9a509fdf-01', NULL, 'essay', '桁架承受載重如圖二所示，試求支承 A 的反力及桿件 BC、BD、AB、
AD所承受的力。（25分）
10kN 15kN
E
D
C
3m
20kN
A B
4m 4m
圖二
43530', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:47+00:00", "source_pdf_sha1": "b3cab284b2b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "435", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "建築工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
