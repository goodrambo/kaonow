-- W1.6 questions batch 1044/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-39f5e973-moex-00172', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', 'WhatisthemainreasonfortheANAflighttoturnbacktoLosAngeles?', '["ThefamousmodelChrissyTeigenattracted9.2millionfollowersonTwitter", "TheSecurityAdministrationMikeEnglandneededtoinvestigatethetwobrothers", "Theairlinewasrequiredtochecktheoverwhelmingodorinthelavatory", "OneofthetwobrothersboardedANAwithaUnitedAirlinesticket"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": "80b9bc541bc5", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 22, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00173', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', 'Whichofthefollowingstatementsbestdescribestheauthor''sopinionabouttheflightturningback?', '["Flightdelayisnotacceptable", "Itsoundsridiculousbutunavoidable", "Itisasecond-bestsolution", "Thepassengersshouldfightfortheirrights"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": "80b9bc541bc5", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00174', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', 'Whichofthefollowingreasonsfordivertingaplanehasbeenmentionedinthispassage?', '["Toiletproblems", "Policepresence", "Publicitystunts", "Twitterupdates"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": "80b9bc541bc5", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00175', 'customs-39f5e973', 'customs-39f5e973-moex-110-f9fb6a06', 'sub-customs-39f5e973-06', NULL, 'single_choice', 'Whatcanbeinferredfromthepassage?', '["Mostcausesofflightdelayarebeyondcontrolofairlines", "Passengersonboardareawareofwhattheyshouldnotdo", "Long-haulpassengersmightgetextravagantcompensations", "Toflyfastandonscheduleisthetoppriorityforallairlines"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": "80b9bc541bc5", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00176', 'customs-39f5e973', 'customs-39f5e973-moex-110-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '某一個連鎖商店要建置一個關聯式資料庫（RelationalDatabase），請設計
一個資料庫綱要（DatabaseSchema）以滿足下列資料需求：（30 分）
㉑商店（Store）：每一家商店有一個商店編號（SID）、商店名稱（Name）、
以及商店所在的城市名稱（City），每一家商店的商店編號是唯一的。
㉒顧客（Customer）：每一位顧客有一個顧客編號（CID）、姓名（Name）、
性別（Gender）、地址（Address）、以及若干個電話號碼（Phone），
每一位顧客的顧客編號是唯一的。
㉓交易（Transaction）：每一筆交易記錄顧客編號（CID）、商店編號（SID）、
交易日期與時間（Time）、以及交易金額（Amount），每一筆交易是由
顧客編號、商店編號、以及交易日期與時間來唯一識別。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "915e81de385f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00177', 'customs-39f5e973', 'customs-39f5e973-moex-110-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '請定義資料庫管理系統的四個基本名詞：資料庫（Database）、資料（Data）、
資訊（Information）、詮釋資料（Metadata）。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "915e81de385f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00178', 'customs-39f5e973', 'customs-39f5e973-moex-110-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', 'T（A, B, C, D, E, F, G）是一個關聯式資料庫表格的綱要，其中 T為表格
名稱，A、B、C、D、E、F、G為表格的七個屬性，（A,E）為表格的組
合主鍵（CompositePrimaryKey），同時也是該表格唯一的候選鍵（Candidate
Key）。另外，該表格有下列功能相依（FunctionalDependency）：
A B, C,D
C  D
E F
（A,E） G
請問表格 T符合第幾正規型式（NormalForm）？請說明理由。（10分）
表格 T 應該要正規化到第幾正規型式才適當？請將表格 T 正規化到適
當的正規型式，寫出正規化之後每一個表格的綱要，包括表格名稱、屬
性、主鍵、以及外來鍵（如果有外來鍵的話）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "915e81de385f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00179', 'customs-39f5e973', 'customs-39f5e973-moex-110-804ba136', 'sub-customs-39f5e973-02', NULL, 'essay', '資料倉儲設計最常使用的資料模型為多維度資料模型，是以星狀綱要、雪
花狀綱要或事實星座綱要的形式存在，請先分別說明星狀綱要、雪花狀綱
要與事實星座綱要，然後比較星狀綱要與雪花狀綱要之優缺點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "915e81de385f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00180', 'customs-39f5e973', 'customs-39f5e973-moex-110-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '大學生只剩 5天準備 4 科 X ,X ,X ,X ，估計的成績點數如下表所示，每
1 2 3 4
1 科準備至少 1天，使用窮舉法（exhaustivesearch）有幾種可能？如何最
適化？最適成績 s=？（20分）
天數 科目 X X X X
1 2 3 4
1（天） 3 5 2 4
2 5 6 4 4
3 6 8 7 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "8f2ae7480c8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00181', 'customs-39f5e973', 'customs-39f5e973-moex-110-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '求下列遞迴函數值 f(3)？（10分）
intf(intn){if(n ==0)return 0；elsereturn f(n-1)+n*n;}
求遞迴函數f(n)？,nN（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:20+00:00", "source_pdf_sha1": "8f2ae7480c8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "105", "s": "1304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
