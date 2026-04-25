-- W1.6 questions batch 5264/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00278', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '什麼是一次（one-pass）及二次組譯器（two-passassembler）？並試述其
優缺點。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00279', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '試述作業系統中的最短工作優先排程演算法（shortest-job-firstscheduling
algorithm）。它有什麼特性？在現實中為何不適合用於中央處理器排程
（CPUscheduling）？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00280', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '如圖所示，一電腦系統有甲、乙、丙、丁、戊五個元件，其錯誤率分別
為 0.4、0.5、0.6、0.7 及 0.8。如果要確認此系統是否正常運作，須逐一
檢測元件的正確性：只要其中有任三個元件正確，則此系統可正常運作；
若有任三個元件損壞，則此系統不能正常運作。假使想要以最少的檢測
元件個數就能判定系統正常與否，則應該最先挑選那一個元件來檢測？
詳述其理由。（20 分）
輸入
甲 0.4 乙 0.5 丙 0.6 丁 0.7 戊 0.8
輸出
|
37850', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00281', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '詳細說明下列 Java語言程式的執行過程，並寫出程式的輸出。（20 分）
public class Test
{
public static void main(String[ ] args)
{
int [] numbers = {60, 20, 55, 30, 40, 20};
for(int index = 1; index < numbers.length; index++)
{
int key = numbers[index];
int position = index;
while(position>0 && numbers[position - 1] > key)
{
numbers[position] = numbers[position - 1];
position--;
}
numbers[position] = key;
for(int count = 0; count < numbers.length; count++)
System.out.print(numbers[count] + " ");
System.out.println();
}
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00282', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '下圖電路V = V = 5 V，I = 1 mA，電晶體M 與M 具有相同的長度
DD SS D2 1 2
（L），但其寬度比W /W =5，電晶體參數：k ’(W/L) =1mA/V2，V =0.8V。
2 1 n 1 t
求算 R值。（10 分）
當 M 操作於飽和區時，求算 v 最小電壓。（10分）
2 D2
V
DD
R
I
D2
v
D2
M M
1 2
-V
SS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00283', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '下圖電路 R =0.5k，R =0.5 k，R =1 k。
1 2 L
假設運算放大器為理想，二極體 D 的電壓電流關係式為
1
v/V
i  I e T 1 ，V =25.3mV，且當 1mA流過 D 的跨壓為 0.8V。當
s T 1
v =2V，求算 v 。（10分）
I A
假設運算放大器增益為50，二極體跨壓為固定的 0.8V，當 v =3V，
I
求算 v 。（10分）
O
D
v v 1
I A
v
O
R
2
R
L
R
1
|
37860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00284', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '下圖電路R =125k，R =250k，R =250k，R =4k，R =2k，
sig G1 G2 D S
R =4 k，V =5V，電晶體參數：V =1V，V =50V。
L DD t A
當電晶體 I =0.5mA 及 V （overdrivevoltage）=0.5V，求算增益
D OV
G =v /v （僅直流分析時可忽略通道調變效應）。（8 分）
v O sig
假設 v 為弦波信號且電晶體操作於飽和區，求算 v 可允許的最大峰
sig sig
值與相對應的 v 。（12分）
D
V
DD
RD
R
G1 C
C2
v v
R C D o
sig C1
M1
CS R
L
v R
sig G2
RS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00285', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '下圖電路 R =10k，R =1k，R =1M，R =2k，運算放大器參
S 1 2 L
數：開路增益A =1000，輸入差動阻抗R =100k，輸出阻抗R =1k。
v id o
求算閉迴路增益 V /V。（10 分）
o i
求算 R 。（10分）
in
R
S
V
i
V
o
R
in
R
2
R
L
R
1
|
37860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00286', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', 'CMOS邏輯包含上拉網路（pull-up network）與下拉網路（pull-down
network），試畫出 CMOS邏輯Y  D ABC之電路。（10 分）
下圖為一反相器電路的標準元件，若要求第小題 CMOS邏輯需與此
標準反相器有相似的傳遞時間，請標示第小題 CMOS邏輯電路中每
顆電晶體的寬長比（W/L）。（10分）
W 3 μm
L 1 μm
In OUT
W 1 μm
L 1 μm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00287', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-110-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '請證明馬克斯威爾方程式以及勞倫茲力公式隱含了庫倫力定律：換言
之，請首先推導一個點電荷 q 存在時所產生的電場（過程中請使用高斯
1
定律求解），接著引入另一個點電荷 q ，計算其所受電力。（25分）
2
[提示]：馬克斯威爾方程式D 且DE
v
B
E 又勞倫茲力為F qEquB
t
B0
D
H J
t', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "aa8feca51439", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "377", "s": "1212", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
