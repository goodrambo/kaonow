-- W1.6 questions batch 7915/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-8ec6300d-moex-00034', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c8fe92', 'sub-promotion-8ec6300d-04', NULL, 'essay', '一電阻-電容電路如下圖所示，在 t=0 前該電路已處於穩定狀態，試求
t>0 之 v (t)=？（20分）
o
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "2949ce1652c2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00035', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c8fe92', 'sub-promotion-8ec6300d-04', NULL, 'essay', '一 OP放大器電路如下圖所示，若其輸出v 4v  v ，請計算出適當之
3 1 5 2
R 及 R 電阻值？（10分）
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "2949ce1652c2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00036', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c8fe92', 'sub-promotion-8ec6300d-04', NULL, 'essay', '一具有電阻-電容-電感器之電路如下圖所示，該電路輸入為電壓源之電
壓v (t)10cos(10t)V，輸出為流經10 電阻之電流 i(t)，試計算 i(t)之表
s
示式。（30 分）（hint：可將電路之元件轉換至頻域）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "2949ce1652c2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00037', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-112-61c8fe92', 'sub-promotion-8ec6300d-04', NULL, 'essay', '一電路如下圖所示，請決定 L及C之值，以使此電路輸出 v (t)可操作於
o
帶通濾波器，其中 R=100 ，ω =1000 rad/s，頻寬 BW 為 100 rad/s。
0
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "2949ce1652c2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "180", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00038', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '已知一週期為T 之連續訊號x(t)的complexexponentialFourierSeries定義為
0
1 2
t T
x(t)  X ejnt X  0 0x(t)ejntdt, t t t T ,
0 ，其 0 。
n n T 0 0 0 0 T
t
n 0 0 0
x(t)cos(t)sin2(2t)
請計算 的 complex exponential Fourier Series。
0 0
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "d48dd33b75e7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00039', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '假設一線性非時變系統之頻率響應函式 H（f）為
1, f 0
H(f ) jsgn f 其中sgn f 0, f 0
， 。
1, f 0
請求出x(t)cos(10t)sin(10t)經過該線性非時變系統的輸出訊號
y(t)。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "d48dd33b75e7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00040', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '下圖為一個不需要混頻器（frequency mixer）之振幅調變（Amplitude
Modulation,AM）系統：
costcos(2f t)
其中 m(t)為輸入訊號、 為載波、g(t)則為輸出訊號。
c c
假設輸入訊號 m(t)的頻寬（bandwidth）為 WHz，而上圖中的“Square-law
y(t)4x(t)2x2(t)
device”區塊的輸入與輸出函式定義為 。假設上圖中的
“Filter”區塊為一帶通濾波器，該帶通濾波器的頻寬大於 2W 且中心頻率
f =f >3W。根據題目的假設，請計算輸出訊號 g(t)。（20分）
0 c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "d48dd33b75e7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00041', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '考慮以下兩個方波 x(t)以及 y(t)：
觀察 x(t)以及 y(t)個別之匹配濾波器（matched filter）的輸出。假設兩個
匹配濾波器的輸出有相同的訊號雜訊比（Signal-to-Noise Ratio, SNR），
請求出 A與 B的關係。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "d48dd33b75e7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00042', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', 'M序列是一種最大長度序列（maximumlengthsequence）。在通訊系統的
電路設計中，M序列常被用來產生偽隨機數（pseudo randomnumber）。
考慮一由 6 階之線性反饋移位暫存器（Linear Feedback Shift Register,
LFSR）所產生的M序列，其時脈頻率為 10 kHz，請回答以下的問題：
該 M序列的週期為多少毫秒(ms)？（5分）
請計算該 M序列的自相關函數（autocorrelation function）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "d48dd33b75e7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL),
  ('promotion-8ec6300d-moex-00043', 'promotion-8ec6300d', 'promotion-8ec6300d-moex-110-0d6c2263', 'sub-promotion-8ec6300d-01', NULL, 'essay', '請證明串接（cascade）N 個不同的二元對稱通道（Binary Symmetric
Channel,BSC）依舊是二元對稱通道。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:06+00:00", "source_pdf_sha1": "d48dd33b75e7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "180", "s": "1909", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
