-- W1.6 questions batch 6991/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-acfc4025-moex-00121', 'locality-acfc4025', 'locality-acfc4025-moex-112-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '下圖 Y 接平衡負載接上一個平衡三相正相序電源後，量測 A 對 B 的電
壓 差 得 V (t)10cos(250t) ， 量 測 A 線 流 過 的 電 流 得
AB
I (t)cos(250t/6)，請估算 L及 R。（10分）並計算負載消耗的
AN
平均功率。（10分）
34540', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00122', 'locality-acfc4025', 'locality-acfc4025-moex-112-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '分析下圖放大器電路：此電路屬於何種濾波器（低通、高通、帶通、帶
止）？（5 分）若輸入 10伏特直流，計算穩態時的輸出電壓。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00123', 'locality-acfc4025', 'locality-acfc4025-moex-112-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '分析下圖耦合電感電路：計算圖中交流電源所看到的等效阻抗Z。（10分）
並選取電容值 C使負載R 可以獲得最大平均功率。（10 分）
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "345", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00124', 'locality-acfc4025', 'locality-acfc4025-moex-111-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '何謂接觸電阻（contactresistance）？何謂片電阻（sheetresistance）？
何謂特徵電阻（specificcontactresistance）？並寫出上述三種電阻的單位。
（20 分）
請說明如何量測這三種電阻？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "c41406dd8877", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00125', 'locality-acfc4025', 'locality-acfc4025-moex-111-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '對一長度為 L且此長度兩端施加偏壓 V的 n 型半導體，假設電子的擴散
長度為 L ，電子的擴散係數為 D ，電子的遷移率（mobility）為 μ ，電
n n n
子濃度為 n，電子電荷為 q。假設沿長度 L 方向為 x 軸方向，且電子速
度達到飽和值 v。請寫出此半導體的漂移（drift）電流密度與擴散
（diffusion）電流密度方程式？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "c41406dd8877", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00126', 'locality-acfc4025', 'locality-acfc4025-moex-111-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '對一 npn 雙極性接面電晶體（Bipolar Junction Transistor, BJT），若基
極濃度由射極-基極接面（emitter-base junction）朝向基極-集極接面
（base-collectorjunction）逐漸減少的結構，請說明這樣可以提供什麼優點？
（10 分）
對一 npn雙極性接面電晶體，通常電流增益（）是一常數，但是它在
低集極電流（I ）與高集極電流區域都會呈現減少的趨勢。請說明為
C
什麼會減少的原因？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "c41406dd8877", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00127', 'locality-acfc4025', 'locality-acfc4025-moex-111-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '考慮一多晶矽閘極金氧半電容（polysilicon-gate MOS capacitor），在高摻
雜的閘極，其E -E =0.2eV；在一般摻雜的矽基板，其E -E =0.2eV。
F C C F
假設此結構理想化，
畫出此多晶矽閘極金氧半電容在平帶（flat-band）情況下的能帶圖。（10分）
當閘極電壓等於零（V = 0）時，此多晶矽閘極金氧半電容是處於下
G
列那一種情況？聚積（accumulation）？空乏（depletion）？反轉
（inversion）？（10 分）
請說明閘氧化層和場氧化層的差異。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "c41406dd8877", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00128', 'locality-acfc4025', 'locality-acfc4025-moex-111-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '考慮一個雙變數函數如下所示：f x,y = x +2y e 。令P 代表x  y
0
平面上的點(1,1)（即P =(1,1)）。 (
0
( )  ⋅
請計算f x,y 在P 的梯度（gradient）為何？（5分）
0
請計算f x,y 在P 的上面沿著(1,0)的方向之方向導數（directional
0
( )
derivative）為何？（5分）
( )', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00129', 'locality-acfc4025', 'locality-acfc4025-moex-111-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '有一個微分方程式如下所示（僅考慮x>0）：
dy 3
+ ．y=x , for x>0
dx x
此外，初始條件如下所示：y 1 =3。
此為一階線性微分方程（first-orderlineardifferentialequation），可以使
( )
用積分因子（integratingfactor）求解。試求微分方程之積分因子。（5分）
請求解 y(x)。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00130', 'locality-acfc4025', 'locality-acfc4025-moex-111-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '有一個3×3的矩陣如下所示：
0 0 2
A= 1 2 1
1 0 −3
已知此矩陣的特徵值（eigen-value）為 2、2（重根）、1。
請寫出A矩陣的所有特徵向量（eigen-vector）的一般形式。（5分）
令B=A8。請寫出 矩陣的所有特徵向量的一般形式。（5 分）
B
34770', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
