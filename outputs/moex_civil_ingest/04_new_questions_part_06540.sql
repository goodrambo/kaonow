-- W1.6 questions batch 6540/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00032', 'locality-39f5e973', 'locality-39f5e973-moex-113-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '針對 SQL注入攻擊（SQLInjection），請回答下列問題：
請說明何謂 SQL注入攻擊；並說明此攻擊的常見實務案例。（15 分）
請說明使用預備語句（Prepared Statements）可以有效防止 SQL 注入
攻擊的原因以及其運作原理。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "25617693c311", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00033', 'locality-39f5e973', 'locality-39f5e973-moex-113-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '零信任（ZeroTrust）架構被視為現代網路安全的新標準，它強調「永不
信任，始終驗證」的安全策略。請說明在實施零信任架構時企業可能面
臨的挑戰，以及相應的解決方案。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "25617693c311", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00034', 'locality-39f5e973', 'locality-39f5e973-moex-112-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '關於下列 C程式碼，請說明程式執行後，程式碼編號 27~33 的輸出，以
及其運算邏輯。（25 分）
01 #include<stdio.h>
02 #defineSIZE30
03 typedefenumdirection{North,South,East=3,West}dir_t;
04 intf1(inta,intb){
05 intx=3.0/a;
06 doubley=(a/2)*(b%3)+x;
07 returny;
08 }
09 intf2(dir_td){
10 d=(North+East)/2>d?East:West;
11 returnd;
12 }
13 intf3(inta,intb){
14 if(b==a||b<=1)returna+b;
15 elseif(a<=1)returnb-a;
16 elsereturnf3(a-b,a-1)+b+a;
17 }
18 intf4(inta,intb){
19 intdata[SIZE];
20 for(inti=1,k=0;i<a;i++){
21 if(i%2==0)data[k++]=i;
22 }
23 returndata[b];
24 }
25 unsignedintf5(unsignedinta,unsignedintb){return(~a&b); }
26 intmain(){
27 printf("%d\n",f1(10,4));
28 printf("%d\n",f2(South));
29 printf("%d\n",f3(6,4));
30 printf("%u\n",f3(7,4));
31 printf("%d\n",f4(20,5));
32 printf("%d\n",f4(10,4));
33 printf("%u\n",f5(4,7));
34 return0;
35 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "42908783d885", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00035', 'locality-39f5e973', 'locality-39f5e973-moex-112-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '針對下列 C++程式，請標示出 Except 類別的 f1, …, f6 函式中有問題的
函式，與說明其問題之原因；並請說明若將有問題的函式和程式碼刪除，
其程式執行後之輸出。（25 分）
01 #include<stdexcept> 32 voidExcept::f3(){
02 #include<iostream> 33 try{
03 #include<string> 34 f1(-1);
04 usingnamespacestd; 35 cout<<"ok"<<endl;
05 classExcept{ 36 }catch(exception&e){
06 public: 37 cout<<"exc2"<<endl;
07 voidf1(intc); 38 }
08 voidf2(); 39 }
09 voidf3(); 40 voidExcept::f4(){
10 voidf4(); 41 try{
11 voidf5(); 42 throwout_of_range("no");
12 voidf6(); 43 }catch(out_of_range&e){
13 }; 44 cout<<e.what()<<endl;
14 intmain(){ 45 cout<<"exc3"<<endl;
15 Excepte; 46 }
16 e.f1(1); 47 }
17 e.f2(); 48 voidExcept::f5(){
18 e.f3(); 49 try{
19 e.f4(); 50 throwout_of_range("yes");
20 e.f5(); 51 }catch(exception&e){
21 e.f6(); 52 cout<<"exc41"<<endl;
22 return0; 53 }catch(out_of_range&e){
23 } 54 cout<<e.what()<<endl;
24 voidExcept::f1(intc){ 55 cout<<"exc42"<<endl;
25 if(c<0) 56 }
26 throwout_of_range("large"); 57 }
27 cout<<"exc1"<<endl; 58 voidExcept::f6(){
28 } 59 try{
29 voidExcept::f2(){ 60 throwout_of_range("ok");
30 f1(-1); 61 }finally{
31 } 62 cout<<"exc6"<<endl;;
63 }
64 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "42908783d885", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00036', 'locality-39f5e973', 'locality-39f5e973-moex-112-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '針對下列 Java程式碼，請完成統一塑模語言（UML）類別圖(a)~(e)；另
外請標示出錯誤程式碼行數並說明錯誤原因；以及說明若將錯誤行數程
式碼予以註解後，執行其程式的輸出。（25 分）
01 importjava.io.*;
02 interfacePet{
03 publicabstractinteat(intf);
04 };
05 classDogimplementsPet{
06 publicDog(intf){food=f;}
07 publicinteat(intf){
08 food+=f;
09 returnfood;
10 }
11 privateintfood;
12 };
13 publicclassMain{
14 publicstaticvoidmain(String[]args){
15 Petd1=newPet();
16 Petd2=newDog();
17 Petd3=newDog(5);
18 d1.eat(5);
19 d2.eat(5);
20 System.out.println("dog:"+d3.eat(5));
21 }
22 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "42908783d885", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00037', 'locality-39f5e973', 'locality-39f5e973-moex-112-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '針對下列 Python程式碼，依序在兩個 Terminal執行 server.py和 client.py
後，在 client.py輸入 Tom和 quit；請說明 client.py的 Terminal之輸出內
容，並說明 Line03,04,05 程式碼的運作邏輯。（25 分）
01 #server.py
02 importsocket
03 s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
04 s.bind((''127.0.0.1'',7000))
05
s.listen(5)
06
print(''waitforconnection...'')
07
whileTrue:
08
conn,addr=s.accept()
09
10 print(''connectedby''+str(addr))
11 indata=conn.recv(1024)
12 print(''recv:''+indata.decode())
13 if''quit''inindata.decode():
14 outdata=''bye''
15 else:
16 outdata=''hi''+indata.decode()
17
conn.send(outdata.encode())
18
conn.close()
19
if''quit''inindata.decode():
20
break
21
22 print(''listen...'')
23 s.close()
24
25
26 #client.py
27 importsocket
28 whileTrue:
29
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
30
s.connect((''127.0.0.1'',7000))
31
name=input(''>name:'')
32
print(''send:''+name)
33
34 s.send(name.encode())
35 indata=s.recv(1024)
36 s.close()
37 print(''>''+indata.decode())
38 if''quit''inname:
39 break
40', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "42908783d885", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00038', 'locality-39f5e973', 'locality-39f5e973-moex-112-bc4801d2', 'sub-locality-39f5e973-06', NULL, 'essay', '你是一家醫院的資訊長，該院正在規劃重建使用多年的醫療管理系統。
最近外界有發生一些資安事件使得該院的院長非常擔心醫療管理系統
裡面的那些屬於特種個資的病歷資料跟病患的個人資料發生外洩。請你
大致跟他說明一下，建議這次開發醫療管理系統的專案中，在規劃
（PlanningPhase）、設計（DesignPhase）以及開發（DevelopmentPhase）
的各個階段，可以採取什麼樣的措施，以防止這個系統未來發生危害資
料安全的事件？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4703c23c510f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00039', 'locality-39f5e973', 'locality-39f5e973-moex-112-bc4801d2', 'sub-locality-39f5e973-06', NULL, 'essay', '在系統開發的過程中，測試的腳本與測試資料的擬訂是應該由系統分析
師還是程式設計師主要負責？如果他們合作的話，你建議他們彼此間可
以如何協作？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4703c23c510f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00040', 'locality-39f5e973', 'locality-39f5e973-moex-112-bc4801d2', 'sub-locality-39f5e973-06', NULL, 'essay', '有位客戶想要開一個咖啡簡餐店，該店除了各種高級咖啡跟飲料之外，
還提供一些點心跟蛋糕。請為這個咖啡簡餐店設計一個訂單管理系統的
資料庫架構。請說明它大致包括那些檔案跟欄位，以及它們的主鍵和彼
此之間的外鍵關係。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4703c23c510f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00041', 'locality-39f5e973', 'locality-39f5e973-moex-112-bc4801d2', 'sub-locality-39f5e973-06', NULL, 'essay', '請問根據物件導向設計（Object-oriented design, OOD）的概念，在一所
學校裡面的在學學生，如果我們要把他們在學校教學系統裡設計成一個
物件類型（Class）的話，這個學生的物件類型大致應該會具有什麼樣的
屬性（Attributes）跟方法（Methods），請說明你想要這樣設計的理由。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "4703c23c510f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "346", "s": "2709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
