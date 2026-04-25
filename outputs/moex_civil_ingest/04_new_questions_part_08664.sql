-- W1.6 questions batch 8664/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-8ec6300d-moex-00094', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '給予下列訊號
，
請畫出 的單邊頻譜（  ）與雙邊頻 譜（
single-sided spectra double-sided
() = 8cos10+ +4sin4 + 
spectra）。（25分）
()
（注意：頻譜包含振幅跟頻率的關係與角度跟頻率的關係）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "b5fe6fe4e7aa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00095', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '若 的傅立葉轉換 如下圖所示：
X(f)
() ()
f
-10Hz 10Hz
試問：
若要取樣該訊號則最小取樣頻率為何？（10 分）
若取樣頻率為最小取樣頻率，取樣後在時間上的訊號模型為何？（5分）
承第小題，該訊號的頻譜響應為何？（5 分）頻譜圖又為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "b5fe6fe4e7aa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00096', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '假設一訊號 為
，
()
試問：
() = 4cos(20)
此訊號 的功率為多少？（5分）
正規化 使正規化的訊號有最小振幅-1，則此訊號的數學模型為
()
何？（5分）
()
若未調變訊號為 ，用振幅調變來傳遞此訊號，則此振幅
調變訊號為何？（調變指數為 0.5）（10分）
100cos200
此振幅調變訊號的傅立葉轉換為何？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "b5fe6fe4e7aa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00097', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '今有一訊號
，
試問：
() = 10cos(10)
經過希爾伯（Hilbert）轉換後的訊號 為何？（10 分）
的傅立葉轉換為何？（5 分）
() ()
承第小題，如何利用該訊號產生出 的單帶（single-sideband）訊
()
號。（假設未調變訊號為 ）（10分）
()
Acos(200)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "b5fe6fe4e7aa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00098', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖一之二極體電路中，假設稽納（Zener）電壓V =12V，及其電阻r=0。
Z z
若欲使稽納二極體之電流，等於40V之電源所提供電流的十分之一時，試求
所需之負載電阻（R ）值。（25分）
L
120
+
+
40V V R
Z L
－ －
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00099', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖二電路之參數：R =1k、R =9k，及 R =2k、R =3k，請利
In F 1 2
用疊加（superposition）原理，試求此理想運算放大器（Ideal Op）之輸
出電壓（v ）值。（25分）
O
R
F
R
In
R
1 +
v v
1 O
R －
2
v
2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00100', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '已知某個積體電路儀表（IC instrument）放大器之參數：閉環路電壓增益
（A ）為500，R =R =25k，試求外部增益設定電阻（R ）值。（12分）
cl 1 2 G
已知某一個運算互導放大器（OTA）的增益（g ）為 1000S，當其輸
m
入電壓（V ）為25 mV時，試求其輸出電流（I ）值。（13 分）
in out', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00101', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-113-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖三之反相器（inverter）數位電路中，當 v =5V時，試求該反相器之
I
輸出電壓（v ）與功率損耗（P）。（25分）
O
V =5V
DD
R =20 kΩ
D
v
O
V =1.5V
v TN
I
K =100 μA/V2
D
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "454", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00102', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-6fd7282b', 'sub-pukao-8ec6300d-04', NULL, 'essay', '如圖一所示，R為銀（Ag）線的電阻，R 為金（Au）線的電阻，在20℃
1 2
時R = R ，AB端的電阻為2.5Ω，其中銀和金的推論絕對溫度（inferred
1 2
absolutetemperature）分別為-243℃和-274℃，試計算當溫度升高到100℃
時，AB兩端的電阻改變為多少(Ω)？（20分）
R
1
RR
22
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00103', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-6fd7282b', 'sub-pukao-8ec6300d-04', NULL, 'essay', '如圖二之電路，其中V =10V，V =5V，R = R = R =1kΩ，R =2kΩ，R
1 2 1 2 3 4 5
= R =4kΩ，試計算V 為多少伏特(V)？（20分）
6 o
VVVV
2222
RR
1
1
RR
33
RR
VV 2
1 2
1
V
o
R
5
RR RR
4 66
4
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
