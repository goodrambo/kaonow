-- W1.6 questions batch 6537/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00002', 'locality-39f5e973', 'locality-39f5e973-moex-114-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '若某研究機構需要建立一個資料庫系統，以管理該機構所有曾經執行過
的計畫，經分析後得到下列需求：
每個計畫需要記錄其編號、名稱、預算金額、主持人、開始日期與
結束日期。其中計畫編號不可重複以用來辨識不同的計畫，而日期
則包含年份和月份。
每個委託單位則有編號、名稱、聯絡人姓名與電話等資訊，其中編
號用以辨識不同單位。
一個計畫只能有一個委託單位，但一個單位可以贊助多個計畫案。
請根據上述所有需求畫出一個實體關係圖（Entity-Relationship Diagram,
ERDiagram），注意圖中必須標明實體集合、關係集合、屬性、主鍵和
對應數量限制（MappingCardinality）等。此外，計畫的日期請使用複合
屬性（Composite Attribute）的表示法。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:49+00:00", "source_pdf_sha1": "88b8bd15d742", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00003', 'locality-39f5e973', 'locality-39f5e973-moex-114-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '在某圖書館所建立的關聯式資料庫系統中，定義了 BOOK 表格和
BORROWER 兩個表格，前者記錄館中每本藏書的基本資料，包含國際
標準書號（ISBN）、書名（Title）、作者（Author）和價錢（Price）；後者
表示借閱資料，包含借書者編號（No）、書號（ISBN）和借閱日期（Date）。
各表格屬性如下所示，其中除了屬性 Price 為數值型態，其餘屬性皆為
字串型態，而主鍵則以底線標註：
BOOK（ISBN,Title,Author,Price）
BORROWER（No,ISBN, Date）
請撰寫 SQL查詢句，分別回答下列各子題：（每小題 10 分，共30分）
輸出價錢超過200 元書籍的 ISBN。
找出編號「B01」之借書者，其所有借過書籍的書名。
找出每個借書者（以屬性 No代表）所借閱的書籍總數。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:49+00:00", "source_pdf_sha1": "88b8bd15d742", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00004', 'locality-39f5e973', 'locality-39f5e973-moex-114-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '近年來大數據（BigData）為資料庫系統帶來新的挑戰。首先詳述大數據
最主要的 3個特性（簡稱 3V）為何？其次說明在那種情境或應用下會產
生大數據？最後建議使用那種軟體或技術來儲存大數據，並詳述你的理
由。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:49+00:00", "source_pdf_sha1": "88b8bd15d742", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00005', 'locality-39f5e973', 'locality-39f5e973-moex-114-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請回答下列問題：（每小題 4 分，共 20 分）
請說明堆疊（Stack）及佇列（Queue）那一種資料結構較適合用來進
行後序（Postfix）運算式的計算？
請說明在二元搜尋樹中，前序（Preorder）走訪、中序（Inorder）走訪、
後序（Postorder）走訪、層序（Level-order）走訪那一種走訪順序可得
到遞增的鍵值？
請說明在使用雜湊表時，若使用鏈結串列（chaining）處理碰撞
（collision）問題，則搜尋的平均時間複雜度為下列何者？O(1)、O(logn)、
O(n)或 O(sqrt{n})。
請說明若一個圖 G（V, E）的頂點數|V|為 n，而邊數|E|接近 n²，則相
鄰串列（adjacencylist）、相鄰矩陣（adjacencymatrix）、或邊列表（edge
list）中，那一種資料結構最適合用來儲存該圖？
下列那幾項演算法可用於找出圖的最小生成樹（Minimum Spanning
Tree）：Dijkstra演算法、Floyd-Warshall演算法、Prim演算法、Bellman-
Ford 演算法？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "11a94f72bf39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00006', 'locality-39f5e973', 'locality-39f5e973-moex-114-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', 'PriorityQueue（優先佇列）是一種「每次取出的元素都是優先權最高的」
資料結構。
如果用「排序好的陣列」來實作優先佇列，插入與取最大值的時間複
雜度為何？（5分）
如果用「未排序陣列」，來實作優先佇列，插入與取最大值的時間複雜
度為何？（5分）
如果用最大堆積（max-heap）來實作優先佇列，插入與取最大值的時
間複雜度為何？（5 分）
請以最大堆積來實作優先佇列，並顯示以下動作過程的最大堆積樹：
加入 10,30,50,40，取出最大數，加入 50,60，取出最大數。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "11a94f72bf39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00007', 'locality-39f5e973', 'locality-39f5e973-moex-114-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '二元搜尋樹（binary search tree）是一種常見的資料結構。
請將 50, 30, 70, 20, 40, 60, 80 依序插入一個二元搜尋樹，然後再從該
二元樹刪除 50，並畫出每個數字放入或刪除後的二元搜尋樹。（10分）
以下陣列儲存了一個二元搜尋樹，根節點為 A(1)，若針對該二元樹刪
除 40，請顯示該陣列的變化。（5分）
i 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
A(i) 40 30 70 10 -- 50 90 -- 20 -- -- -- 60 80 -- -- --
以下陣列儲存了一個二元搜尋樹，根節點為 A(1)，若針對該二元樹刪
除 30，請顯示該陣列的變化。（5分）
i 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
A(i) 40 30 70 10 -- 50 90 -- 20 -- -- -- 60 80 -- -- --
以下陣列儲存了一個二元搜尋樹，根節點為 A(1)，請列舉可依序插入
的五個數值，使得該二元樹成為完整二元樹（fullbinarytree）。（10分）
i 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
A(i) 40 30 70 10 -- 50 90 -- 20 -- -- -- 60 80 -- -- --', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "11a94f72bf39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00008', 'locality-39f5e973', 'locality-39f5e973-moex-114-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '一個自動化工廠大量採用機器人協助裝箱作業。該工廠固定時間生產出
一組 n個不同大小的塑膠球並放到裝箱作業輸送帶上。輸送帶上配置數
個機器人，當輸送帶上的球經過時，機器人負責將眼前兩顆球將順序排
序正確，大的在前，小的在後。當輸送帶上的球經過了所有機器人後，
球的順序就完全由大排到小了。（每小題5分，共25分）
若n=6，且生產後放上裝箱輸送帶的球的大小為3,2,5,6,1,4。請說明
若輸送帶配有4個機器人是否足夠將球的順序完全由大排到小？
若 n = 20，且生產後放上裝箱輸送帶的球的大小為 11, 12, 20, 16, 3, 1,
7,15,2,18,10,5,14,6,8,13,19,4,9,17，請說明輸送帶上最少該配置
幾個機器人才能將球的順序由大排到小？
若 n=6，且輸送帶上配有 4個機器人，請給一組放上裝箱輸送帶的球
的大小順序，使得其經過這 4個機器人後，整組球的順序仍未能排好。
若每一組球生產後放上裝箱輸送帶的球的大小順序非固定順序，請說
明輸送帶上最少該配置幾個機器人才能每次都能將球的順序由大排
到小？
若 n = 10，且每一組球生產後放上裝箱輸送帶的球的大小順序非固定
順序。假設輸送帶上原本配置 n個機器人，若改成配置 2n個機器人，
整組球順序排好的速度可以加快多少？請說明。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "11a94f72bf39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00009', 'locality-39f5e973', 'locality-39f5e973-moex-114-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '雙軸轉型（TwinTransformation）是目前企業界所面臨的重要議題之一。
請問何謂雙軸轉型？為何需要雙軸轉型？雙軸之間的關聯為何？企業
推動雙軸轉型最常遇見的挑戰有那些？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "f6f7246beee5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00010', 'locality-39f5e973', 'locality-39f5e973-moex-114-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '人工智慧治理（AI Governance，以下簡稱 AI 治理）是目前政府與企業
無法迴避的重要議題之一。請問何謂 AI治理？為何需要 AI治理？AI治
理的核心原則有那些？推動 AI治理最常遇見的困難有那些？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "f6f7246beee5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00011', 'locality-39f5e973', 'locality-39f5e973-moex-114-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '何謂敏捷軟體開發？常見的敏捷軟體開發方法有那些？導入敏捷軟體
開發方法於政府機關之軟體開發時，可能會遭遇到那些問題？面對這些
問題，您建議的因應方法為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "f6f7246beee5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "345", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
