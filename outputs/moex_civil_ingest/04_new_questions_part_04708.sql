-- W1.6 questions batch 4708/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00055', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '請回答下列資訊安全三大元素的相關問題：（每小題15分，共30分）
請說明機密性，並說明如何應用非對稱式密碼學達成。
請說明完整性，並說明其主要演算法暨應注意事項。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "58810ae9bf72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00056', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '請回答下列分散式阻斷服務相關問題：（每小題10分，共20分）
請說明分散式阻斷服務的原理與難以防守之原因。
請列舉五項分散式阻斷服務的防護策略。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "58810ae9bf72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00057', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '110年至113年的國家資安發展方案為建構主動防禦基礎網路，打造堅韌安
全之智慧國家，請回答下列問題：（每小題10分，共20分）
請舉例說明何謂數位韌性？
請說明主動式防禦知識庫，並對策略之運用機會舉例。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "58810ae9bf72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00058', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '請回答下列資訊安全的相關問題：（每小題15分，共30分）
請說明ISO27001資訊安全管理系統，並列舉出相關內外部風險。
請列舉五項通過ISO27001資訊安全管理系統驗證的效益。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "58810ae9bf72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00059', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '請問以下三小題 C 程式執行的結果為何？請注意須說明答案是如何產
生的，否則不給分。
（5分）
#include<stdio.h>
#include<stdlib.h>
int main(void){
int x;
floaty;
for(x=0, y=50; x<25; x+=5, y/=2)
printf("x=%d, y=%4.2f\n", x, y);
return0;
}
（5分）
#include<stdio.h>
#include<stdlib.h>
int a=10,fun(int);
int main(void){
int b=6;
printf("a=%d,b=%d,fun(a)=%d\n",a, b,fun(a));
return0;
}
intfun(intb){
a-=5; b/=2;
return(a+b);
}
（10 分）
#include<stdio.h>
#include<stdlib.h>
#defineSIZE10
voidfun(int*,int);
int main(void){
intx[SIZE] ={1,2,3,4,5,6,7,8,9,10};
fun(x, SIZE);
printf("\n");
return0;
}
voidfun(int*a,intsize){
if(size>0){
fun(a+3,size-3);
printf("*(a+%d)=%d\n",SIZE-size,*a);
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2c838687aa3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2622", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00060', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '資料庫是企業組織或政府部門中用以保存大量資料的機制。下圖為資料
表的結構，請回答以下各小題。（每小題 10分，共 20 分）
employee salary_slip
id:varchar(10) id:varchar(10)
first_name:varchar(30) year:int
last_name:varchar(20) month:int
amount:int
請以 SQL 列出某一個人的年度薪資總額，必須顯示 id, first_name,
last_name及總額。
現在的資料查詢服務常見於網頁系統，而 SQLInjection是最常見的資
料庫攻擊方式。請問下列查詢語句是否會有被攻擊的疑慮？若有的話
該如何改善？程式碼可以使用 PHP或 ASP.NET。
SELECTfirst_name, last_name FROMemployeeWHEREid=’A001’', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2c838687aa3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2622", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00061', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '請使用 C,C++,Java或 Python程式語言撰寫採用五位數整數來進行資料
加密的完整程式。（30分）
㉑撰寫加密函數 encrypt()，此函數可將所傳入的五位數整數進行加密，
並將加密後的密碼傳回。加密的規則如下：
先將該五位數整數的每位數值分別以「加 5 後除以 10 之餘數」
取代。
再將取代後之數字的第一位數與第五位數互換，第二位數與第四
位數互換，第三位數不變後取得一個新整數，此即為加密後的密
碼。（註：第一位數為萬分位、第二位數為千分位，以此類推。）
㉒撰寫解密函數decipher()，此函數可將所傳入的五位數密碼進行解密，
並將解密後的整數傳回。解密的規則是將上述加密後之密碼還原為原
傳入的整數。
㉓撰寫主程式來驗證上述之加密與解密函數的正確性。程式一開始先讓
使用者輸入任一之五位數整數[不在合理範圍內（10000~99999）須請
使用者重新輸入]，在呼叫加密函數後將所傳回之密碼從螢幕上顯示
出；再將該密碼傳入解密函數，再將所傳回之整數從螢幕上顯示出。
程式須可讓使用者持續輸入五位數之整數，直到使用者輸入 0（整數）
時結束程式的執行。
以下為程式執行的範例：（備註：斜體加外框線之整數為使用者所輸入，
其餘皆為程式執行的輸出。）
請輸入一個五位數的整數（輸入0 結束程式）：1234
所輸入的數值並不是五位數之整數
請重新輸入：12345
加密後的密碼為：09876
解密後的密碼為：12345
請輸入一個五位數的整數（輸入0 結束程式）：67890
加密後的密碼為：54321
解密後的密碼為：67890
請輸入一個五位數的整數（輸入0 結束程式）：0
感謝使用此程式，歡迎您對此程式的優化提出建議。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2c838687aa3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2622", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00062', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '抽象（abstract）類別、介面（interface）、覆寫（override）方法、多載（overload）
方法是物件導向程式設計實現多型（polymorphism）的方式。下圖是人
事系統中人員基本資料維護的類別圖，請說明類別圖中的覆寫方法及多
載方法名稱（須說明理由），並使用 C++, Java 或 Python 程式語言撰寫
Person類別與Police類別的程式碼。Police類別之GetPersonalInformation
函數必須傳回身分證（id_no）、姓名（name）、職稱（rank），UpdateRoleTitle
函數必須完整實作更新 police_rank。（30 分）
Person
<<abstract>>
Program #id_no:string
#name:string
Main(string[]args):void
+GetPersonalInformation():string
+UpdateRoleTitle():void
Police Staff
-police_rank:PoliceRank -staff_position:StaffPosition
+Police(id:string,name:string) +Staff(id:string,name:string)
+GetPersonalInformation():string +GetPersonalInformation():string
+UpdateRoleTitle(title:?):void +UpdateRoleTitle(title:?):void
PoliceRank StaffPosition
+code:string +code:string
+rank:string +title:string
+PoliceRank(code:string,rank:string) +StaffPosition(code:string,title:string)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2c838687aa3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2622", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00063', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '請解釋何謂 COTS（CommercialOff-The-Shelf），並請說明倘系統開發人
員或專案管理人員決定採用 COTS來開發新系統，那麼他們在系統設計
上需考慮的因素有那些？另請討論 COTS 系統整合時可能會發生那些
問題。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "2d39d019bb6b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2625", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00064', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '請解釋何謂網站可靠度工程（SiteReliabilityEngineering，簡稱 SRE）？
另請說明 SRE 與軟體工程（Software Engineering）的關係及 SRE 與
DevOps 之間的差異。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "2d39d019bb6b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2625", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
