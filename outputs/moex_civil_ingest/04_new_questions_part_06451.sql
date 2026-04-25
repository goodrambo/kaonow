-- W1.6 questions batch 6451/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00029', 'locality-0f640084', 'locality-0f640084-moex-113-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '說明 HTTP（HyperText Transfer Protocol）、HTTPS（HTTP Secure）、以
及 REST API（Representational State Transfer Application Programming
Interface）的目的與作用方式，以及這三者的階層關係。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00030', 'locality-0f640084', 'locality-0f640084-moex-113-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '請試述下列名詞之意涵：（每小題 4 分，共 20分）
勒索病毒
分散式阻斷服務攻擊（DistributedDenialof Service）
數位憑證
物聯網（InternetofThings）
生成式 AI', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00031', 'locality-0f640084', 'locality-0f640084-moex-113-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一個單相、60Hz、220V負載匯流排供應兩組單相負載，其中負載1 吸
收實功率28.8kW、功率因數 0.707落後，負載 2吸收視在功率21.2kVA、
功率因數1.0。（每小題 10分，共 20 分）
計算負載總複數功率與總功率因數。
若在負載匯流排裝置一組單相功因補償電容器，以將負載總合功率
因數改善到 0.95落後，計算功因補償電容器所需的虛功率與電容值。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "4a919e7be24d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00032', 'locality-0f640084', 'locality-0f640084-moex-113-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '圖一為一個三相平衡電力系統單線圖，圖中兩部變壓器的百分比標么電
抗為以本身額定為基準（base）計算得到。三相輸電線長度10 公里，輸
電線每相每公里的電抗實際值標於圖中。此時，負載運轉在 13.2kV、
180 MVA、功率因數 1.0。（每小題 10 分，共20分）
選取變壓器 Tr.2 的額定作為全系統標么計算基準值，繪出統一基準值
的標么系統圖。
計算電源側線電壓實際值，與負載側電壓調整率。
(1) (2) (3) (4)
G
電源 Tr.1,350MVA, 輸電線 Tr.2,300MVA 負載
20kV/230kV j3.2/公里每相 220kV/13.2kV 13.2kV,180MVA,
X 10% X 10% pf 1.0
Tr.1 Tr.2
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "4a919e7be24d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00033', 'locality-0f640084', 'locality-0f640084-moex-113-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '圖二為一個平衡三相電力系統單線圖，圖中發電機經變壓器供電至電動
機，各設備的電抗標么值為以設備本身額定為基準（base）值計算而得，
已標示於圖上，變壓器的正、負、零相序電抗值假設相等。假設在變壓
器二次側 F位置的 a 相發生完全單相接地（SLG）事故，事故前故障相
的電壓為 1.0 標么，忽略事故前電力潮流，且變壓器相位移不予考慮。
（每小題10 分，共 20 分）
繪出圖二系統的正、負、零序電路。
以圖二相序電路組合，計算此接地故障電流的標么值與實際值。
(1) (2)
G M
X
n F
3.45kV,6MVA 3.45kV/0.6kV 0.6kV,6MVA
X  X 0.1pu 6MVA, X  X 0.3pu
1 2 1 2
X 0.05pu X 0.1pu
0 Tr X 0.06pu
0
X 0.05pu
n
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "4a919e7be24d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00034', 'locality-0f640084', 'locality-0f640084-moex-113-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一個60Hz電力系統由兩部火力發電機併聯組成，以供應總負載700MW。
各發電機裝置調速機的速度下垂（speed droop）控制特性由各發電機額
定得到，每部發電機基準額定與實際發電量如下表所示，負載的頻率敏
感係數（D值）不計。
發電機 速度下垂控制特性 基準額定 實際發電量
1 4% 600 MW 400 MW
2 5% 500 MW 300 MW
若此電力系統總負載增加到 800MW：（每小題10 分，共 20分）
計算此兩部發電機組僅使用速度下垂控制，此系統新的操作頻率實際
值（Hz）。
計算此兩部發電機組的發電量變動實際值（MW）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "4a919e7be24d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00035', 'locality-0f640084', 'locality-0f640084-moex-113-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '電力系統使用過電流保護電驛做為線路相間短路與過載事故保護，此保
護電驛的保護代碼為 50/51，繪出此過電流保護電驛在電力系統的主電
路接線，並以此保護電驛的過電流保護曲線，說明作動原理。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "4a919e7be24d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00036', 'locality-0f640084', 'locality-0f640084-moex-113-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖一為運算放大器的等效模型，其中輸入為v 與v ，輸出為v ，假如
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00037', 'locality-0f640084', 'locality-0f640084-moex-113-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖二為 CMOS 放大器，假設採用 0.18-μm 製程且所有電晶體之
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
34440', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00038', 'locality-0f640084', 'locality-0f640084-moex-113-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖三差動放大器其電流源I1mA，V 15V，R 10kΩ，假設1，
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
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "cf9f28cc31b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "343", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
