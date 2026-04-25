-- W1.6 questions batch 6546/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00092', 'locality-39f5e973', 'locality-39f5e973-moex-110-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '請詳細說明在系統開發階段，驗收測試（acceptancetesting）的目標、驗
收測試的兩個階段及測試用例是如何開發的。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "a946fa080107", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00093', 'locality-39f5e973', 'locality-39f5e973-moex-110-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '受到疫情影響，支援線上教學的數位學習系統也越來越受到重視，發展
上述系統的一組非功能需求，包括操作需求、效能需求、安全性需求和
文化與政策需求，請針對這些需求加以說明。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "a946fa080107", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00094', 'locality-39f5e973', 'locality-39f5e973-moex-110-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '請說明使用者介面設計中，導覽（navigation）設計的原則及常犯的錯誤。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "a946fa080107", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00095', 'locality-39f5e973', 'locality-39f5e973-moex-110-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '給定一個資料表，PersonIncome，其欄位與資料紀錄如下表，ID是主鍵，
name是員工姓名，paydate是員工收到工作費的日期，income是工作費
收入金額。此表總共有 12筆資料紀錄。請回答下列相關問題：
ID name paydate income
C1001 王大陸 2008/02/28 25000
C1002 李大喬 2008/03/12 21000
C1003 趙麗生 2008/04/13 27000
C1004 黃球聲 2008/05/15 28000
C1005 王大陸 2009/06/28 27000
C1006 李曉喬 2009/07/12 23000
C1007 趙麗生 2009/08/13 17000
C1008 黃球聲 2010/09/15 25000
C1009 王大陸 2010/10/28 29000
C1010 李大喬 2010/11/12 28000
C1011 趙麗生 2010/12/13 28000
C1012 黃球聲 2011/01/15 27000
請寫出可查出收入金額大於 22000 或小於 26000 的資料紀錄之 SQL
查詢指令。（3 分）
請寫出可查出收入金額為 7 之倍數的資料紀錄之 SQL 查詢指令。
（3 分）
請寫出可查出名字中包含"大"的資料紀錄之 SQL查詢指令。（2分）
請寫出可得到每個人個別的平均收入之 SQL查詢指令。（3分）
要得到從 2008-05-01 到 2010-12-31 之間每個人個別的收入總額，請寫
出對應之 SQL查詢指令。（4分）
要查出收入總額大於 70000 的有那些人，請寫出對應之 SQL 查詢
指令。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "467fcb05991f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00096', 'locality-39f5e973', 'locality-39f5e973-moex-110-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '關於物件導向資料庫，請回答下列問題：
請闡述何謂物件導向資料庫？（3 分）
有些資料類型適合儲存在物件導向資料庫，請舉出三種適合以物件導
向資料庫儲存的資料類型。（3 分）
關聯式資料模型有許多構成元素，其中表格（Table）、值組（Row/
Tuple）、主鍵（Primary Key）、屬性（Attribute）、預儲程序（Stored
Procedure），這些元素可以分別對應到物件導向資料庫的那些元素？
（4 分）
物件導向資料庫會運用到類別繼承的設計，請闡述繼承的規則。（5 分）
物件導向資料模型也運用到屬性的概念，分成下列四種：基本屬性
（Primitive Attribute）、複合屬性（Complex Attribute）、集合屬性（Set
Attribute）、複合集合屬性（ComplexSetAttribute）。請闡述這四種屬性
的意涵。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "467fcb05991f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00097', 'locality-39f5e973', 'locality-39f5e973-moex-110-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '資料庫正規化（Normalization）是很重要的資料塑模（Data Modeling）
方法，請回答下列相關問題：
請敘述正規化的目的。（3分）
請敘述第一正規化形式（1NF）的規則，並舉一個不符合 1NF的資料
表例子。（4分）
請敘述第二正規化形式（2NF）的規則，並舉一個不符合 2NF的資料
表例子。（5分）
請敘述第三正規化形式（3NF）的規則，並舉一個不符合 3NF的資料
表例子。（4分）
請敘述 BCNF（Boyce-CoddNormalForm）正規化形式的規則。（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "467fcb05991f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00098', 'locality-39f5e973', 'locality-39f5e973-moex-110-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '在多使用者多工的資料庫管理系統（Database Management System），多
個交易（Transactions）在同步執行（Concurrently Performed）時，有可
能發生資料讀取之難題（issue）。請回答下列相關問題：
請敘述何謂交易？（4分）
請敘述何謂更新遺失（LostUpdates）的難題？（4 分）
請敘述何謂讀到髒資料（Dirty Read）的難題？（4 分）
請敘述何謂無法重複讀取（Non-RepeatableRead）難題？（4分）
同步控制方法（Concurrency Control Method）可運用來解決前述的難
題。其中有一種以鎖為基礎之協定（Lock-Based Protocol），請敘述其
運作機制。（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "467fcb05991f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00099', 'locality-39f5e973', 'locality-39f5e973-moex-110-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '資料庫領域有許多專門術語，請敘述下列術語之意涵：
參與限制（Participation Constraint）（4分）
基數限制（CardinalityConstraint）（4分）
View（4 分）
外來鍵（Foreign Key）（4 分）
叢集索引（ClusteredIndex）（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "467fcb05991f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00100', 'locality-39f5e973', 'locality-39f5e973-moex-110-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請分別寫出下圖二元樹的前序走訪法（preordertraversal）、中序走訪法
（inordertraversal）、後序走訪法（postordertraversal）的結果（6分）
請在無法預知二元樹的節點數條件下，設計在程式中表示二元樹的資
料結構。再假設二元樹已依前述結構儲存在程式，設計一副程式（或
函式）的演算法，在提供樹根給此副程式（或函式）後，其執行二元
樹中序走訪法的程序並輸出走訪結果。此副程式（或函式）不可使用
遞迴呼叫技術但可添加其他資料結構，演算法的時間複雜度和空間複
雜度須均為 O(n)，n 為二元樹的節點個數。演算法可以虛擬碼（pseudo-
code）或以高階語言如 C呈現。需分析說明副程式（或函式）演算法
的時間複雜度和空間複雜度均為 O(n)。（提醒：若用遞迴呼叫技術設
計，演算法部分不給分）（13分）
請分別說明在程式執行過程，以第子題非遞迴呼叫技術設計相較於
以遞迴呼叫技術設計在時間與空間的效能優勢各為何？（6 分）
A
B C
D E F G
H
K', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ceda465ed442", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00101', 'locality-39f5e973', 'locality-39f5e973-moex-110-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '二維方陣A大小為nn，方陣中的元素除了主對角線之元素以及緊鄰它的
上下兩條對角線之元素的值可能不為零外，方陣 A 其他元素之值一定為
零，以55方陣為例如下圖。請以一維陣列B設計儲存此方陣A之結構，
陣列B之索引值自0開始，且陣列B的元素數量須小於或等於3n-2。設
計的結構須包含如何有效率地決定儲存方陣 A 之元素 a 以及如何自陣
ij
列 B中取得或決定方陣中元素 a 值，其中0 i, jn-1 而 i與 j分別為元
ij
素在方陣 A中之列號與行號。（20 分）
a a 0 0 0
00 01
a a a 0 0
10 11 12
0 a a a 0
21 22 23
0 0 a a a
32 33 34
0 0 0 a a
43 44', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ceda465ed442", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
