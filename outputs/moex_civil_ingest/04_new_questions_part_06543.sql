-- W1.6 questions batch 6543/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00062', 'locality-39f5e973', 'locality-39f5e973-moex-111-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '有關 Python 程式設計，回答下列問題：
以下程式執行時，輸入正數為 15 和 21 時，其輸出結果分別為何？
（14 分）
以下是將 x =[-5, 16, 30, -11, 26, -22] 整數串列，利用氣泡排序法，由
小到大逐次排列，並顯示每一次排列的 python主程式，
此程式執行結果如下：
寫出氣泡排序法的 func_2_2(x)函數，來完成上述程式。（11 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4b7e778b7a80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00063', 'locality-39f5e973', 'locality-39f5e973-moex-111-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '有關 C++程式設計，回答以下問題：
建立一個 Rect類別，其 Rect.h 定義如下：
其屬性有 length 和 width，每個屬性內定為 1.0。提供計算矩形周長
（perimeter）和面積（area）的成員函數。另外，提供寬度屬性的設定
（setWidth）和獲取（getWidth）函數，也提供長度屬性的設定（setLength）
和獲取（getLength）函數。設定函數要檢查長度和寬度均為大於 0.0 且
小於 20.0 的浮點數。以下為測試Rect類別的主程式：
執行結果如下：
寫出Rect.h中的Rect()，setWidth()，setLength()，getWidth()，getLength()，
perimeter()，area()等 C++函數，來完成上述主程式和執行結果的功能。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4b7e778b7a80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00064', 'locality-39f5e973', 'locality-39f5e973-moex-111-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '有關 Java程式設計，回答下列問題：
寫一找尋小於10,000的完美數（Perfect number）程式，所謂完美數是
指：如果一個正整數等於它所有正因數的和，但不包括它自己，則此
正整數被稱為完美數。例如，6是第一個完美數，因為6=3+2+1。接
下來是 28 =14 +7 +4 +2 + 1。（11 分）
以下程式功能為何？當輸入 32，56，80時，其輸出結果分別為多少？
（16 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4b7e778b7a80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00065', 'locality-39f5e973', 'locality-39f5e973-moex-111-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '內聚力（Cohesion）與耦合力（Coupling）是評估系統設計的重要指標，
請使用結構圖（structure chart）分別繪製高內聚力（high cohesion）、鬆
散耦合（looselycoupled）的例子，並用文字說明這些例子。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "547f723fbfb7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00066', 'locality-39f5e973', 'locality-39f5e973-moex-111-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '擔任軟體採購規劃的工作，必須著重委外資安議題的思考，請舉例詳
細說明服務水準協議 SLA（ServiceLevelAgreement）在資訊系統服務與
營運中扮演的角色。（10 分）請舉 5 個重要措施以降低委外開發、測
試及運作時的風險。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "547f723fbfb7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00067', 'locality-39f5e973', 'locality-39f5e973-moex-111-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '你與軟體開發專案夥伴們，希望能追蹤從開始到定案的所有檔案版本，
以確保能方便多人共用，順利完成專案。請列出版本控制系統
（VersionControlSystem）重要的三個特色，並說明之。（10 分）目前
主流的版本控制系統的架構有集中式與分散式兩種，請分別舉例詳細
說明。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "547f723fbfb7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00068', 'locality-39f5e973', 'locality-39f5e973-moex-111-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '假設 ABC 專案採用敏捷方法開發，而你必須向其他成員說明敏捷開發
的需求收集方式，請詳細說明下列三者，何謂使用者故事（userstory）、
情境（scenario）、故事板（storyboard）？並分別舉一實例。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "547f723fbfb7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00069', 'locality-39f5e973', 'locality-39f5e973-moex-111-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '假設有關博物館的部分實體關係圖（Entity-RelationshipDiagram）如下，
其中每一實體（矩形）或弱實體（雙矩形）鄰近某關係（菱形）間均有
一對（min,max）的限制，代表該實體參與該關係之 min（至少）、max（至
多）次數限制，*代表沒有限制。屬性劃實底線者（如 MID、LID、
C_Number）為 PrimaryKey（主鍵）、劃虛底線者（如BID）為 PartialKey。
請將此圖轉化為對應的關聯（Relation）式資料庫綱要，以「關聯（屬
性 1,屬性2,……）」方式寫出應有的所有關聯表格；同時，必須標示出
每個關聯的主鍵。（15分）
進一步，若對實體關係圖中「館藏物」應有的關聯表格，以 SQL語法
的 CREATE 命令去創建它，其中應有的參考完整性限制（Referential
IntegrityConstraints）語句應為何？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "c67c82bc98b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00070', 'locality-39f5e973', 'locality-39f5e973-moex-111-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '假設有個資料庫的 Employee表格，其屬性包含：編號 SID、姓名 Name、
性別 Sex、居住街道地址 Street、居住城市 City、薪水 Salary、所屬部門
編號 Dnumber。其目前的資料存於電腦中如下表，假設：身為程式設計
師，你還不知電腦中有多少筆，及其詳細內容，但知道其綱要、欄位型
態，並見到編號SID為 3001、4001 兩筆資料例子。
SID Name Sex Street City Salary Dnumber
1001 Alisa F 中山一路30號 Palmer 8000 50
2001 Beatrice F 信義南路7號 Lecanto 12000 30
3001 Abraham M 中山二路60號 Warrendale 7000 30
4001 Dana F 北中山一路96號 Enumclaw 6000 40
4044 Ferdinand M 忠孝北路66號 Alameda 9000 40
5055 Grace F 忠孝北路99號 Lecanto 25000 30
6004 John M 南中山一路30號 Waterloo 36000 40
6006 Philemen M 中山路67號 Smithville 16000 60
6008 Vince M 仁愛西路80號 Wautoma 15000 50
請寫出 SQL查詢，來列出：不管住那個城市，居住街道有「中山」二
字者之員工編號、姓名。（10分）
若你寫下列 SQL查詢，請說明電腦會給你什麼結果（假設查詢時，資
料庫目前只有上述 9 筆資料）。（10 分）
SELECTDnumber,COUNT（*）ASHigh_Sal_Count
FROM Employee
WHERESalary > 10000
Group ByDnumber
HAVINGCOUNT（*）>=2;
若你寫下列 SQL查詢，請說明電腦又會給你什麼結果（假設查詢時，
資料庫目前只有上述 9筆資料）。（10 分）
SELECTDnumber,COUNT（*）ASHigh_Sal_Count
FROM Employee
WHERESalary > 10000ANDDnumberIN
（SELECTDnumber
FROM Employee
Group ByDnumber
HAVINGCOUNT（*）>=2）
Group ByDnumber;', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "c67c82bc98b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00071', 'locality-39f5e973', 'locality-39f5e973-moex-111-804ba136', 'sub-locality-39f5e973-01', NULL, 'essay', '關聯式資料庫的設計中，需要關注資料間的功能相依（FunctionalDependency），
資料間為何有功能相依？如何找到企業中的資料間之功能相依？（5分）
假設有下列表格 R，已知有五筆資料 t1,t2,t3,t4,t5，由目前已觀察到的
資料值，請檢視各個功能相依，來一一回答「已可確認不存在」或「還
有可能存在」？為什麼？（15 分）
⑴A1→A2
⑵A1→A3
⑶{A1,A5}→A3
⑷{A3,A5}→A4
⑸{A3,A4}→A2
A1 A2 A3 A4 A5
1 2 3 40 60
2 2 4 50 78
1 3 3 40 60
1 11 3 66 70
8 11 33 77 70', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "c67c82bc98b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
