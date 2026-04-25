-- W1.6 questions batch 7636/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-0f640084-moex-00020', 'promotion-0f640084', 'promotion-0f640084-moex-112-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '四母線的電力系統單線圖如下，根據以下的發電機、變壓器、輸電線、
馬達的規格，其包含額定容量、電壓等級與阻抗，以 20 kV為電壓基準
值與 100 MVA為容量基準值。（每小題 10分，共 20 分）
T1 T2
G1 M1
Line1
項目 額定容量 電壓等級 阻抗
發電機G1 60MVA 20kV X=9%
變壓器T1 50MVA 20/200kV X=10%
變壓器T2 50MVA 200/20kV X=10%
馬達M1 43.2MVA 18kV X=8%
輸電線Line1 - 200kV Z = 120+j200 Ω
請繪製該電力系統的阻抗圖，並且以標么值表示。
馬達於 18 kV 線電壓時吸收 45 MVA、功率因數 0.8 落後，請問發電
機的端電壓與內電勢？請以標么值及 kV表示。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c2b241865edf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00021', 'promotion-0f640084', 'promotion-0f640084-moex-112-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '求解電力潮流問題時：
請說明於求解電力潮流問題時，根據母線的電壓大小、電壓相角、實
功率與虛功率，說明搖擺母線（SwingBus）、負載母線（LoadBus）與
電壓控制母線（VoltageControlled Bus）的定義。（6 分）
二母線的電力系統單線圖如下，假設母線 1 定義為搖擺母線，並且輸
電線阻抗為 Z12=0.12+j0.16 pu，母線 2 的負載為 100 MW 與
50 MVar。請利用牛頓-拉佛森法，假設以 100 MVA為基準，母線 1的
電壓為1.00，起始估計值|V2(0)|=1.0，以及δ2(0)=0º，求解母線 2的
電壓大小及相角？請執行兩次疊代。（14分）
Bus1 Bus2
G1
Z12=0.12+j0.16
MVar
SwingBus', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c2b241865edf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00022', 'promotion-0f640084', 'promotion-0f640084-moex-112-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '四母線的電力系統單線圖如下，發電機、變壓器與饋線的電抗皆以相同
的基準標么值表示，假設發電機相同電位下，故障前假設為 1.0 pu。若
母線 1發生三相短路故障，並且故障阻抗為 Zf=j0.05。
（每小題10 分，共 20 分）
j0.15 j0.15
j0.15 j0.15
j0.6
j0.2 j0.4
j0.19
試用戴維寧定理求得故障點的阻抗與故障電流？
請問故障期間的母線電壓與線路電流？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c2b241865edf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00023', 'promotion-0f640084', 'promotion-0f640084-moex-112-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '一獨立系統的額定頻率為 60 Hz，系統具有兩機組，假設兩機組皆以額
定頻率作為頻率的調控基準，以及系統沒有隨頻率變化的負載。
（每小題10 分，共 20 分）
項目 發電機G1 發電機G2
額定容量 S1=400MVA S2=500MVA
調速機速率調整率 R1=0.04 R2=0.05
慣性常數 H1=4s H2=5s
假設系統僅有發電機 G1 獨立運行，請問系統的頻率從 60 Hz 降至
59.76 Hz之穩態值時，機組發電量增加多少？
假設兩機組併聯運行，系統目前供應的負載量為700 MVA，發電機 G1
供應 300 MW，發電機 G2 供應400 MW。若負載突然降低150 MW，
請問系統穩態時的頻率偏移量，以及機組的各別新發電量？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c2b241865edf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00024', 'promotion-0f640084', 'promotion-0f640084-moex-112-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖一所示電路，理想放大器的增益為 K。（25分）
⑴請詳細推導電路的電壓轉移函數 T(ω)=v (ω)/v (ω)。
o in
⑵請詳細推導電路的頻寬ω 。
o
⑶請詳細推導 T(ω)的振幅且繪製圖形，橫軸以 ω/ω 對數為座標，縱軸以
o
T(jω)
20log 對數為座標。
K
⑷請問電壓轉移函數 T(ω)，當頻率高於頻寬，振幅對頻率的斜率為何？
理想放大器
R
K
v (ω) v (ω)
C o
in
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00025', 'promotion-0f640084', 'promotion-0f640084-moex-112-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖二所示放大器，其本質增益為。（25分）
⑴請詳細推導電路的輸出電壓 Vo。（註：以 I 、I 、R 、R 、R 表示）
B1 B2 a b f
⑵接續⑴小題，假設偏壓電流 I =I =I ，請詳細推導電阻 R ，使得輸
B1 B2 B b
出電壓 Vo 為零。
⑶接續⑴小題，假設偏壓電流存在誤差|I -I |=Ios，請詳細推導電流誤
B1 B2
差 Ios反應到輸出電壓 Vo 為何？（註：R 請以第⑵小題答案帶入）
b
R
f
R
a I
B1
V
R O
b I
B2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00026', 'promotion-0f640084', 'promotion-0f640084-moex-112-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖三(a)、(b)所示BJT電路。V =8 V，R =R =2.5 kΩ，R =3.65 kΩ，
CC C1 C2 E
-V =-8 V。電晶體 Q 、Q 匹配，V =0.7 V。（25 分）
EE 1 2 BE(on)
⑴DC分析，如圖三(a)所示，當 V =V =0 V，請問電流 I 為何？請問
B1 B2 E
電壓 V 為何？請問電晶體 Q 、Q 操作區間為何？（註： 1）。
C1 1 2 DC
⑵AC分析，如圖三(b)所示，接續⑴小題，輸入差模 ac小信號v 、v 。
in1 in2
請將電晶體 Q 、Q 以 π 模型帶入，畫出完整圖三(b)之小信號電路。
1 2
請問基極輸入電阻 r 為何？請問小信號電壓增益v /v 為何？
π1 c1 in1
（註：β =β =99，r =r =∞，V =26 mV）。
1 2 o1 o2 T
V V
CC CC
R R R R
C1 C2 C1 C2
I V V I I V V
C1 C2 C1 C2 I
C1 C2 C1 C2
V V
V Q Q V B1 Q Q B2
B1 1 2 B2 1 2
v v
in1 in2
I R I R
E E E E
V V
EE EE
圖三(a) 圖三(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00027', 'promotion-0f640084', 'promotion-0f640084-moex-112-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '互斥或閘（XOR）數位邏輯電路設計。（25分）
⑴一互斥或閘（XOR）具有兩輸入A、B，與一輸出Y。請寫出真值表。
⑵接續⑴小題，請使用積之和（sum-of-product）方式寫出布林代數表示
式。
⑶請畫出互斥或閘的上拉網路（pull-upnetwork）。（註：輸入 A、B、A、
B，輸出 Y）
⑷請畫出互斥或閘的下拉網路（pull-downnetwork）。（註：輸入 A、B、
A、B，輸出 Y）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00028', 'promotion-0f640084', 'promotion-0f640084-moex-112-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '如圖一所示之電機，定子平均路徑 s 50 公分，截面積 As12 平方公
分。轉子平均路徑 r 5 公分，其截面積假設同定子之截面積，轉子和定
子間上下之氣隙長度各為 g0.05 公分，而氣隙之截面積（考量邊緣效
應）為 14平方公分。空氣導磁率為 4 π×10-7韋伯/（安培．米），磁路鐵
芯之相對導磁係數為 2000，繞組N200 匝。此時，若有10 安培之電流
通過線圈時：
試計算電機磁路總磁阻。（8 分）
試計算氣隙磁通。（7 分）
試計算氣隙磁通密度。（5分）
註：答案應標註單位
As
g
r
N
s
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f7a6dc7d9fe7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00029', 'promotion-0f640084', 'promotion-0f640084-moex-112-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '一台 50 kVA，6.6 kV/220 V，60 Hz 單相變壓器，轉換至二次側等效電
阻和電抗值 Req =0.015 Ω，Xeq =0.02 Ω，若不考慮磁化支路效應，且
2 2
滿載時二次側負載端電壓為 220 V，功率因數 0.8落後：
（每小題10 分，共 20 分）
試計算一次側端電壓。
試計算電壓調整率。
71330', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f7a6dc7d9fe7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
