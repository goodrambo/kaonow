-- W1.6 questions batch 7912/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-8ec6300d-moex-00004', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '一個二位元（binary）通訊系統傳送具有事前機率（priori probability）
1 2
Pr(1) 與Pr(1) 的符元（symbol）{1,1}，並使用最大事後機率接收
3 3
器（maximumaposteriorireceiver,MAPreceiver）接收所傳送的符元。此
通道受到加性高斯白雜訊（additivewhiteGaussian noise）的干擾。當二
位元符元「1」被傳送時，加性高斯白雜訊的期望值為 ，變異數為，
(0,)。當二位元符元「1」被傳送時，加性高斯白雜訊的期望值為 0，
N
0
變異數為4， (0,4)。
N
請寫出這兩個符元的概似函數（likelihood function）。（4分）
請求出這兩個符元的決策區域（decision region）H 與H 。（6分）
1 1
請求出此通訊系統的平均最小錯誤機率（average minimum error
1
t2/2
probability）。請以 Q-函數：Q(x) e dt表示出來。（10 分）
x 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "16cd279c38c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00005', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '在 10 GHz 頻率下，地面站向距離 2,000 公里的衛星發射 128 W 功率。
地面天線增益為36 dBi，其指向誤差損失（pointingerrorloss）為 0.5 dB。
衛星天線增益為 38 dBi，具有指向誤差損失為 0.5 dB。假設大氣損耗
（atmospheric loss）為2 dB，而極化損耗（polarization loss）為1 dB。
衛星接收機在室溫下的雜訊指數（noisefigure）為 6 dB。頻道所需頻寬
為 5 MHz，且計算時使用5 dB的裕度（margin）（損耗）。
（每小題10 分，共 20 分）
請計算接收輸入功率（receivedinputpowerlevel）。
請計算輸出訊雜比（outputSNR）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "16cd279c38c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00006', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖一為增益 1000的反相放大器，其輸入失調電壓（offsetvoltage,V ）
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00007', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖二為 BJT放大器，假設電流源 I=0.1 mA採用 PNP電晶體，其中 NPN
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
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00008', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖三 BJT差動放大器，假設 NPN電晶體的 β=100，求輸入差分電阻 R
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
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00009', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '圖四為電壓回授放大器，假設 g =g =4 mA/V、R =R =10 kΩ、
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
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00010', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-61c13555', 'sub-promotion-8ec6300d-02', NULL, 'essay', '試 以 虛 擬 NMOS （ pseudo-NMOS ） 邏 輯 電 路 實 現 布 林 函 數
Y  ABCD與Y  ABCD之電路圖，以及通道電晶體邏輯（PTL:pass
transistorlogic）電路方式實現布林函數Y  AB與Y  AB之電路圖。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "f38bddbbf29d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00011', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '請將直角座標系統的x、y、z用球座標系統的R、與來表示。（10分）
請將球座標單位向量aˆ ，用直角座標的aˆ 、aˆ 與aˆ 來表示。（10分）
R x y z
寫出磁場強度、向量磁位、體電流密度、極化向量與傳輸線之相位常
數(β)的物理單位。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "8c51b1885a93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00012', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '畫出電偶極的結構並標示相關的參數，（5分）並推導出該電偶極在空間
中所產生的電位為何？（5 分）電場為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "8c51b1885a93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00013', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-114-394901ca', 'sub-promotion-8ec6300d-03', NULL, 'essay', '如下圖，一段有限長（A 點到 B 點）的導線，則在距離為 r 的觀測點 P
的位置，其磁通量密度為何？（10 分）
z', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "8c51b1885a93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "180", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
