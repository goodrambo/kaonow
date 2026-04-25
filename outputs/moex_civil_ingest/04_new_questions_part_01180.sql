-- W1.6 questions batch 1180/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00098', 'customs-d7421644', 'customs-d7421644-moex-112-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '如圖所示為一三相交流平衡之電力系統單線圖。其中圖中符號 ，i=1,2,3
代表發電機； ，i=1,2,3 代表變壓器。傳輸線電抗之實際值與相關各設備
G
的額定容量、額定電壓、與其電抗之標么（pu）值與基準（base）值已標
T
示於圖上。
假設以 20 MVA 與 66 kV 作為全系統基準值，計算以下設備電抗之標
么值：⑴變壓器 ；⑵發電機 ；⑶變壓器 ；⑷傳輸線。（18分）
假設該系統運轉於無載狀態，而發電機 與 均因歲修而未併網，僅發
T G T
電機 供電。計算此時流經傳輸線之電流。（7分）
G G
G 10MVA
G2
10%
T1 T2
10MVA
20MVA j60 G3
G 10%
15% 1
30MVA 30MVA T3
11/66kV 66/11kV
15% 15% Toload
2.5MVA
11/6.6kV
8%', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "6073f3e38962", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00099', 'customs-d7421644', 'customs-d7421644-moex-112-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '某一 60Hz短距離三相交流傳輸線，每相之電阻值為R=0.62 Ω，每相之電
感值為L=93.24 mH。假設此傳輸線連接一三相 Y 連接 100 MW 之負載，
負載之功率因數為 0.9 滯後，負載線對線電壓之均方根值（Root Mean
Squarevalue）為215 kV。計算以下物理量：
送電端每相電壓之均方根值。（11分）
電壓調整率。（7 分）
傳輸線之效率。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "6073f3e38962", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00100', 'customs-d7421644', 'customs-d7421644-moex-112-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '考慮三相交流電力系統，如圖所示。相關各項設備的額定容量、額定電壓、
與其電抗標么（pu）值與基準（base）值已標示於圖上。假設匯流排之線
對線電壓為 11kV，而三相短路故障發生於 F處，計算：
故障電流為多少 kA？（15分）
故障容量為多少 kVA？（10 分）
10MVA 20MVA 20MVA
10% 15% 15%
G G G
1 2 3
X X
1 2
10MVA 8MVA
F
5% 4%', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "6073f3e38962", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00101', 'customs-d7421644', 'customs-d7421644-moex-112-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '某一三相 連接之30MVA、33/11kV變壓器，以差動電驛保護。比流
器之電流比於一次側為 500：5，而二次側為 2000：5。當故障電流為額定
−Δ
電流之 2 倍時，計算此時流經差動電驛之電流值。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "6073f3e38962", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00102', 'customs-d7421644', 'customs-d7421644-moex-112-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '如圖一所示之電路，試求電流 I之值。（25分）
5Ω 50V
I
10A 4Ω 2Ω
5Ω 60V
6Ω 40V 30V
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "d98b00cd108d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00103', 'customs-d7421644', 'customs-d7421644-moex-112-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '如圖二所示之電路，在時間 t = 0 時，開關SW閉合。試求時間 t＞0 時，
電感電流i (t)之值。（25分）
L
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "d98b00cd108d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00104', 'customs-d7421644', 'customs-d7421644-moex-112-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '如圖三所示之電路，電晶體參數為 V = 1 V，K = 0.5 mA/V2，試求汲極
TN n
電流 I =0.5mA，汲極與源極兩端電壓 V =5V時，電阻 R 及 R 之值。
D DS 2 S
（25分）
+10V +10V
R1 5MΩ 6kΩ
Q1
R2 RS
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "d98b00cd108d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00105', 'customs-d7421644', 'customs-d7421644-moex-112-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '如圖四所示之電晶體電路，電晶體參數 β = 100，且厄立電壓（Earlyvoltage）
V = 、熱能電壓 V =26mV。若直流偏壓電流 I =1.15mA，試求小
A T CQ
訊號混合參數之擴散電阻 r 及互導參數 g 之值。（5 分）請畫出小訊
π m
號等效電路圖。（5分）及試求小訊號電壓增益A =v /v 之值。（15分）
v o s
9V
25kΩ 25kΩ
∞ vo
∞
8kΩ
vs 12.5kΩ 3kΩ
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "d98b00cd108d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00106', 'customs-d7421644', 'customs-d7421644-moex-112-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '圖一所示之磁路，鐵芯為理想導磁材料（ ），氣隙長度 g=1.2mm，
c
氣隙截面積 A = 4.0 cm2，兩繞組的匝數分別為 n = 70 匝及 n = 130 匝，
c 1 2
並分別通以直流電流i =2A及i =5A。忽略氣隙附近的邊緣效應（fringing
1 2
effect），試計算：
氣隙中的磁通密度 B。（4 分）
兩繞組的自感L 、L 及繞組間的互感 M。（12分）
1 2
氣隙中所儲存的磁能。（4分）
c
i
1
g
L n
1 1
截
n 面
2
積
A
c
i
2
L
2
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "261c7594cb37", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00107', 'customs-d7421644', 'customs-d7421644-moex-112-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '一部 20kVA、 20kV/480V、60Hz之單相雙繞組配電變壓器，為求其等
效電路而實施開路與短路試驗，測定之數據記錄如下：
開路試驗 短路試驗
（於低壓側量測） （於高壓側量測）
V =480 V V =1130 V
oc sc
I =1.60 A I =1.00 A
oc sc
P =300 W P =260 W
oc sc
此變壓器之標么等效電路如圖二所示，以其額定容量及電壓為基準值，
求 R 、X 、R 、X 之標么值。（12 分）
eq eq c m
此變壓器二次側輸出額定電壓，供應功率因數0.8 落後的額定負載時，
效率及電壓調整率為何？（8分）
R jX
eq eq
R jX
c m
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "261c7594cb37", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
