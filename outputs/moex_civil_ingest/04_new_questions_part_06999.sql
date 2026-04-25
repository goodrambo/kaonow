-- W1.6 questions batch 6999/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-acfc4025-moex-00201', 'locality-acfc4025', 'locality-acfc4025-moex-110-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '以卡諾圖化簡 F(W, X,Y, Z)= Π M(1,3, 9,11,12, 14)為最簡和項之積。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a14bef5aad4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00202', 'locality-acfc4025', 'locality-acfc4025-moex-110-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '完全符合以下三個條件的二元樹（binary tree）有幾個？請畫出來。
（20 分）
有 6 個節點，每個節點均儲存一個英文字母
使用層序走訪（levelordertraversal）的結果：A B C D E F
使用後序走訪（postordertraversal）的結果：D E B F C A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a14bef5aad4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00203', 'locality-acfc4025', 'locality-acfc4025-moex-110-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '說明下列 python 語言程式的執行過程，並寫出程式的輸出。（25分）
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
34150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a14bef5aad4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00204', 'locality-acfc4025', 'locality-acfc4025-moex-110-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '三個區域網路（LAN）連接方式如下圖，其中有八台電腦及兩台橋接器
（bridge）。試述橋接器的功能。若電腦 6需要傳遞資料給電腦 1，如何達
成資料傳輸？請詳述工作流程。（15 分）
電腦1 電腦2 電腦3
區域網路1
電腦4 電腦5
橋接器1
區域網路2
電腦6 電腦7 電腦8
橋接器2
區域網路3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a14bef5aad4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00205', 'locality-acfc4025', 'locality-acfc4025-moex-110-61c13555', 'sub-locality-acfc4025-03', NULL, 'essay', '圖一(a)所使用之放大器等效電路如圖一(b)所示，其差動增益
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
34160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00206', 'locality-acfc4025', 'locality-acfc4025-moex-110-61c13555', 'sub-locality-acfc4025-03', NULL, 'essay', '圖二(a)為簡單電流鏡（current mirror）電路，理論上希望輸出電流 I
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
34160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00207', 'locality-acfc4025', 'locality-acfc4025-moex-110-61c13555', 'sub-locality-acfc4025-03', NULL, 'essay', '圖三(a)共源極放大器（common-sourceamplifier）的所有電晶體皆操
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
圖三(a)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00208', 'locality-acfc4025', 'locality-acfc4025-moex-110-61c13555', 'sub-locality-acfc4025-03', NULL, 'essay', '請說明圖四的電路屬於串聯-串聯（series-series）、串聯-並聯（series-
shunt）、並聯-串聯（shunt-series）或是並聯-並聯（shunt-shunt）回授？
（5 分）若迴路增益非常大，請推導此電路之電壓增益 V /V 。（15 分）
O S
R
f
R
s V
-μ  o
R
L
V
s
Voltageamplifier
圖四
34160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00209', 'locality-acfc4025', 'locality-acfc4025-moex-110-61c13555', 'sub-locality-acfc4025-03', NULL, 'essay', '圖五(a)電路由開關電晶體與反向器（inverter）所組成，請說明這是那種
數位電路與其操作原理。（5分）若將其電路簡化為圖五(b)，請說明此電
路是否還可以正常運作，若可正常運作，也請說明其操作原理。（15分）
Q’ Q
Ø1 Ø2
1 2
D G G G G
1 2 3 4
圖五(a) Ø Ø
22 11
圖五(a)
QQ
Ø Ø
11 22
D G G
2 4
圖五(b)
Ø Ø
22 11
圖五(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00210', 'locality-acfc4025', 'locality-acfc4025-moex-110-394901ca', 'sub-locality-acfc4025-04', NULL, 'essay', '於真空（介電係數 permittivity   ）中，二金屬球半徑為 a
o 36109 Nm2
及 b，以金屬細線長度為d(d a, d b)相連，其電荷量為 Q。
推導細線上之庫倫力 F。（10分）
已知a1cm, b2cm, d 1m,Q1010C，計算細線上之庫倫力 F值。
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "81c19fd4771c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
