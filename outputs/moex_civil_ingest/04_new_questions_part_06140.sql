-- W1.6 questions batch 6140/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('judicial-ae9cc487-moex-00004', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '針對以下 C程式碼，請先說明執行該程式之輸出，以及程式中函式 left()、
right() 之運作功能；並請說明在 testGen() 測試 left()、right() 過程中，有
那幾行指令未被充分測試。（25分）
01 #include<stdio.h>
02 #include<stdlib.h>
03 #include<string.h>
04 char*left(char*data,intlen,constcharsymbol){
05 intdLen=strlen(data);
06 char*result=(char*)malloc(dLen+1);
07 if(len>dLen)len=dLen;
08 strcpy(result,data);
09 for(inti=len;i<dLen;i++)result[i]=symbol;
10 returnresult;
11 }
12 char*right(char*data,intlen,constcharsymbol){
13 intdLen=strlen(data);
14 char*result=(char*)malloc(dLen+1);
15 if(len>dLen)len=dLen;
16 strcpy(result,data);
17 for(inti=(dLen-len);i<dLen;i++)result[i]=symbol;
18 returnresult;
19 }
20 voidtestGen(){
21 charstr[]="abcdef";
22 char*left1=left(str,4,''@'');
23 char*left2=left(str,8,''@'');
24 char*right1=right(str,4,''@'');
25 printf("%s\n",left1);
26 printf("%s\n",left2);
27 printf("%s\n",right1);
28 free(left1);
29 free(left2);
30 free(right1);
31 }
32 intmain(){
33 testGen();
34 return0;
35 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "dfaf656cd143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00005', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '以下Java程式碼計算人類（Human）進行不同運動（Exercise）消耗的卡路里
量。請完成統一塑模語言UML圖；並說明程式執行後的輸出，以及動態多型
（DynamicPolymorphism）指令所在之程式碼行數與其構成之原因。（25分）
01 abstractclassExercise{ // 運動
02 publicExercise(Stringname,intcal){ _____
03 this.name=name;
04 this.calorie=cal; Exercise
05 } _____
06 abstractpublicvoidcomputeCal(intx);
07 publicStringshow(intc){ _____
08 Stringresult=name+":";
09 computeCal(c); Running
10 result+=calorie;
11 returnresult; distance
12 }
13 privateStringname;
14 protectedintcalorie; // 紀錄卡路里
15 }
Climbing
16 classRunningextendsExercise{ // 跑步運動
17 publicRunning(Stringname,intcal,intdis){ level
18 super(name,cal);
19 distance=dis;
20 }
21 publicvoidcomputeCal(inttime){calorie+=distance*(10-time);}
Human
22 privateintdistance;
23 }
24 classClimbingextendsExercise{ // 登山運動
25 publicClimbing(Stringname,intcal,intlev){ _____
26 super(name,cal);
27 level=lev*2;
28 }
29 publicvoidcomputeCal(intheight){calorie+=height*level*20;}
30 privateintlevel;
31 }
32 classHuman{
33 publicvoidsetExercise(Exercisee){exercise=e;}
34 publicStringgetCal(){returnexercise.show(2);}
35 privateExerciseexercise;
36 }
37 publicclassExerciseTest{
38 publicstaticvoidmain(String[]args){
39 Exercise[]exs={newRunning("marathon",12,26), // 馬拉松
40 newRunning("endurance",10,5), // 長跑
41 newClimbing("Yushan",30,4)}; // 登玉山
42 Humanh=newHuman();
43 for(Exercisee:exs){
44 h.setExercise(e);
45 System.out.println(h.getCal());
46 }
47 }
48 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "dfaf656cd143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00006', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '以下 Python 程式碼，可以解析下列 BNF 規則。請先寫出 BNF 規則中
(I) ~(V)；並說明程式執行後之輸出。（25分）
<assign> <id>=< (I) >
<id> (II)
<expr> <expr> (III) <expr>
|<expr> (IV) <expr>
|< (V) >
01 defid_(s,i):
02 ifi<len(s)ands[i]in(''A'',''B'',''C''):
03 returni+1,True
04 returni,False
05
06 defexpr(s,i):
07 i,ok=id_(s,i)
08 ifnotok:returni,False
09 whilei+1<len(s)ands[i]in(''+'',''*''):
10 i,ok=id_(s,i+1)
11 ifnotok:raiseException(''iderror'')
12 returni,True
13
14 defassign(s,i):
15 i,ok=id_(s,i)
16 ifnotokori>=len(s):raiseException(''iderror'')
17 ifs[i]!=''='':raiseException(''not='')
18 i,ok=expr(s,i+1)
19 ifnotok:raiseException("exprerror")
20 ifi!=len(s):raiseException(''endorexprerror'')
21 print(''ok'')
22
23 deftest(code):
24 try:assign(code,0)
25 exceptExceptionase:print(e)
26
27 test(''B=C*B+A*A'')
28 test(''B=C*B+D*A'')
29 test(''B=C*B+A*'')
30 test(''A-C*D+A++A'')
31 test(''A=C*D+A++A'')', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "dfaf656cd143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00007', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '臺灣智慧金融公司設計一個關聯式資料庫（Relationaldatabase），內有兩
個關聯（Relation）：工程師 Engineer[編號（整數、Primarykey）、姓名（字
串）、電話（字串）、專長（字串）]、助理 Assistant[編號（整數、Primary
key）、姓名（字串）、薪水（整數）、工程師編號（Foreign key）]。
請寫出 SQL 指令，查詢出工程師編號小於等於 50 且其助理薪水大於
30000的工程師姓名與專長，並造出工程師專長為「hack」相關之姓名與
協助的助理姓名與電話的 View。另請說明何謂 View，以及使用 View的
優點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "dfaf656cd143", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00008', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '請說明何謂功能性需求（Functional Requirements）與非功能性需求
（Non-FunctionalRequirements），並以「行動銀行系統」為例，分別舉出
四項與資訊安全相關的功能性需求與非功能性需求。並說明這些需求在
系統設計階段，如何影響整體資訊安全架構的規劃與風險控管策略的制
定。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "e3130a4445e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00009', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '何謂測試驅動開發（Test-DrivenDevelopment）？並將其與傳統的「先寫
功能再寫測試（Code-First）」方式，就測試覆蓋率、品質保證與維護度等
面向進行比較說明。另請分析「測試驅動開發」與「先寫功能再寫測試」
各自的優點與缺點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "e3130a4445e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00010', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '請說明行為驅動開發（Behavior Driven Development, BDD）的核心概念
與實施流程，並比較其與瀑布式開發方法的主要差異。另請舉例說明在
何種情境下採用行為驅動開發具有優勢。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "e3130a4445e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00011', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '請說明何謂微服務（Microservices）架構，並探討其在系統分析與設計階
段所帶來的效益，以及可能面臨的風險與挑戰。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "e3130a4445e9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00012', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '在網路資料傳輸中，TLS（安全的 TCP連線，TransportLayerSecurity）
為補強 TCP以納入安全性服務（如機密性、完整性等）的常用協定，試
說明 TLS的各階段（如連線握手、產生金鑰、資料傳輸等階段）運作過
程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "4a7532b14845", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00013', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', 'TCP 為網路傳輸層中相當重要的客戶端與伺服端之間的連線協定。在
TCP 連線的過程中，客戶端與伺服端會分別處於相互搭配的一連串不同
狀態，以順利完成由連線建立至連線結束的生命週期。請說明 TCP 連線
生命週期中，客戶端與伺服端經歷的一連串相互搭配狀態序列。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "4a7532b14845", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
