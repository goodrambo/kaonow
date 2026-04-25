-- W1.6 questions batch 6541/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00042', 'locality-39f5e973', 'locality-39f5e973-moex-112-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '某圖書館有下列已知的相關資訊。
．每本“書”有一個 ISBN號碼，這個號碼是唯一的。每本書也有書名，
作者，出版社，等資料需要記載下來。
．每個“讀者”都有身分證號碼，姓名，和手機號碼。有些讀者可能有
二個或者更多個手機，其號碼都要記錄下來。若某讀者來到圖書館，
從來沒有借書，那麼他的個人資料，圖書館就不會記錄下來。只有那
些有借過書的，圖書館才會記錄他的個資。
．圖書館有若干“館員”，每個館員有身分證號碼、姓名、隸屬組別。
其中，隸屬組別，指的是館員的工作性質。例如，有的是採購組，有
的是編目組，有的是服務組，等等。每位館員只會隸屬於一個組。館
員中，只有服務組的館員，會參與在處理讀者借書的程序中。
．所有的“借閱紀錄”都要存記下來，也就是某位讀者，借出了某一本
書，經由某位館員處理的，這個資訊要記錄下來。同時也要把借出日
期，和歸還日期，記錄下來。讀者每次可借閱多本書。
．此外，圖書館會不定期檢查圖書的“書籍狀態”，每次檢查若發現有
狀況的書籍，則會把相關資訊記錄下來。這部分的資訊包括檢查日期，
和狀態說明（例如，遺失、破損等等）。
根據上述的說明，請使用實體－關係模型（Entity-Relationshipmodel）來
為這些資料設計出正確的綱目（ER schema），繪出其綱目圖（schema
diagram）。其中關係（relationship）的基數比（cardinality ratio）請使用
1:N, M:N…,等方式來表示，並且請在圖中標示出參與限制條件
（participation constraint）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "d1dcac57b0ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00043', 'locality-39f5e973', 'locality-39f5e973-moex-112-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '有一機票購買資料庫，含有以下的關連（relations）
旅客（護照號碼，姓名，電話，年齡）
航班（航班編號，航空公司，出發時間，抵達時間，出發地，目的地）
購票資訊（護照號碼，航班編號，座位，票價）
請用關連式代數（RelationalAlgebra）回答以下查詢（queries）：
（每小題 10分，共 20 分）
所有從“臺北”出發，到達目的地是“洛杉磯”的直飛的航班（亦即中
間沒有停留任何其他機場），列出這些航班上的旅客護照號碼和姓名。
針對從“臺北”出發的每一個航班，列出航班編號，和此航班所有乘
客的平均年齡。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "d1dcac57b0ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00044', 'locality-39f5e973', 'locality-39f5e973-moex-112-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '承上題的資料庫綱目（schema），請用 SQL回答下列查詢：
（每小題 10分，共 20 分）
我們想要查出有那些旅客，他們從來沒有搭乘過“甲航空”的任何一
個航班的，列出這些旅客的護照號碼和姓名。
我們想要找出有那些航班的乘客人數是低於 10人的（i.e.,<10），請列
出這些航班所屬的航空公司，和該航班的航班編號，以及搭乘該航班
的人數（注意，是低於 10人的）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "d1dcac57b0ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00045', 'locality-39f5e973', 'locality-39f5e973-moex-112-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '有 5 個交易（transactions）T1,T2,T3,T4,T5，在被執行時，形成以下的
程序（schedule），假設該資料庫管理系統的恢復機制（recovery
mechanism）使用的是延遲更新協定（deferred update protocol）。並且假
設系統在查核點時（checkpoint），會使所有正在執行的交易工作暫停，
將已經完成的交易（committedtransaction）的結果，強迫儲存（forcewrite）
到二線儲存器（secondarystorage）。請說明這5個交易在系統當機後，重
新恢復時，各需要對這5個交易作什麼處置，並說明理由。（25分）
[start-transaction,T1]
[read_item,T1,A]
[start-transaction,T3]
[read_item,T3, C]
[write_item,T1,A, 10]
[start-transaction,T4]
[read_item,T4, D]
[commit,T1]
[write_item,T3,C, 20]
[checkpoint]
[read_item,T3, E]
[write_item,T4,D,30]
[start-transaction,T2]
[write_item,T3, E, 40]
[commit,T3]
[read_item,T2, B]
[start-transaction,T5]
[write_item,T2,B, 50]
[read_item,T5, G]
[commit,T2]
[read_item,T4, H]
[write_item,T5,G,60]
← systemcrash', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "d1dcac57b0ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00046', 'locality-39f5e973', 'locality-39f5e973-moex-112-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '試說明下列名詞之意涵：（每小題 5 分，共 10分）
第二正規化（Second Normal Form）的定義
何謂 NoSQL', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "d1dcac57b0ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00047', 'locality-39f5e973', 'locality-39f5e973-moex-112-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請以 C, C++, C#, Java或 Python 撰寫 2 個方法，一個以迴圈方式，一個
以遞迴方式，對存在 singularlinkedlist 的資料進行 linearlysearch。假設
Node的結構如下：（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "201d1f624fad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00048', 'locality-39f5e973', 'locality-39f5e973-moex-112-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請為數列0, 10, 30, 20, 50, 80, 40, 90, 70, 60建立AVLtree, Min/Max heap,
2−4tree，並依它們的性質以yesorno完成下表。註：所建立的treeorheap
請以圖示，如果是SearchingTree，請以左小右大的方式建立。（24分）
Balance SearchingTree
AVLtree
Min heap
Maxheap
2−4tree', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "201d1f624fad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00049', 'locality-39f5e973', 'locality-39f5e973-moex-112-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請以如下的 HuffmanTree所做的數字編碼，解讀 01010111110100100011
編碼對應的數字。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "201d1f624fad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00050', 'locality-39f5e973', 'locality-39f5e973-moex-112-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '針對如下的有向圖（節點為走訪對象，連線上的數字為走訪的 cost），依
如下 BFS（配合queue）與 DFS（配合 stack）演算法，進行所有節點的
走訪，多個節點可以走訪時，以連線上 cost較低者優先，結果請以迴圈
內部的顯示要求，依下表形式填入（stack 垂直表示，開口在上方，queue
水平表示，出口在左，入口在右）。註：假設節點S為起始點。（24分）
BFS演算法 Loop1 … DFS演算法 Loop1 …
printnode printnode
queue Stack
processSet processSet
BFS/DFS演算法（/前為 BFS使用 queue,/後為 DFS使用 stack）
Step1:set queue/stack to empty
setprocessSet to empty
Step2: enqueue/push Sand add Sinto processSet
Step3:while queue/stack isnotempty
Step31: dequeue/pop and printit
Step32: enqueue/push allonestep neighborswhich arenotin processSet
according to thecostof edges and addtheminto processSet
Step33:displaycontentof queue/stack and processSet', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "201d1f624fad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00051', 'locality-39f5e973', 'locality-39f5e973-moex-112-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請完成下列表格有關排序演算法的 time complexity（假設排序資料有 n
個，資料位數有 d 個）、是否為 In−Space 演算法、是否為 Stable 演算法
及範例數列 50,46,37,28,19 進行降冪排列時所需的比較次數。（30 分）
TimeComplexity In−Space Stable 降冪比較次數
排序演算法
Best Worst （Yes/No）（Yes/No） 50,46,37,28,19
Bubble
Insertion
Merge（奇數時，
後半段多1）
Quick（第一個當
pivot）
Radix（base10）
Selection', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "201d1f624fad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
