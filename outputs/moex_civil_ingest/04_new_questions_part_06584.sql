-- W1.6 questions batch 6584/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-4ece01bd-moex-00011', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-a5727cc1', 'sub-locality-4ece01bd-03', NULL, 'essay', '一般施工圖說為工程合約之內容，土木工程必備之依據文件，試詳述施
工圖說制定應注意事項及其功用。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "71a3c3375bed", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00012', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-a5727cc1', 'sub-locality-4ece01bd-03', NULL, 'essay', '請詳述混凝土配比設計採用高水泥量有何缺點？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "71a3c3375bed", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00013', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '如圖一所示桁架橋，考慮一個作用在下弦桿之向下移動載重 P，該移動
載重由 A 點沿水平向緩緩移動到 E 點；圖示為移動到 B 點之狀態。若
所有桿件之容許張力強度為 660 kN、容許壓力強度為 450 kN，考慮由
A點移動到 E點的整個過程，若所有桿件受力都不能超過容許強度，試
求該移動載重 P之最大容許值。（25 分）
F G H
8m
A
E
6m B 6m C 6m D 6m
P
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "7cb11c71f382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00014', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '同第一題之桁架橋及移動載重，但假設桿件強度都足夠，桁架維持線彈
性行為。此外，假設每個桿件有相同 EA，楊氏模數 E = 200 GPa，桿件
斷面積 A = 0.001 m2。若移動載重 P = 300 kN，試以單位力法求整個緩
緩移動過程中，橋梁中點 C 之最大向下位移。（以其他方法作答者一律
不予以計分）（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "7cb11c71f382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00015', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '如圖二所示之梁結構，假設梁全長 EI= 常數，其中 E 為楊氏模數，
I 為梁斷面二次矩。取 A 點之彎矩 M 為贅餘力，首先利用力法（變
A
形諧合條件）試證明 M =300kN-m（方向為逆時針）；其次試畫出剪
A
力圖與彎矩圖。（25分）
80kN
20kN 20kN
A B C D E
5m 5m 5m 5m
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "7cb11c71f382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00016', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '如圖三所示之門型構架，假設各構件之軸向變形很小可以忽略，並且都有
相同之長度 L 及楊氏模數 E。考慮兩個結構模型，分別代表原結構及加
勁結構（柱子變大），原結構相當於 a = 1（所有桿件有相同之斷面二次
矩 I）；加勁結構（柱子變大）則a>1。試問 a=？時，加勁結構之C點
水平側移為原結構之一半。試以傾角變位法求解。（以其他方法作答者一
律不予計分）（25分）
B C
I, L
P
aI, L aI, L
A D
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "7cb11c71f382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00017', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '一單向版配置 D10 鋼筋（d =0.96cm，A =0.71cm2，f =4200kgf/cm2），
b b y
混凝土強度f ''=280kgf/cm2，版厚 15cm，有效深度12cm，此版在受力
c
方向某斷面所承受之設計彎矩 M 為 0.8tf-m，試求此版在該斷面處之最
u
少鋼筋量。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "ec8a481dd7a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00018', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '有一梁斷面寬 b=35cm，梁深 h=55cm，有效深度d=48cm，配置 D13
箍筋，間距 S=15cm，此梁承受靜載重剪力 V =8tf，試問其所能承受
D
之最大活載重剪力 V 為何？已知混凝土抗壓強度 f '' = 280 kgf/cm2，箍
L c
筋降伏應力f =4200kgf/cm2，D13：d =1.27cm，A =1.27cm2。（25分）
y b b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "ec8a481dd7a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00019', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '一單筋矩形梁斷面寬度 b = 50 cm，有效深度 d = 63 cm，配置 4-D32
拉力筋，箍筋採用D13。試求此梁的標稱彎矩強度M 。已知混凝土強度
n
f ''=280kgf/cm2，鋼筋降伏強度 f =4200kgf/cm2，D32：d =3.22cm，
c y b
A = 8.14 cm2。（25 分）
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "ec8a481dd7a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00020', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '一懸臂鋼筋混凝土梁，跨度 3m，梁寬 b=40cm，有效深度 d=53cm。
承受均布靜載重w = 1.5 tf/m（含梁自重），均布活載重 w = 2.5 tf/m。
D L
試求不需配置剪力鋼筋範圍，以及可配置最少剪力鋼筋量的最大範圍。
材料使用混凝土強度 280 kgf/cm2，剪力筋降伏強度 f = 2800 kgf/cm2，
y
剪力筋使用 D13：d =1.27 cm，A =1.27 cm2。（25 分）
b b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "ec8a481dd7a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
