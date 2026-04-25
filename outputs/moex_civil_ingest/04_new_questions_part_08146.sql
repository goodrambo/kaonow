-- W1.6 questions batch 8146/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00028', 'pukao-0f640084', 'pukao-0f640084-moex-112-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '如圖四所示之電路，其中 0， 0，R 10Ω，R 5Ω，
1 2
C 之阻抗為-j5Ω，L之阻抗為j5Ω，試計算 為多少安培(A)？（20分）
1 1 ̇ = 12  ̇ = 6
̇
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00029', 'pukao-0f640084', 'pukao-0f640084-moex-112-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '如圖五所示之電路，其中電源之電壓相量為 ∠ ，其電壓為
， ， ， Ω，求電壓 為
̇ = 20 0°()
多少伏特(V)？（20分）
 = 20sin3()  = 2   = 0.1   =  = 4 ̇
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "0502f34be360", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00030', 'pukao-0f640084', 'pukao-0f640084-moex-112-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '某一均方根值為2400 V，頻率為60 Hz之三相交流電壓源，供電給並聯之
二個負載。負載一之額定功率為300kVA，功率因數（PowerFactor）為0.8
滯後；負載二之額定功率為240kVA，功率因數為0.6領先。此電路之相序
1
是abc。A相電壓至中性點之相量（Phasor）為V = 24000V。
an 3
描繪該電路之單相等效電路。（10分）
決定abc之三相線電流各為多少？（9分）
假設以300kVA與2400V作為系統之基準（base）值，計算a相線電流之
標么（pu）值。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b842f9712dd3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2811", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00031', 'pukao-0f640084', 'pukao-0f640084-moex-112-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '考慮如圖一之單相電路（圖中之電壓、電流、阻抗均以標么值表示）。開
關閉合時表示發生短路故障。假定故障前之電流相量I =-I =1∠0°。
1 2
計算發生故障前之電壓E 與E 。（10分）
1 2
計算發生故障後之故障電流I、I 與I 。（15分）
1 2
I I
1 2
0.1 0.2
I
E E
1 V=1∠0° 2
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b842f9712dd3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2811", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00032', 'pukao-0f640084', 'pukao-0f640084-moex-112-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '一條三相、60Hz、完全置換（Transposed）的345kV、長度為200km的輸
電線路，每束有兩條795,000-cmil 26/2ACSR導線，其正序線路常數為：
z = 0.032 + j0.35 Ω/km，y=j4.23×10-6S/km。該線路於負載滿載時，接收
端獲得之有效功率為700 MW，功率因數為0.99領先、接收端之電壓為額
定電壓的95%。假設該線路為中距離線路，求解以下問題：
線路π型模型之ABCD參數。（12分）
發送端之電壓V 、電流I 與有效功率P。（12分）
s s s
電壓調整率之百分比（PercentVoltageRegulation）。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b842f9712dd3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2811", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00033', 'pukao-0f640084', 'pukao-0f640084-moex-112-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '圖二所示為三相交流電力系統之單線圖。表一所示為個別傳輸線之阻抗
標么（pu）值。假設各匯流排之並聯導納可忽略不計。（每小題10分，
共20分）
假設圖中虛線之傳輸線未連接，計算該系統之匯流排導納矩陣Y。
如果圖中虛線之傳輸線已連接，請問要如何修正子題所求出之Y矩
陣，進而求出新的匯流排導納矩陣Y ？
new
1 2
3 4
圖二
表一
匯流排編號 電阻（標么值） 電抗（標么值）
1-2 0.05 0.15
1-3 0.10 0.30
2-3 0.15 0.45
2-4 0.10 0.30
3-4 0.05 0.15', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b842f9712dd3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2811", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00034', 'pukao-0f640084', 'pukao-0f640084-moex-112-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '關於二極體，試說明：（每小題10分，共20分）
二極體的空乏區（Depletion Region）形成的原因。
空乏區的內建電位（Built-inpotential）的來由。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00035', 'pukao-0f640084', 'pukao-0f640084-moex-112-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖一所示之全橋電路，由四個增強型NMOS構成，輸入信號為週期性方
波S 與其反置信號 ，使上下臂互鎖，如S 為使NMOS導通之高電位，則
1 1
為使NMOS關閉之低電位，反之亦然，負載為一電阻R=1 Ω串聯一電感
̅
L=10 mH。（每小題10分，共20分）
̅
初始電流 為零，S 與S 同為高電位，S 為低電位時，說明電流路徑且
1 3 2
推導輸出電流 (t)。

初始電流為 =10A， 、 與 同為低電位，說明電流路徑且繪製輸出

電流 波形，須標示時間終止時之電流，0t 2104 sec。
   

圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00036', 'pukao-0f640084', 'pukao-0f640084-moex-112-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖二之npnp四層結構元件，v =0或5V。（每小題10分，共20分）
G
當正極（A）連接在一個100VDC電壓源正電壓端，且負極（B）連接在
10 Ω電阻負載一側，電阻負載另一側接該100VDC電壓源負電壓端，試
繪製該npnp四層結構元件之等效電路與電壓源及負載之電路，並說明
v 之電壓對該元件導通與否之影響。
G
當負極（B）連接在一個100VDC電壓源正電壓端，且正極（A）連接在
10 Ω電阻負載一側，電阻負載另一側接該100VDC電壓源負電壓端，試
繪製該npnp四層結構元件之等效電路與電壓源及負載之電路，並說明
v 之電壓對該元件導通與否之影響。
G
n p n p
 
圖二
G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00037', 'pukao-0f640084', 'pukao-0f640084-moex-112-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '一操作放大器，其增益帶寬積（Gain-bandwidth product; GBW）為10
MHz，最大增益為20dB，做成一單位增益緩衝器（unitygainbuffer）電路。
（每小題10分，共20分）
繪製並推導該單位增益緩衝器V (j)/V (j)的頻率響應。
o in
求取其在10 MHz之增益與相位角。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
