-- W1.6 questions batch 4706/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00035', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '關於以下C++程式碼：
01 #include<iostream>
02 #include<string>
03 #include<exception>
04 #include<stdexcept>
05 #include<assert.h>
06 usingnamespacestd;
07 classNegativeException:publicexception{
08 constchar*what()constthrow(){return"negative";}
09 };
10 classDivideByZeroException:publiclogic_error{
11 public:
12 DivideByZeroException():logic_error("dividebyzero"){}
13 };
14 intgetResult(intx,inty){
15 if(x<0||y<0)throwNegativeException();
16 elseif(y==0)throwDivideByZeroException();
17 return(x/y);
18 }
19 voidf(intx,inty){
20 try{cout<<"Result:"<<getResult(x,y)<<endl;}
21 catch(std::exception&e){cout<<"1:"<<e.what()<<"\n";}
22 }
23 voidtestResult(){
24 f(2,-1);
25 f(2,0);
26 f(2,3);
27 f(6,3);
28 }
29 voidassertResult(){
30 assert(getResult(8,4)==1);
31 }
32 intmain(){
33 testResult();
34 assertResult();
35 return0;
36 }
請說明程式執行後的輸出。（15分）
請說明程式中assert與exception的使用時機與目的。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "13c40fd46333", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00036', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '關於以下Java程式：
01 importjava.io.*;
02 importjava.util.ArrayList;
03 abstractclassFruit{
04 publicFruit(intsweetness){this.sweetness=sweetness;}
05 publicabstractStringeat();
06 protectedStringtaste(){
07 if(sweetness>0&&sweetness<5)return"no";
08 elseif(sweetness<=10)return"little";
09 elseif(sweetness<=15) return"some";
10 elseif(sweetness<=20)return"more";
11 elsereturn"super";
12 }
13 privateintsweetness;
14 }
15 classAppleextendsFruit{
16 publicApple(Stringc,ints){super(s); this.color=c;}
17 publicStringeat() {returncolor+":"+taste()+"sweetness";}
18 privateStringcolor;
19 }
20 classWatermelonextendsFruit{
21 publicWatermelon(Stringv,ints){super(s); this.volume=v;}
22 publicStringeat() {returnvolume+":"+taste()+"sweetness";}
23 privateStringvolume;
24 }
25 publicclassTest{
26 publicstaticvoidtest01(){
27 ArrayList<Fruit>fs=newArrayList<Fruit>();
28 fs.add(newApple("red",18));
29 fs.add(newWatermelon("big",20));
30 fs.add(newApple("green",10));
31 fs.forEach((n)->System.out.println(n.eat()));
32 }
33 publicstaticvoidmain(String[]args)throwsInterruptedException{
34 test01();
35 }
36 }
請說明程式執行後其輸出與其運作程式碼行數順序。（12分）
請依下面表格，說明Fruit的設計功用，包含Fruit類別類型與功用以及方
法（method）。（13分）
Fruit類別類型與功用 Fruit方法功用 eat功用 taste功用
說明', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "13c40fd46333", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00037', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '以下C++程式有部分違反安全程式設計原則，可能具有許多潛在風險。
01 #include<iostream>
02 #include<string>
03 #defineSIZE10
04 usingnamespacestd;
05 classFood{
06 public:
07 Food()=default;
08 Food(intc){cal=c;}
09 intgetCal(){returncal;}
10 private:
11 intcal;
12 };
13 voidf1(){
14 Food*f[SIZE];
15 cout<<f[0]->getCal()<<endl;
16 }
17 voidf2(intn){
18 string*f=NULL;
19 for(inti=0;i<n;i++)
20 f=newstring("ok");
21 cout<<*f<<endl;;
22 }
23 voidf3(intn){
24 doublex=3,y1=5,y2=2;
25 for(inti=0;i<n;i++){
26 x=x/10.0;
27 y1=y1/10.0;y2=y2/10.0;
28 }
29 if(x==(y1-y2))cout<<"X==Y"<<endl;
30 }
31 voidf4(char*s1,char*s2){
32 intlen=0;
33 char*s=s1;
34 while(*s2!=''\0''){
35 *s1=*s2;
36 s1++;s2++;
37 }
38 cout<<s<<endl;
39 }
40 voidf5(intn){
41 intresult=0;
42 int*d=newint[n];
43 d[0]=d[1]=1;
44 for(inti=0;i<n-2;i++)d[i+2]=d[i+1]+d[i];
45 for(inti=0;i<n;i++)result=result+d[i];
46 cout<<result<<endl;
47 }
48 intmain(){
49 chars1[]="goodness",s2[]="food";
50 f1();
51 f2(2);
52 f3(1);
53 f4(s1,s2);
54 f5(6);
55 return0;
56 }
請說明此程式，執行函式f1()~f5()的輸出，以及函式f1()~f5()可能具有的潛
在風險。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "13c40fd46333", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00038', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '基準線（baseline）的建立在軟體型態管理（SoftwareConfigurationManagement）
中是必須且重要的。請問如何透過基準線對軟體型態項目（Software
ConfigurationItem）進行控管？在複雜的軟體專案進行過程中，您會在那
些開發階段建立基準線？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2976544b222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00039', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', 'Scrum是常見的一種敏捷開發方法，其中SprintReview與SprintRetrospective
是Scrum中的兩個重要活動。請問Scrum中的Sprint Review與Sprint
Retrospective在執行時機與執行目的上有何不同？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2976544b222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00040', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', 'UML（UnifiedModelingLanguage）是一種用來描述、設計和建立軟體
系統的統一標準語言，而其中的循序圖（Sequence Diagram）和溝通圖
（Communication Diagram）兩種圖形可直接互換。請說明這兩種圖形有
何異同？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2976544b222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00041', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '資料庫設計完整性的限制是指在資料庫中維護資料的一致性、準確性和
有效性的規則和限制。這些限制旨在確保資料庫中的資料符合定義的規
範和標準，並且不會發生不一致或無效的情況。常見的資料庫設計完整性
的限制包含了實體完整性、參照完整性、值域完整性及空值完整性等。請
說明何謂實體完整性與參照完整性限制？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "f2976544b222", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00042', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '國立ABC大學的校務行政電腦化，其中有關教務資料，擬採用資料庫系
統，經系統分析後，得到如下需求（Requirements）：
㉑ABC大學由許多學系（DEPARTMENT）組成，每一學系有系代碼
（DeptId）與系名稱（DeptName），系代碼可區別不同學系。
㉒各學系會開許多課程（COURSE），每一課程有課程代碼（CrsId）、課程
名稱（CrsName）、課程說明（CrsDescrip）與課程學分數（CrsCredit），
課程代碼可區別不同課程。
㉓每一學系有許多學生（STUDENT），每個學生有學生代碼（StudId）、學
生姓名（StudName）與學生電子信箱（StudEmail），有學生會有多個電
子信箱，學生代碼可區別不同學生。
㉔每一學系由許多教授（PROFESSOR）組成，每一教授有教職員工代碼
（ProfId）、姓名（ProfName）與職稱（ProfRank），教職員工代碼可區
別不同教授。
㉕每個學系會開授許多課程，每一課程僅由一學系開授。
㉖每個學系會有許多學生，每一學生僅隸屬於一學系。
㉗每個學系會有許多教授，每一教授僅隸屬於一學系。
㉘每一教授可以開授許多門課程，每一門課程僅由一個教授開授。
㉙每一學生可以修習許多課程，每一課程也可由許多學生來修習，每一學
生修習的課程有一成績（Grade）。
請設計此教務關聯式資料庫綱要（RelationalDatabaseSchema），並標示出
此資料庫關聯（Relations）的主鍵（PrimaryKey）與外來鍵（ForeignKey）。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "ca1a7801fd3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2910", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00043', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '給予一關聯綱要EMP-DEPT（EmpId, EmpName, EmpBdate, EmpAddr,
DeptNum,DeptName,DmgrId），主鍵（PrimaryKey）為{EmpId}，此關聯
綱要記錄員工參與部門的相關資料，員工有員工編號（EmpId）、員工姓
名（EmpName）、員工生日（EmpBdate）與員工地址（EmpAddr），部門
有部門編號（DeptNum）、部門名稱（DeptName）與部門經理編號（DmgrId），
而且給予一組功能依附性（Functional Dependencies）{{EmpId}→
{EmpName,EmpBdate,EmpAddr}，{DeptNum}→{DeptName,DmgrId}}，
關聯綱要EMP-DEPT是否為2NF？如不是，請將EMP-DEPT正規化至2NF，
然後正規化至3NF，並論述分割（Decompose）的理論基礎。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "ca1a7801fd3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2910", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00044', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '給予下列二個行程（Schedules）A與B，請用一圖形演算法，利用行程中
的讀（Read）與寫（Write）動作（Operations）構成圖形，圖形邊（Edge）
上標示讀寫的資料項目（Data Items），以此演算法論述A與B兩行程是否
具序列性（Serializability）？如具序列性，請寫出對等序列行程（Equivalent
Serial Schedule）。（25分）
(a) transactionT transactionT transactionT
1 2 3
read(Z);
read(Y);
write(Y);
read(Y);
Time read(Z);
read(X);
write(X); write(Y);
write(Z);
read(X);
read(Y);
write(Y); write(X);
ScheduleA
(b) transactionT transactionT transactionT
1 2 3
read(Y);
read(Z);
read(X);
write(X); write(Y);
Time write(Z);
read(Z);
read(Y);
write(Y); read(Y);
write(Y);
read(X);
write(X);
ScheduleB', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "ca1a7801fd3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2910", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
