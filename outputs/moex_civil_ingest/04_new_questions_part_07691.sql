-- W1.6 questions batch 7691/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-39f5e973-moex-00021', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請說明下列氣泡排序法，並回答以下 Python 程式碼之輸出結果。（25 分）
1 data=[36,22,57,9,31,42,7,15]
2 print(''beforesorting:'',data)
3 defSort(data):
4 n=len(data)
5 whilen>1:
6 n-=1
7 foriinrange(n):
8 ifdata[i]>data[i+1]:
9 data[i],data[i+1]=data[i+1],data[i]
10 print(''第'',8-n,''輪排序:'',data)
11 returndata
12 print(''aftersorting:'',Sort(data))', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "da755ff9c739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00022', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請試述下列名詞之意涵：封裝（Encapsulation）、繼承（Inheritance）、
多型（Polymorphism）、SQL隱碼攻擊（SQLInjectionAttack）、預存程序
（StoredProcedure）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "da755ff9c739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00023', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請依據以下 C程式碼回答問題，列出輸出結果並加以說明。（25分）
1 #include<stdio.h>
2 intmain(){
3 inti,arr[10];
4 int*Pointer;
5 for(i=0;i<=9;i++)
6 arr[i]=(i+1)*10-i;
7 Pointer=arr;
8 printf("%d\n",*Pointer);
9 printf("%d\n",*Pointer++);
10 printf("%d\n",*++Pointer);
11 printf("%d\n",(*Pointer)++);
12 printf("%d\n",*--Pointer);
13 return0;
14 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "da755ff9c739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00024', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '資料庫系統的設計原則，是根據資料抽象化（dataabstraction）的概念，
將資料分作不同層，包含：實體層（physicallevel）、邏輯層（logicallevel）
和視界層（view level）。請分別敘述每一層的功能或功用為何？並說明
將資料分做三層的好處。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "42875fa980be", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00025', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '假設要為一個電子商務網站設計資料庫，請根據下列需求利用實體關係
模式（Entity-Relationship model）進行規劃，並畫出對應的實體關係圖
（ER-diagram）：
每個物品都要記錄其編號、名稱、製造廠商和價錢。
每個會員都要記錄其會員編號、姓名、地址和電話。
每個訂單都要記錄其訂單編號、由那個會員下訂、訂單成立的日期、
應付的總金額、包含那些物品和每個物品被購買的個數等。
一個訂單只能隸屬於一個會員，但可包含多項物品。
請注意圖中必須標明實體集合、關係集合、屬性、主鍵和對應數量限制
（mapping cardinality）等，也可使用擴充實體關係模式（Extended ER
model,EER）的表示法。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "42875fa980be", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00026', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '假設有一個商家的關聯式資料庫系統，以四個表格記錄會員、貨品、購
買紀錄和每筆訂單的物品清單等資料，而整數型態的屬性有以下三個：
價錢（price）、應付金額（amount）和數量（quantity），其餘的屬性型態
皆為字串。其完整綱要（schema）如下所示，其中每個表格的主鍵以底
線標註：
Member（accountNO,name, telephone）
Item（itemNO,name, price）
ShoppingRecord（orderID,accountNO,amount）
ShoppingList（orderID, itemNO,quantity）
請利用 SQL查詢指令，分別回答以下子題。（每小題 10 分，共30分）
找出名為「張三」會員的所有購買紀錄，包含該筆紀錄的編號和應付
金額。
針對名為「張三」的會員，找出購買總數量超過 5 個以上（含）的貨
品，每一筆輸出需包含貨品編號和購買總數量。
找出累計所有會員花了最多錢購買的貨品，輸出該貨品的編號。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "42875fa980be", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00027', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '關聯式資料庫綱要設計的基本原則是要符合正規化的規定，請詳述何謂
第一正規化（FirstNormalForm）？並設計一個表格舉例說明，若不符合
第一正規化會帶來何種問題。反之，可延伸標記式語言（Extensible
MarkupLanguage,XML）資料或 JSON（JavaScriptObjectNotation）資料
則支援巢狀（nested）的表示法。同樣舉出一個實例說明該表示法為何，
以及可以帶來何種好處？（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "42875fa980be", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00028', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '假設有一宣告為floatA[18][10]的浮點數陣列（假設Sizeof(float)=4Bytes）：
（每小題 5分，共 15 分）
此陣列共占多少位元組（Bytes）？
若 A[0][0]在記憶體的位址為(03C4) ，則元素 A[5][3]的位址為何？
16
若 A[16][2]在記憶體的位址為(10E9) ，則元素A[5][3]的位址為何？
16', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "846910ec7ce4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00029', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '請將下列表示式轉成後序（Postfix）（5 分）
(A + B)× (C ^ (D − E) + F) – G
請將下列表示式轉成中序（Infix）（5分）
AB+D EBA//+AD C /+ CD  +A − B + CD   −', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "846910ec7ce4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00030', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '下圖為一棵二元∗搜尋樹（Bin∗arySearch∗Tree），若要刪除∗ 節點48，在維持
最小變動的狀況下，但仍需維持一棵二元搜尋樹，請畫出所有可能的二
元搜尋樹。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "846910ec7ce4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
