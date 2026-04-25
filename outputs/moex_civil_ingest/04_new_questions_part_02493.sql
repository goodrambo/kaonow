-- W1.6 questions batch 2493/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-39f5e973-moex-00029', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '給予如下程式片段，假設x[]=[25,57,48,37,12, 92,86,33]，請只用下述
C 語言宣告的變數及兩個for迴圈，完成下面的選擇排序（SelectionSort），
假設有 n 個資料要由小排到大，每一外迴圈將最大值放在第 n-1個位置，
然後第二大的資料放在第n-2 個位置，依此類推，將資料放到適當的位置，
執行後陣列 x[]內容由小排至大。（25分）
Selectsort(x, n)
intx[],n;
{
inti,index,j, large;
for (i=n－1;i> 0;i－－){
for(j= 1;j<=i;j++){
}
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "666686f0a38c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00030', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '身為機關的資訊負責人，你非常擔心勒索軟體對貴機關所造成的威脅，請
條列至少 5項防止勒索軟體威脅的措施。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b5d8a707f5e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00031', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '貴機關正準備開發一套全新的雲端化業務處理系統，身為專案負責人，你
需要撰寫專案的計畫書。
請問你的計畫書大致會包括那些內容？（10 分）
為什麼會包括那些內容？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b5d8a707f5e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00032', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '關於 5G與物聯網，請回答下列問題：
何謂 5G？（5分）
相對於4G，5G具有的優點為何？（5分）
請闡述5G跟物聯網的關聯性。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b5d8a707f5e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00033', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '生成式人工智慧漸受到人們重視，尤以 ChatGPT為甚。
請說明何謂 ChatGPT？（10 分）
它背後的演算法是基於機器學習技術中的自然語言處理模型，請說明
ChatGPT主要的運作原理。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b5d8a707f5e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00034', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '阻斷服務（DenialofService,DoS）攻擊，是一種耗盡目標主機運算資源
的攻擊手法。在 TCP/IP 協定疊（protocolstack）中，片段（fragmentation）
功能是用來重組傳輸資料。然而，利用片段功能可達到阻斷服務攻擊效
果。請說明 fragmentation 功能和如何利用此功能達到 DoS 攻擊之效果。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b7d122a86123", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00035', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '為監控網路狀況，網管人員會借重一些網路管理相關之通訊協定，如SNMP
和ICMP。請說明此兩種通訊協定之功能和比較兩者之差異。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b7d122a86123", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00036', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '電子郵件服務，常使用下列三種通訊協定：SMTP、IMAP、POP3。請說明
這三種通訊協定之功能，並比較其之間的差異性。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b7d122a86123", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00037', 'disabled-39f5e973', 'disabled-39f5e973-moex-112-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '當發現無法上網瀏覽網頁，但透過 IP 地址可以連至遠端主機，證明網路
是通的。請說明無法上網瀏覽網頁的原因，並說明 DNS解析網域（name
resolution）的運作原理。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b7d122a86123", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "104", "s": "1404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00038', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '請回答下列有關物件導向程式語言的問題：
物件導向程式語言的特性有那些？並分別說明之。（10分）
以你學過的物件導向程式語言，撰寫你在所描述之各別特性所對應的
程式片段。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "d4649458a90c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
