-- W1.6 questions batch 7634/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-0c700c30-moex-00036', 'promotion-0c700c30', 'promotion-0c700c30-moex-110-e1711217', 'sub-promotion-0c700c30-03', NULL, 'essay', '請試述下列問題：
程式設計中遞迴（recursive）是一個很好的技巧，請說明何謂遞迴？遞
迴函式（recursivefunction）中有什麼樣要注意的？（10分）
請使用任何一種程式語言（答案中請註明那一種程式語言）撰寫一個
主程式去呼叫一個遞迴函式，可以計算 1+2+3+ +20 的值。（10分）
⋯⋯', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "ce1760628f4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "122", "s": "2002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00001', 'promotion-0f640084', 'promotion-0f640084-moex-114-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '某一個大型三相工業化變電所內，具有一個額定三相、22.8 kV、60 Hz、
4 MW之交流負載，以及一個額定三相、22.8 kV、60 Hz、2 MVAR之三
相交流電容器組。已知該三相交流電容器組投入變電所時，可用於維持
該變電所之功率因數達到0.97 lagging。當該變電所內的保護電驛因故發
生誤動作，導致該三相交流電容器組被意外切離時，試求此時該變電所
的功率因數變為多少。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "36fc78e5e2d2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00002', 'promotion-0f640084', 'promotion-0f640084-moex-114-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '某電力系統做故障分析時之標么導納矩陣、標么阻抗矩陣分別為：
j8.75 j1.25 j2.5  j0.16 j0.08 j0.12
Y  j1.25 j6.25 j2.5 、Z  j0.08 j0.24 j0.16 。
bus   bus
j2.5 j2.5 j5.0 j0.12 j0.16 j0.34
已知故障發生前，該電力系統為無載條件，且各匯流排的電壓大小均為
1.0 標么。若一個三相短路直接接地故障發生在該電力系統的二號匯流
排，試求：二號匯流排的故障電流以及一號匯流排、三號匯流排於故障
發生後的電壓大小。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "36fc78e5e2d2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00003', 'promotion-0f640084', 'promotion-0f640084-moex-114-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '一具額定單相、60 kVA、4800/2400 V、60 Hz之配電變壓器，其開路測
試（低壓繞組加額定電壓、高壓繞組開路），測得低壓繞組電流 2.4 A、
實功 3456 W；其短路測試（低壓繞組短路、高壓繞組加電壓 1250 V），
測得高壓繞組電流 12.5 A、實功 4375 W。試求該變壓器由高壓繞組側看
入之等效鐵損電阻、等效磁化電抗、等效串聯電阻、等效串聯電抗，並
求出該變壓器在額定負載且負載功因為 0.8 lagging時之效率。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "36fc78e5e2d2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00004', 'promotion-0f640084', 'promotion-0f640084-moex-114-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '一部大型水力發電用三相凸極式（salient pole）同步發電機之相量圖
（phasordiagram）如下圖所示，已知圖中各標么電氣量或角度分別為：
內電勢相量 E、端電壓相量 V、輸出電流相量 I；V與 I之間的夾角為功
因角；V與 E 之間的夾角為轉矩角。該發電機定子繞組等效電路之參
數包含：流過直軸電流 I 之直軸電抗（d-axisreactance）X 、流過交軸電
d d
流 I 之交軸電抗（q-axis reactance）X 、電樞電阻（armature resistance）
q q
R 。若忽略該電機之電樞電阻 R ，試求轉矩角之表示式。（25分）
a a
I
0 q E
d
jX I
q q q
X I
d d
V
I
d
I', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "36fc78e5e2d2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00005', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖一為增益 1000的反相放大器，其輸入失調電壓（offsetvoltage,V ）
OS
為 4 mV，輸出飽和電位為±20 V。請說明在不產生輸出削波（output
clipping）的情況下，其輸出端的直流失調電壓（V ）和峰值正弦波
O(offset)
輸入訊號（V ）是多少？（10分）若 R =1 kΩ且 R =1 MΩ，求耦
in(max) 1 2
合電容 C的值為何？以確保增益在低至 1 kHz時大於 57 dB。（10分）
R
2
V
in
V
O
C R
1
V
OS
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00006', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖二為 BJT放大器，假設電流源 I=0.1 mA採用 PNP電晶體，其中 NPN
電晶體的 β=100，爾利電壓（earlyvoltage）(V )=50 V；PNP電晶體的
An
β=50，|爾利電壓（earlyvoltage）(V )|=50 V，求輸入電阻 R 、（5分）
Ap in
電晶體 Q 的轉導值 g 、（5 分）放大器輸出電阻 R（5分）以及增益大
1 m1 o
小(V /V)。（5 分）
o i
V
CC
II==00..11mmAA
v
B
Q
2
v
o
v Q
i 1
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00007', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖三 BJT差動放大器，假設 NPN電晶體的 β=100，求輸入差分電阻 R
id
（10分）與電壓總增益（V /V ）。（10分）
O sig
+15V
RRCC==1100kkW RC==1100kkWW
=150kkWW V
B o B
1 Q Q 2
1 2
V /2 ++ V
sig - id
RE==11500kWW RE==11500kWW
V /2 ++ R
sig - id
=150kkWW
REE=2=0100kkWW I=1mA
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00008', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '圖四為電壓回授放大器，假設 g =g =4 mA/V、R =R =10 kΩ、
m1 m2 D1 D2
R =1 kΩ、R =9 kΩ，求輸入電阻（R ）、（5分）輸出電阻（R ）（5分）
1 2 in out
以及輸出與輸入之電壓增益（V /V ）。（10 分）
O S
RD1 RD2
Vo
Q2
Q1
Rout
V ++
S -
Rin R2
R1
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00009', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c13555', 'sub-promotion-0f640084-02', NULL, 'essay', '試 以 虛 擬 NMOS （ pseudo-NMOS ） 邏 輯 電 路 實 現 布 林 函 數
Y  ABCD與Y  ABCD之電路圖，以及通道電晶體邏輯（PTL:pass
transistorlogic）電路方式實現布林函數Y  AB與Y  AB之電路圖。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
