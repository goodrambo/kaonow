-- W1.6 questions batch 4709/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00065', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', '美國學者巴瑞·勃姆（BarryW.Boehm）曾提出建構成本模型（Constructive
CostModel，簡稱COCOMO）與建構成本模型 I（I ConstructiveCostModel
II，簡稱 COCOMO II），請說明 COCOMO 與 COCOMO II 之間的差異
性，另請詳細說明 COCOMO II 的各子模型及其在系統開發或專案管理
上的用途。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "2d39d019bb6b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2625", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00066', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-bc4801d2', 'sub-heelevel3-39f5e973-06', NULL, 'essay', 'A公司為國內某大型企業，其原本只運用敏捷方法（AgileMethod）於公
司內部小型資訊系統的開發，假設 A 公司規劃在未來將敏捷方法擴展
（Scaling）至大型資訊系統的開發，請針對擴展敏捷方法說明其觀點
（Perspective），並從實務面上具體分析與討論其可行性（Feasibility）。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "2d39d019bb6b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2625", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統專案管理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00067', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '某一家高科技公司的關聯式資料庫包含員工、產品及研發三個表格。員
工表格記錄員工基本資料，包含員工編號、員工姓名；產品表格記錄產
品基本資料，包含產品編號、產品名稱、產品價格；研發表格記錄那些
員工參與研發那些產品的資料。這三個表格的關聯綱要（Relational
Schema）如下所示：
員工（員工編號、員工姓名）
產品（產品編號、產品名稱、產品價格）
研發（員工編號、產品編號）
加底線的屬性為該表格之主鍵；例如，研發表格之主鍵為員工編號與產
品編號兩個屬性的組合。研發表格有員工編號與產品編號兩個外來鍵，
分別參照員工表格的主鍵員工編號與產品表格的主鍵產品編號。
請針對下列三個查詢問題，各寫出一個 SQL指令來進行查詢。
（每小題 10分，共 30 分）
列出價格介於 10000 與 20000 之間（含 10000 與 20000）的每一種產
品之產品編號與產品名稱。
列出參與研發產品編號為‘P003’的產品的所有員工之姓名（姓名不要
重複）。
列出參與研發超過 5種產品的員工之員工編號。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "e01596f4d217", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2626", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00068', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '擴充實體關係模型（Extended Entity-Relationship Model,EERModel）中
的父子型態關係（Supertype/Subtype Relationship）需要宣告兩個主要的
限制：完整性限制（CompletenessConstraint）與互斥性限制（Disjointness
Constraint）。（每小題 10分，共 20 分）
完整性限制宣告父型態的一個實例是否必須屬於至少一個子型態，有
兩種可能：完全特殊化（Total Specialization）與部分特殊化（Partial
Specialization），請分別定義之。
互斥性限制宣告父型態的一個實例是否可以同時屬於多個子型態，有
兩種可能：互斥（Disjoint）與重疊（Overlap），請分別定義之。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "e01596f4d217", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2626", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00069', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', 'Z(P, Q, R, S)是一個關聯式資料表（Relational Table）的綱要，Z為資料
表的名稱，P、Q、R、S為資料表的四個屬性，P為資料表的主鍵與唯一
的候選鍵。此外，該資料表有下列功能相依：（每小題 15分，共30 分）
PQ, R, S
QS
資料表 Z符合第幾正規型式？原因為何？
將資料表 Z正規化到適當的正規型式，寫出正規化之後每一個資料表
的綱要，包括資料表的名稱、屬性、主鍵及外來鍵（如果有的話）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "e01596f4d217", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2626", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00070', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '機器學習（MachineLearning）主要任務可區分為監督式學習（Supervised
Learning）與非監督式學習（UnsupervisedLearning），監督式學習包括分
類（Classification）與迴歸（Regression），非監督式學習最常用的是分群
（Clustering）。（每小題 10分，共 20 分）
分類與迴歸要預測的值最主要的差異為何？
分類與分群所分析的資料最主要的差異為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "e01596f4d217", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2626", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00071', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '以下是一中序運算式（Infix expression）轉換（Convert）成後序運算式
（Postfix expression）的演算法
operstk = the empty stack;
while(not end of input){
symb = next input character;
if(symb is an operand)
add symb to the postfix string;
else{
while(!empty(operstk) && precedence(stacktop(operstk),symb)){
topsymb = pop(operstk);
add topsymb to the postfix string;
} /*end while*/
if (empty(operstk) || symb != ‘)’)
push(operstk, symb);
else
topsymb = pop(operstk);
} /*end else*/
} /*end while*/
ｗhile(!empty(operstk)){
topsymb = pop(operstk);
add topsymb to the postfix string;
} /*end while*/
其中資料結構：
“operstk”：用來儲存運算子的堆疊（Stack）；
“stacktop(operstk)”：表示top指標所指堆疊operstk 的運算子；
程序（Procedures）或函數（Functions）：
“empty(operstk)”：檢查堆疊 operstk是否為空的布林函數；
“pop(operstk)”：從堆疊 operstk中取出一運算子；
“push(operstk, symb)”：將運算子 symb存入堆疊 operstk；
“precedence(op ,op )”：布林函數，定義在一沒有左右括弧的中序運算
1 2
式中，op 運算子出現在 op 運算子的左邊時，當 op 運算子優先順序不
1 2 1
低於 op 運算子，則設定成 TRUE，否則為 FALSE。例如，我們給定
2
precedence(‘*’, ‘+’)=TRUE，precedence(‘+’, ‘+’)=TRUE，
precedence(‘+’, ‘*’)=FALSE，為了處理運算式左右括弧，設定下列
的 precedence:
precedence(‘(’, op) = FALSE /*op 為任一運算子*/
precedence(op, ‘(’) = FALSE /*op 為除’)’外的任一運算子*/
precedence(op, ‘)’) = TRUE /*op 為除’(’外的任一運算子*/
precedence(‘)’, op) = undefined /*op為任一運算子*/
以中序運算式(2+3)*4 為例，執行上述演算法，依處理每一個運算子或運
算元時，輸出postfixstring及operstk內容為何（“eos”表示endofstring）？
（25 分）
symbol postfix string operstk
(
2
+
3
)
*
4
eos', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "43d894662d61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2624", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00072', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '利用鏈結串列（Linked list）實做佇列（Queues），給予如下鏈結串列節
點及佇列定義，front 指標指在串列第一個節點，rear 指標指在串列最
後一個節點，請使用 C 語言完成 insert(pq, x)程序，將整數值 x 加
入（Insert）到佇列，程式需檢查佇列加入前是否為空的鏈結串列，可
使用函數getnode() 配置（Allocate）一新節點。（25 分）
struct node{
int info;
struct node *next;
};
typedef struct node *NODEPTR;
struct queue{
NODEPTR front, rear;
};
struct queue q;
NODEPTR getnode()
{
NODEPTR p;
p = (NODEPTR)malloc(sizeof(struct node));
return(p);
}
insert(pq, x)
struct queue *pq;
int x;
{
NODEPTR p;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "43d894662d61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2624", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00073', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '一個二元搜尋樹（Binarysearchtree）的前序追蹤（Preordertraversal）結
果如下：14,4,3,9,7,5,15,18,16, 17,20
請建構此二元搜尋樹。接著利用如下 C語言對二元樹節點的宣告，使用
C語言寫一遞迴程式 sortTree（NODEPTRtree），輸入二元樹的根節點，
來處理此二元樹的節點資料，並將資料依由小至大輸出。（25分）
struct node{
int info;
struct node *left;
struct node *right;
}
typedef struct node *NODEPTR;
void sortTree(NODEPTR tree){
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "43d894662d61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2624", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00074', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-111-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '用 G = (V, E)表示一個無方向性圖形，其中 V 是點的集合，E 是一組節
點（Vertices）形成邊及對應權重（Weights）所組成的集合。今有一圖形
G=(V,E)，V={0,1,2,3,4,5}，圖形的邊與權重值以如下的定義儲存對
應連接矩陣(Adjacency matrix)表示中的值
#define MAX_EDGES 100
typedef struct{
int col;
int row;
int weight;
} edge;
edge a[MAX_EDGES];
已知陣列a儲存對應連接矩陣相連接邊的內容如下：a={(3,0,2),(4,0,1),
(5,0,20),(2,1,7),(5,1,24),(3,2,15),(4,2,10),(5,2,25),(4,3,3)}。請畫
出陣列 a所儲存的圖形，然後，利用 Prim演算法從節點 0開始依加入其
它節點的順序，畫出此圖之最小擴張樹（Minimumspanningtree），並計
算其最低權重或成本值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "43d894662d61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "372", "s": "2624", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
