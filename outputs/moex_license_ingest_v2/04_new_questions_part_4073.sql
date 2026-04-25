-- W1.4 new questions batch 4073/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00484', 'structural-eng', 'structural-eng-moex-094-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟十二層樓之鋼筋混凝土建築物，除一樓高 4m 外，其他十一層高均為 3.2m，
二樓重 400 噸，三至十二樓標準層重 300 噸，屋頂層重 200 噸，並有屋突。假設基
底總剪力為450噸，請計算施加於各樓層之地震力及各樓層所承受的剪力。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "9a4cae52bccf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00485', 'structural-eng', 'structural-eng-moex-094-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟建築物內裝設有一馬達，其質量為 m，以Ω rad/sec 頻率運轉，假設馬達質心
有 e 之偏心，馬達與建築物之總質量為 M，相對於基礎建築物可視為剛性體，如果
基礎的勁度及遲滯阻尼分別為 k 及 c。
請導出垂直方向運動方程式。（10 分）
請導出垂直方向穩態振動反應位移。（10 分）  m
請計算作用於基礎之力。（5 分）  e
Ω⋅t
u
(M－m)
k/2  c k/2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "9a4cae52bccf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00486', 'structural-eng', 'structural-eng-moex-094-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '剛架（frame）如圖一，其構架高為 4m，跨距為 8 m，A 點為固接（fixed），C 點
為滾接（roller）。若每根桿件為邊長 20 cm之方形截面，且楊氏係數E = 106 N/cm2
，則當B點有一垂直載重10 N時，且不計軸力及剪力下，請以最小功法（least work）
計算每根桿件之彎矩。（若以他法計算，則不予以計分）（25 分）
10 N
B  A
4m
C
4m 4m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "69f5558d8ff5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00487', 'structural-eng', 'structural-eng-moex-094-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '剛架（frame）如圖二，其構架高為4m，跨距為 8 m，A、E兩點為固接（fixed），
C 點為鉸接（hinge）。若每根桿件之慣性矩 I 及楊氏係數 E 為常數，則當 B 點有一
垂直載重 10 N 時，計算每根桿件之彎矩。（25 分）
10 N
A C
B
4m
D
E
4m 4m
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "69f5558d8ff5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00488', 'structural-eng', 'structural-eng-moex-094-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '二跨之靜不定梁如圖三，各梁之楊氏係數 E 及慣性矩 I 為常數，試每隔 2.5m 畫出
BC 跨度中點 D 之彎矩感應線（influence line）。（25 分）
A  B D C
10m
10m
圖三
（請接背面）
高等考試建築師、技師考試暨普通考
94 年專門職業及技術人員 考試試題  代號：00360  全一張
試不動產經紀人、地政士、記帳士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "69f5558d8ff5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00489', 'structural-eng', 'structural-eng-moex-094-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '桁架（truss）示如圖四，A、B兩點為鉸接（hinge）。若每根桿件之斷面積為10 cm2
，楊氏係數 E = 106 N/cm2，則當 D點有一水平載重 24 N時，計算各桿件之應力。
（25 分）
C  D
24 N
8m
A  B
6m
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "69f5558d8ff5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00490', 'structural-eng', 'structural-eng-moex-094-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一鋼筋混凝土柱斷面如圖所示，採用混凝土 ′=280  kgf/cm2，鋼筋降伏強度
f
c
f =4200 kgf/cm2，試求作用於此斷面上之標稱軸力 P =90 t 時之標稱極限彎矩 M 與
y n n
延展比µ 。（20 分）
φ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "e7f264512771", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00491', 'structural-eng', 'structural-eng-moex-094-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一簡支 T型鋼筋混凝土梁，斷面尺寸為 b=120 cm，b =25 cm，h=12 cm，h=63 cm
w f
，d=50 cm，混凝土 ′=280 kgf/cm2，鋼筋降伏強度 f =4200 kgf/cm2。試使用 ACI 規
f
c y
範允許之最大拉力筋量的一半，計算此梁之設計彎矩。若梁之簡支跨距為 9m，並
承受靜載重（含自重）為 0.75 t/m，則可承受之最大容許活載重為何？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "e7f264512771", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00492', 'structural-eng', 'structural-eng-moex-094-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一 RC 構架樓層高 365cm，梁之尺寸與配筋等均相同，且柱與梁同寬，柱斷面為
60cm×60cm，梁之有效深度 d=70cm，拉力筋為 6-#8，採用混凝土 ′=280  kgf/cm2，
f
c
鋼筋降伏強度 f =4200 kgf/cm2，試檢核該構架角柱接頭之剪力強度。（20 分）
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "e7f264512771", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00493', 'structural-eng', 'structural-eng-moex-094-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '何謂混凝土之潛變與潛變係數？潛變對鋼筋混凝土構件之行為有何影響？（10 分）
一混凝土矩形柱長 1.5m，斷面為 25cm×35cm，採用混凝土強度為 280 kgf/cm2；
若此柱承受軸向壓力 P=15000 kgf，試求三年後柱之總軸向變形。（已知三年後混
凝土之潛變係數為 C =3.0，且不計收縮變形）（10 分）
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "e7f264512771", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
