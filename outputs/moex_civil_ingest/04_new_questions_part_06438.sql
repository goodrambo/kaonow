-- W1.6 questions batch 6438/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00114', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '根據交易方程式（equationofexchange），假設貨幣交易流通速度（transactionvelocityofcirculation ofmoney）固定，當貨幣數量成為原來的2倍時，下列敘述何者正確？', '["物價必定成為原來的2倍", "實質產出必定成為原來的2倍", "物價與實質產出的乘積不變", "物價與實質總交易量的乘積變成原來的2倍"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00115', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '下列何者為景氣循環中逆循環的經濟變數？', '["投資支出", "消費支出", "失業率", "通貨膨脹率"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00116', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '在實質景氣循環模型中，政府採擴張性財政政策，當勞動跨期替代彈性大小不同時，下列敘述何 者正確？', '["當勞動跨期替代彈性大時，物價會上升", "當勞動跨期替代彈性大時，利率會下跌", "當勞動跨期替代彈性小時，物價會上升", "當勞動跨期替代彈性小時，利率會下跌"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00117', 'locality-0c700c30', 'locality-0c700c30-moex-112-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '加密系統是面對資訊安全威脅的一項資訊技術防護措施。
請說明對稱性加密與非對稱性加密的區別。（10 分）
請以 https協定的 SSL/TLS為例，說明私鑰（PrivateKey）與公鑰（Public
Key）的運作方式。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "cb3ae062cb15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "2702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00118', 'locality-0c700c30', 'locality-0c700c30-moex-112-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '請透過下列三個有關期中考的資料表（Tables），使用SQL查詢“王教授”
的課程編號ID為“A123”課程，其班級總分與最後一名的學生姓名。
（t代表 Teacher資料表名稱；s代表 Student資料表名稱；e代表 Exam資
料表名稱）。（25分）
Teacher[TeacherID,TeacherName , ClassID ]
Student[ StudentID,StudentName, ClassID]
Exam[ ExamName,StudentID, Subject,Score]', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "cb3ae062cb15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "2702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00119', 'locality-0c700c30', 'locality-0c700c30-moex-112-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '在人工智慧與機器學習領域，狀態空間表示一個問題的所有可能解的集
合，如下圖所示。請從狀態 A開始，以字母排序的先後順序，用兩種常
用的演算法：廣度優先搜尋（Breadth-FirstSearch,BFS）與深度優先搜尋
（Depth-FirstSearch,DFS），分別列舉搜尋的結果。（25 分）
D G
K
H
J
A
L
B C F I
E', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "cb3ae062cb15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "2702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00120', 'locality-0c700c30', 'locality-0c700c30-moex-112-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '請列舉“Thisisabook”中間有空格的連續字串，經過下列程式執行後，
兩個 printf的輸出內容。（25分）
#include<stdio.h>
#include<string.h>
void reverse(char str[],intstart,int end){
char temp;
while (start < end){
temp =str[start];
str[start] =str[end];
str[end]=temp;
start++;
end--;
}
}
int main(){
charstr[]= "Thisisabook";
intlen = strlen(str);
reverse(str, 0, len -1);
printf("%s\n", str);
intword_start =0;
for(inti =0; i<len;i++){
if (str[i] ==''''){
reverse(str, word_start,i -1);
word_start=i+ 1;
}
}
reverse(str, word_start,len- 1);
printf("%s\n", str);
return 0;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "cb3ae062cb15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "2702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00121', 'locality-0c700c30', 'locality-0c700c30-moex-112-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '若以樣本y對x做線性迴歸，可得到迴歸估計式y  x。假設x、y
i 0 1 i
之樣本平均及標準差分別為x、y、s 、 s ，樣本相關係數為r。今先將
x y
x、y標準化，即：
x x y  y
x*  i y*  i
,
i s i s
x y
然後以y*對x*做線性迴歸，得到yˆ*   x*。試求：
i 0 1 i
？（10分）
0
ˆ
和的關係。（10 分）
1 1
r和之關係。（5 分）
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "b0cd53da890c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00122', 'locality-0c700c30', 'locality-0c700c30-moex-112-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', 'X為前測成績，Y為後測成績。假設甲乙兩班的前、後測成績關係分別為
甲：Y  Xε
01 11
乙：Y  Xε
02 12
下表資料中 G 代表班別（G=1 為甲班，G=0 為乙班），令 XG 為 X 和
G乘積。
Y X G Y X G
5.3 4 1 3 3 0
10.4 9 1 15 8 0
9.2 8 1 9.4 5 0
10.1 9 1 13.1 6 0
7.3 6 1 9.1 3 0
4.3 3 1 17.7 11 0
9.7 9 1 7.3 7 0
6.3 6 1 10.2 10 0
6.6 5 1 19.4 12 0
9 9 1 13.6 9 0
我們以上表資料分別配適以下四組迴歸：M1：Y對 X 迴歸；M2：Y 對
G迴歸；M3：Y對 X和 G複迴歸；M4：Y對 X、G和 XG複迴歸。變
異數分析結果如下：
M1:Yˆ =1.26+1.203X M2:Yˆ =11.78-3.94G
Source DF AdjSS F-Value P-Val Source DF AdjSS F-Value P-Val
Regression 1 202.24 26.48 0.00 Regression 1 77.72 5.34 0.033
X 1 202.24 26.48 0.00 G 1 77.72 5.34 0.033
Error 18 137.49 Error 18 262.01 14.56
Total 19 339.73
M3:Yˆ =3.39+1.133X-3.26G M4:Yˆ =2.52+1.251X-0.86G-0.343XG
Source DF AdjSS F-Value P-Val Source DF AdjSS F-Value P-Val
Regression 2 254.79 25.50 0.000 Regression 3 258.451 16.96 0.00
X 1 177.07 35.44 0.000 X 1 141.449 27.84 0.00
G 1 52.55 10.52 0.005 G 1 0.419 0.08 0.778
Error 17 84.94 4.997 XG 1 3.658 0.72 0.409
Error 16 81.284 5.080
在顯著水準 0.05下，試求：
檢定「兩班的 Y 對 X 關係是否平行（斜率相同）」，即
H ：  and  vs.H：  and  。（10分）
0 11 12 01 02 1 11 12 01 02
檢定「兩班是否有相同之 Y對X線性關係（相同的斜率及截距）」，即
H ：  and  vs.H：H 為非。（15 分）
0 11 12 01 02 1 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "b0cd53da890c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00123', 'locality-0c700c30', 'locality-0c700c30-moex-112-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '某資料有40 個觀察值，因變數為y ,,y ，自變數為x ,,x ，迴歸模
1 40 1 40
式y  x 。
i 0 1 i i
其檢定之有效性是建立在對的那些假設下？（10 分）
i
若(x ,,x )為男生體重，(x ,,x )為女生體重，y為其運動後
1 20 21 40
心跳頻率。已知男生體重的變異量一般較女生大。今以y對x做簡單線
性迴歸，可能會違反中那些假設？（5分）
若x ,,x 是 10個人第 1 年之測量值，x ,,x 為其第 2年測量值，
1 10 11 20
x ,,x 為其第 3 年測量值，x ,,x 為其第 4 年測量值。以y對x做
21 30 31 40
簡單線性迴歸的話，會違反中那些假設？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "b0cd53da890c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
