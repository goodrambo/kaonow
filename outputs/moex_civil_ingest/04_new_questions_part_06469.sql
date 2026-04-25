-- W1.6 questions batch 6469/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00209', 'locality-0f640084', 'locality-0f640084-moex-110-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '請說明圖四的電路屬於串聯-串聯（series-series）、串聯-並聯（series-
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
34160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00210', 'locality-0f640084', 'locality-0f640084-moex-110-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖五(a)電路由開關電晶體與反向器（inverter）所組成，請說明這是那種
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
圖五(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "8ed94798a6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00211', 'locality-0f640084', 'locality-0f640084-moex-110-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '磁路結構示意如圖所示，鐵心的截面積為 9cm2、平均長度為 50cm、
相對導磁係數為200，線圈編號 1的匝數 N 為100匝，線圈編號 2的匝
1
數 N 為 200 匝，忽略線圈的漏磁及鐵心磁飽和。計算線圈編號 1及編號
2
2 的自感及互感。若線圈編號 1的電流i  2sin(2000t)A，計算線圈編號 2
1
的開路端電壓v 時間函數。（註：真空的導磁係數為 4π×10-7 H/m）
2
（20 分）
鐵心
i
1
～ v v
1 2
N N
1 2
線圈編號1 線圈編號2
圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "b0d81e8e9afd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00212', 'locality-0f640084', 'locality-0f640084-moex-110-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台三相、Y接、6極、60Hz、線電壓為440V的感應電動機，其每相
等效至定子側的電路及參數如圖，圖中 表示滑差率， ˆ、ˆ分別表示
s V I
1 1
電壓及電流相量。（每小題 10分，共 20分）
在額定電壓及頻率其最大電磁轉矩（崩潰轉矩）發生，對應的轉速為
1120轉/分，計算圖中的電阻R 。
2
同條件，計算最大電磁轉矩發生的電動機輸入相電流、最大電磁轉
矩、輸入總實功率。
0.24 j1.2 j2
Iˆ
1
R
ˆ j24 2
V
1 s
圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "b0d81e8e9afd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00213', 'locality-0f640084', 'locality-0f640084-moex-110-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '永磁式有刷直流電動機驅動永磁式有刷直流發電機的示意如圖所示，
其轉軸直接連結。電動機的電樞電阻為 1.0 Ω，在轉速為 1200 轉/分時，
其反電動勢為 120V；發電機的電樞電阻為2.0 Ω，在轉速為1200轉/分
時，其反電動勢為 240V。若發電機供給直流負載其端電壓為 400V，直
流負載的消耗總功率為 4 kW，忽略電動機及發電機的鐵心損失及旋轉
損失；計算穩態時永磁式有刷電動機的轉速、電磁轉矩、輸入端電壓 V 、
aM
電樞電流 I 。（20 分）
aM
I I
永磁式有刷 永磁式有刷 直流
V aM aG V
aM 直流電動機 直流發電機 aG 負載
圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "b0d81e8e9afd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00214', 'locality-0f640084', 'locality-0f640084-moex-110-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台 150kVA、4200V：420V、Y-Y的三相變壓器，在三相平衡電源作
開路及短路實驗。高壓側開路，低壓側量測其三相總功率為 540 W、線
電壓為 420V，線電流為 5.4A。低電壓側短路，高壓側量測其三相總功
率為 1860W，線電壓 85V、線電流 20.6A。若低壓側接三相負載，其負
載的電壓及電流為三相變壓器的額定、功率因數為 0.85 落後。計算此三
相變壓器的效率及電壓調整率。（註：計算電壓調整率可忽略鐵心損失）
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "b0d81e8e9afd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00215', 'locality-0f640084', 'locality-0f640084-moex-110-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '某台三相、Y接、60Hz、8極、線電壓為440V的圓筒型同步電動機，每
相的同步電抗為j2.5 Ω，忽略電樞電阻、鐵心損失及旋轉損失。在額定電
壓及頻率操作，且反電動勢與額定電壓相同時，其輸出轉矩為400N-m；
計算此電動機的轉速、輸入相電流、功率角及功率因數角。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "b0d81e8e9afd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00216', 'locality-0f640084', 'locality-0f640084-moex-110-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '試計算下圖之等效電阻 R ，（10分）並計算電流 I。（15分）
ab', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d0cfc469c7e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00217', 'locality-0f640084', 'locality-0f640084-moex-110-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '下圖所示電路開關已在 OFF位置好長一段時間，在 t=0 的瞬間，開關移
動到 ON的位置。求出 t≧0時的v (t)。（25 分）
0
i
Δ
34140', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d0cfc469c7e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00218', 'locality-0f640084', 'locality-0f640084-moex-110-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '某電路充電期間之端點電壓與電流如下圖所示（其變化趨勢皆為線性）：
試求傳送至電路的總電荷。（10 分）
試求傳送至電路的總能量。（15 分）
15
9
15
15', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:20+00:00", "source_pdf_sha1": "d0cfc469c7e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "340", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
