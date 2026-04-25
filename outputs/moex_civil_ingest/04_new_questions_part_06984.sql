-- W1.6 questions batch 6984/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-acfc4025-moex-00051', 'locality-acfc4025', 'locality-acfc4025-moex-112-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '請輔以數學表示式說明影響半導體「漂移電流密度（drift current
density）」之因素為何？（5 分）
請分別說明影響半導體中載子移動之「晶格散射（latticescattering）」
及「游離雜質散射（ionizedimpurityscattering）」之物理意義及其溫度
效應。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6aa47c3ed8a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00052', 'locality-acfc4025', 'locality-acfc4025-moex-112-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '請以數學表示式定義 p-n 接面之「內建電位（V ,built-in potential）」。
bi
（5 分）
請繪出 p-n 接面其分別在逆向偏壓、順向偏壓之能帶圖（energy-band
diagram），並說明其整流（rectification）特性。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6aa47c3ed8a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00053', 'locality-acfc4025', 'locality-acfc4025-moex-112-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '雙載子接面電晶體（BJT）：
請敘述「基極寬度調變效應（basewidthmodulationeffect）」，並說明其
對於 BJT輸出電導（g ）之影響。（10分）
o
請敘述「高注入效應（highinjectioneffect）」，並說明其對於 BJT共射
極電流增益（β）之影響。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6aa47c3ed8a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00054', 'locality-acfc4025', 'locality-acfc4025-moex-112-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', 'SiO 、S N 及 Ta O 的相對介電常數（ε ）分別約為 3.9、7.6 及 25。
2 3 4 2 5 s
若分別以介電層 Ta O 及 SiO 作為電容，且 Ta O ：SiO 之厚度比
2 5 2 2 5 2
2：1、面積比為3：1，試求其電容比？（5 分）
假設以厚度為3t微米之 Ta O 作為介電層之電容值為 C；另以各層厚
2 5 1
度均分別為 t 微米之 SiO /S N /SiO 作為介電疊層之電容值為 C 。假
2 3 4 2 2
設兩者具有相同面積，試計算 C /C 之比值？（10分）
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6aa47c3ed8a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00055', 'locality-acfc4025', 'locality-acfc4025-moex-112-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '矽 p-n 接面在 T=300 K 之施體雜質與受體雜質濃度分別為 N =1015 cm-3
D
及 N =1016 cm-3，且未施加電壓；本質載子濃度 n =1.5×1010 cm-3。試
D i
求空乏區寬度及最大電場強度分別為？（20分）
[kT =0.0259 eV 、 單 位 電 量 q=1.6×10-19 C 、 介 電 常 數 為
_300 K
11.7ε (ε =8.85×10-14 F/cm)]
0 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6aa47c3ed8a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00056', 'locality-acfc4025', 'locality-acfc4025-moex-112-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '請求下列微分方程式的解：
y4y 1xsinx, y(0)0, y(0)0
d2y dy
y , y （15分）
dx2 dx
0.9 0.1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00057', 'locality-acfc4025', 'locality-acfc4025-moex-112-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '設A 。
0.2 0.8
求解A的特徵值（eigenvalue）與對應的特徵向量（eigenvector）。（4 分）
求解A2的特徵值與對應的特徵向量。（4 分）
解A limAn。（7分）
n
dx', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00058', 'locality-acfc4025', 'locality-acfc4025-moex-112-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '請利用留數（residue）計算 。（10分）
0 (1 x2)2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00059', 'locality-acfc4025', 'locality-acfc4025-moex-112-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '設X與Y的聯合機率密度函數（jointprobabilitydensityfunction）是
f (x,y)2e(xy), 0 x, 0 y
XY
=0, x0 或 y0
其中0。設Z  X Y。
求Z的期望值（mean）。（5 分）
求Z的累積分布函數（cumulativedistribution function）。（5分）
34570', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00060', 'locality-acfc4025', 'locality-acfc4025-moex-112-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'single_choice', '考慮函數(x,y,z)2x2yyz2，請決定梯度(x,y,z)在點(1,1,2)之值為何？', '["4i2j8k", "4i2j8k", "4i2j8k", "4i2j8k"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "08d7afa03d12", "answer_pdf_sha1": "52949804f5f7", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2613", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
