-- W1.6 questions batch 6947/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-8ec6300d-moex-00007', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-0d6c2263', 'sub-locality-8ec6300d-02', NULL, 'essay', '頻率調變（Frequency modulation, FM）訊號的解調可透過鑒頻器
（FrequencyDiscriminator）達成，鑒頻器包括了斜率電路（SlopeCircuit）
及包絡檢波器（Envelop Detector）。斜率電路（Slope Circuit）的頻率響
應如下：
B B B
j2(f  f  T ), f  T  f  f  T
c c c
2 2 2
B B B
H(f)j2(f  f  T ), f  T  f f  T
c 2 c 2 c 2
0, elsewhere
其中 f 為載波頻率及 B 為斜率電路運作頻寬，請回答下列問題：
c T
令h(t) Re h(t)exp(2f t) 為斜率電路的脈衝響應，且h(t)為h(t)的
c
低通等效（LowpassEquivalent）響應，請畫出h(t)之頻率響應H(f)並
寫出其數學表示式。（10分）
令s(t) Res(t)exp(2f t)和 y(t) Rey(t)exp(2f t)分別為斜率
c c
電路的帶通（passband）輸入及輸出訊號，而s(t)和y(t)分別為s(t)和
y(t)的低通等效訊號，證明s(t)和y(t)的關係滿足下式：（10分）
ds(t)
y(t)  jB s(t)
dt T
t
若s(t)為 FM訊號s(t) A cos 2f t2k  m()d
c  c f
0
推導輸出訊號y(t)，並說明訊息訊號m(t)如何透過斜率電路和包絡檢
波器解調。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "ad14475a07bf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00008', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-0d6c2263', 'sub-locality-8ec6300d-02', NULL, 'essay', '考慮二位元調變訊號s (t)s (t)，能量均為E ，假設兩訊號之傳送機率
1 2 b
均等，且此訊號於可加性高斯白雜訊（Additive White Gaussian Noise,
AWGN）通道中傳送，AWGN 之功率頻譜密度（power spectral density,
PSD）為N /2。
0
畫出此調變之星座圖，並依最佳決策準則繪出兩訊號之決策區間
（Decision Region），以達到最低錯誤率。（10分）
以E 及N 表示上述決策準則之位元錯誤率（Biterror rate）。（10 分）
b 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "ad14475a07bf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00009', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-0d6c2263', 'sub-locality-8ec6300d-02', NULL, 'essay', '給定廣義平穩（Wide-Sense Stationary, WSS）隨機訊號X(t)之自相關函
數（Auto-correlation Function）
A2 A2  ||
1 , ||T
4 4  T
R ()
X
A2
, ||T
4
X(t)是否包含直流成分，請證明此答案。若答案為是，請計算出直流
成分之振幅。（10 分）
計算此隨機訊號之功率頻譜密度（powerspectraldensity,PSD）函數。
（10分）
若將此隨機訊號進行希伯特轉換（Hilbert transform），得到的輸出為
1
Y(t) X(t)* ，求得為Y(t)之功率頻譜密度函數。（10 分）
t', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "ad14475a07bf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00010', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個理想運算放大器（OperationalAmplifier）電路如圖一所示，此電路有
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00011', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個 pnp雙載子接面電晶體（BipolarJunctionTransistor,BJT）電路如
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
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00012', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖三為一個基本的NMOS場效電晶體（Field Effect Transistor, FET）差動
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
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00013', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖四為一個串並（Series-Shunt）回授放大器電路，電路中 npnBJT電晶
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
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00014', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個NMOS邏輯電路如圖五所示，其中電晶體Q、Q 與Q 的臨界電壓
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
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "07a1231e148a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00015', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '一傳遞高頻訊號的同軸電纜：內導體的半徑為 a，外導體的半徑為b，兩
導體的厚度可忽略；在內外導體之間，充斥介電常數 permittivity 為 ε，
導磁係數permeability為 μ 的介電質；同軸電纜總長度為 L。
0
請詳細推導同軸電纜單位長度的電容大小。（15 分）
請詳細推導同軸電纜單位長度的電感大小。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "4c8b778b272b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00016', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '請詳述電磁場（包括電場強度、電通量密度、磁場強度、磁通量密度）
在兩介質交界處的邊界條件：介質 1 為介電質 dielectric、介質 2 為介電
質；介質 1為介電質、介質 2為完美導體。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "4c8b778b272b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
