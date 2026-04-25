-- W1.6 questions batch 7689/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-39f5e973-moex-00001', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請詳述下列四種排序（sort）演算法的運作原理及其時間複雜度。（25 分）
泡沫排序（bubblesort）
插入排序（insertion sort）
合併排序（mergesort）
快速排序（quick sort）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "fc763b71386e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00002', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '二元樹（binarytree）是一種常見的資料結構。對二元樹的任一節點（node）
而言，其可能包含的子節點（children）數量為 0、1 或 2。舉例來說，對
於一個具有 3個節點的二元樹，其可能的結構有以下 5種：
請使用遞迴（recursion）的方式撰寫一個C語言函數int nTrees(int n)來
計算具有n個節點的二元樹，共有多少種不同的二元樹結構。（20分）
在許多情況下，使用遞迴的方式所撰寫的程式不是最有效率的方法。
請問可以使用何種程式撰寫的方法來提高的程式的執行效率？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "fc763b71386e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00003', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '若我們使用 C程式語言，定義了如下的結構（struct）
typedef struct{
char frst_name[20],
last_name[20];
int score;
char grade;
}student_t;
並宣告兩個變數為此結構
student_t stu1,stu2;
請分別判斷下列8 個敘述是否有可能為有效（valid）的敘述或是一定為
無效(invalid)的敘述，並詳述其理由。（25分）
㉑ student_tA_list[30];
㉒ printf("%s",stu2);
㉓ printf("%d %c",stu2.score,stu2.grade);
㉔ stu1 =stu2;
㉕ if (stu1.grade==stu2.grade)printf("Same Grade");
㉖ if (stu1 ==stu2)printf("Same Structure");
㉗ stu1.last_name ="Donald";
㉘ student_func(&stu1);', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "fc763b71386e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00004', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請問下列 C語言程式執行後的輸出為何？（15 分）
#include<stdio.h>
int main(void)
{
intx =0;
do {
switch (x){
case 0:printf("%d\n",x);
case 1:x++;break;
case 2:printf("3\n");
case 3:printf("%d\n",x * 3);
case 4:x +=3;break;
default:x = x * 2;
printf("%d\n",x /3);
}
} while(x <10);
return (0);
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "fc763b71386e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00005', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請描述何謂白箱測試（white-boxtesting）和黑箱測試（black-boxtesting）。
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "fc763b71386e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00006', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '請闡述下列專門術語的意涵：（每小題 4分，共 20分）
ANSI/SPARC 三層架構
並發（Concurrent）
弱實體
2NF
網路式資料模式', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "90a2d6f79a48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00007', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '有一資料表 Sales（OrderID,CustID,Amount,ODate）。請回答下列問題：
（每小題10 分，共 20 分）
寫出查詢 2025年 1 月的訂單與金額的 SQL陳述式（statement）。
下列 SQL陳述式的作用為何？
SELECTCustID, SUM（Amount）ASTotalAmt
FROMSales
WHERE ODate >=DATE ''2025-01-01''ANDODate< DATE''2025-02-01''
GROUPBYCustID
ORDERBYTotalAmt DESC;', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "90a2d6f79a48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00008', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '某校務系統包含 Student、Course、Section、Enroll 等四個資料表。其中
Section 描述同一課程（Course）在不同學期/時段/教室/教師的實際開課
實例。請以 ER 模型描述主要實體、關聯、以及基數，另外也說明為什
麼需要 Section。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "90a2d6f79a48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00009', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '闡述備份與復原策略中的「完整備份、差異備份、交易日誌（WAL/Log）
備份」三者的差異與搭配方式，並概述災難復原（DR）兩個 R 指標。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "90a2d6f79a48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00010', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-804ba136', 'sub-promotion-39f5e973-02', NULL, 'essay', '闡述資料庫發展生命週期（DBLC）常見的六個階段。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "90a2d6f79a48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
