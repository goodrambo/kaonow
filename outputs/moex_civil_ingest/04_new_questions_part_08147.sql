-- W1.6 questions batch 8147/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00038', 'pukao-0f640084', 'pukao-0f640084-moex-112-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖三所示的 NMOS 反向器（Inverter）電路，其NMOS之V 2V 且
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
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00039', 'pukao-0f640084', 'pukao-0f640084-moex-112-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '以下是以兩部單相變壓器作三相電壓轉換的兩種方法，分別繪出其電路
圖並標示變壓器繞組的極性：（每小題10分，共20分）
V—V連接
開Y—開Δ連接', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "e87cd1cb16fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00040', 'pukao-0f640084', 'pukao-0f640084-moex-112-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '繪出下列三種直流發電機的等效電路，標示輸出端電壓及電樞電壓的極
性，也標示電樞電流及磁場電流的方向：（每小題10分，共30分）
分激式發電機（shuntgenerator）
串激式發電機（seriesgenerator）
長並聯式複激發電機（long-shuntcompound generator）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "e87cd1cb16fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00041', 'pukao-0f640084', 'pukao-0f640084-moex-112-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '額定208 V、60 Hz、Y接之三相同步電動機，每相同步電抗為0.8 Ω，從
208 V三相電源汲取單位功率因數40A之電流，此時電動機之磁場電流
I =3.5A，忽略磁飽和效應及一切損失。（每小題15分，共30分）
f
求每相內部生成電壓E 之大小及功率角δ。
a
若機械負載保持不變，欲使此電動機運轉於功率因數0.5超前，求新的
磁場電流I 之值。
f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "e87cd1cb16fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00042', 'pukao-0f640084', 'pukao-0f640084-moex-112-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '繪出三相感應電動機典型的轉矩—速度特性曲線，標示出座標軸變數、發電
機區、電動機區、煞車區、啟動轉矩及脫出轉矩（pull-outtorque）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "e87cd1cb16fa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "443", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00043', 'pukao-0f640084', 'pukao-0f640084-moex-111-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '請計算圖 1電路之相依電源所提供的功率。（20分）
1W i 2W
1
3W
15A
3i
1
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00044', 'pukao-0f640084', 'pukao-0f640084-moex-111-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '請計算圖 2電路之電流 i 數值。（20 分）
1
4i
1 2W
- +
5V + +
- 4W - 3V
4W i
1
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00045', 'pukao-0f640084', 'pukao-0f640084-moex-111-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '試求圖3電路之i(t)，其中u(t)為步階電壓源且電感器電流初始值為25 A。
（20 分）
50u(t)V
2W
-+
i(t)
50V + 6W 3H
-
圖 3
|
44520', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00046', 'pukao-0f640084', 'pukao-0f640084-moex-111-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '試求圖 4 所示電路之時域節點電壓 v (t)與 v (t)。（20 分）
1 2
-j5W
ν ν
1 2
j10W
o 5W -j10W 10W j5W o
1 0 A 0.5 -90 A
圖 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00047', 'pukao-0f640084', 'pukao-0f640084-moex-111-6fd7282b', 'sub-pukao-0f640084-04', NULL, 'essay', '試求圖 5 所示線性變壓器之 T 等效網路，並以 AB 端輸入電壓
v =10 cos100t V，驗證所求 T等效網路之正確性。（20分）
AB
40mH
A
30mH 60mH
B
圖 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "f9fbc844ff42", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
