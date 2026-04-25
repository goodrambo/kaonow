-- W1.6 questions batch 7693/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-39f5e973-moex-00041', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '敘述統計學上中位數和平均數均為數據資料的集中趨勢，中位數是將一
組數值資料由小到大排列，最中間的數值為中位數。若有奇數個資料，
則取最中間的數值為中位數，例如 1,2,3,3,4,6, 7,7,21 的中位數是 4；
若有偶數個資料，則取最中間兩個數值的平均為中位數，例如 1,2,3,3,
4,6,7,7,8,21 的中位數是（4+6）/2=5。算術平均數是將一組數值加總，
除以這組數值的個數，例如 1,2,3,3,4,6,7,7,21 的算術平均數=54/9=6。
以下 C++程式輸出：4,6,
01 #include<iostream>
02 #include<algorithm>
03 usingnamespacestd;
04 classCompute{
05 public:
06 voidsetData(int*,int);
07 (I) =0;
08 protected:
09 int*data,d_size;
10 };
11 classComputeMedian:publicCompute{
12 public:
13 doublegetNum();
14 };
15 classComputeMean:publicCompute{
16 public:
17 doublegetNum();
18 };
19 voidCompute::setData(int*d,ints){
20 data=d;
21 d_size=s;
22 sort(data,data+d_size);
23 }
24 doubleComputeMedian::getNum(){
25 if( (II) ==1)returndata[d_size/2];
26 elsereturn(data[ (III) ]+data[1+d_size/2])/2.0;
27 }
28 doubleComputeMean::getNum(){
29 doublesum=0,avg=0;
30 for(inti=0;i<d_size;i++)
31 sum=sum+data[i];
32 return( (IV) );
33 }
34 classReport{
35 public:
36 Report(int*d,ints){
37 data=d;
38 d_size=s;
39 }
40 voidsetCompute(Compute*c){cp=c;}
41 voidreport(){
42 cp-> (V) ;
43 cout<<cp->getNum()<<",";
44 }
45 private:
46 int*data,d_size;
47 Compute*cp;
48 };
49 intmain(){
50 intdata[10]={6,7,1,21,2,3,4,3,7};
51 Reportr(data,9);
52 Compute*cp1=newComputeMedian();
53 Compute*cp2=newComputeMean();
54 r.setCompute(cp1);
55 r.report();
56 r.setCompute(cp2);
57 r.report();
58 return0;
59 }
請完成程式碼（I~V）使程式正常運作。（15分）
請根據程式碼完成下面 UML 類別圖的關係連線，並說明此設計對模
組耦合性（Coupling）的影響。（10 分）
Report
{abstract}
-data
Compute
-d_size
-data
+setCompute()
-d_size
+report()
+setData()
+getNum(){abstract}
+setSupervised(){abstract}
ComputeMean ComputeMedian
+getNum() +getNum()', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "b812a7365b77", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00042', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 25分）
Replication independencein adistributed databasesystem
B+-tree
Entityintegrity rule
Boyce-Codd Normal Form（BCNF）
NOSQL', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "86155d610cde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00043', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '假設我們有一個投資公司的資料庫包含以下屬性：B-Broker, O-Office of
a broker, I-Investor, S-Stock, Q-Quantity of stock owned by an investor,
D-dividend paid by a stock。整體 schema R =（B, O, I, S, Q, D）。假設此
資料庫有以下 functionaldependency,I → B,IS → Q,B → O,S → D。
列舉所有 R的candidatekeys。（5 分）
寫出一個 lossless-join分解使得R分解後滿足 BCNF。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "86155d610cde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00044', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '請解釋何謂SQLinjection以及要如何預防？（10分）常見的SQLinjection
攻擊手法為「略過權限檢查」與「注入SQL子語法」等，請寫出一段有SQL
injection漏洞的網頁程式碼以及可能的SQLinjection攻擊寫法。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "86155d610cde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00045', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '根據以下關聯資料表架構，老師可開設多門課程，同一門課可以有多位
教師，學生也可以修多門課程，修過課程就會有分數。
student（SID,Sname, Sage, Ssex）// 學生編號, 姓名, 年紀, 性別
course（CID,Cname,TID）// 課程編號, 課名, 教師編號
teacher（TID,Tname）// 教師編號, 教師名稱
score（SID,CID, sc）// 學生編號, 課程編號, 分數
寫出以下 SQL查詢
查詢學生名字中含有「Alan」的男學生人數。（5 分）
查詢 Alan 修過的課中，那門課只由一位老師開課的課程名稱。（5 分）
查詢修過課程所有成績之平均成績大於等於 60 分的同學的學生編號
和學生姓名和平均成績。（10分）
查詢學過編號為「01」但是沒有學過編號為「02」課程的同學編號與
其修「01」課的分數。（10 分）
查詢沒有學過全部課程的同學的編號。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "86155d610cde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00046', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 20分）
B+ 樹（B+Tree）
完美雜湊函數（PerfectHash Function）
霍夫曼編碼（HuffmanCoding）
拓撲排序（TopologySort）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "84ae90d5febf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00047', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '給定一個環狀鏈結串列，節點資料結構宣告如下：
structnode{
charinfo;
structnode*next;
};
typedef structnodeNODE;
請用 C語言或類似虛擬語言（pseudocode）寫出 voidswapnodes（NODE
*p）函式將兩個指定節點位置交換，過程中不能更動節點內 info內容，
僅能修改節點內next指標，且兩個節點交換後仍保持環狀鏈結串列。
將指標 p 之後面連續兩個節點位置交換，如下圖所示。（15分）
p p
infonext infonext
A B C D E A B D C E
交換節點前 交換節點後
將指標 p 之前後節點位置交換，如下圖所示。（15 分）
p p
infonext infonext
A B C D E A D C B E
交換節點前 交換節點後', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "84ae90d5febf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00048', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '二維平面空間內包含資料節點，編號為 1 到 11。依編號由小到大加入此
二維平面空間。節點 1加入時，將空間分割為左右兩個二維空間。之後
每加入一資料節點時，若包覆此節點二維空間為前次分割為上下空間，
則此次分割為左右空間；反之，則此次分割為上下空間。左圖顯示加入
6 個資料節點後之空間分割結果，右圖顯示對應的二元樹。若繼續加入
節點 7 到11。（每小題 10分，共 20 分）
此二維空間平面分割結果將為何？
對應的二元樹將為何？
10 1
2 9
7 2 5
4 1
11 3
3 5
6 8
4 6', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "84ae90d5febf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00049', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '給予如下之加權雙向圖，邊上的加權值表示此邊的成本。
7 3
a c e
9 4
6 8
2
b d f
5 10
使用 Kruskal’s algorithm 找最小成本擴張樹（Minimal Cost Spanning
Tree,MST）。執行過程中，將邊（edge）逐步加入此MST之順序為何？
請以邊所對應的兩端節點表示此邊。（5 分）
使用 Prim’s algorithm 找出最小成本擴張樹（MST），從節點 a 出發。
執行過程中，將邊（edge）逐步加入此 MST之順序為何？請以邊所對
應的兩端節點表示此邊。（5分）
使用 Dijkstra’salgorithm找出從節點 a（來源節點）到其五個節點（目
的節點）之最短路徑（shortestpath）。執行過程中，逐步找出最短路徑
的目的節點順序為何？從節點 a 到目的節點之最短路徑被找出表示演
算法不再檢視此目的節點之其它可能最短路徑。（10 分）
來源節點 a 出發到其他五個目的節點之最短路徑走法與成本分別為
何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "84ae90d5febf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00050', 'promotion-39f5e973', 'promotion-39f5e973-moex-110-694c1c8f', 'sub-promotion-39f5e973-04', NULL, 'essay', '某公司為了進入全新的社群商務市場，想要委外開發一套互動式的電子
線上交易平台。因為專案時程有限且不得延誤，主管要求本專案要採用
「敏捷式 Agile」開發模式進行，假設您是本專案的負責人，敏捷式開發
的過程會進行所謂的 Scrum。
請以本專案為例，說明它進行的大致過程。（10 分）
請問在這個過程中，產品所有者（ProductOwner）、敏捷領導者（Scrum
Master）、開發團隊（DevelopmentTeam），在過程中分別所扮演的角色。
（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "09b4018fd317", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "181", "s": "2009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與分析", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
