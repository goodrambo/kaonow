-- W1.6 questions batch 1185/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00148', 'customs-d7421644', 'customs-d7421644-moex-111-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖一為由理想運算放大器構成之儀表放大器電路，若共模輸入電壓為 v ，
icm
試推導出：
差動增益（differentialgain）A =v /(v -v )。（10分）
d o i2 i1
共模增益（common-modegain）A =v /v 。（10分）
cm o icm
共模拒斥比（common-mode rejection ratio,CMRR）。（5分）
v
i1
R R
2 4
R
3
2R
1
R
3
R v
2 o
R
4
v
i2
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "fb6a1941225c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00149', 'customs-d7421644', 'customs-d7421644-moex-111-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖二為由二極體構成之電路，請畫出此電路 v 及 v 之波形並說明此電路
D1 o
之功能。（25 分）
C D
1 2
++ -
V sinωt ++ D v C v
P -- 1 D1 2 o
-- +
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "fb6a1941225c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00150', 'customs-d7421644', 'customs-d7421644-moex-111-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '如圖三所示之電路，其中i(0)1A，i(0)0 A，請求出電流響應i(t)。
（25分）
t=0 12 i 6
+
10V
- 3H 2H
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "fb6a1941225c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00151', 'customs-d7421644', 'customs-d7421644-moex-111-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '如圖四所示之電路，請求出：（每小題 5 分，共25 分）
諧振頻率。
品質因數。
頻寬。
高頻及低頻截止頻率。
諧振時之各元件電壓。
R=1
250mV L = 2 μH
C=50pF
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "fb6a1941225c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00152', 'customs-d7421644', 'customs-d7421644-moex-111-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '一單相RLC串聯電路負載，接於60Hz、200V電源，R=16、X =20、
L
X =8 ，試求該負載：
C
阻抗大小。（2 分）
電流大小。（3 分）
功率因數。（5 分）
最大瞬時功率。（5分）
最小瞬時功率。（5分）
平均功率。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "59cc4dfbc85e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00153', 'customs-d7421644', 'customs-d7421644-moex-111-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '兩具單相變壓器接為 V-V 連接，供應一 250 kVA 三相平衡負載，若負載
電壓為 460 V，功率因數為 0.8落後，試求：
每具變壓器最小功率額定（kVA）？（5 分）
變壓器繞組電流大小（A）？（5 分）
每具變壓器供應的實功率（kW）？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "59cc4dfbc85e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00154', 'customs-d7421644', 'customs-d7421644-moex-111-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '兩部三相同步發電機 G 及 G ，每部額定輸出為45kVA、220V、功率因
1 2
數為 0.7落後。假設在額定情況下並聯運轉，若負載總功率維持不變，當
發電機 G 激磁減少，使 G 功率因數提高至0.9 落後時，試求：
2 2
此兩部發電機輸出實功率各為何？（5分）
此兩部發電機輸出虛功率各為何？（10分）
此兩部發電機輸出電流大小各為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "59cc4dfbc85e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00155', 'customs-d7421644', 'customs-d7421644-moex-111-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '一部 220 V、20 HP、4 極、60 Hz、Y接的三相感應電動機，滿載轉差率
為 5%，且為單位功率因數，試求該電動機：
同步轉速（rpm）。（5分）
額定負載時，轉子轉速（rpm）。（5分）
額定負載時，轉子頻率（Hz）。（5分）
額定負載時，轉子轉矩（Nt-m）。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "59cc4dfbc85e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00156', 'customs-d7421644', 'customs-d7421644-moex-110-f9fb6a06', 'sub-customs-d7421644-06', NULL, 'essay', '英譯中：請將下列英文句子譯成中文。（15分）
Throughout human history, there have been a number of pandemics
ofdiseasessuchassmallpoxandtuberculosis.Themostfatalpandemicin
recordedhistorywastheBlackDeath（alsoknownasThePlague）,which
killed an estimated 75–200 million people in the 14th century. Current
pandemics includeCOVID-19 and AIDS.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00157', 'customs-d7421644', 'customs-d7421644-moex-110-f9fb6a06', 'sub-customs-d7421644-06', NULL, 'essay', '中譯英：請將下列中文句子譯成英文。（15分）
長榮海運貨櫃船在蘇伊士運河擱淺，之後運河堵住了 6天，其他船隻
無法繞行長賜輪。此運河是世界上最繁忙的貿易路線之一，其阻塞對
歐洲與亞洲及中東之間的貿易產生了重大影響。（長賜輪：the Ever
Given）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b3639bb583db", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
