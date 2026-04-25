-- W1.6 questions batch 169/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-4ece01bd-moex-00099', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-112-a5727cc1', 'sub-aboriginal-4ece01bd-03', NULL, 'essay', '燃煤飛灰已廣泛應用於混凝土。請說明燃煤飛灰應用於混凝土之限制，
以及列舉飛灰混凝土的優缺點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "c0b2de6a55da", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "515", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00100', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-112-a5727cc1', 'sub-aboriginal-4ece01bd-03', NULL, 'essay', '混凝土構造物經常發生壁癌白華現象。請說明何謂壁癌白華現象、發生
原因與對策。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "c0b2de6a55da", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "515", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00101', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-112-0a72e8f5', 'sub-aboriginal-4ece01bd-04', NULL, 'essay', '如圖 1 所示平面桁架承受垂直載重，A點為鉸支承，B點為滾支承，試
求 CD桿件之軸力，並敘明受拉力或壓力。（25分）
30kN
20kN 20kN
10kN 10kN 0.5m
1m
1.5m
C D B
A
6@2m=1122mm
圖1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "2fee89424ca5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "515", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學與鋼筋混凝土學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00102', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-112-0a72e8f5', 'sub-aboriginal-4ece01bd-04', NULL, 'essay', '如圖 2所示靜不定梁，A點為固定端，B點為滾支承，桿件 EI為常數，
跨度 L，承受均佈載重 w，試求支承反力並繪製剪力圖及彎矩圖，不限
定分析方法。（25 分）
w
L
A B
圖2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "2fee89424ca5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "515", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學與鋼筋混凝土學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00103', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-112-0a72e8f5', 'sub-aboriginal-4ece01bd-04', NULL, 'essay', '如圖 3所示鋼筋混凝土梁斷面標稱強度分析示意圖，已知此梁斷面擬承
受設計彎矩 M =80tf-m，建築限制梁寬 b=45cm，梁深度 h=60cm。假
u
設混凝土抗壓強度 f''= 280 kgf/cm2，鋼筋降伏強度 f 為 4200 kgf/cm2，
c y
有效深度 d = 53 cm，以單筋梁設計底層筋需用 5 支 D36 鋼筋，拉力鋼
筋面積A =50.35 cm2，經分析單筋梁無法符合規範要求之「拉力控制斷
S
面」，即拉力筋應變須達 0.005 以上，強度折減係數 方為 0.90。若以
A =50.35 cm2為前提，設d''= 7 cm，試求此斷面需用之最少壓力鋼筋
S
ϕ
面積As，方能使斷面符合規範要求之「拉力控制斷面」。（25分）
b 0.003
AAs e
s c εs
dd s
’ ’
’ d
AAs
s
e=0.005
s
圖3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "2fee89424ca5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "515", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學與鋼筋混凝土學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00104', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-112-0a72e8f5', 'sub-aboriginal-4ece01bd-04', NULL, 'essay', '如圖 4 所示鋼筋混凝土梁斷面，已知此梁斷面擬承受設計剪力
V =23,500 kgf，假設混凝土抗壓強度 f''=350 kgf/cm2，所有鋼筋降伏強
u c
度 f 或 f 為 4200kgf/cm2，試設計梁抗剪力所需之肋筋間距S，限用D10
y yt
鋼筋，單肢斷面積為0.71cm2，剪力強度折減係數 為 0.75。（25分）
80cm ϕ
15cm
20cm
肋筋
51cm
40cm
圖4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "2fee89424ca5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "515", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學與鋼筋混凝土學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00105', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-111-92e63a65', 'sub-aboriginal-4ece01bd-09', NULL, 'essay', '混凝土圓柱抗壓試驗是決定結構體強度與耐久性之重要方法，請說明：
混凝土圓柱抗壓試驗取樣方法。（10 分）判斷混凝土圓柱抗壓試體
強度是否合格之準則。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "18f5c4aa0341", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "612", "s": "1607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00106', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-111-92e63a65', 'sub-aboriginal-4ece01bd-09', NULL, 'essay', '「護岸」為保護溪岸之常見水利工程，請說明護岸工程之目的。（10分）
舉出三種常見之護岸工法。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "18f5c4aa0341", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "612", "s": "1607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00107', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-111-92e63a65', 'sub-aboriginal-4ece01bd-09', NULL, 'essay', '施工架是營建工地常見之假設設施，也是最常發生職安意外之媒介物。
請舉出至少五項一般框式施工架之安全查驗重點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "18f5c4aa0341", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "612", "s": "1607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL),
  ('aboriginal-4ece01bd-moex-00108', 'aboriginal-4ece01bd', 'aboriginal-4ece01bd-moex-111-92e63a65', 'sub-aboriginal-4ece01bd-09', NULL, 'essay', '道路管線挖掘常造成路面不平與交通意外，請舉出至少三項道路管線挖
掘施工之常見缺失與查核重點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:38+00:00", "source_pdf_sha1": "18f5c4aa0341", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "612", "s": "1607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
