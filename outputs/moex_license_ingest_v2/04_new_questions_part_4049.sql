-- W1.4 new questions batch 4049/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00244', 'structural-eng', 'structural-eng-moex-104-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '一平面桁架如圖一所示，點 A 為鉸支承，點 C 為滾支承，點 D 承受一往下垂直載
重 50 kN。若桿件 BD較原設計縮短 0.5 cm，點 C支承下陷 0.4 cm，假設所有桿件
彈性模數與斷面積乘積 EA=2  × 105 kN，為使點 D垂直位移為零，試求點B所需施
加之水平力量T。（25分）
B
T
3m
C
A D
4m 4m
50kN
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "250374784222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00245', 'structural-eng', 'structural-eng-moex-104-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '一連續梁如圖二所示，點 A 為鉸支承、點 B、D 及 E 為滾支承，點 C 為鉸接，彈性
模數與慣性矩乘積 EI 為定值。試繪出點 F 之剪力影響線，並用共軛梁法求此影響
線在點F及點C的值。（25分）
A  B  C  D  E
F
15m 15m 10m 10m 30m
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "250374784222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00246', 'structural-eng', 'structural-eng-moex-104-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖三為一平面構架，點 A、G及 H為固定支承，點 C及E 為鉸接，此構架點B 至 F
間梁桿件承受一垂直均佈載重 4  kN/m。設所有桿件 EI 為定值，且忽略桿件軸向變
形，試用傾角變位法，求各桿件端點彎矩及支承 G 之反力，並繪出 B 至 F 間梁桿
件之彎矩圖。（25分）
4kN/m
B
D F
C E
4m
A  G H
1m 3m 3m 1m
圖三
（請接背面）
104年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "250374784222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00247', 'structural-eng', 'structural-eng-moex-104-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '一平面構架承受載重如圖四所示，點 A、C 及 D 為固定支承，桿件 AB 與 BC 在 B
點為剛接，與桿件 BD 的接合是以一抗扭彈簧及一水平線性彈簧來連結，分別模擬
彎矩及水平力的傳遞，但無垂直力傳遞。抗扭彈簧及線性彈簧的力與位移關係皆為
線彈性。設桿件 AB、BC 與 BD 之 EI 及 EA 都為定值，桿長皆為 L，且忽略其軸向
變形，抗扭彈簧及線性彈簧之彈簧常數分別為 k 和 k 。試標示此結構之位移自由度
θ s
（完全束制之位移自由度不計），然後求對應這些自由度之勁度矩陣[K]及外力矩陣[R]。
（[R]=[K][r]，[r]為位移矩陣）（25分）
w 線性彈簧
P
A
B D
抗扭彈簧  L
C
L L/2 L/2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "250374784222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00248', 'structural-eng', 'structural-eng-moex-104-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '下圖所示為一 R.C.方形柱斷面，b=h=60cm，d''=8cm，材料強度 f'' =350 kgf/cm2，
c
f =4200 kgf/cm2，縱向鋼筋採用 A =8-#10，請依國內設計規範規定，分析此柱斷面
y st
在適當調整軸壓載重後，可承受之最大極限彎矩載重。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "df5b43a8f4fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00249', 'structural-eng', 'structural-eng-moex-104-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一 R.C.雙筋矩形梁斷面，b=35cm，h=70cm，d=63cm，d''=7cm，材料強度
f'' =350 kgf/cm2，f =4200 kgf/cm2，n=7，壓力鋼筋採用 A''s=2-#8，請依國內設計規
c y
範規定，分析在適當設置拉力鋼筋後，
此梁斷面可具有之最大設計彎矩強度。（20分）
此梁斷面可具有之最大韌性容量 μ，其中 μ=φ /φ 。（20分）
u y
鋼筋號數  #7  #8  #9  #10
鋼筋斷面積（cm2）
3.971  5.067  6.469  8.143', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "df5b43a8f4fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00250', 'structural-eng', 'structural-eng-moex-104-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '下圖所示 T 型 R.C.梁斷面，b =100 cm，t =15 cm，b =40 cm，h=70 cm，d''=7
f f w
cm，材料強度 f'' =350 kgf/cm2，f =4200 kgf/cm2，請設計此梁斷面在承受極限負彎
c y
矩 Mu=-150 tf-m時之抗彎鋼筋。（20分）
（請接背面）
104年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "df5b43a8f4fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00251', 'structural-eng', 'structural-eng-moex-104-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '下圖所示為採後拉法之預力混凝土簡支矩形梁，梁斷面 b=30cm，h=50cm，材料強
度 f'' =350 kgf/cm2，梁跨度 L=12m，鋼鍵為端部無偏心之拋物線配置，若適當設計
c
施加之預力 F 值及梁中央斷面之鋼鍵偏心量 e 值，則此預力簡支梁可承受最大之均
p
佈活載重w ，假設在施預力時及全部載重作用時，混凝土之容許壓應力均為
Lmax
f =140 kgf/cm2，容許拉應力均為 f =0 kgf/cm2，請分析此 F 值、e 值及w 值。
ca ta p L
max
（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "df5b43a8f4fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00252', 'structural-eng', 'structural-eng-moex-104-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '【極限設計法】有一跨距8.4 m之簡支承鋼梁，在三分點處各承受靜載重P  = 22 tf，
D
活載重P  = 35 tf，梁僅在支承點和載重點有側向支撐如圖1(a)所示，E = 2040 tf/cm2。
L s
（每小題 10分，共 30分）
若使用 A709‐36級鋼料（F  = 2.52 tf/cm2），由圖 1(b)設計最佳之抗彎矩斷面。
y
檢核此斷面之剪力強度是否足夠？（φ  = 0.9，腹板未使用加勁板，k  = 5.0）
v v
檢核此斷面因活載重造成之撓度，是否符合規範之限制。
P P t
D  D  :側撐  f
P   P
L L
t
w
BH H×B×t ×t H
w f
單位: mm
3@2.8 = 8.4 m
圖1(a) 簡支梁和斷面  B
F = 2.52 tf/cm2 ,  C = 1.0
y b
235
BH 820×400×16×25 (254 kg/m)
BH 500×500×25×40 (396 kg/m)
BH 600×400×19×40 (329 kg/m)
)
m
- BH 826×350×16×28 (251 kg/m)
f
t(
度
強 BH 610×350×19×45 (325 kg/m)
矩
230
彎
計
設
BH 870×350×16×25 (240 kg/m)
BH 920×300×19×25 (247 kg/m)
227
2.0  4.0  5.0
3.0
無側撐長度 L  (m)
b
圖1(b) 梁設計彎矩強度
（請接第二頁）
104年專門職業及技術人員高等考試建築師、技師、第二次 全三頁
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  第二頁', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "0e87686bba8f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00253', 'structural-eng', 'structural-eng-moex-104-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '【極限設計法】有一雙槽鋼拉力桿以連接板和 H 柱接合如圖 2 示，槽鋼為 C200×75
（H×B×t ×t = 200×75×6×12.5 mm），使用直徑為2.5 cm的A325高拉力螺栓，1.6 cm
w f
厚的連接板和H柱的有效銲長為35 cm，採用A992鋼料（F = 3.5 tf/cm2，F = 4.6 tf/cm2）
y  u
及 E70銲條（F = 4.9 tf/cm2），E  = 2040 tf/cm2。
E70  s
求此拉力桿的設計強度。（20分）
若連接板強度足夠，求設計填角銲的銲腳長度w。（10分）
T 連接板 Y
3 C
4 y
T H X X
10
t
35  w
t
f
5   10   7  B
w 單位: cm
圖2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "0e87686bba8f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
