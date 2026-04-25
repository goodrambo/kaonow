-- W1.6 questions batch 2496/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-39f5e973-moex-00059', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '函式之間的呼叫，其參數的傳送可分為那幾種？請詳述之；並以任何一種
程式語言撰寫兩個整數對調的情形，並加以說明最後處理的結果。需註明
使用的程式語言。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b4d242093106", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00060', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '程式語言中有一重要的主題是指標（pointer）。何謂指標？其功用為何？
int a = 100；並詳述⑴int *ptr = &a；⑵int *fn(int a)；⑶int(*fn)(int a)；
⑷int*arr[3]；⑸int(*arr)[3]。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b4d242093106", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00061', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '程式語言中有一重要的主題是指標和參考（reference），它們當用來撰寫
鏈結串列或樹狀結構的問題。我們將它用來處理鏈結串列，假設有一單向
鏈結串列（singlylinkedlist）之節點中有三個項目，分別是 id（整數型態）、
score（浮點數型態）以及next（指標或參考型態），如下圖所示：
id score next
今有一節點名為ptr，試分別撰寫將此 ptr節點加入於已含有多個節點的單
向鏈結串列之尾端，以及刪除鏈結串列尾端節點的片段程式。可以任何程
式語言撰寫之，但請註明使用的程式語言。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "b4d242093106", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00062', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '在大數據分析的應用中，許多資料集是以稀疏矩陣（Sparse matrix）的方
式呈現，如：客戶的購物行為等。這些資料集共同的特性是資料維度大，
但其中的資料量相對稀少，若直接以傳統陣列結構來儲存資料，將會造成
大量的空間浪費。請以 C語言完成下列問題要求：
設計一有效的二維稀疏矩陣資料結構，避免儲存不存在（或其值為 0）
的資料，有效利用空間。（5分）
使用所設計的資料結構，完成矩陣的轉置（Transpose）運算函式。
（10分）
使用所設計的資料結構，完成維度分別為 mn 的 A矩陣與 nl的 B矩
陣之矩陣相乘（Multiply）運算函式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "e6f8192e8f68", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00063', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', 'ㄧ有向圖形（directed graph）G=(V, E)如下：
8 A
4
4 4
7 8
B 2 5
C D
9 2 7 5
5 2
E
請以相鄰矩陣（adjacencymatrix）表達有向圖形 G。（5分）
設計一演算法找尋圖形中所有端點（node）對端點的最短路徑（all-pairs
shortest path），並以有向圖形 G 的相鄰矩陣為例說明所使用演算法的
計算過程。（15分）
請說明在上述中所使用演算法的時間複雜度（timecomplexity）為何？
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "e6f8192e8f68", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00064', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '對資料庫系統的檔案儲存結構而言，必須能夠隨著檔案資料的增多，動態
的新增儲存區塊（block），例如：B-tree樹狀檔案資料結構，即可隨著資
料量變大而增加葉節點區塊（leafnodeblock）或增加樹的高度來因應。下
列為 m=5 (5way) B-tree的現況，目前已存有 13筆資料：
9 20
1 3 5 11 14 16 18 22 24 26 27
請問具有 K 層以上 m = 5 結構的 B-tree 至少可以存放多少筆資料？
（5 分）
請畫出完成運算 insert(7)與 insert(28)後的 B-tree 結構。（10分）
完成上述之後接續畫出先後完成運算 insert(15)與 insert(6)的 B-tree
結構。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "e6f8192e8f68", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00065', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '霍夫曼碼（Huffmancode）是具有最佳編碼的資料壓縮方法之一，今有下
列的訊息欲以霍夫曼碼編碼傳遞以節省訊息量
“PAPAYA_AND_BANANA_ARE_YUMMY”
其中空格 ‘_’ 亦需計算在訊息量內。
請以該訊息詳述構建霍夫曼碼演算法的過程與結果。（20分）
依步驟說明所使用演算法的時間複雜度（timecomplexity）。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "e6f8192e8f68", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00066', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '資訊系統是用以支援企業活動。企業管理將企業分為三個層級，資訊管理
將其加入知識層為四層級。在此分層觀點下，資訊系統被分為六大系統。
請列出資訊管理的四層管理階層，及其上下關係。（8分）
請列出此六大系統並說明其所支援的管理層次。（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:46+00:00", "source_pdf_sha1": "b88a4fa613fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00067', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '某大學欲設計一簡易課程查詢系統，該大學相關業務概述如下：該學校有
4 個學院每個學院有 5個科系，不同的系可以開相同的課程，惟課程名稱
一樣其學分數相同，課程代碼也相同。每一科系不可同時開相同課程。為
避免教師同名每一個教師均有一教師代碼。所需的資料項目計有：學院名
稱、學院代碼、科系名稱、科系代碼、課程名稱、課程代碼、課程學分數、
教師姓名、教師代碼。
請定義：資料第一正規化（first normal form(1NF)）、資料第二正規化
（secondnormalform(2NF)）、資料第三正規化（thirdnormalform(3NF)）。
（15分）
請依上述資料的關係，求上述系統資料的第一正規化、第二正規化和第
三正規化。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:46+00:00", "source_pdf_sha1": "b88a4fa613fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00068', 'disabled-39f5e973', 'disabled-39f5e973-moex-110-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '對大多數的組織而言，資訊系統的獲得有兩個來源，一個是由內部人員自
行開發撰寫應用程式，另一個則是由外部廠商來協助開發或購買套裝軟
體。請對上述兩個來源各舉二個方法（共四種方法）加以敘述並說明該方
法的優、缺點。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:46+00:00", "source_pdf_sha1": "b88a4fa613fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "307", "s": "1302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
