-- W1.6 questions batch 6959/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-8ec6300d-moex-00127', 'locality-8ec6300d', 'locality-8ec6300d-moex-111-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '具有相依電源之一階電路如下圖所示，其開關於 t=0 前開啟已有一段時
間並呈現穩定狀態。
請證明該電路在 t>0 之後是否呈現穩定？（16分）
請計算出在 t>0 之後電容器兩端之電壓 v(t)。（4 分）
34740', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00128', 'locality-8ec6300d', 'locality-8ec6300d-moex-111-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '在下列之電路中，其獨立電壓源之表示式為 v (t)=75cos5000tV，當系統
g
到達穩態時，請計算出 v (t)及 i (t)之表示式。（20分）（hint：可將電路之
o o
元件轉換至頻域）
i (t)
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00129', 'locality-8ec6300d', 'locality-8ec6300d-moex-111-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '由一運算放大器所組成之主動式通用型濾波器如下列之電路所示，請推
導並說明此電路在何種情況下可達成高通、低通和全通濾波器之功用。
（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00130', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '限定使用反矩陣法求解下列線性方程組。（10分）
x x +x =1
1 2 3
2x +x +2x =2
1 2 3
3x +2x x =3
1 2 3

-3z+5 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00131', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '已知函數f(z)= ，求圍線積分 f(z)dz，其中 c為 z = 之圓且路徑
z(z2-3z+2)  2
c
為逆時針方向。（10 分）
| |', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00132', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '假設函數 f(x)=x+π，且-π<x<π（週期為 2π），試求傅立葉（Fourier）級數
展開式並以此結果驗證下列等式成立。（15 分）
π 1 1 1
=1 +  +…
4 3 5 7', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00133', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'essay', '某工廠使用 A、B、C三台機器製造產品，假設每台機器各自製造出 25%、
35%、30%的產品，而這三台機器製造出的產品瑕疵率分別為 5%、3%、
4%。若取出一個產品經檢驗為瑕疵品，請問使用 A、B、C 三台機器製
造此一瑕疵品的機率各是多少？（15分）
34170', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00134', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'single_choice', '若多項式p(x)x22x1，p (x)2x2ax1，p (x)x2xb所拓展（span）的子空間維度為', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": "bcdac512fc85", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00135', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'single_choice', '2 3 3，則（a,b）為何？', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": "bcdac512fc85", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00136', 'locality-8ec6300d', 'locality-8ec6300d-moex-110-bd2490ec', 'sub-locality-8ec6300d-06', NULL, 'single_choice', '4 5', '["(2, )", "(1,2)", "(1, )", "(0, )"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:45+00:00", "source_pdf_sha1": "17e20645bd26", "answer_pdf_sha1": "bcdac512fc85", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2412", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
