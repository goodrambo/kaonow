-- W1.4 new questions batch 4032/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00074', 'structural-eng', 'structural-eng-moex-111-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '試述何謂加勁擋土結構（Reinforced Soil Structures 或稱 Mechanically
StabilizedEarthWalls），包含加勁土壤的原理、加勁材料種類、依使用目
的而區分的結構種類；（10 分）加勁擋土牆與一般擋土牆設計時的不同
處在於需進行內穩定檢核，試繪圖並說明加勁擋土牆內穩定可能會發生
的 5 種破壞模式（failure modes）及原因。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "1190d5b0cc2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00075', 'structural-eng', 'structural-eng-moex-111-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '如下圖上、下水位面水頭差 600 mm，流經 A、B、C 三種土壤（斷面
50 mm×50 mm，高度分別為 H =50 mm、H =100 mm、H =50 mm），
A B C
滲透係數分別為10-2 cm/sec、10-1 cm/sec、10-3 cm/sec，若以下水位面處
為基準，請問 a、b、c、d四個位置的水頭高各是多少 mm？（15 分）並
計算 5小時後的總流量 Q是多少立方公尺？（10分）
相關公式：
H
K
v(eq) H
n
i
i1K
i
其中，H為土層厚度；K為土層滲透係數
k =10-2cm/sec
A
k =10-1cm/sec
B
k =10-3cm/sec
C', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "1190d5b0cc2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00076', 'structural-eng', 'structural-eng-moex-111-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '請計算下圖中鋼板樁貫入至砂土層時，在安全係數為 1時的最小臨界深
度 D 。（25 分）
L
=16.5kN/m3
''=38º
1 γ
L

=19.3kN/m3
sat
2 ''=38º
L γ
z 
3 3
L =19.3kN/m
sat
''=38º
L γ
D
4
L  =9.81kN/m3
w
γ
相關公式：
K tan2(45 )
a 2
K tan2(45 )
p 2
L L (zL L )K
a 1 2 1 2 a
(zL L )K
p 1 2 a
(zL)(K K )
2 p a
(L )4  A(L )3  A (L )2  A (L ) A 0
4 1 4 2 4 3 4 4
其中
(L L )K L (K K )
A  1 2 p 3 p a
1 (K K )
p a
8P
A
2 (K K )
p a
6P[(K K )(2z L )(L L )K ]
A  p a 3 1 2 p
3 [(K K )]2
p a
P[6z(L L )K 6zL (K K )4P]
A  1 2 p 3 p a
4 [(K K )]2
p a
其中，P為之面積；L、z、L 及L 請參閱圖說
3 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "1190d5b0cc2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00077', 'structural-eng', 'structural-eng-moex-111-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一彈塑性鋼桿 AB斷面大小為1500mm2，其彈性係數及降伏強度分別為
E 200GPa， 250MPa。若 C點受一外力 Q作用（如圖所示），外
Y
力 Q由 0 逐漸增加至550kN後卸載，試回答下列問題，不需考慮桿件受
壓挫屈（buckling）：（25 分）
C點之永久變形量（Permanentdeflection），單位請使用mm並標明方向。
鋼桿之殘餘應力（Residualstress），單位請使用MPa並標明受拉或受壓。
100mm
400mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec26b6bb0d72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00078', 'structural-eng', 'structural-eng-moex-111-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一邊長為100mm之正方體混凝土塊安置於一桁架內（俯視圖如圖 a所
示），混凝土塊的其中四個面設有剛性板（如圖 b所示）並均勻受力，假
設混凝土塊為一均勻材質，其彈性係數 E=32 GPa，柏松比為 v=0.17。
若給予外力 F=150 kN，使混凝土塊在與桁架接觸之表面產生軸向應力。
試回答以下問題：（25分）
請計算混凝土塊之體積變化量V（mm3）。
請計算混凝土塊內之應變能 U（焦耳）。
100mm
F=150kN
100mm
F=150kN
圖a 圖b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec26b6bb0d72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00079', 'structural-eng', 'structural-eng-moex-111-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一薄壁懸臂樑（其斷面如圖所示）在自由端 C點（斷面最外側）處受
一集中力P20kN作用，其壁厚均為4mm，試回答下列問題（單位請
使用MPa）：（25分）
請計算 A點之最大主應力、最小主應力，及最大剪應力。
請計算 B點之最大主應力、最小主應力，及最大剪應力。
4mm
h=75mm
200mm
b=100mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec26b6bb0d72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00080', 'structural-eng', 'structural-eng-moex-111-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一樑 AB 由兩柱 CD 柱及 AE 柱支撐（如圖所示），兩柱有相同之彈性模
1
數（E）及慣性矩（I），長度分別為 L及2L。若在 B點受一向下力 P，
2
請計算臨界載重P ，並使用 E、I、L表示。（25分）
cr', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec26b6bb0d72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00081', 'structural-eng', 'structural-eng-moex-111-050f1447', 'sub-structural-eng-03', NULL, 'essay', '剛構架受動態載重如下圖，忽略軸向變形、構架質量以及節點 A、B 集
中質量的旋轉慣量，假設柱以及梁的長度 L均為3 m、撓曲剛度 EI值均
為 2000 N/m2，在第 2 自由度上受向上為正的簡諧外力作用。回答下列
問題：
請依圖上所示自由度編號以直接勁度法建立四自由度的勁度矩陣以
及質量矩陣後利用靜態濃縮方法將勁度矩陣以及質量矩陣濃縮為2自
由度（1以及 2）矩陣。（10 分）
假設沒有阻尼力，根據子題結果建立第一及第二振態運動方程式。
（10 分）
假設各振態阻尼比皆為0.03，求自由度 2的穩態位移振幅。（5分）
p(t)=sin(5t)
2
3 4
A
1 B
m =1kg
y A
m =2kg
B
x', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "af084a223abd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00082', 'structural-eng', 'structural-eng-moex-111-050f1447', 'sub-structural-eng-03', NULL, 'essay', '鋼筋混凝土在耐震設計方面有許多特別規定，有關於撓曲構材配筋的規
定，請回答下列問題：
計算梁寬最大值的規定為何？此規定的理由為何？（5分）
縱向鋼筋最大鋼筋比的規定以及搭接的規定為何？理由為何？（10分）
設置閉合箍筋的目的為何？為達到此目的，有關設置閉合箍筋的位置
和間距的規定為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "af084a223abd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00083', 'structural-eng', 'structural-eng-moex-111-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有關於建築結構耐震設計之動力分析方法，請回答下列問題：
規則性結構在高度和樓層數上符合何條件時必須進行動力分析？（8分）
已知一兩層樓剪力屋架（Shearbuilding），其勁度矩陣及質量矩陣分
別為：
100 0   3000 1500
M  (kNsec2/m)，K  (kN/m)
0 100 1500 1500
假設所有模態阻尼比皆為 5%，若其設計反應譜為：S 0.45g/T且
a
S 0.7g，其中 T為結構週期。試依 SRSS法進行反應譜分析振態疊
a
加，求該結構之頂樓最大側向位移。（17分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "af084a223abd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
