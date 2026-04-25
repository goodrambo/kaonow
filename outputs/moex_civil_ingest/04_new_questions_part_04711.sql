-- W1.6 questions batch 4711/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00085', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-84f8139f', 'sub-heelevel3-39f5e973-07', NULL, 'essay', '語意分析（SemanticsAnalysis）對於程式語言的正確執行非常重要。
以下是 Java和 C++程式，請說明程式編譯、執行結果與其原因，以及
程式指令之意義或影響。（18分）
⑴Java程式
static void test1(){
int n;
int [] x = new int[n];
}
⑵Java程式
static void test2(){
int n=0;
int [] x = new int[n];
}
⑶Java程式
static void test3(){
int n=0;
int [] x = new int[n];
x[0]=0;
}
⑷C++程式
void test4(){
int n;
int x[n];
}
⑸C++程式
void test5(){
int n=0;
int x[n];
x[0] =0;
}
⑹C++程式
void test6(){
int n=0;
int *x = new int[n];
x[0] =0;
}
請說明 Java 與 C++語言在陣列宣告上的語意分析的方法，與其優缺
點。（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ccfa78054e5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1221", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00086', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-84f8139f', 'sub-heelevel3-39f5e973-07', NULL, 'essay', '程式驗證的應用。
請說明「測試驅動發展方法（TestDrivenDevelopment,TDD）」的概念
及優點。（7分）
有一 MySort 類別的方法 int[] binarySort(int data[])，將陣列 data 內的
資料由小到大排序後回傳，請依據 TDD的概念設計測試案例。（10分）
請以 Java/JUnit語言完成以下測試程式（I）~（II）。（8分）
@Test
public void testBinarySort(MySort （I） ){
int[] source = {2, 3, 5, 9, 12, 7};
int[] target = obj.binarySort(source);
for(int i=0; i<source.length-1; i++){
assertTrue(target[i] < （II） );
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ccfa78054e5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1221", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00087', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-84f8139f', 'sub-heelevel3-39f5e973-07', NULL, 'essay', '建構股票交易資料庫（Stock），請寫出 SQL指令。
客戶表格（Customer）
客戶編號（cid） 客戶姓名（cname） 客戶帳戶餘額 客戶融資餘額
[整數、主鍵] [少於10字元可變字串] （balance） （margin）
[自動增加] [整數、非空值] [整數、非空值]
證券交易表格（StockTrade）
交易編號 證券編號 證券每股購入價格 證券購入股數 客戶編號（cid）
（id） （sid） （price） （share） [整數、非空值]
[整數、主鍵][整數、非空值] [整數、非空值] [整數、非空值]
[自動增加]
造出 Customer, StockTrade表格。（10分）
CREATETABLE Customer( _____________________ );
CREATETABLE StockTrade (_____________________ );
查詢客戶姓名是"Tom"所有購買股票編號與購入總股數。（5分）
撰寫 Store Procedure，造出一個暫時的資料表 Report，含兩個整數資
料欄位（證券編號 sid, 證券價格price）；加入 10筆資料，再根據證券
價格由小到大排序，查詢列出此10 筆資料。（10分）
delimiter $$
CREATE PROCEDURE x()
BEGIN
DECLARE i INT DEFAULT 1;
____________________
END$$', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ccfa78054e5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1221", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00088', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-84f8139f', 'sub-heelevel3-39f5e973-07', NULL, 'essay', '程式例外處理的設計對於資訊系統的可靠性非常重要。
請完成以下 C++程式（I）~（V）指令，處理兩數相除的例外狀況，使
輸出為：（15分）
Exception:empty
Exception:not a number
Quotient:Exception:divided by zero
Quotient:2.4
#include <iostream>
#include <exception>
#include <string.h>
#define N 10
using namespace std;
class EmptyException:public exception {
public:
virtual const char* what()const throw(){
（I） ;
}
};
class NotNumberException:public exception {
public:
virtual const char* what()const throw(){
(II) ;
}
};
class DividedByZeroException:public exception {
public:
virtual const char* what()const throw(){
(III) ;
}
};
int valid(const char x[N]){
int result=0;
if(strlen(x)==0)throw EmptyException();
for(int i=0; i<strlen(x); i++){
if(!isdigit(x[i]))
throw NotNumberException();
result = (IV) ;
}
return result;
} double quotient(int n1, int n2){
if( (V) )
throw DividedByZeroException();
return static_cast<double>(n1/n2);
}
void test(const char x1[N], const char x2[N]){
int n1, n2;
try {
n1=valid(x1);
n2=valid(x2);
cout<<"Quotient:"<<quotient(n1, n2);
}
catch(EmptyException &e){
cout<<"Exception:"<< e.what();
}
catch(NotNumberException &e){
cout<<"Exception:"<< e.what();
}
catch(DividedByZeroException &e){
cout<<"Exception:"<< e.what();
}
cout<<endl;
}
int main(){
test("","");
test("a","12");
test("10","0");
test("12","5");
return 0;
}
請說明使用 try-catch 與 if-else，處理例外狀況的優缺點。（5分）
請說明 C++與Java在 try-catch 中 finally設計的異同與其理由。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ccfa78054e5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1221", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00089', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '請解釋 DevOps並說明在軟體開發生命週期（Software Development Life
Cycle）中該如何執行 DevOps。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "c04f1d78cf3c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1224", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00090', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '請解釋何謂完全測試（CompleteTesting）？該如何執行？可行性如何？
請使用 Windows 或 Mac 作業系統中常見的小算盤程式（Calculator
Program）來舉例說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "c04f1d78cf3c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1224", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00091', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '在系統開發中，有時為了因應顧客時程需求或企業為緊抓市場商機而要
求專案成員縮短開發工期（即縮短時程），在此情況下管理者通常會允諾
增加可用的資源。巴里·玻姆（Barry Boehm）的建構成本模型
（Constructive Cost Model，通常被簡稱為 COCOMO）與勞倫斯·普特南
（Lawrence H. Putnam）的軟體生命週期管理模型（Software Life-Cycle
Management Model，通常被簡稱為 SLIM）為常用的軟體開發時程與成
本預估模型。請針對一個二年期的資訊系統開發專案，如果開發人員被
要求得改在 22個月、20個月及 12個月內完成該專案，請使用軟體生命
週期管理模型來舉例說明上述三種不同的縮短時程要求會對專案整體
工作量造成何種程度的影響？實務上是否可行？請從技術面與管理面
上說明專案經理或開發人員該如何面對與處理。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "c04f1d78cf3c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1224", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00092', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '請解釋軟體演進（SoftwareEvolution）與軟體演進定律（LawsofSoftware
Evolution），請至少列舉三條定律說明其意涵。此外倘開發團隊
（Development Team）採用傳統軟體開發方法（Traditional Software
DevelopmentMethodologies）但演進團隊（EvolutionTeam）卻選擇採用
敏捷方法（AgileMethodology）；或是開發團隊選定敏捷方法但演進團隊
卻使用傳統軟體開發方法。試問上述這二種狀況各會對軟體演進造成何
種影響？請詳細說明。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "c04f1d78cf3c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1224", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00093', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '假設在某關聯式資料庫（Relationaldatabase）中，資料庫管理者（Database
Administrator, DBA）執行如下之 SQL 指令以定義 CUSTOMER 和
PURCHASE兩個表格：
createtable CUSTOMER
(cid char(2),name varchar(10), city varchar(10),primarykey(cid));
createtable PURCHASE
(cid char(2), mid char(2), amountinteger,
primary key (cid, mid), foreign key(cid)referencesCUSTOMER);
若使用者依序執行下列六個 SQL指令，
指令一：insertinto CUSTOMERvalues(‘C1’, ‘John’,‘Taipei’);
指令二：insertinto PURCHASEvalues(‘C1’, ‘M1’, 10);
指令三：insertintoCUSTOMERvalues(‘C1’,‘Mary’,‘Taichung’);
指令四：insertinto PURCHASEvalues(‘C1’, ‘M2’, 1);
指令五：updateCUSTOMERsetcid =‘C2’wherecid =‘C1’;
指令六：deletefromPURCHASE wherecid =‘C1’;
請針對指令三至指令六此四個指令，分別說明其執行之後所產生的效
果，並加以解釋之。舉例來說，若某指令可順利執行，請說明是那些表
格受到影響，並詳述更新後的表格內容。反之，則請說明是表格定義中
的那項限制，導致該指令無法順利更新表格內容。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ce765862fb87", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1225", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00094', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '假設關聯式資料庫中定義三個表格，其中 CUSTOMER 表格記錄顧客基
本資料，包含顧客編號（Cid）、姓名（Name）和所居住的城市（City）；
MERCHANDISE 表格記錄貨品基本資料，包含貨品編號（Mid）和價格
（Price）；PURCHASE表格則為購買資料，記錄了某位顧客（Cid）於某
日（Date）購買某個貨品（Mid）的數量（Amount）。在這些表格的欄位
中，除了價格和數量二者為數值型態的屬性，其餘皆為字串型態。此三
個表格的綱要簡列如下，且每個表格的主鍵以底線標註：
CUSTOMER(Cid, Name,City)
MERCHANDISE(Mid,Price)
PURCHASE(Cid, Mid,Date,Amount)
請根據以下兩個資訊需求分別寫出對應的 SQL查詢指令，注意每個小題
皆各自對應到單一的 SQL查詢句，但是可以使用子查詢句（Subquery）
或類似功能的寫法。
請問所有住在臺北市的顧客，總共花了多少錢在購買物品上？（10 分）
試找出那些顧客購買貨品編號“M1”的總數量，超過編號“C2”顧客購買
貨品編號“M1”的總數量，並輸出那些顧客的編號。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ce765862fb87", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1225", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
