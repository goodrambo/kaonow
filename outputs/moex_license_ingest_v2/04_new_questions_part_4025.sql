-- W1.4 new questions batch 4025/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00004', 'structural-eng', 'structural-eng-moex-114-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '一均布荷重 200 kPa 透過 T 形鐵板作用在地面，如下圖所示。請估算在
A點下方 40 m處所受之應力增量。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "66a1800f5824", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00005', 'structural-eng', 'structural-eng-moex-114-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '等肢角鋼斷面如圖 1 所示，試求此斷面之幾何中心 GC.位置<C ,C >，並
x y
計算此斷面之面積二次慣量 I 、I 、I 。就一旋轉角度的座標而言，
xx yy xy
其面積二次慣量 I 、I 、I 之主值以及與其對應之主軸角為何？其中，
x''x'' y''y'' x''y''
L=0.150 m、t=0.015 m。（25 分）
C
x
t
y''
y
x''
L
x
GC.
C
y
L
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b369d57ae92c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00006', 'structural-eng', 'structural-eng-moex-114-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一曲臂懸臂梁如圖 2 所示，其中，節點以英文字母 a、b、c、d編號，梁
則以數字 1、2、3 編號，各段梁長為 L =1000 mm、L =500 mm、
1 2
L =250 mm，斷面為均勻實心圓，其半徑為 r=10 mm，材料為結構鋼，
3
其彈性係數 E=200000 MPa，柏松比=0.25，剪力係數 G=80000 MPa，
現於梁自由端之x 與 y方向施加集中力，分別為 P =120 N、P =100 N，
x y
試繪出三段梁之自由體圖，請清楚標示其點位、受力大小與方向，力量
可以單箭頭表示，力矩以圓弧箭頭或依據右手定則之雙箭頭表示皆可。
計算整個曲梁之最大法向應力 與最大法向應變 ，並指明其發生
max max
之點位。梁自重與端點接頭效應可忽略不計。（25 分）
L
1
z
y
1 b x
a
2 L
2
c
P
y L
3 3
d
P
d x
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b369d57ae92c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00007', 'structural-eng', 'structural-eng-moex-114-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '兩斷面相同之橫梁相互對向以懸臂方式固定於兩側剛性牆上（圖 3a），
原長L=500 mm，斷面積A=50 mm2，在環境溫度為T =20℃的情況下，
0
兩梁中間隔著一個大小為=0.1 mm 的間隙。左、右梁分別由材料 a 與
材料 b所製成，此二材料皆為雙線性彈塑性材料，在其應力-應變曲線中
（示意如圖 3b），第一段斜率為 E =200 GPa、E =100 GPa，第二段斜
1a 1b
率為 E =20 GPa、E =10 GPa；降伏點為 =200 MPa、 =100 MPa；
2a 2b ya yb
假設熱膨脹係數為常數， =1.0×10-5 (1/℃)、 =1.6×10-5 (1/℃)，試繪
a b
出溫度升高與梁內軸力之關係曲線。梁自重與端點效應可忽略不計。（25分）
E
2
L L y 1
E
a b 1 解壓
1
圖 3a 圖 3b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b369d57ae92c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00008', 'structural-eng', 'structural-eng-moex-114-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一水平鋼梁由一中間梁與兩側之短懸臂所組成，三者以鉸連接，且具
有相同之矩形斷面，梁寬 b=100 mm，梁深 h=400 mm，其長度由左
至右，分別為 L =800 mm，L =2000 mm，L =1000 mm。材料彈性
1 c 2
係數為 E=200000 MPa。如果於中間梁之跨中央處施予一集中彎矩
M=2×107 N·mm（圖 4）。試繪出全梁（包括中間梁與兩側之短懸臂）
之剪力圖與彎矩圖，並計算施加集中彎矩處之梁位移量與傾斜角。軸向
變形與梁自重皆可忽略。（25分）
L
1
L L
c 2
圖 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b369d57ae92c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00009', 'structural-eng', 'structural-eng-moex-114-050f1447', 'sub-structural-eng-03', NULL, 'essay', '設計地震水平總橫力：V aD W
1.4α Fu
y
一棟 8層樓平面構架如下圖，假設各樓層高3.5m，總樓高H28m，各
樓層重20kN，總重W160kN。已知T0.8sec，I1.25，S 0.6，
aD
Fu 2，α 1.4，試計算：
y
基底總剪力V ？（5 分）
0
各樓層設計水平力F ？（15分）
i
基底總彎矩M ？（5 分）
0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "d60a7f9fefce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00010', 'structural-eng', 'structural-eng-moex-114-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一 2 層樓平面構架簡化為一 2-DOF結構系統，如下圖所示。
m ,0 k ,k
1  2    11 12
其質量矩陣 M  KN-sec /m ，勁度矩陣 K  KN/m
0,m k ,k
2 21 22
假設：m m 100(KN-sec2/m)，k k 1500(KN/m)，求此結構之：
1 2 1 2
各模態週期（period）(T)和頻率（frequency）(ω )。（10分）
i i
各模態形狀係數（modeshape）( )。（10分）
i
各模態之貢獻參與係數（modal participation factor）(Γ )。（5分）
i', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "d60a7f9fefce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00011', 'structural-eng', 'structural-eng-moex-114-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一 3 層樓之平面構架，簡化為3-DOF之結構系統分析，若各振態頻率：
ω  14.5
1
ω ω  31.1 rad./sec
2
ω 46.2
3
假設第一及第三振態阻尼比：ζ ζ 0.05，若採用 RayleighDamping：
1 3
[c]a [M]a [K]
0 1
求：係數a ？和a ？（15 分）
0 1
第二振態之阻尼比ζ ？（10分）
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "d60a7f9fefce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00012', 'structural-eng', 'structural-eng-moex-114-050f1447', 'sub-structural-eng-03', NULL, 'essay', '建築物耐震設計準則規定，建築物至少要能達到「小震不壞、中震可修、
大震不倒」的耐震標準。
試說明：何謂韌性設計與如何在鋼筋混凝土（RC）耐震設計中達到這樣
的目標？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "d60a7f9fefce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00013', 'structural-eng', 'structural-eng-moex-114-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖 1所示之一層樓單跨度剛構架（Rigid-jointedframe），梁及柱皆為垂
直剛接，兩柱底為固定支承。梁柱之撓曲剛度均為 EI，長度均為L。若
忽略所有桿件之軸向變形，請推導對應側向作用力P之側向勁度（提示：
請先寫出結構之勁度矩陣）。（25分）
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "297037f57605", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
