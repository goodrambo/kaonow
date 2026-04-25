-- W1.6 questions batch 6468/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00199', 'locality-0f640084', 'locality-0f640084-moex-110-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '說明下列 python 語言程式的執行過程，並寫出程式的輸出。（25分）
num = 80586
ans = []
i = 1
while i < num:
i += 1
if num % i == 0:
ans.append(i)
num /= i
while num % i == 0:
num /= i
print(ans)
34150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "a14bef5aad4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00200', 'locality-0f640084', 'locality-0f640084-moex-110-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '三個區域網路（LAN）連接方式如下圖，其中有八台電腦及兩台橋接器
（bridge）。試述橋接器的功能。若電腦 6需要傳遞資料給電腦 1，如何達
成資料傳輸？請詳述工作流程。（15 分）
電腦1 電腦2 電腦3
區域網路1
電腦4 電腦5
橋接器1
區域網路2
電腦6 電腦7 電腦8
橋接器2
區域網路3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "a14bef5aad4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00201', 'locality-0f640084', 'locality-0f640084-moex-110-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一架空超高壓輸電線路 60Hz、345kV、100公里，額定電流為1000A/相，
其線路常數串聯阻抗 z = 0.09+j0.47 Ω/km，並聯導納 y=j3.5S/km，試計
算此線路：
ABCD常數。（10 分）
突波阻抗負載SIL。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d806114d550e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00202', 'locality-0f640084', 'locality-0f640084-moex-110-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '請列舉三種常用的電力系統潮流控制的方法，並說明其對實功潮流、虛
功潮流或電壓的影響。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d806114d550e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00203', 'locality-0f640084', 'locality-0f640084-moex-110-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一具有三相匯流排的電力系統，其匯流排阻抗矩陣如下所示，
0.12 0.08 0.04
Z =j 0.08 0.12 0.06
bus
0.04 0.06 0.08
 
其中 Z 由次暫態電抗求得，故障前各匯流排的電壓假設皆為 1.0 標么，
bus
且故障前的負載電流忽略不計。當匯流排 2發生三相短路故障時，試求
故障期間：
故障點之次暫態故障電流。（5分）
匯流排1、2及 3 的電壓值。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d806114d550e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00204', 'locality-0f640084', 'locality-0f640084-moex-110-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一 60 Hz 的互聯電力系統包含兩供電區域 1 與 2，其區域頻率響應特性
=300MW/Hz 與 =200MW/Hz，區域 1、2的發電量分別為 900MW
1 2
與 600 MW，每一區域的穩態初值調度功率ΔP =ΔP = 0，當區域 1
tie1 tie2
突然增加80 MW 負載時，試計算其頻率變化量Δf於：
沒有執行負載頻率控制（LFC）時。（10 分）
有執行負載頻率控制（LFC）時。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d806114d550e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00205', 'locality-0f640084', 'locality-0f640084-moex-110-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '台電某一次變電所的主變壓器60MVA、69kVY/161kVΔ，由擁有分接頭
的差動電驛所保護。假設69 kV側與161 kV側各選用CT比流器250：5
與 500：5 的規格，且此差動電驛之分接頭有 5：5，5：8，以及 5：10 等
種類，及所對應的分接頭比分別為 1.0，1.6 以及2.0，試求：
高低壓側的 CT連接方式，以及 CT二次側的電流值。（10分）
合適的電驛分接頭設定，以及其百分差值。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d806114d550e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00206', 'locality-0f640084', 'locality-0f640084-moex-110-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖一(a)所使用之放大器等效電路如圖一(b)所示，其差動增益
（differentialgain）A為無限大，請推導此電路之理想電壓增益 A =v /v。
v O I
（5 分）若差動增益 A並非無限大，且 R = 1 k、R = 9 k，此電路
1 2
之實際電壓增益將與所求得之理論值間有所誤差，若想將該誤差控制
在 0.1%以內，請問差動增益 A的最小值是多少？（15分）
R
2
R
1
-
+
+
v
v O
I
-
圖⼀(a)
圖一(a)
Invertinginput
Output
1 -
i =0
1
v 3
1 A(v-v)
2 1
+-
i =0
2 +
2
v
2
圖⼀(b)
Noninvertinginput
圖一(b)
34160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00207', 'locality-0f640084', 'locality-0f640084-moex-110-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖二(a)為簡單電流鏡（current mirror）電路，理論上希望輸出電流 I
O
與輸入參考電流 I 全等（I =I ），若 Q 與 Q 完全相同並操作在主動
REF O REF 1 2
區（activeregion），I =I 、>>1，且不考慮爾利電壓（Earlyvoltage）
C B
的影響，請推導出輸出電流 I 與輸入參考電流 I 間的關係式，並算出
O REF
兩者間的誤差。（5 分）若圖二(b)之 Q 也和 Q 、Q 完全相同，請再次
3 1 2
算出 I 與 I 兩者間的誤差，並說明圖二(b)的誤差與圖二(a)相比為何
O REF
會改變。（15分）
V+
I
REF
I = I
I C2 O
C1
I I
B1 B2 +
Q Q V
1 2 CE2
+ +
V V -
- BE1 BE2 -
圖二(a) V-
圖二(a)
V+
I
REF
I
B3
Q I = I
I + 3 C2 O
C1
V I
BE3 E3
-
Q Q
1 + 2
I I
B1 B2
V
BE
-
圖二(b) V-
圖二(b)
34160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00208', 'locality-0f640084', 'locality-0f640084-moex-110-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖三(a)共源極放大器（common-sourceamplifier）的所有電晶體皆操
作在飽和區（saturation region）且小訊號等效電路如圖三(b)所示，請
推導此電路之小訊號電壓增益與增益頻寬乘積（gain-bandwidth
product）。（15 分）若提高電晶體的輸出阻抗 r ，請說明能否同時提
o
升此電路之電壓增益與增益頻寬乘積？（5 分）
V
DD
V
xx
M
2
V
OUT
M Vgs r
1 o
V
in C gmVgs
L
V
BB 圖三(b)
圖三(b)
圖三(a)
圖三(a)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
