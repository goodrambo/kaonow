-- W1.6 questions batch 6592/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-4ece01bd-moex-00091', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '一外伸簡支梁 ABC，其中 A端為鉸支承、B為滾支承、C端為自由端。
AB、BC分別長6 m及 2 m，撓曲剛度為常數 EI。全梁承受一均佈載重
12 kN/m（如下圖所示）。試使用共軛梁法（the conjugate beam method）
求出：
鉸支承 A端之傾角。（10 分）
自由端 C之垂直變位。（15分）
12kN/m
EI C
A B
6m 2m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "503c60a4f0d4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00092', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '一對稱靜不定剛架系統 ABCD以三根桿件相接，各桿長度、彎曲剛度如
下圖所示。現於 BC 桿件承受一均佈載重 15 t/m，試以任意方法分析此
剛架，並繪製剪力及彎矩圖。（25 分）
15t/m
B C
EI
3m
2.5EI 2.5EI
D
A
4m 4m 4m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "503c60a4f0d4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00093', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '有一鋼筋混凝土梁的斷面為中空，如圖所示。梁斷面有效深度d=63cm。
混凝土抗壓強度f= 280 kgf/cm2，鋼筋降伏強度f = 4200 kgf/cm2。若梁
c y
斷面配置設計規範規定的最少撓曲鋼筋，試以最少鋼筋量計算此梁斷面
的彎矩設計強度M 為多少？（25分）
n
0.8 f 14
參考公式：A  c b d及A  b d之較大者。
s,min f w s,min f w
y y
45cm
m
c
5
1
m m
c c
3 0
6 4
m
c
5
1
10cm 10cm
25cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "142c974a0f5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00094', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '有一鋼筋混凝土簡支梁，跨度為8 m。梁斷面為矩形，寬度b =45 cm，
有效深度d=65.6cm。梁全跨度承受均佈設計載重 w =12tf/m。梁全跨
u
度皆配置 8 支 D29 拉力鋼筋與 D13 閉合矩形剪力鋼筋。混凝土抗壓強
度f=280kgf/cm2，拉力鋼筋降伏強度 f =4200kgf/cm2，剪力鋼筋降伏強
c y
度 f =2800kgf/cm2。試計算距支承 50cm處，設計規範容許之剪力鋼筋
yt
最大間距為多少？（25 分）
參考公式：請自行選擇適合的公式，並檢查其正確性，若有問題應自行
修正。
V 0.53 fb d
c c w
V d
V (0.50 f175 u )b d 0.93 fb d
c c w M w c w
u', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "142c974a0f5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00095', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '如圖所示為鋼筋混凝土梁的矩形斷面。配置 5 支 D25 拉力鋼筋與
D13@15 cm 閉合矩形剪力鋼筋。剪力鋼筋之混凝土淨保護層為 4 cm。
混凝土抗壓強度f =280kgf/cm2，拉力鋼筋降伏強度f =4200kgf/cm2，
c y
剪力鋼筋降伏強度 f = 2800 kgf/cm2。試檢核鋼筋配置是否滿足設計規
yt
範對裂紋控制的規定？（25分）
30cm
m
c m
0 c
6 5
.2
參考公式：請自行選擇適合的公式，並檢查其正確性，若有問題應自行
修正。
2800
s38 2.5c
f c
s
2800
s30
f
s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "142c974a0f5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00096', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '耐震設計的鋼筋混凝土柱之橫向鋼筋一般包括矩形閉合箍筋與繫筋。繫
筋一端具耐震彎鉤，另一端為至少 90o之彎鉤。如圖所示為一耐震設計
的鋼筋混凝土柱斷面，配置 D25縱向主筋，橫向鋼筋僅標示矩形閉合箍
筋。橫向鋼筋之混凝土淨保護層為 4 cm。混凝土抗壓強度f= 280
c
kgf/cm2，橫向鋼筋降伏強度f = 4200 kgf/cm2。若設計箍筋與繫筋有相
yt
同的 12cm間距，且皆為 D13鋼筋，試計算所需繫筋的數量（最經濟用
量），且於斷面圖上標示繫筋的位置及繫筋彎鉤的排置。（25 分）
參考公式：請自行選擇適合的公式，並檢查其正確性，若有問題應自行
修正。
f A
A 0.3sb c ( g 1)
sh c f A
yt ch
f
A 0.09sb c
sh c f
yt
50cm
m
c
0
5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "142c974a0f5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00097', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '正方形斷面桿件如下圖所示，（無外力作用）桿件未變形軸向長度
L1250mm、正方形斷面邊長b50mm。當承受軸拉力P  400kN，桿
件變形後軸向長度L 1251mm、正方形斷面邊長縮短為49.99mm，求
d
此時桿件軸向應力、正向應變及、蒲松比、桿件最大剪應力及最
x x y
大剪應變。（25分）
z z
x b y
L
b
P P
L
d', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "119e264872f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00098', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '如下圖所示之平面桁架結構，a點、d點及 f 點為鉸支承，b點承受水平
集中載重120kN ，求桁架 ab、cd 及 ef桿件的軸力。（25分）
3m 3m 3m 3m
c a
d
3m
e
b
120kN
3m
f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "119e264872f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00099', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '梁桿件斷面如下圖所示，求此斷面的慣性矩I 、I 。（25 分）
x y
y
210mm
30mm
x
210mm
210mm 210mm
30mm 30mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "119e264872f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00100', 'locality-4ece01bd', 'locality-4ece01bd-moex-110-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '均質材料桿件，材料之應力應變關係如右下圖所示，圖中降伏應力
250MPa、降伏應變 0.00125，桿件斷面積A8cm2，a點及c點
y y
為固定端。當b點承受軸向水平外力P 360kN作用，已知此時 ab 桿件
已經降伏，求 bc桿件軸向應力及軸向應變、b 點軸向位移、ab 桿件軸向
應變及其應變能。（25分）
P y
a c
b y
y
0.8m 2m
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "119e264872f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "327", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
