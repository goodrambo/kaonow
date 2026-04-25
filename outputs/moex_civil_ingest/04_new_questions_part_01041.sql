-- W1.6 questions batch 1041/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-39f5e973-moex-00142', 'customs-39f5e973', 'customs-39f5e973-moex-111-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '試列出並說明智慧型決策支援系統（Intelligent Decision Support System,
IDSS）中三項主要的元件（Components）與其功能。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "5ef691a81927", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00143', 'customs-39f5e973', 'customs-39f5e973-moex-111-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '試以 P-A-D（Presentation-Application-Data）模式定義 Thin-Client與 Thick-
Client Computing 之應用架構並說明其差異性。此外，那一種較適用於雲
端運算（Cloud Computing）？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "5ef691a81927", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00144', 'customs-39f5e973', 'customs-39f5e973-moex-111-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '考量下列含有六個子網路的網路架構，其中（順時針從 12 點鐘方向開始
算起）三個擁有主機的子網路分別表示為網路 A、B、C；三個沒有主機的
子網路則分別表示為網路 D、E、F。
請依照下列限制條件，指派網路 IP位址給這六個子網路：（25 分）
所有 IP位址都必須在 214.97.254.0/23 範圍內配置，且各子網路配置
不同 IP位址；
子網路 A必須擁有足夠的位址以支援到 256個介面；
子網路 B必須擁有足夠的位址以支援到 120個介面；
子網路 C必須擁有足夠的位址以支援到 128個介面；
子網路 D、E、F則分別要能夠支援兩個介面；
每個子網路都須採用 a.b.c.d/x 或 a.b.c.d/x – e.f.g.h/y 的位址形式配置
（註：–代表扣除）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "48ff62f29e10", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00145', 'customs-39f5e973', 'customs-39f5e973-moex-111-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '在內容傳遞網路（Content Distribution Network, CDN）中，內容提供商可
以擁有自己的 CDN 或透過第三方的 CDN 來服務用戶。今假設有內容提
供商 X 透過第三方 CDN 服務商 Y 來服務用戶。當 X 的用戶端主機要檢
索特定視訊時（由 X的 URL（UniversalResourceLocator）識別），此檢
索請求將被 DNS（DomainNameSystem）攔截及重新定向（至 Y的主機）
以透過 Y的 CDN來取得該視訊。試說明此 DNS攔截及重新定向的過程。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "48ff62f29e10", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00146', 'customs-39f5e973', 'customs-39f5e973-moex-111-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '考量下列網路架構，AS2 與 AS3（其中 AS 代表 Autonomous System）以
OSPF（Open Shortest Path First）作為 AS內部繞送協定，而 AS1 與 AS4
以 RIP（Routing Information Protocol）作為 AS內部繞送協定，此外此四
個 AS皆使用 eBGP（external Border Gateway Protocol）與 iBGP（internal
Border Gateway Protocol）作為跨AS繞送協定。假設 AS2 與 AS4 之間沒
有實體連結存在（以虛線表示）。
試說明路由器 1d 會從上述 OSPF、RIP、eBGP、iBGP 中那一個繞送協
定得知位址 x？其轉送表中加入的項目（x,I）中，I會是 I 或 I 那一個
1 2
介面？為什麼？（15分）
現假設 AS2 與 AS4 之間有一道實體連結（將虛線改以實線表示），且
路由器 1d知道 x可以經由 AS2 或AS3 到達，試說明 I會被設定成 I 或
1
I 那一個介面？為什麼？（10 分）
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "48ff62f29e10", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00147', 'customs-39f5e973', 'customs-39f5e973-moex-111-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '試說明 IPv4 與IPv6 對於封包的分段跟重組處理方式的差異。（15 分）
試說明通道方案（tunneling）如何將 IPv4 轉換為 IPv6。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "48ff62f29e10", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00148', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'essay', '英譯中：請將下列英文句子譯成中文。（15分）
Throughout human history, there have been a number of pandemics
ofdiseasessuchassmallpoxandtuberculosis.Themostfatalpandemicin
recordedhistorywastheBlackDeath（alsoknownasThePlague）,which
killed an estimated 75–200 million people in the 14th century. Current
pandemics includeCOVID-19 and AIDS.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00149', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'essay', '中譯英：請將下列中文句子譯成英文。（15分）
長榮海運貨櫃船在蘇伊士運河擱淺，之後運河堵住了 6天，其他船隻
無法繞行長賜輪。此運河是世界上最繁忙的貿易路線之一，其阻塞對
歐洲與亞洲及中東之間的貿易產生了重大影響。（長賜輪：the Ever
Given）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00150', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'essay', '英文作文：（20分）
Write an English composition in about 200 words on one of the
environmentalissuesinTaiwan.Identifytheproblem,proposeasolution,
and imagine its consequence. Give a title to your composition to attract
thereader’sattention.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00151', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', 'Severalstylish canbefoundonthechairsondisplay,eventhoughonecouldeasilyrecognize theprototype.', '["visionaries", "variations", "vocations", "valuations"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": "80b9bc541bc5", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
