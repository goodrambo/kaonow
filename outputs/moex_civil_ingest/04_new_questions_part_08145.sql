-- W1.6 questions batch 8145/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00018', 'pukao-0f640084', 'pukao-0f640084-moex-113-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖二電路之參數：R =1k、R =9k，及 R =2k、R =3k，請利
In F 1 2
用疊加（superposition）原理，試求此理想運算放大器（Ideal Op）之輸
出電壓（v ）值。（25分）
O
R
F
R
In
R
1 +
v v
1 O
R －
2
v
2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00019', 'pukao-0f640084', 'pukao-0f640084-moex-113-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '已知某個積體電路儀表（IC instrument）放大器之參數：閉環路電壓增益
（A ）為500，R =R =25k，試求外部增益設定電阻（R ）值。（12分）
cl 1 2 G
已知某一個運算互導放大器（OTA）的增益（g ）為 1000S，當其輸
m
入電壓（V ）為25 mV時，試求其輸出電流（I ）值。（13 分）
in out', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00020', 'pukao-0f640084', 'pukao-0f640084-moex-113-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖三之反相器（inverter）數位電路中，當 v =5V時，試求該反相器之
I
輸出電壓（v ）與功率損耗（P）。（25分）
O
V =5V
DD
R =20 kΩ
D
v
O
V =1.5V
v TN
I
K =100 μA/V2
D
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00021', 'pukao-0f640084', 'pukao-0f640084-moex-113-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '某單相變壓器的額定為200kVA、2400V/240V，負載接於變壓器低壓側，
其端電壓為變壓器的額定，負載阻抗為1.2+j0.9標么（perunit），以變壓
器的額定為基值。假設此變壓器為理想特性，請計算下列問題：
負載阻抗的標么值換算為實際值及等效至變壓器高壓側的實際值。
（10 分）
負載電流實際值、變壓器高壓側的電流實際值、負載的實功率（平均
功率）實際值、負載的虛功率實際值。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6574df3e2213", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00022', 'pukao-0f640084', 'pukao-0f640084-moex-113-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '某一部三相、Y接線、200V、10極、50Hz同步電動機其每相同步電抗
為j4 ，忽略電樞電阻及其損失。在額定電壓、頻率運轉，輸入電動機的
相電流為25 A，功率因數為1.0，請計算其轉速、輸出功率、輸出轉矩、
功率角。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6574df3e2213", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00023', 'pukao-0f640084', 'pukao-0f640084-moex-113-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '某一部並激式直流電動機其電樞電阻為 0.8 ，激磁繞組電阻為 60 ，
電動機的輸入電壓為120 V，輸入電流為10A，轉速為1200轉/分。忽略
碳刷壓降、電樞反應、鐵心損失及旋轉機械損失，請計算電動機的輸入
功率、電磁功率、電磁轉矩、轉速調整率。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6574df3e2213", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00024', 'pukao-0f640084', 'pukao-0f640084-moex-113-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '某一部三相、Y接線、6極、380 V、60 Hz的感應電動機，其定子繞組
的每相等效電阻為 0.25 Ω。在額定電壓及頻率的電源操作，轉速為 1158
轉/分，機械的輸出轉矩為82.5N-m，電動機的輸入功率為11.5kW，輸
入相電流為 21A，機械的旋轉損為 300W，請計算電動機的效率、功率
因數、定子銅損、轉子銅損、總鐵損。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6574df3e2213", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00025', 'pukao-0f640084', 'pukao-0f640084-moex-112-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '如圖一所示，R為銀（Ag）線的電阻，R 為金（Au）線的電阻，在20℃
1 2
時R = R ，AB端的電阻為2.5Ω，其中銀和金的推論絕對溫度（inferred
1 2
absolutetemperature）分別為-243℃和-274℃，試計算當溫度升高到100℃
時，AB兩端的電阻改變為多少(Ω)？（20分）
R
1
RR
22
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00026', 'pukao-0f640084', 'pukao-0f640084-moex-112-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '如圖二之電路，其中V =10V，V =5V，R = R = R =1kΩ，R =2kΩ，R
1 2 1 2 3 4 5
= R =4kΩ，試計算V 為多少伏特(V)？（20分）
6 o
VVVV
2222
RR
1
1
RR
33
RR
VV 2
1 2
1
V
o
R
5
RR RR
4 66
4
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00027', 'pukao-0f640084', 'pukao-0f640084-moex-112-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '如圖三之電路，電容C 和C 之初始電壓為0，即V (0)0，開關S在t 0
1 2 b
時，長時間穩定接在2的位置點，在t=0時，S接到1的位置點，t 0時，
V 開始供電電路，其中V 10V ， C C 1μF， R  R 10 Ω，
a a 1 2 1 5
R R  R 6Ω，試計算在時間t 0時，V (t)的電壓變化等式為何(V)？
2 3 4 b
（20分）
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
