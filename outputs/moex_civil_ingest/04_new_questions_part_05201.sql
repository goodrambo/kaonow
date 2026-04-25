-- W1.6 questions batch 5201/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00269', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '試述作業系統中的最短工作優先排程演算法（shortest-job-firstscheduling
algorithm）。它有什麼特性？在現實中為何不適合用於中央處理器排程
（CPUscheduling）？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00270', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '如圖所示，一電腦系統有甲、乙、丙、丁、戊五個元件，其錯誤率分別
為 0.4、0.5、0.6、0.7 及 0.8。如果要確認此系統是否正常運作，須逐一
檢測元件的正確性：只要其中有任三個元件正確，則此系統可正常運作；
若有任三個元件損壞，則此系統不能正常運作。假使想要以最少的檢測
元件個數就能判定系統正常與否，則應該最先挑選那一個元件來檢測？
詳述其理由。（20 分）
輸入
甲 0.4 乙 0.5 丙 0.6 丁 0.7 戊 0.8
輸出
|
37850', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00271', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '詳細說明下列 Java語言程式的執行過程，並寫出程式的輸出。（20 分）
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
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5486a1c8b8eb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00272', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '令x(t)為低通訊號，其頻寬為W。將x(t)以2W的速率取樣，產生取樣訊
號如下：
x (t)  (1)nx(nT )(tnT )
s s s
n
其中T 1/(2W)。
s
求x (t)的傅立葉轉換。（10分）
s
如何將取樣訊號x (t)重新還原x(t)。（10 分）
s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5a5d3e1b33ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00273', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '令訊息訊號m(t)cos2000t，用於單旁波帶（single-side band, SSB）
振幅調變訊號。其中載波振幅為A 100，中心頻率為 f 。
c c
求m(t)的希爾伯（Hilbert）轉換mˆ(t)。（4 分）
求下旁波帶之時域訊號。（8 分）
求下旁波帶之傅立葉轉換。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5a5d3e1b33ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00274', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '考慮一個通訊系統，使用M 2N個訊號點之星雲圖S進行傳輸，且每個
訊號點發生機率皆為1/ M 。其中集合S表示為：
S {(s ,s ,...,s ):s {1,1}for i 1,...N}
1 2 N i
若傳輸訊號向量為sS ，接收向量表示為r  E / N sn ，其中
s
n [n ,n ,...,n ]為零平均的高斯向量符合：
1 2 N
N /2 i  j
E[nn ] 0
i j 0 otherwise
求此通訊系統在接收端使用最相似檢測器（maximumlikelihooddetector）
下之錯誤率。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5a5d3e1b33ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00275', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '一個二位元通訊系統使用s (t)cos(2f t)及s (t)cos(2f t)進行通訊，其
0 c 1 c
中載波頻率 f 很大。s (t)及s (t)波形如下圖，圖中T代表每個位元傳送
c 0 1
時間。當位元訊息為 0時，則送出s (t)cos(2f t)；當位元訊息為 1 時，
0 c
則送出s (t)cos(2f t)，其中 0與 1 發生機率相等。
1 c
s (t) s (t)
0 1
A A
T T/4
t t
0 0 T
3T/4
-A -A
若通道為可加白高斯雜訊通道（additive white Gaussian noise channel），
其功率頻譜密度為N /2。
0
令E 為平均每個位元傳送能量，求E 。（5 分）
b b
求此系統在最相似（maximumlikelihood,ML）檢測器下的位元錯誤率，
請以E 及N 表示之。（15 分）
b 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5a5d3e1b33ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00276', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '一個無線通道，其帶通頻率響應如下：
1 | f 109 |106
C(f)
0 otherwise
假設傳送端使用平方根升餘弦濾波器（square-root raised cosine filter），
滾降係數（rollofffactor）為。若使用 QPSK，並希望能達到2Mbps的
資料率，且接收端不會有符際干擾（inter-symbolinterference, ISI）。
令 f 為載波頻率， f 應設為何值較為恰當。（5分）
c c
令R為 QPSK符元率（symbolrate），求R。（5分）
求滾降係數（rolloff factor），使得傳送訊號可占據整個通道頻寬。
（10 分）
提示：升餘弦脈衝頻率響應與符元區間（symbolinterval）T 1/R，及滾降係數（rolloff
factor)的關係如下
1
T, 0 f
2T
T  T 1 1 1
X(f) 1cos  f   ,  f
2    2T  2T 2T
0, otherwise', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "5a5d3e1b33ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00277', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '下圖電路V = V = 5 V，I = 1 mA，電晶體M 與M 具有相同的長度
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
SS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00278', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '下圖電路 R =0.5k，R =0.5 k，R =1 k。
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
37860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
