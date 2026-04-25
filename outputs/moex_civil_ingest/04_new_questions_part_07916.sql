-- W1.6 questions batch 7916/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-8ec6300d-moex-00044', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '如圖一所示為二極體之應用電路。假設二極體 於順向偏壓之電壓降為
。請以二極體之定電壓模型分析此電路之輸出電壓 和輸入電壓

的轉移關係，將轉移特性曲線繪出，並請於適當處標示斜率和轉折點
, 
座標。（20 分）

D V
1 out
V V
in out
R V
2 in
R
1
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00045', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '如圖二所示為運算放大器之應用電路。假設運算放大器為理想運算放大器
且皆操作於線性區。請推導並以 、 表示電路之輸出電壓 。（15分）
10k   
15k
V 5k
1
10k
15k
V
out
12k
V 20k
2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00046', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '如圖三所示為雙載子接面電晶體（BipolarJunctionTransistor,BJT）之應
用電路。假設電容器 之電容相當大，並忽略電晶體之 Early effect。請
求出電路之小訊號電壓增益 （5 分）、小訊號輸入電阻 （5 分）

和小訊號輸出電阻 。（5 分）
/ 
V
 CC
 R
R out
C
v
R out
B
v R
in 1
R
R 2
in C
1
I
1
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00047', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '如圖四所示為左半部電路和右半部電路完全對稱之差動放大器電路。假
設電晶體 之轉移電導分別為 ，並忽略電晶體之通道長度
調變效應。請求出電路之小訊號電壓增益 。（15分）
~ ~

V
DD
I
D I
D
v
out
M M
1 2
v M M v
in1 3 4 in2
I I
SS1 SS2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00048', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '請合理說明圖五所示電路之回授機制的極性為正回授或負回授。（10 分）
V
DD
M M
3 4
v
out
R
1
v M M X
in 1 2
R
2
I
SS
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00049', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '如圖六所示為一在電源電壓為 5V之製程以互補式金氧半場效電晶體和
反相器實現之數位電路。若時脈訊號 、輸入資料訊號 之波形如圖六
所示，其中表示「邏輯 1」之高準位電壓為 5V，表示「邏輯0」之低準
 
位電壓為0V。請分別繪出節點 （10 分）和節點 （10 分）的波形，並
以數位電路中常見的電路名稱為此電路命名。（5分）
 
CLK CLK
P Q
D
CLK CLK
CLK CLK
PMOS NMOS
CLK CLK
CLK
time
D
time
P
time
Q
time
圖六', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00050', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '已知球座標單位向量 ，
R x y z
Raˆ  xaˆ  yaˆ  zaˆ
請證明位置 （10分）
R x y z
證明向量恆等式‧A0（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "ee5540245bf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00051', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '畫出電偶極（electric dipole）結構及其電力線分布，並寫出在計算電
偶極結構時，假設的前提為何？（8 分）
畫出磁偶極（magneticdipole）結構及其磁力線分布，並寫出在計算磁
偶極結構時，假設的前提為何？（8 分）
上述的電力線與磁力線分布最明顯的差異為何？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "ee5540245bf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00052', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '如下圖，有一球狀電子雲分布在0 R  a的區間內具有體電荷密度
ρ =1/R。而在電子雲的外部時（即R  a時），其體電荷密度 ρ =0。請求
v v
出分別在0 R  a 與R  a的電場強度及電位分布。（20分）
ρ
v
18030', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "ee5540245bf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00053', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '如下圖（a），開關S在t=0導通電路。而在傳輸線z=0與z=l的前5 μs線
上電壓變化分別如圖（b）與圖（c）。試求V 、R 、R 與週期T。（20分）
0 g L
V
0
（a） （b） （c）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "ee5540245bf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
