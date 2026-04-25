-- W1.6 questions batch 1045/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-39f5e973-moex-00182', 'customs-39f5e973', 'customs-39f5e973-moex-110-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', 'kN-{1}，若有一棵 k 元樹（k_arytree）其中分支度（degree）為 i的節
點數為 i個，i=1,2,..., k，請問該k 元樹其葉節點數 L(k)為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "8f2ae7480c8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00183', 'customs-39f5e973', 'customs-39f5e973-moex-110-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '密文（Cipher text or Cypher text）：明請到家玩天你我來，應用環狀串列
（circularlinkedlist），請問明文（PlaintextorCleartext）為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "8f2ae7480c8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00184', 'customs-39f5e973', 'customs-39f5e973-moex-110-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '如下圖設背包限重 100，有 A、B、C、D、E共五個不可分割物件，請
問依貪婪策略（Greedy Algorithm），0_1 整數背包問題（knapsack
problem）/貨物裝載問題（cargoloadingproblem）其最大利益為何？其
對應的 0_1整數規劃為何？（20分）
有 A、B、C、D、E共五個可分割物件，請問依貪婪策略，0_1分數背
包其最大利益為何？（10分）
物件 重量 利益
A 10 20
B 20 30
C 30 66
D 40 40
E 50 60', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "8f2ae7480c8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00185', 'customs-39f5e973', 'customs-39f5e973-moex-110-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 25分）
何謂電子郵件社交工程攻擊？
勒索病毒的攻擊方式為何？
何謂紅隊演練？
何謂應用程式介面（Application Programming Interface, API）？
何謂軟體即服務（Softwareasa Service）？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "93f389bcea6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00186', 'customs-39f5e973', 'customs-39f5e973-moex-110-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '資訊系統常見的開發模式有瀑布法（Waterfall）、雛型法（Prototyping）及
敏捷法（Agile），請說明他們的模式、特性及適合開發的資訊系統。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "93f389bcea6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00187', 'customs-39f5e973', 'customs-39f5e973-moex-110-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '近年來政府積極推動數位政府政策，以資料治理為核心，極大化加值應用。
請問何謂循證式決策模式、政府數位治理、政府資料開放、個人資料自主
運用（MYDATA）？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "93f389bcea6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00188', 'customs-39f5e973', 'customs-39f5e973-moex-110-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '為提升我國企業競爭力，政府目前正協助企業推動數位轉型。請問數位轉
型的特色為何？如你是一家傳統體育用品店老闆，請問你如何推動數位轉
型，強化內部管理、營業模式及顧客關係，以提升業績。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "93f389bcea6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00189', 'customs-39f5e973', 'customs-39f5e973-moex-110-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '目前所使用的32位元的IPv4源於80年代早期，其IP位址範圍介於0.0.0.0
到 255.255.255.255 之間。已知 IPv4 Class A 的「IP 位址分布範圍」是
0.0.0.0~127.0.0.0。請問：
IPv4 位址共分幾等級？（3分）
IPv4ClassA的「可用網路組」與「每一組可連結主機數目」各是多少？
（8 分）
IPv4ClassB的「IP位址分布範圍」、「可用網路組」與「每一組可連
結主機數目」各是多少？（12 分）
IPv4ClassC的「IP位址分布範圍」、「可用網路組」與「每一組可連
結主機數目」各是多少？（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "dfe8c03589ea", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00190', 'customs-39f5e973', 'customs-39f5e973-moex-110-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '請解釋與說明下列各問題：
何謂殭屍網路（Botnet）？（6分）
常見的殭屍網路攻擊有那些？請舉出兩個例子。（7分）
如何防止殭屍網路的攻擊？請舉出兩個作為。（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "dfe8c03589ea", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00191', 'customs-39f5e973', 'customs-39f5e973-moex-110-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '請回答下列問題：
何謂 DoS攻擊？（5分）
何謂 DDoS攻擊？（5分）
如何防止外來的 DDoS攻擊？請舉兩個作為進行說明。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "dfe8c03589ea", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
