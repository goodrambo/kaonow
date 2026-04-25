-- W1.6 questions batch 6538/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00012', 'locality-39f5e973', 'locality-39f5e973-moex-114-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '身為政府機關資訊安全專責人員，當接獲軟體委外廠商通報發生資安事
件時，請問依照資通安全事件通報及應變辦法，您該如何處理？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "f6f7246beee5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00013', 'locality-39f5e973', 'locality-39f5e973-moex-114-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '某系所的網管人員於配置實驗室網路時，有設定每一台主機 IP位址，但
無法與同網段其他主機通訊，分析結果顯示是因為 ARP 封包無法正確
解析，請說明 ARP協定運作原理與流程。因為人工設定 IP位址，若 IP
相衝會發生什麼結果？網管者如何檢測是否有 IP 位址相衝現象發生？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "a929496687e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00014', 'locality-39f5e973', 'locality-39f5e973-moex-114-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '某研究中心將 IPv4 網段 192.168.10.0/22，分配給 5個研究部門使用。請
問每個研究部門可使用的 IP 數量為何？子網路遮罩（subnet mask）為
何？若後續增加 3 個研究部門，請問舊有的研究部門可用的 IP 數量和
子網路遮罩是否需要更動？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "a929496687e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00015', 'locality-39f5e973', 'locality-39f5e973-moex-114-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '為提升資通訊系統之安全性，某政府組織導入 SSDLC（Secure Software
DevelopmentLife Cycle）。請說明 SSDLC之開發流程，並說明其效益。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "a929496687e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00016', 'locality-39f5e973', 'locality-39f5e973-moex-114-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '某組織規劃將資訊系統遷移至公有雲平台。搬遷前應評估資安風險，並
採取必要措施以降低資安風險。請說明降低雲端資安風險之措施，並比
較公有雲和私有雲在資安管理之差異性。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "a929496687e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00017', 'locality-39f5e973', 'locality-39f5e973-moex-113-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '假設在學校的教務系統中，需要記錄學生的基本資料，譬如：學號（ID）、
姓名（Name）、就讀系別（Major）、連絡電話（Tel）、通訊地址（Address）
等。請利用 SQL標準語法定義此表格的綱要（Schema），包含此表格的
名稱「Student」，以及 5 個屬性對應到上述需要記錄的 5 類資料，及其
合適的資料型態。注意，也必須替此表格定義適合的主鍵（PrimaryKey），
並說明如此定義的理由。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "598f7b0ba041", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00018', 'locality-39f5e973', 'locality-39f5e973-moex-113-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '假設某間大學建立一個關聯式資料庫系統，以表格「Professor」和「Teach」
分別記錄老師的個人基本資料和授課資料，其屬性中除了薪水（salary）
和學期（semester）為整數型態外，其餘皆為字串型態。學期的表示法中
前三位數字為學年，而第四位數字以「1」和「2」分別對應到上下學期。
譬如，「1131」代表 113 學年度的上學期。兩個表格各自的屬性如下所
示，其中主鍵以底線標註：
Professor（ID,name, department,salary）
Teach（ID,course,semester）
請利用 SQL查詢指令，分別回答下列問題：（每小題 10 分，共30分）
找出資工系中薪水大於10 萬元的教授名字。
找出所有資管系教授於1131學期所開設的課程。
輸出每一個系的教授平均薪水和最高薪水。
51230', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "598f7b0ba041", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00019', 'locality-39f5e973', 'locality-39f5e973-moex-113-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '假設要為一個音樂串流平臺網站設計資料庫，請根據下列需求利用實體
關係模式（Entity-Relationshipmodel）進行規劃，並畫出對應的實體關係
圖（ER-diagram）：
每首歌曲都要記錄其編號、歌名、歌手、作曲人和作詞人。
每個會員都要記錄其會員編號、姓名、地址和電話。
要記錄每首歌曲何時被收聽，包含收聽的會員、收聽的日期時間等。
歌曲分為多個類別，如抒情、搖滾、古典等。
請注意圖中必須標明實體集合、關係集合、屬性、主鍵和對應數量限
制（MappingCardinality）等，也可使用擴充實體關係模式（Extended
ER model, EER）的表示法。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "598f7b0ba041", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00020', 'locality-39f5e973', 'locality-39f5e973-moex-113-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '下面名為「Register」的表格列舉學生修課的表現，其第一列為表格的欄
位名稱，而欄位的意義依序為學號（ID）、姓名（Name）、課名（Title）、
學分數（Credit）、成績（Grade），並假設此表格的主鍵由「ID」和「Title」
兩個屬性所共同組合而成。請說明 BCNF（Boyce-CoddNormalForm）正
規化格式的定義，與此表格未符合 BCNF的原因，以及將此表格經過正
規化處理後的結果。（30分）
ID Name Title Credit Grade
11301 張三 資料庫 3 A
11301 張三 作業系統 3 C
11302 李四 資料庫 3 B
11302 李四 作業系統 3 B', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "598f7b0ba041", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00021', 'locality-39f5e973', 'locality-39f5e973-moex-113-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '考慮下面以虛擬碼（Pseudocode）表示的遞迴演算法，請回答相關問題：
AlgorithmQ(n)
ifn＝1
return1
elsereturnQ(n－1)＋2n－1
列出虛擬碼中Q(n)的遞迴關係式，並說明此虛擬碼最終計算的是什麼？
（5 分）
用遞迴函式表示此虛擬碼所使用的乘法運算次數，並用漸進式符號
Big-O表示此遞迴函式的成長速率。（5 分）
以遞迴函式表示此虛擬碼的執行時間 T(n)並說明其時間複雜度（以
Big-O表示）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "609102378556", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
