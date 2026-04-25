-- W1.6 questions batch 6449/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00009', 'locality-0f640084', 'locality-0f640084-moex-114-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '由兩部額定分別為 250MW及 400MW構成之發電機組，其調速機之速
率調整率從無載到滿載分別為6.0%及6.4%且聯合供應500MW至負載，
假設調速機自由運作，同時調速機之速率調整率調整至 1000 MVA為基
準值時，試計算各部發電機分別分擔多少負載。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "01935ed6cbb1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00010', 'locality-0f640084', 'locality-0f640084-moex-114-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '說明低壓變壓器應如何做過電流保護。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "01935ed6cbb1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00011', 'locality-0f640084', 'locality-0f640084-moex-114-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個理想運算放大器（OperationalAmplifier）電路如圖一所示，此電路有
3個輸入電壓訊號，分別為：v 、v 與v 。電路中R 80kΩ，R 40kΩ，
I1 I2 I3 f 1
R 10kΩ，R 20kΩ，R 10kΩ，R 20kΩ。請計算v ？（20 分）
2 3 4 5 O
R
f
R
1
v _
I1 v
R V+
v 2 O
+
I2
R
4
R
3
v
I3
R
5
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00012', 'locality-0f640084', 'locality-0f640084-moex-114-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個 pnp雙載子接面電晶體（BipolarJunctionTransistor,BJT）電路如
圖二所示，電晶體Q 的100。當射極-基極接面（Emitter-Base, EB,
1
Junction）為順向偏壓時，V 恆等於0.7V，電路中V 5V，R 60kΩ，
EB B1
R 40kΩ，R 1kΩ，R 3kΩ。
B2 C E
請計算V ？（10分）
C
當V 0.7V（EB接面順向偏壓）且V 0.4V時，電晶體Q 會進入
EB CB 1
飽和模式（SaturationMode），若要讓Q 保持在主動模式（ActiveMode），
1
請問R 的最大值為何？（10分）
C
V
R R
B1 E
Q
1
V
C
R R
B2 C
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00013', 'locality-0f640084', 'locality-0f640084-moex-114-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖三為一個基本的NMOS場效電晶體（Field Effect Transistor, FET）差動
放大器（DifferentialAmplifier）電路，Q 與Q 完全匹配（PerfectlyMatch），
1 2
輸入訊號為差動輸入形式。Q 與Q 的參數如下：g  g 2mA/V，
1 2 m1 m2
C C 10fF，C C 2fF，C C 5fF，r r 15k。
gs1 gs2 gd1 gd2 db1 db2 o1 o2
電路部分，R  R 30k，R 25k。請計算此電路的：
D1 D2 sig
上3dB頻率（ f ）。（15 分）
H
零點（Zero）頻率。（5分）
V
R R
D1 D2
-V +
od
R
sig
+ Q Q
1 2
V R
id sig
-
I
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00014', 'locality-0f640084', 'locality-0f640084-moex-114-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖四為一個串並（Series-Shunt）回授放大器電路，電路中 npnBJT電晶
體 Q 與 Q 的 參 數 如 下 ：   100 ， g  g 10mA/V ，
1 2 1 2 m1 m2
r r 10k，r r 。電路中，R 20k，R 20k，
1 2 o1 o2 C1 C2
R 2k，R 18k。請計算：電壓增益v /v 、輸入電阻R 與輸出電
1 2 O S in
阻R 。（20分）
out
V
R R v
C1 C2 O
Q
2
R
out
Q
1
R
2
+
v
S
- R R
in 1
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00015', 'locality-0f640084', 'locality-0f640084-moex-114-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個NMOS邏輯電路如圖五所示，其中電晶體Q、Q 與Q 的臨界電壓
1 2 3
（ThresholdVoltage）分別為V V V 1V，(W/L) (W/L) 4(W/L)，
t1 t2 t3 2 3 1
V 5V，忽略通道長度調變（ChannelLengthModulation）與基底效應
DD
（BodyEffect）。請計算：
v v 0V時，v ？（10 分）
A B O
v 5V，v 0V時，v ？（10分）
A B O
V
DD
Q
1
v
O
v Q Q v
A 2 3 B
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00016', 'locality-0f640084', 'locality-0f640084-moex-114-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '一個均勻鐵芯磁路如圖一所示，鐵芯磁路l 長 50cm，氣隙l 長 0.1cm，
C g
磁路截面積0.01m2。磁路上繞有 200匝繞組，鐵芯的比導磁係數 ，
r
氣隙的磁通密度為 1.0T，氣隙的邊緣效應忽略。（註： 4107）
0
（每小題10 分，共 20 分）
計算此磁路的磁阻與繞組所需輸入電流。
計算此繞組的電感量與儲能。
I
N=200 l
g
l
C
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "3719d4eeeec3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00017', 'locality-0f640084', 'locality-0f640084-moex-114-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '圖二(a)為一個單相變壓器，交付到一次側的等效電路示於圖二(b)，此變
壓器滿載額定容量500kVA、電壓比為3,300V/220V，變壓器設計的等
效電路參數值示於下方。變壓器製造完成後，計劃在此變壓器高壓側分
別進行短、開路實驗。（每小題 10 分，共 20分）
R 0.2Ω，X 2，X 2.2kΩ，R 10kΩ。
eq eq M C
使用圖二(a)分別繪出短、開路實驗的接線圖，並說明各實驗的步驟與
所需記錄數據。
計算與列出短、開路實驗應有的量測結果。
+ R jX +
eq eq
V R jX V
+ + 1 C M 2
V V - -
1 2
- -
3,300V/220V
(a) (b)
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "3719d4eeeec3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00018', 'locality-0f640084', 'locality-0f640084-moex-114-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '一部 60Hz、2 極三相感應電動機，額定線電壓 220V、額定線電流54A、
額定功率因數 0.85 落後、額定輸出功率 20 匹馬力（hp）、額定轉差率
3%。（每小題 10分，共 20分）
計算額定運轉時輸出轉速（rpm），與輸出轉矩（N-m）。
計算額定運轉時的轉子感應電壓頻率，與此感應機運轉效率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "3719d4eeeec3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
