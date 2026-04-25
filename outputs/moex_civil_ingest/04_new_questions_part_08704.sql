-- W1.6 questions batch 8704/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-acfc4025-moex-00155', 'pukao-acfc4025', 'pukao-acfc4025-moex-112-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '如圖二之npnp四層結構元件，v =0或5V。（每小題10分，共20分）
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
G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "444", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00156', 'pukao-acfc4025', 'pukao-acfc4025-moex-112-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '一操作放大器，其增益帶寬積（Gain-bandwidth product; GBW）為10
MHz，最大增益為20dB，做成一單位增益緩衝器（unitygainbuffer）電路。
（每小題10分，共20分）
繪製並推導該單位增益緩衝器V (j)/V (j)的頻率響應。
o in
求取其在10 MHz之增益與相位角。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "444", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00157', 'pukao-acfc4025', 'pukao-acfc4025-moex-112-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '如圖三所示的 NMOS 反向器（Inverter）電路，其NMOS之V 2V 且
Tn
v 0/5V 的脈衝波（PulseTrain）。該NMOS的轉導（Transconductance）
in
為100 姆歐，且於v 5V時的飽和電流為10A。該脈衝波於20%責任週期
in
（dutycycle）與500 kHz下切換。（每小題10分，共20分）
於NMOS開始導通後排出800 pF電容內的99%電荷所需時間。
推導NMOS開始關閉至下一次NMOS開始導通之輸出電壓v 時間響應
o
函數，並計算最高輸出電壓v 。
o
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "444", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00158', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '請計算圖 1電路之相依電源所提供的功率。（20分）
1W i 2W
1
3W
15A
3i
1
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00159', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '請計算圖 2電路之電流 i 數值。（20 分）
1
4i
1 2W
- +
5V + +
- 4W - 3V
4W i
1
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00160', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '試求圖3電路之i(t)，其中u(t)為步階電壓源且電感器電流初始值為25 A。
（20 分）
50u(t)V
2W
-+
i(t)
50V + 6W 3H
-
圖 3
|
44520', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00161', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '試求圖 4 所示電路之時域節點電壓 v (t)與 v (t)。（20 分）
1 2
-j5W
ν ν
1 2
j10W
o 5W -j10W 10W j5W o
1 0 A 0.5 -90 A
圖 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00162', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '試求圖 5 所示線性變壓器之 T 等效網路，並以 AB 端輸入電壓
v =10 cos100t V，驗證所求 T等效網路之正確性。（20分）
AB
40mH
A
30mH 60mH
B
圖 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00163', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '以二補數法表示的32位元整數，有效範圍為下列何者？', '["-231~231-1", "0~232-1", "-232~232-1", "0~231-1"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "20568d3f3b32", "answer_pdf_sha1": "65172cec2c87", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2604", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00164', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '為使用 128k×16RAM的晶片，去實現總共2M個位元組的記憶容量，且定址單位為位元組，下列何者 正確？', '["一共得使用8個晶片", "要存取2M個位元組共需要使用20條位址線", "每條晶片需要使用17條位址線去定址", "晶片組選擇線一共要有2條"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:40+00:00", "source_pdf_sha1": "20568d3f3b32", "answer_pdf_sha1": "65172cec2c87", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2604", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
