-- W1.6 questions batch 7914/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-8ec6300d-moex-00024', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '假設 為奇偶校驗矩陣：
1 1 0 1 1 0 0

H  1 0 1 1 0 1 0
0 1 1 1 0 0 1
試問這樣的線性區塊碼的生成矩陣為何？（5分）
試問這樣的碼之所有碼字為何？（5分）
如果收得的訊號向量為[1110100]T，請問有沒有錯誤？如果有錯誤，
是否可以修正？如果可以修正，請問修正後的結果為何？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "d2f1515e6f7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1910", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00025', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖一所示電路，理想放大器的增益為 K。（25分）
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00026', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖二所示放大器，其本質增益為。（25分）
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
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00027', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖三(a)、(b)所示BJT電路。V =8 V，R =R =2.5 kΩ，R =3.65 kΩ，
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
圖三(a) 圖三(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00028', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '互斥或閘（XOR）數位邏輯電路設計。（25分）
⑴一互斥或閘（XOR）具有兩輸入A、B，與一輸出Y。請寫出真值表。
⑵接續⑴小題，請使用積之和（sum-of-product）方式寫出布林代數表示
式。
⑶請畫出互斥或閘的上拉網路（pull-upnetwork）。（註：輸入 A、B、A、
B，輸出 Y）
⑷請畫出互斥或閘的下拉網路（pull-downnetwork）。（註：輸入 A、B、
A、B，輸出 Y）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c4e67564b0dd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00029', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '自由空間中有一個半徑為b之球形電子雲，其固定之體電荷密度(C/m3)為
ρ,0 Rb，及ρ0, R b，請計算空間中任一位置之靜電場強度
0
E與電通密度 D，及在Rb區域內儲存之靜電能。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c6104ac04e91", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00030', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '如圖所示，為一同軸纜線且為無損耗，內導體半徑為 c，外導體半徑為
a，兩導體間充填兩種介質材料，其介電係數分別為及，若內導體流
1 2
出電流為 I並經外導體流回。
應用安培定律，求0r a處之磁通量密度 B 的分布。（10 分）
求此同軸纜線之單位長度電感值 L。（15分）
b
1
2

c

a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c6104ac04e91", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00031', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '如圖所示，為ab矩形波導管，中間充以空氣，考慮a 2b；及a b兩
種情況，試計算並依序列出 TE 、TE 、TE 、TE 、TE 、TM 、TM 、
01 10 11 02 20 11 12
TM 各模態的截止頻率（請用主模態的截止頻率表示）。（25分）
22
b
x
18030', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c6104ac04e91", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00032', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '一 橫 向 平 面 分 布 均 勻 之 電 磁 波 ， 磁 場 強 度
E 3 1
H  0 (aˆ aˆ )cos[3π109t5π(x 3z)](V/m)，傳播於無窮大的
η x 2 z 2
介質內，其傳播之介質之導磁係數為μ ，本質的阻抗為η，介質的常數
0
為 ，長度之單位為 m，時間之單位為秒，請問：
ε
r
平面電磁波所在的傳播介質之介質常數 。（10分）
ε
r
橫向平面電磁波於此均勻環境下之電場強度E。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "c6104ac04e91", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00033', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c8fe92', 'sub-promotion-8ec6300d-04', NULL, 'essay', '兩電路如下圖(a)及(b)所示，請計算：（每小題15分，共 30分）
圖(a)中各節點v 、v 及 v 之電壓值。
a b c
圖(b)中各網目i 、i 及 i 之電流值。
1 2 3
圖(a) 圖(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "2949ce1652c2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
