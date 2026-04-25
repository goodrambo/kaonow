-- W1.6 questions batch 6949/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-8ec6300d-moex-00027', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-d87dd49a', 'sub-locality-8ec6300d-01', NULL, 'essay', '說明 HTTP（HyperText Transfer Protocol）、HTTPS（HTTP Secure）、以
及 REST API（Representational State Transfer Application Programming
Interface）的目的與作用方式，以及這三者的階層關係。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00028', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-d87dd49a', 'sub-locality-8ec6300d-01', NULL, 'essay', '請試述下列名詞之意涵：（每小題 4 分，共 20分）
勒索病毒
分散式阻斷服務攻擊（DistributedDenialof Service）
數位憑證
物聯網（InternetofThings）
生成式 AI', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00029', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖一為運算放大器的等效模型，其中輸入為v 與v ，輸出為v ，假如
1 2 3
G 20mA/V，R5k，且10，請求出開路增益（open-loopgain）
m
v
大小A 3 ，（5分）如果v 0V，v 4V，請求出v ，差動
(v v ) 2 3 1
1 2
輸入訊號（v v v ）與共模（v ）訊號。（15 分）
Id 1 2 Icm
1
+
v1
- G v
m 1
3
+ +
2 mvvdd v
vvdd 3
+ R I -
v R -
2
-
Gmv2
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00030', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖二為 CMOS 放大器，假設採用 0.18-μm 製程且所有電晶體之
W/L7.2μm/0.36μm，μ C 387μA/V2，μ C 86μA/V2，I 100μA，
n ox p ox BIAS
爾利電壓（Earlyvoltage）NMOS V 5V/μm與 PMOS V 6V/μm，
An Ap
求電晶體 Q 的轉導值 g ，電晶體 Q 、Q 的輸出電阻 r 、r ，增益大
1 m1 1 2 o1 o2
小（V /V ）。（20分）
o I
I
BIAS
Q
2
V VV
BIAS oo
Q
1
VVI
I
圖二
34440', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00031', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖三差動放大器其電流源I1mA，V 15V，R 10kΩ，假設1，
CC C
且 差 動 輸 入 電 壓 各 為 V 50.005sin21000t V 與
B1
V 50.005sin21000t V，假設電晶體在集極（collector）直流電
B2
流I 1mA條件下，V 0.7V，試求在射極（emitter）端點的直流電
C BE
壓，（5 分）求輸入電晶體的轉導值 g （其中V 0.025V），（5 分）
m T
求兩顆電晶體的集極電流 i 、i 。（10 分）
c1 c2
+VCC
R RC
C
i i VB4
c1 c2
Vo1 V
o2
Q1 Q2
V VB2
B1
Vid
I
-VEE
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00032', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖四為共源級放大器（common-source amplifier），其中訊號源電阻
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
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00033', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '試以 CMOS 邏輯（CMOS logic）電路實現布林函數Y  ABCD之電
路圖。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00034', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '一線性極化之均勻平面電磁波Eaˆ E ez傳播於有損介質，其導磁係
y 0
數、介電係數及導電係數分別為, ,。
ε
在何條件下，此一介質可視為低損耗介電材料（Low-LossDielectrics）？
（5 分）
若介質滿足低損耗介電材料（Low-LossDielectrics）的條件，試推導傳
播常數 j，並得出衰減常數及相位常數。（10 分）
試求出在低損耗介電材料內傳播的相速度u 及本質阻抗 。（10分）
p c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "0f43beaaadaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00035', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '有一均勻橫向平面電磁波，其磁場強度為H H aˆ cos(3π109t10πz)
0 y
(A/m)，在一無窮大的介質內傳播，傳播介質的導磁係數為，介質常
0
數為ε ，時間單位為秒，長度單位為 m，試問：
r
此均勻橫向平面電磁波之相速度。（5 分）
傳播方向的單位向量。（5分）
傳播介質的介質常數ε 。（5分）
r
此均勻橫向平面電磁波之電場強度E。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "0f43beaaadaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00036', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '將一個半徑為a的金屬球置於一個半徑為b的金屬球（ba）內部，兩
球的球心重疊。假設內金屬球的電位為V ，內金屬球上的總電荷為Q，
ab
外金屬球的電位為 0，兩金屬球之間填充介電係數為 的介電質，試求此
ε
球形電容的表示式。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "0f43beaaadaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
