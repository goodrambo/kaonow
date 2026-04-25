-- W1.6 questions batch 64/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-0f640084-moex-00071', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-bdd26e86', 'sub-aboriginal-0f640084-06', NULL, 'essay', '圖三為包含兩組理想變壓器 T1 與 T2 的單相電力系統，其中 T1 為升壓變
壓器、變壓比1：10，T2為降壓變壓器、變壓比10：1。電源電壓1,000V，
負載阻抗Z 8 j5。
L
試計算負載側電流、負載吸收的複數功率。（15 分）
試計算負載側電壓與電壓調整率（V.R.%）。（10 分）
I I I
S T1 line T2 L
+ jj110000 Ω +
V  Z
S V L
1,0000oV L 8 j5
- -
1:10 10:1
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "47aefae1de76", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00072', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c8fe92', 'sub-aboriginal-0f640084-07', NULL, 'essay', '試求出圖一電路 a-b 兩端之戴維寧（Thevenin）等效電路：E 及 R 。
Th Th
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "8c42a141d28c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00073', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c8fe92', 'sub-aboriginal-0f640084-07', NULL, 'essay', '圖二電路中，假設三相電路的電壓為 V =230∠0°V，V =230∠-120°V，
ab bc
V =230∠120°V，負載阻抗 Z=10+j8 歐姆，試求：相電流（phasecurrent）
ca
I 及線電流（linecurrent）I 分別為多少安培？（25分）
AC bB
I
AC
0°−
0°
+ −
B
− +
0° I
bB
y y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "8c42a141d28c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00074', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c8fe92', 'sub-aboriginal-0f640084-07', NULL, 'essay', '試求算圖三電路雙埠網路之 參數 11 12 ？（ 分）
y  = 25
y y
21 22
+ +
− −', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "8c42a141d28c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00075', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c8fe92', 'sub-aboriginal-0f640084-07', NULL, 'essay', '試求算圖四電路之 i(t)，t>0。（25 分）
+
−', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "8c42a141d28c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-10ced7e2-moex-00001', 'aboriginal-10ced7e2', 'aboriginal-10ced7e2-moex-114-c227590c', 'sub-aboriginal-10ced7e2-01', NULL, 'essay', '面臨科技不斷的創新與進步，公務人員未來需要強化數位職能的內涵包
括那些？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:03+00:00", "source_pdf_sha1": "d4b4a1f12c20", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "504", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "人事行政"}'::jsonb, NULL),
  ('aboriginal-10ced7e2-moex-00002', 'aboriginal-10ced7e2', 'aboriginal-10ced7e2-moex-114-c227590c', 'sub-aboriginal-10ced7e2-01', NULL, 'essay', '人工智慧可以用來協助招募與遴選員工，假如公務機關要採用，請評估
導入公務機關可能遇到的風險。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:03+00:00", "source_pdf_sha1": "d4b4a1f12c20", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "504", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "人事行政"}'::jsonb, NULL),
  ('aboriginal-10ced7e2-moex-00003', 'aboriginal-10ced7e2', 'aboriginal-10ced7e2-moex-114-c227590c', 'sub-aboriginal-10ced7e2-01', NULL, 'essay', '公務機關內的聘僱人員適用勞動基準法，但績效表現未達標準時有所謂
最後手段原則，該如何進行？試舉例說明之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:03+00:00", "source_pdf_sha1": "d4b4a1f12c20", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "504", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "人事行政"}'::jsonb, NULL),
  ('aboriginal-10ced7e2-moex-00004', 'aboriginal-10ced7e2', 'aboriginal-10ced7e2-moex-114-c227590c', 'sub-aboriginal-10ced7e2-01', NULL, 'essay', '近來由於少子化，養寵物成為普遍現象，甚至在企業可以允許寵物進入
職場。除法令規定如導盲犬等，試評述其他一般寵物進入公務機關的可
行性。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:03+00:00", "source_pdf_sha1": "d4b4a1f12c20", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "504", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "人事行政"}'::jsonb, NULL),
  ('aboriginal-10ced7e2-moex-00005', 'aboriginal-10ced7e2', 'aboriginal-10ced7e2-moex-114-147ce630', 'sub-aboriginal-10ced7e2-02', NULL, 'essay', '「功績制」與「永業制」為我國文官制度的兩大支柱，請問何謂功績制？
何謂永業制？又於進行政府改革與行政創新時，要如何避免功績制與永
業制的公務人員抗拒變革？試申論之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:03+00:00", "source_pdf_sha1": "64cb88079dae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "504", "s": "0405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "現行考銓制度", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "人事行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
