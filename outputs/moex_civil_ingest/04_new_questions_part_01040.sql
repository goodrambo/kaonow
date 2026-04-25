-- W1.6 questions batch 1040/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-39f5e973-moex-00132', 'customs-39f5e973', 'customs-39f5e973-moex-111-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', '①objection ②objective ③setback ④drawback', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 22, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00133', 'customs-39f5e973', 'customs-39f5e973-moex-111-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', '①forcing ②force ③toforce ④forced', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 23, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00134', 'customs-39f5e973', 'customs-39f5e973-moex-111-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', '①challenge ②constrain ③violate ④regulate', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00135', 'customs-39f5e973', 'customs-39f5e973-moex-111-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', '①escaped ②excluded ③participated ④persuaded', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00136', 'customs-39f5e973', 'customs-39f5e973-moex-111-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '某圖書館所建立的關聯式資料庫系統（Relationaldatabasesystem）中，定
義了三個表格，其中 MEMBER 表格記錄會員基本資料，包含會員編號
（Mid）、姓名（Name）和連絡電話（Telephone）；BOOK表格記錄書本
基本資料，包含國際標準書號（ISBN）、書名（Title）和出版社（Publisher）；
BORROWER表格記錄借閱資料，包含借書者（Mid）、書號（ISBN）和
借閱日期（Date）。除了日期之外，其餘屬性皆為字串型態。此三個表格
的綱要簡列如下，且每個表格的主鍵以底線標註：
MEMBER（Mid, Name,Telephone）
BOOK（ISBN,Title,Publisher）
BORROWER（Mid,ISBN,Date）
請利用 SQL查詢指令，分別回答下列子題：
找出那些會員曾經借閱過“全華”出版社出版的書籍，列出其會員編號、
姓名和聯絡電話。（10 分）
針對每個出版社，找出那些會員曾經借閱過 3本以上（含）該出版社出
版的書籍，每一筆輸出包含出版社和符合條件的會員編號。（10分）
定義一個名為 TimeBookCount 的檢視表（view），輸出每個會員（以
Mid 代表）所借閱由“時報”出版社出版書籍的總數，並將檢視表的第一
個屬性命名為“Mid”，第二個屬性命名為“BookCount”。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "c7c6b4d0e143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00137', 'customs-39f5e973', 'customs-39f5e973-moex-111-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '假設在關聯式資料庫系統中，資料庫管理者（DBA）定義了一個 MEMBER
表格，其中包含三個字串型態的屬性：Mid、Name、Telephone，並根據 Mid
欄位定義一個名為“MyIndex”的 B+-tree 索引（Index）。首先請說明
“MyIndex”索引的樹狀結構，包含其內部節點、葉節點、結構的特性等，
答案請以文字敘述或圖形呈現。其次請說明資料庫系統如何利用該索引結
構，提升下列 SQL查詢句的處理效能：
select Name fromMEMBERwhere Mid = ‘M001’（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "c7c6b4d0e143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00138', 'customs-39f5e973', 'customs-39f5e973-moex-111-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '關聯式資料庫系統在實作異動處理（TransactionProcessing）時，大多希望
能符合 ACID四個特性以確保資料庫內容的正確性。假設一個異動欲從 P
帳戶轉 1000 元到 Q帳戶，其中包含的六個指令如下表所示。請以該異動
具體說明 ACID 所代表的四個要求分別為何？若沒有達到該要求會造成
什麼不良的影響？（20 分）
1. read(P)
2. P:=P–1000
3. write(P)
4. read(Q)
5. Q:=Q+1000
6. write(Q)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "c7c6b4d0e143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00139', 'customs-39f5e973', 'customs-39f5e973-moex-111-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '假設我們要建立書籍的資料，其中書籍的編號（No）和書名（Title）為字
串型態，而作者（Authors）則為數個字串組合而成的陣列，且每本書籍的
編號皆不與其他書籍相同。兩本書籍的範例資料如下表所示：
No Title Authors
1 計概 [趙先生, 張小姐]
2 資料庫 [Silbers,Korth,Sudar]
針對上述的資料特性，首先請設計出符合第一正規化（FirstNormalForm）
的關聯式表格，每個表格標註其欄位名稱與主鍵，以及對應上表的範例資
料內容。其次，請將上述表格內容直接以一個集合（collection）內含兩個
JSON（JavaScriptObjectNotation）文件（document）表示，其中一本書籍對
應到一個JSON文件。最後，根據你的答案，詳述結構化（structured）關聯
式資料和半結構化（semi-structured）JSON資料表示法的差異性。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "c7c6b4d0e143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00140', 'customs-39f5e973', 'customs-39f5e973-moex-111-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '試定義網際網路運作之相關專有名詞 ISP、IXP、PoP（含英文全名）並說
明其功能。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "5ef691a81927", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00141', 'customs-39f5e973', 'customs-39f5e973-moex-111-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '試描述關聯式資料庫（RDB）中資料模組（DataModel）之邏輯架構，以
及定義什麼是 SQL和 2PC（含英文全名）？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "5ef691a81927", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "105", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
