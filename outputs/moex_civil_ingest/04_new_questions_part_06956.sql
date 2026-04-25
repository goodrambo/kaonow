-- W1.6 questions batch 6956/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-8ec6300d-moex-00097', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個雙載子接面電晶體（BJT）差動放大器電路如圖一所示，假設電路
在作直流分析時，所有電晶體的基極電流等於 0(I =0)，且所有的
B
V =0.7 V。電晶體 Q 與 Q 完全匹配，電晶體 Q 的射極-基極接面
BE 1 2 3
（E-Bjunction）面積是電晶體 Q 的 2 倍。電路中：熱電壓 V =25 mV、
4 T
V =V =5 V。（每小題 10分，共 20 分）
CC EE
當 v =v =0，如果 Q 與 Q 的直流偏壓電流 I =I =0.15 mA 且
1 2 1 2 C1 C2
V =V =2 V，此時 R 、R 與 R 的值分別為何？
C1 C2 1 2 b
當 v =v /2、v =v /2，若 V =，根據所計算出的 R 與 R 與直
1 id 2 id A 1 2
流偏壓，請計算出差動小信號電壓增益 v /v =(v v )/(v v )。如
od id c2 c1 1 2
果 = = = =120，請計算出差動放大器 Q -Q 的輸入阻抗。
1 2 3 4 1 2
V
CC
R R
1 2
-v +
od
R v Q Q v
b 1 1 2 2
Q Q
4 3
-V
EE
圖一
34560', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00098', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '圖二為一個使用2 個運算放大器（operational amplifier, op amp）的權重
加法器（weightedsummer）電路。在此電路中，R =100 kΩ、R =100 kΩ、
1 2
R =400 kΩ、R =150 kΩ、R =300 kΩ。（每小題 10 分，共 20分）
a b c
如果這 2個運算放大器均為理想放大器，請計算 v 。
o
如果這 2 個運算放大器的增益 A 均為 500，且輸入阻抗均為無限大，
請計算 v 。
o
R
c
R
1
v -
1 R v
a A o
+
R
2
v R
2 - b
A
+
V’
2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00099', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個邏輯真值表如圖三所示，A、B、C為輸入變數，X與 Y為輸出函
數，請將之化簡。（每小題 10分，共 20分）
X邏輯函數為何？請繪出此邏輯函數的 staticCMOS電路圖。
Y邏輯函數為何？請繪出此邏輯函數的pseudoNMOS電路圖。
A B C X Y
0 0 0 0 1
0 0 1 1 0
0 1 0 1 1
0 1 1 1 1
1 0 0 1 0
1 0 1 0 1
1 1 0 0 1
1 1 1 0 0
圖三
34560', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00100', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個共源極（common-source）的 MOSFET 放大器如圖四所示，已知
此 MOSFET的 g =5 mA/V、r =80 k、C =5 pF、C =0.4 pF、輸出
m o gs gd
端總電容 C =20 pF。電路中的元件：R =100 k、R =3 M、
L sig G1
R =1 M、R =20 k、R =5 k、R =80 k、C =0.1 F、C =1 F、
G2 D S L C1 C2
C =5 F。（每小題 10 分，共20分）
S
請使用短路時間常數法（short-circuittimeconstant），計算出低3 db 頻
率（lower-3db frequency）f 。
L
請使用開路時間常數法（open-circuittimeconstant），計算出上 3 db 頻
率（upper3dbfrequency）f 。
H
V
DD
R R
G1 D
C
C2
V
o
R C
sig C1
M
1
R
L
V
sig R
G2 R C
S S
R
in
圖四
34560', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00101', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-61c13555', 'sub-locality-8ec6300d-03', NULL, 'essay', '有一個串並（series-shunt）回授放大器如圖五所示，在此我們使用一個
差動放大器，此差動放大器的增益=103，輸入電阻 R =200 k，輸出
id
電阻 r =2 k。在此電路中，R =20 k、R =2 k。
o S L
請說明為何此電路為一個負回授電路？（6分）
假設理想的回授放大器增益 A =V /V =20 V/V，其所需的回授因數
f o s
（feedback factor）為何？如果 R =2 k，R 應該為何？（6 分）
1 2
請畫出完整的 A 電路，其中 R 與 R 為中所計算出之結果帶入，使
1 2
用此電路計算 A、R 與 R ，並計算出此回授放大器之實際 A、R 與
i o f in
R 。（8 分）
out
R
S
+
V
O
μ
-
V
S R
2
R R
1 L
R
R out
in
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00102', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '針對下圖的簡單傳輸線（長度為l）電路，其中電壓源v   V cos(t)，
g o
內阻為 R ，傳輸線的特性阻抗Z  R ，負載電阻R  R ，欲求解負載
o o o L o
電壓v 。
L
若基於電路學求解v 時，請寫出其針對該傳輸導線的基本假設，並寫出
L
導線上任一點（參考平面 C-C''處）的電壓v ，以及負載電壓v 。（9分）
C L
若基於電磁學求解v 時，請寫出其針對傳輸導線的基本假設，並寫出
L
導線上任一點（參考平面C-C''處）的電壓v ，以及負載電壓v 。（16分）
C L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "bfae7a55da26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00103', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '下列是有關向量和向量場特性的探討與證明：
如果兩個向量A和B，針對另外一個特定向量 D的投影滿足下列的關係：
AD  BD
請問這是否可以推論A B？（2分）
如果你在子題的答案為非，設A BC，請找出一個C 0的例子
（可以透過畫圖呈現），並說明C必須滿足何種特性或關係。（10 分）
如果兩個向量場A(x,y,z)和B(x,y,z)的散度，滿足下列的關係：
AB
請問這是否可以推論A B？（3分）
如果你在子題的答案為非，設 A BC ，請找出一個向量場
C(x,y,z)0的例子，並說明C必須滿足何種特性或關係。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "bfae7a55da26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00104', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '在下圖的結構中，一對經由外部電壓源充電且充有正負電荷Q的3維立體
的電容極板，在其周圍建立了電場E，其周圍材料的導電率 和介電係數
皆為常數，請問其經由材料漏電的電流I為多少（用 Q、 、 等表示）？
ε ε
（25 分）
注意，針對此流經表面 S 向外的漏電流 I，其所帶走的電荷將由外部的
電壓源（沒有畫出來）所穩定補充供應。
Hint: J E & I   J ds
S', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "bfae7a55da26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00105', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '考慮一個沿著 z 軸方向傳播的平面波，其電場只有 x 分量且其表達式為
E (z) E ejkz，其中E 是電場的幅值，k   是波數。請計算其對
ε
x 0 0
應磁場H 的表達式，並說明其磁場分量的幅值H 與電場分量幅值E 之
0 0
間的比值，以及磁場分量的相位  與電場分量相位之間的關係。（25分）
H', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "bfae7a55da26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00106', 'locality-8ec6300d', 'locality-8ec6300d-moex-112-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '考慮下圖運算放大器電路：當輸入電壓 V 等於零時，輸出電壓 V 與輸
2 out
入電壓 V 的關係式為何？（10分）當 V 等於零時，輸出 V 與 V 的關
1 1 out 2
係式為何？（10 分）當兩輸入 V 及 V 皆不為零，求輸出 V 與兩輸入
1 2 out
的關係式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
