-- W1.4 new questions batch 1623/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('food-tech-moex-00874', 'food-tech', 'food-tech-moex-098-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '有一冷凍工廠進貨 1000 kg 的雞肉（24℃）其水分含量為 70%，假設凍結點為-1℃，
放置在-21℃的冷凍庫，該批雞肉凍結至-21℃時，冷凍庫之冷凍負荷為多少？（15分）
（參考公式）
該雞肉比熱估算公式為：
凍結點以上之比熱(c)：S  = 1.86a+0.47(kJ/kg)
L
凍結點以下之比熱(c)：S  = 0.70a+0.47(kJ/kg)
S
（其中 a 為水分含量）
水結成冰的潛熱為 334.94 kJ/kg', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "e9d3e85f6348", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00875', 'food-tech', 'food-tech-moex-098-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '電滲析（ED）、逆滲透（RO）、奈米過濾（NF）、微孔膜過濾（MF）、超過濾
法（UF）是常見的膜處理技術，若希望將海洋深層水中的鹽度降低，使用何種膜處
理較為合適？請說明其原理。若要增加鹽濃度作為製造豆腐的鹽滷，使用何種膜處
理較為合適？請說明其原理。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "e9d3e85f6348", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00876', 'food-tech', 'food-tech-moex-098-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '請比較下列名稱之差異：（30 分）
鮮乳（fresh milk）與保久乳（sterilized milk）。
流質食物的 viscosity（黏度）與 stickiness（黏性）。
instant foods（速食）及 ready to eat（RTE，即時食品）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "e9d3e85f6348", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00877', 'food-tech', 'food-tech-moex-098-c3f21a1e', 'sub-food-tech-03', NULL, 'essay', '試述卵蛋白（egg  white）主要含何種蛋白質？說明如何呈現起泡性質（foaming
property）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "c70b53c35d22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品化學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00878', 'food-tech', 'food-tech-moex-098-c3f21a1e', 'sub-food-tech-03', NULL, 'essay', '食品中之水分依其存在狀態可分自由水與結合水，何謂結合水（bound  water）？
試述食品之水活性（water  activity  Aw）為何？白米（Aw＜0.65）在適量水中
加熱煮成米飯（Aw  ﹥0.9）後，貯存安定性變差，亦即米飯比白米容易被微生物
汙染或被酵素（如 α-及 β- amylase）水解，請從結合水及水活性之觀點加以說明。
上述白米中之米澱粉在水煮過程中有何變化？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "c70b53c35d22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品化學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00879', 'food-tech', 'food-tech-moex-098-c3f21a1e', 'sub-food-tech-03', NULL, 'essay', '肉類中呈現鮮紅色的必要條件為何？何種處理可在貯存時保存其鮮紅色？
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "c70b53c35d22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品化學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00880', 'food-tech', 'food-tech-moex-098-c3f21a1e', 'sub-food-tech-03', NULL, 'essay', '試述牛乳中之酪蛋白膠粒（casein  micelle）及其可能之構形。如何增加酪蛋
白膠粒之安定性？如何加工製成乾酪凝乳（cheese curd）或酸酪乳（yogurt）？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "c70b53c35d22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品化學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00881', 'food-tech', 'food-tech-moex-098-c3f21a1e', 'sub-food-tech-03', NULL, 'essay', '試分別說明含蛋白質食品在 60~100℃及 200℃溫度下加熱，其性質有何改變？
又可能造成何種有利、有毒反應及產物？（20 分）
六、在高溫烘培時，麵包表皮會有梅納反應（Maillard  reaction），請說明此褐變必需有
何成分物質存在才會進行？中間產物如α , β-dicarbonyl compounds之基本結構式是
什麼？最後是經何種反應產生香氣（odor）？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "c70b53c35d22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品化學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00882', 'food-tech', 'food-tech-moex-098-c3f21a1e', 'sub-food-tech-03', NULL, 'essay', '果膠質是植物細胞壁間之中膠層（middle  lamella）的多醣類，其組成分為何？
如何製備果凍？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "c70b53c35d22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品化學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "七", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00883', 'food-tech', 'food-tech-moex-098-d847e05e', 'sub-food-tech-04', NULL, 'essay', '說明「食品可追溯系統」（Food  traceability）的意義，並分析其在食品加工業的重
要性。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:12:03+00:00", "source_pdf_sha1": "018eacb33f4b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "020", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品工廠管理", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
