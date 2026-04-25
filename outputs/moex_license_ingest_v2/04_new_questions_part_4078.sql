-- W1.4 new questions batch 4078/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00534', 'structural-eng', 'structural-eng-moex-092-050f1447', 'sub-structural-eng-03', NULL, 'essay', '考慮一單自由度動力系統，已知質量m=100kg，勁度k =100N/m，阻尼比ξ=30%。
若該系統受到如圖所示之外力歷時，試計算最大位移。（10分）
P(t)
2000N t = 0.1   sec.
a
t = 0.12 sec.
b
t = 0.2   sec.
c
t = 0.25 sec.
d
t t t t
a b c d
t
-500N', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "b02c63aad15b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00535', 'structural-eng', 'structural-eng-moex-092-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一般於結構動力分析上常將阻尼矩陣假設為古典（雷利）阻尼(classical or Rayleigh
damping)，這樣的假設於計算上有何優點？於此假設下試推導出振態阻尼比與其對應
週期的關係。接著應用此關係於如下之五個自由度系統：第一振態週期為2sec 阻尼
比為5%，第三振態週期為1sec阻尼比為5%；若第二振態週期為1.5sec，則其阻尼
比為何？（20分）
（請接背面）
九十二年專門職業及技術人員 高等 考  試  建 築 師、 技 師、 不 動產 估 價師   考試試題
暨普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "b02c63aad15b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00536', 'structural-eng', 'structural-eng-moex-092-050f1447', 'sub-structural-eng-03', NULL, 'essay', '如圖所示之單層立體構架，樓版為剛性，其質量為m且均勻分佈，四根圓柱材質（楊
氏係數E）與長度(h)皆相同，斷面二次矩如圖示。該結構受到沿DB方向之水平地震
時，其運動方程式可寫為：MU&&+KU=−Meu&&，其中，M及K分別為質量及勁度矩
g
陣，U 為相對於地表之位移向量(分量按u 、u 、u 排列)，u&&為地表加速度歷時。
1 2 3 g
不計柱之質量，試推求K及M的第二行(column)係數(即k 、k 、k 及m 、m 、
12 22 32 12 22
m )以及e向量。（20分）
32', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "b02c63aad15b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00537', 'structural-eng', 'structural-eng-moex-092-050f1447', 'sub-structural-eng-03', NULL, 'essay', '考慮下圖之五層樓剪力屋架，各層樓版之質量皆為 5000kg，柱之質量不計，樓層勁
度為：k k 5 106N/m,  k k k 3 106N/m。 已知某組側力作用下之“層間”
= = × = = = ×
1 2 3 4 5
變位為：δ =6mm， δ =5.6mm， δ =8mm，δ =6mm，δ =3.333mm。則此組
1 2 3 4 5
側力為何？利用此變形配合雷利法(Rayleigh method)所得之基本振動週期值為何？
若以此變形所對應的樓層位移近似第一振態，則對應之有效質量為何？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "b02c63aad15b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00538', 'structural-eng', 'structural-eng-moex-092-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試以彎矩分配法，求解各節點彎矩。（25分）
k k
3  3
8k  w=1 k/ft  8k
a
b  c  d
ft ft 10ft  10ft 10ft  15ft  15ft
15   15
EI＝常數', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "a5aaf665c69a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00539', 'structural-eng', 'structural-eng-moex-092-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖示結構係由三根斷面性質相同(EA)之均質連桿(AD、AE及BE)以及一根剛梁
(EI→∞)所組成之複合結構。若忽略剛梁自重之影響，試求：（25分）
各連桿之內力  F
A
C點之位移
B  C
3 λ
D  E
4 λ 4 λ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "a5aaf665c69a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00540', 'structural-eng', 'structural-eng-moex-092-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試求圖示桁架中a, b桿之內力。（25分）
b  4m
a
4m
2t  2t
4×8m=32m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "a5aaf665c69a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00541', 'structural-eng', 'structural-eng-moex-092-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之梁結構，EI值為常數，試分別繪出此梁中點B之彎矩及剪力影響線圖。
（說明：影響線圖中，需標示B點彎矩及剪力之影響值）（25分）
B
A  C
EI
5m  5m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "a5aaf665c69a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00542', 'structural-eng', 'structural-eng-moex-092-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '簡答題：（每小題5分，共25分）
試說明何謂塊狀剪力 (block shear) 撕裂。
梁支承處若設計不當可能發生腹板局部降伏 (web yielding)，試說明其改善措施。
受拉構材設計中，降伏應力 (yielding stress) 之安全係數較抗拉強度之安全係數為低，試簡述其理由。
鋼結構構材斷面依其抵抗局部挫屈之特性，可分為那四種？試簡述之。
何謂臨界長細比Cc？其推導之理論背景為何？試簡述之。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "991dd5eba784", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00543', 'structural-eng', 'structural-eng-moex-092-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖所示為一合成受壓構材之斷面，使用A572 Gr. 50之H312×303×13×21型鋼斷面，SD 420之D32鋼筋（斷
面積為8.14cm2）以及抗壓強度f''= 280 kg/cm2之混凝土。該受壓構材在與腹板平行以及垂直之平面上，其長度皆
c 2
為15 m、有效長度係數皆為0.8。以極限設計法求該受壓構材的設計強度。已知鋼骨降伏強度為3.5 t/cm，鋼筋降
伏強度為4.2 t/cm2，鋼材彈性係數為2100 t/cm2，混凝土彈性係數為250 t/cm2。
H312×303×13×21:  A = 165 cm2；r = 13.4 cm；r=7.7 cm。（25分）
x y
設計強度：承受軸力之合成柱，其設計強度為φP ，其中φ =0.85，P 為標稱軸向強度，P 可由公式 至 經過
c n c n n
下述之修正、計算而得。
A：型鋼或鋼管（圓形、矩形）之全斷面積，cm2（代替A）。
s g
r ：型鋼或鋼管（圓形、矩形）之迴轉半徑，對型鋼而言，此值不應小於合成斷面沿著挫屈平面之全厚度之百
m
分之三十，cm（代替r）。
降伏強度及斷面模數依下列二式修正為Fmy及Em。
F = F + CF  (A/A) + C f''(A/A)  E = E + CE (A/A)
my  y 1 yr r s 2 c c s m  3 c c s
其中 Ac = 混凝土面積，Ar = 縱向鋼筋之面積，As = 鋼骨之斷面積，E = 鋼骨之彈性模數，Ec = 混凝土之彈性
模數，F = 型鋼或鋼管（圓形或矩型）之標稱降伏強度，F  = 縱向鋼筋之標稱降伏強度，f''= 混凝土之抗壓
y yr c
強度，C1、C2、C3為係數。對於中空部分澆注混凝土之鋼管（圓形、矩形）：C1 = 1.0、C2 = 0.85、C3 = 0.4，對
於混凝土包覆之型鋼：C1 = 0.7、C2 = 0.6、C3 = 0.2
設計受壓強度：若受壓斷面肢材之寬厚比滿足半結實斷面者，其設計強度為φP 。
c n
其中φ =0.85  P =A F ……
c n g cr
當λ ≦1.5  F =[exp(−0.419λ2)]F ……
c cr c y
⎡0.877⎤
當λ >1.5  F =⎢ ⎥F ……
c cr λ2 y
⎣ c ⎦
kL F
其中λ = y ……
c πr E
A = 構材之全斷面積，cm2  F = 標稱降伏應力，t/cm2  E = 彈性模數，t/cm2  k = 有效長度係數
g y
L = 構材之無側撐長度，cm   r = 對挫屈平面之最小迴轉半徑，cm。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "991dd5eba784", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
