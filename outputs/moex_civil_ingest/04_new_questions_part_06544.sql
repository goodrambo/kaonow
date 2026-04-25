-- W1.6 questions batch 6544/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00072', 'locality-39f5e973', 'locality-39f5e973-moex-111-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '假設某關聯式資料庫，五個屬性值均是 atomic、不可再分割。設計師發
現有下列 2條功能相依，設計出一個資料表 R（A1,A2,A3,A4,A5）
FD1：{A1,A3}→A5
FD2：A1→A2
請問此表格 R 之候選鍵（CandidateKey）有那些？為什麼？（3分）
上述設計違反了正規化（Normalization）理論，為什麼？（3分）
若資料表改為下列2個表格R1（A1,A4,A5）、R2（A2,A3,A4,A5）（12分）
請你先判定新表格 R1、R2的候選鍵。
這樣的切割，是否滿足 LosslessJoin？
這樣的切割，是否會喪失任何功能相依？
這樣設計最高是滿足第幾正規化，為什麼？
若你不同意上述設計，你建議應如何修改原設計師所提出資料表 R
（A1,A2,A3,A4,A5）？你必須同樣地依上述、、、四方面來說
明你建議的設計。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "c67c82bc98b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00073', 'locality-39f5e973', 'locality-39f5e973-moex-111-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請用 Big-O 符號來表示下列函式的成長速率，並說明之：
（5 分）
  （10 分）
T() = 3 +7 √+ log

T() = 2T(⁄2)+', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ae72c4dbf25f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00074', 'locality-39f5e973', 'locality-39f5e973-moex-111-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '常用的算術運算式（Arithmetic Expression）有：中序運算式（Infix
Expression）、前序運算式（Prefix Expression）、後序運算式（Postfix
Expression）三種表示法，考慮下面的算術運算式（ArithmeticExpression）
並回答下列問題：
((6 (5 – 3))-(1 + 2))(((4 +2)/3)+(5 4))
請寫出其前序運算式（Prefix Expression）。（5分）
請繪出其算術運算樹（ExpressionTree）。（5 分）
請說明如何以此算術運算樹計算出算術運算式的值，並一步一步列出
運算過程。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ae72c4dbf25f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00075', 'locality-39f5e973', 'locality-39f5e973-moex-111-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '回顧二元樹結構，其為 m路樹（m-aryTrees，亦稱多元樹、m元樹）的
一個特例，請回答下列相關問題：
給出 m路樹的定義。（5分）
若用陣列來表示一個 m路樹，請說明如何利用陣列的索引值來表示節
點間的親子連結關係（意即，假設陣列索引起始值為 0，若節點 v 在
陣列的第 i 個位置，節點 v 的第 c 個子節點的位置為何？另一方面，
節點 v的 parent位置為何？）？（10分）
基於此 m路樹結構及二元搜尋樹（Binary Search Tree）的概念，我們
可以定義出一個多元搜尋樹。當m=4 的時候，可以稱此搜尋樹為四元
搜尋樹。請給出(2,4)-樹((2,4)-tree)的定義並比較與四元搜尋樹的差異。
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ae72c4dbf25f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00076', 'locality-39f5e973', 'locality-39f5e973-moex-111-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '二元堆積（BinaryHeap）是一種優先佇列（PriorityQueue），主要用來管
理具有優先權順序的資料物件，每個資料物件具有一個可以界定大小或
前後順序的鍵值（Key），我們在此假設鍵值越低的資料物件有越高的優
先權。
請完整描述最小堆積（Min_Heap）的定義與相關的操作功能。（5 分）
請說明堆積排序（HeapSort）的方法並分析其時間複雜度。（5分）
若有兩個二元樹 T 及 T ，其節點具有堆積特性且高度分別是 O(logn)
1 2
與 O(log m)，請提供一個方法將此兩個二元樹結合成為一個節點具有
堆積特性的二元樹 T，此方法的時間須為 O(log n+log m)。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ae72c4dbf25f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00077', 'locality-39f5e973', 'locality-39f5e973-moex-111-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '下圖是一個加權圖 G=(V, E)，其中 V是點集合而E是邊集合。
請使用相鄰矩陣（AdjacencyMatrix）表示法來表示加權圖 G。（5 分）
不考慮權重，從節點 g 開始並按照字母順序對 G 進行廣度優先尋
訪（Breadth-First Search, BFS），請繪出尋訪完後所產生的 BFS 樹
（BFS Tree）。（5 分）
請利用 Prim''s 演算法，從節點 d起始，找出一個最小擴張樹（Minimum
Spanning tree），請以圖示方式一步步畫出過程與結果，並說明 Prim''s
演算法的時間複雜度。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ae72c4dbf25f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00078', 'locality-39f5e973', 'locality-39f5e973-moex-111-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '密碼可以用來做身分認證，但是缺點是密碼太長容易忘記！比較新的認
證方式是運用生物辨識技術：
何謂生物辨識技術？列舉至少五種生物辨識技術，並依安全性
（Security）和方便性（Convenience）等級（假設分 3 級：優、良、普）
做論述。（20分）
目前手機的認證大部分是利用何種生物辨識技術？它有何優缺點？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "3b1b7c2490d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00079', 'locality-39f5e973', 'locality-39f5e973-moex-111-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '電腦系統或網路設備在做資料傳輸時，為了減少資料重送次數，一般會
利用錯誤更正碼技術做資料傳輸：
所謂漢明錯誤更正碼（Error Correction Code, ECC）是把 8 個位元
的資料加入 4 個同位位元（Parity Bit）

（假設偶同位），使其成為
        
的 ECC碼。詳細說明每個同位位元檢驗的位置。（10 分）
            
給定一個 8位元的資料，10010010，它的 ECC碼為何？（10 分）

若收到111100110110，接收端如何更正錯誤？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "3b1b7c2490d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00080', 'locality-39f5e973', 'locality-39f5e973-moex-111-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '深度學習（DeepLearning）是目前相當熱門的技術，它的應用非常廣泛，
諸如病毒碼檢測、聊天機器人、汽車防碰撞、醫學腫瘤影像辨識等。說
明深度學習訓練時以分類為例子，為何其最後一級採用的是歸一化指數
函數（Softmax）做分類，但實際應用時卻用支援向量機（SupportVector
Machine,SVM）技術做分類？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "3b1b7c2490d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00081', 'locality-39f5e973', 'locality-39f5e973-moex-111-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '2022年諾貝爾物理學獎由法國學者阿斯佩（AlainAspect)、美國學者克
勞澤(John F. Clauser)以及奧地利學者塞林格(Anton Zeilinger)共同獲
得，表揚他們發現量子糾纏（QuantumEntanglement）並打下了量子電腦、
量子密鑰系統的基礎，確立了可違反貝爾不等式，和開創性的量子通訊
科學。何謂量子電腦？它對目前資安的密碼學有何影響？(25分)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "3b1b7c2490d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
