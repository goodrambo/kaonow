-- W1.6 questions batch 4573/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00006', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '某單相交流短距離之輸電線路將 12 kW 之有效功率（Active Power）由
電源端輸送到負載端，負載之功率因數（PowerFactor）為 0.8 落後。假
設負載端的電壓振幅值為440 V，輸電線路的電阻與電抗分別為5 Ω和
10 Ω。請計算以下物理量：
送電端之電壓振幅值。（8分）
送電端之功率因數。（8分）
該輸電線路之效率。（9分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "cb487ec6161b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00007', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '某三相Δ-Y連接15MVA、33/11kV之變壓器，由差動電驛（Differential
Relay）所保護。請設計差動電驛的比流器（CurrentTransformer）之比例
值，使得通過變壓器Δ側之循環電流不超過 5A。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "cb487ec6161b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00008', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '某交流三相 50 Hz 同步發電機之慣量常數（Inertia Constant）為 6
MJ/MVA。該發電機透過傳輸線，連接到無限匯流排 B ，如圖一所示。
3
發電機以0.9 落後之功率因數，輸送 0.9 標么（PerUnit）的有效功率（Real
Power），到無限匯流排。若該電力系統發生小擾動，觀察得知該同步發
電機之轉矩角偏差量為 9°。請計算以下物理量：（每小題 5 分，共 25 分）
同步發電機提供之視在功率（ApparentPower）標么值。
流經傳輸線路之電流。
同步發電機輸出之電壓振幅值。
同步發電機之同步功率係數（Synchronizing PowerCoefficient）。
電力系統之無阻尼振盪角頻率（Undamped Angular Frequency of
Oscillation）。
0.12pu
G
0.34pu
0.24pu
Line
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "cb487ec6161b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00009', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '如圖二所示之電力系統，各設備之參數如圖上所標註。假設三相短路故
障發生於 F點位置。請計算此時之故障電流。（25 分）
20MVA,15%
30MVA,5%
(3+j15)Ω F
10MVA,10%
33kV
1:3
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "cb487ec6161b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00010', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖一所示之運算放大器電路，若採用一個 10 k的可變電阻調整此電
路的電壓增益，且0 x1。試求：
請推導出電壓增益 A =v /v 與x的關係式。（10分）
v o s
說明如何在 10 k的可變電阻旁加入一固定電阻 R，使得電路的電壓
增益 A 的範圍在1 至 11 之間，並計算此電阻值 R=？（15 分）
v
10kW
x (1-x)
v
o
v
s
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00011', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖二所示電路，v 為輸入的交流小信號，BJT 操作在作用區（active
s
region），若=199，V =25mV，請計算下列各項參數：集極直流電位
T
V ， g ， r ， R ， v /v，其中 g 與 r 為電晶體小信號參數。
C m  in o s m
（25分）
+1.5V +5V
10mA
10kW
1kW
R
s v
v o
s
100W
R R
in ib
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00012', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖三所示之回授放大電路，其中 g =g =4mA/V，r =，r =20k，
m1 m2 o1 o2
R =20k，R =1k，R =100，請計算下列各項參數：開路增益（open-
D L F
V
loop gain）A=I /v，回授因子（feedback factor）= f ，閉路增益
o i
I
o
（closed-loop gain）A， R ，R 。（25 分）
f o of
V
DD
R
D
Q
2
I
o
Q
1 R
L
V
s V
i
V R
f F
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00013', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖四所示之MOSFET電路，若Q、Q、Q 之參數分別如下：V =V =0.8V，
1 2 3 T1 T2
W W W
V =-2V，( ) ( ) 4，( ) 1。試求：
T3 1 2 3
L L L
說明此數位電路之邏輯函數名稱。（5 分）
當 A=5V，B=0V，V =？（10分）
o
當 A=B=5V，V =？（10分）
o
V =5V
DD
Q
3
V
o
A Q B Q
1 2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00014', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '圖一所示為啟動時之線性直流機，其中速度為 v，導體感應電壓 e ，電
ind
流 i(t)，感應力 F 。當開關閉合時導體上有電流流動，其並以等速運動，
ind
即可啟動此線性直流機。試以公式簡要說明啟動時，線性直流機的動作
原理（包含感應電壓 e ，電流 i(t)，與感應力 F 的變化）。（20 分）
ind ind
e l
ind
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "38665fa26474", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00015', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一配電變壓器的規格 100 kVA，6900/220 V，其參考至一次側的阻抗為
30+j100，激磁分路上元件參考至一次側數值為R =110k，X =25k，
c M
試求：（每小題 10 分，共 20分）
當一次側電壓為 6800 V且負載阻抗 Z =2+j0.7 時，變壓器的二次側
L
電壓為何？
如果中負載改為-j3 時，變壓器的二次側電壓為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "38665fa26474", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
