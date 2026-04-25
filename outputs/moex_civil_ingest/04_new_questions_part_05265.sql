-- W1.6 questions batch 5265/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00288', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '針對在+z 軸上的一點 P，原點和點 P 間的距離 d=6，請回答下列有關圓
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
理由。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00289', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '如圖，有一個無窮大的平面電流分布（朝出紙面方向，zˆ方向），其面電
I
流密度為K  zˆK ，且K  （單位：A/m），請利用安培定律求電流分
s s W
布上下兩側區域（y>0 和 y<0）的磁場H 。（5分）
I
y
x
W 面電流
分布K
37870', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00290', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '有關傳輸線不連續處（底下以終端負載為短路為例）的電壓反射係數的
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
37870', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00291', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '如圖所示的簡單交流電路，電源v 8cos(t)（volt），電阻 R =3 Ω，電
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
別之處。（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00292', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '圖一中 A、B 為電源電路的兩端點。（每小題10分，共 30分）
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00293', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '圖二中，v 為電源，R、L、C分別為電阻、電感和電容。
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
37840', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00294', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '圖三所示之電路中，V =100∠0°為電源v (t)=100cos ωt 的相量（phasor）
s s
表示法，其中ω為頻率（單位：rad/sec）。（每小題 10 分，共 20分）
( )
當負載為一阻抗時，試求能傳送至負載的最大功率及此時之負載值。
當負載為一電阻時，試求能傳送至負載的最大功率及此時之負載值。
V=100∠0°
s
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00295', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '圖四為一濾波電路，其中v 和v 分別為輸入與輸出電壓，其轉移函數
s
V (jω)
（transferfunction）H jω = o 為頻率ω（單位：rad/sec）的函數。
o
V (jω)
s
Vo(jω)
試 推 導 圖 四  電 路 的 轉 移 函 數 H jω = ， 並 以
( )
Vs(jω)
K×(jω) m (1+jωB )
H jω = k=1 k 之形式表示之，並求式中之K和 c。（10 分）
( )
cn (1+jωA )
k=1∏ k
( ) ∏
R R3
2
－
+ R
4
R1
+ + +
v C v v C2 v
s 1 a b o
－ － －
圖四
圖四為圖四之轉移函數的波德圖（Bode Plot）漸近線，若
C =C =1 μF且R =10 kΩ，試求R 、R 、R 。（15 分）
1 2 2 1 3 4
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00001', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '砂模鑄造（Sandcasting）是具代表性的傳統鑄造方法，請列舉四種檢視
砂模品質的能力指標，並說明其個別意義。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "7c9e5c2b7da8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00002', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '平輥軋製程（flat-rollingprocess）施予過大輥軋力會造成輥輪顯著的撓曲
及扁平化，也易使輥輪機柱（rollstand）發生變形，增加輥輪間隙，影響
平板的厚度品質，請列出可以減少輥軋力的四種方法。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "7c9e5c2b7da8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
