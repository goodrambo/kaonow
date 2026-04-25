-- W1.6 questions batch 5202/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00279', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '下圖電路R =125k，R =250k，R =250k，R =4k，R =2k，
sig G1 G2 D S
R =4 k，V =5V，電晶體參數：V =1V，V =50V。
L DD t A
當電晶體 I =0.5mA 及 V （overdrivevoltage）=0.5V，求算增益
D OV
G =v /v （僅直流分析時可忽略通道調變效應）。（8 分）
v O sig
假設 v 為弦波信號且電晶體操作於飽和區，求算 v 可允許的最大峰
sig sig
值與相對應的 v 。（12分）
D
V
DD
RD
R
G1 C
C2
v v
R C D o
sig C1
M1
CS R
L
v R
sig G2
RS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00280', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '下圖電路 R =10k，R =1k，R =1M，R =2k，運算放大器參
S 1 2 L
數：開路增益A =1000，輸入差動阻抗R =100k，輸出阻抗R =1k。
v id o
求算閉迴路增益 V /V。（10 分）
o i
求算 R 。（10分）
in
R
S
V
i
V
o
R
in
R
2
R
L
R
1
|
37860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00281', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', 'CMOS邏輯包含上拉網路（pull-up network）與下拉網路（pull-down
network），試畫出 CMOS邏輯Y  D ABC之電路。（10 分）
下圖為一反相器電路的標準元件，若要求第小題 CMOS邏輯需與此
標準反相器有相似的傳遞時間，請標示第小題 CMOS邏輯電路中每
顆電晶體的寬長比（W/L）。（10分）
W 3 μm
L 1 μm
In OUT
W 1 μm
L 1 μm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00282', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '請證明馬克斯威爾方程式以及勞倫茲力公式隱含了庫倫力定律：換言
之，請首先推導一個點電荷 q 存在時所產生的電場（過程中請使用高斯
1
定律求解），接著引入另一個點電荷 q ，計算其所受電力。（25分）
2
[提示]：馬克斯威爾方程式D 且DE
v
B
E 又勞倫茲力為F qEquB
t
B0
D
H J
t', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00283', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '針對在+z 軸上的一點 P，原點和點 P 間的距離 d=6，請回答下列有關圓
柱坐標和球坐標的問題：
z
6 P
O
y
x
寫出圓柱坐標的符號表示，寫出 P點的圓柱坐標值並說明此答案之意
義。（7 分）
請問點 P 處的圓柱坐標基底向量rˆ的方向是否確定或唯一？請詳細說
明理由。（6分）
寫出球坐標的符號表示，寫出P點的球坐標值並說明此答案之意義。（6分）
請問點 P 處的球坐標基底向量 ˆ的方向是否確定或唯一？請詳細說明
理由。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00284', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '如圖，有一個無窮大的平面電流分布（朝出紙面方向，zˆ方向），其面電
I
流密度為K  zˆK ，且K  （單位：A/m），請利用安培定律求電流分
s s W
布上下兩側區域（y>0 和 y<0）的磁場H 。（5分）
I
y
x
W 面電流
分布K
37870', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00285', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '有關傳輸線不連續處（底下以終端負載為短路為例）的電壓反射係數的
推導，如圖所示設入射波為Iez，反射波為Iez，則在短路負載處
o o
（z=0）的終端條件為：
V V V 0 ⑴
o o L
I I  I ⑵
o o L
一般認為這兩個終端條件乃是基於 z=0 處的克希荷夫電壓定律以及電流
定律；請證明⑴和⑵兩式直接和底下 z=0 處的電場邊界條件以及磁場邊
界條件相關：
E  E 0 ⑶
1t 2t
K nˆ(H H )
s 1 2 ⑷
且H 0
2
亦即，請由⑶式推導出⑴式。（10 分）
請由⑷式推導出⑵式。（10分）
[提示]：請利用圖及圖，想像傳輸線上的電流I是源自一個無窮大的平面電流
中寬度為W的一段電流，故推導過程中可以忽略邊緣效應。
Iez
＃1,空氣 ＃2,金屬
o
I
L
y=h
Z  z V 短路 nˆ E 0, H 0
o I e L Z
o o
z y=0
z=-d z=0
＃1,空氣 ＃2,金屬
W I
y=h .........
I
y=0
37870', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00286', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '如圖所示的簡單交流電路，電源v 8cos(t)（volt），電阻 R =3 Ω，電
s 1
阻 R =5 Ω，該迴路位於 xy平面上，且迴路面積為2 m2，請問：
2
v
1
R
1
v R v 8cos(t)
2 2 s
y
x
若不考慮法拉第感應定律，請寫出克希荷夫電壓定律（KVL）的表示
式，且分別求橫跨在 R 和 R 上的電壓 v 和 v ，以及電流 i。（7分）
1 2 1 2
若納入法拉第感應定律，且設前述迴路電流對應的磁通密度B為均勻
的且B  zˆB cos(t)（Tesla），求其對應的磁通量 Φ 以及感應電動勢
0
v 。（4分）
emf
承，重畫此時的等效電路，並重新計算電壓v 和 v （納入 v 疊加
1 2 emf
後的貢獻）。（10分）
承，請寫出此時的克希荷夫電壓定律的表示式，並比較它和的差
別之處。（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00287', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '圖一中 A、B 為電源電路的兩端點。（每小題10分，共 30分）
請利用網目電流法（meshcurrentanalysis）求得A、B兩點的開路電壓。
請利用節點電壓分析法（nodevoltageanalysis）求得 A、B兩點的短路
電流。
請繪出圖一電路之戴維寧等效電路（Thévenin equivalent network）和
諾頓等效電路（Norton equivalentnetwork）。
1 kΩ 4mA 12V
1 kΩ 1 kΩ
Ix
A
6V 2I
x
B
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:03+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00288', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '圖二中，v 為電源，R、L、C分別為電阻、電感和電容。
s
試推導i (t)之微分方程，找出i (t)與v (t)之關係式（以R、L、C和v (t)表
L L s s
示之，並讓i (t)最高階微分項之係數為 1）。（10分）
L
1 10V t 0
若 =2 H、 =5 W、C= F，且v (t)
50 s 30V t 0
試求i 0+ 、i'' 0+ 以及t>0 之 i (t)。其中i 0+ 和 i'' 0+ 分別為電源切
LL RL L L L
換發生後那一刻之i (t)以及i (t) 的一次微分值。（t=0+係指v (t)切換之後
L L s
       
瞬間之時刻。）（15 分）
L
圖二
|
37840', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:03+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
