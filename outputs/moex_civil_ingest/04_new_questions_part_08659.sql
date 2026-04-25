-- W1.6 questions batch 8659/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-8ec6300d-moex-00044', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-114-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '考慮下圖中的系統：
其中 x(t)為輸入訊號，y(t)為輸出訊號。假設 X(j)為 x(t)的傅立葉轉換
（Fouriertransform），且 X(j)的頻譜如下圖所示：
請描繪出該系統輸出訊號的頻譜Y(j)。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "4951a714ee64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "447", "s": "2514", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00045', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-114-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '假設X(j)為連續時間訊號x(t)的頻譜，根據奈奎斯特取樣定理（Nyquist
samplingtheorem），如果取樣的週期T 104s，請判斷以下的訊號x(t)（或
X(j)），其取樣後的訊號（sampledsignal）是否可經由理想的數位類比
轉 換 器 （ digital-to-analog converter, DAC ） 完 美 重 構 （ perfect
reconstruction）？（每小題 5分，共 15分）
X(j)0 for 5000
2
sin(4000t)
x(t)
t
x(t)1cos(2000t)sin(4000t)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "4951a714ee64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "447", "s": "2514", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00046', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-114-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖一所示之電路，其中電壓源V+上有10V的直流電壓，及頻率為60Hz，
峰值為1V的弦波電壓變動，假設二極體在1 mA時的跨壓約為0.7V，溫
度伏特當量V =25mV。試求：
T
二極體直流電流 I =？（5 分）
D
二極體之小信號電阻（small-signalresistance）r =？（5分）
d
繪出圖一之小信號等效電路。（10 分）
計算小信號等效電路中二極體之電壓峰值 v （peak）=？（5 分）
d
V+
I
D
10kW
+
v
D
-
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "447", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00047', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-114-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖二所示BJT電路，v 為輸入的交流小信號，BJT操作在作用區（active
s
region），若=99，V =0.7V，請計算下列各項參數：V ，r，R ，
BE B e in
R ，v /v。（25分）
o o s
+3V
100kW
10kW
vs vo
1kW 1kW
Rin R
ib Ro
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "447", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00048', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-114-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖三所示之差動放大電路，試求下列各項參數：
v
當 v =v /2，v =-v /2，v 是一個均值為零的小信號，請計算A  0。
B1 id B2 id id d
v
id
（10分）
v
當 v = v = v ，v 是一個均值為零的小信號，請計算A  0 。
B1 B2 icm icm cm
v
icm
（10分）
請計算共模拒斥比（CMRR）。（5 分）
+5V
2kW 2kW
v
o
v Q Q v
B1 1 2 B2
4.3kW
-5V
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "447", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00049', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-114-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖四所示之 CMOS電路，若 Q 、Q 之參數分別如下：
P N
W W 300A
V  V 0.4V，( ) 2( ) 3，C 4C  。
tn tp L p L n n ox p ox V2
試求：（每小題 5分，共 25分）
Q 操作在那一個工作區域？
P
i =？
D
Q 操作在那一個工作區域？
N
輸出電壓 V =？
OL
靜態功率損耗（staticpowerdissipation）P =？
D
1.8V
QP
1.15V iD V
OL
QN
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "447", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00050', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '下列二進位數值中，何者與十進位數值6.76最為接近？', '["0111.100", "0110.101", "0110.110", "0110.111"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9efb7247b3e1", "answer_pdf_sha1": "3ae533baf445", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2604", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00051', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '將十進位數字－93用八位元的二補數（2’scomplement）表示，答案為：', '["0101_1101", "1101_1101", "1010_0010", "1010_0011"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9efb7247b3e1", "answer_pdf_sha1": "3ae533baf445", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2604", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00052', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '下列I/O介面，何者不能用來連結電腦和外接式光碟機？', '["HDMI", "SCSI", "IEEE1394", "USB"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9efb7247b3e1", "answer_pdf_sha1": "3ae533baf445", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2604", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00053', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '某個編碼器（encoder）共有45條輸入線（輸入值只有1個位元是1，其餘44位元是0），則該編碼器至少 要有多少條輸出線？', '["4", "6", "8", "12"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "9efb7247b3e1", "answer_pdf_sha1": "3ae533baf445", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2604", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
