-- W1.6 questions batch 5267/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00013', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '一質量為2公斤之擺錘以繩索連接吊掛構成一平面運動之單擺如圖所示，
單擺於水平靜止狀態釋放，當擺錘到達底部時，繩索接觸並纏繞固定於B
處之光滑銷，且擺錘繼續沿著較小半徑的圓弧線運動，不計繩索質量，設
重力加速度 g=10 m/s2，試求解下列問題：（每小題 10 分，共20分）
當 θ=60°時，擺錘的速度值為多少 m/s？（10分）
當 θ=60°時，繩索張力為多少N？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "0a3082a9a676", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00014', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '如圖所示，一直徑為 16 mm 之實心鋼製圓桿彎折成直角彎桿 ABC 置於
xz平面上，其 A端固定，C端面施加外力 F =80π N，材料的彈性模數
y
E=200 GPa，剪彈性模數G=80 GPa，不計桿重量，亦無應力集中，試求：
彎桿 A端之最大剪應力 為多少 MPa？（8分）
max
彎桿 A端之最大拉應力 為多少 MPa？（10分）
max

彎桿 C 端向下位移量 為多少mm？（忽略剪力變形）（12 分）
y
y
x
z L=200mm
L=200mm
80N', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "0a3082a9a676", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00015', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一個容積為 0.6 m³的容器中，裝有4.0 kg 處於飽和狀態的液態水和水蒸
氣混合物，其壓力為 800 kPa。請計算：
該水/水蒸氣混和物之乾度。（10 分）
液態水之質量與體積。（10分）
若液態水/水蒸氣混和物乾度為 0.7，請問在 800 kPa 下容器需設計為
多大體積？（5分）
（已知在壓力為800 kPa時，v 0.001114 m³/kg，v 0.2403 m³/kg）
f g', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "e2b5f23bebcb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00016', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一個內部體積為 0.7 m³的儲氣槽中，空氣的初始壓力為 1300 kPa，溫度
為 27℃。儲氣槽上的閥門被打開，使空氣排出，直到壓力下降至 650 kPa，
隨後立即關閉閥門。假設儲氣槽釋放氣體過程為等熵過程，試問在此過
程中排出的空氣質量為多少？（25 分）
（空氣的氣體常數為 0.287 kPa·m³/kg·K；比熱比k=C /C =1.4）
p v', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "e2b5f23bebcb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00017', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一個標準空氣循環，在封閉系統中進行，空氣的質量為 0.005 kg，且具
有定值比熱（空氣的比熱為 C =1.005 kJ/kg·K；C =0.718 kJ/kg·K；
P V
k=C /C =1.4）。循環包含以下三個過程：
p v
˙ 1-2 等熵壓縮：從 100 kPa、27℃壓縮至 500 kPa
˙ 2-3 等壓加熱：加熱至原始體積
˙ 3-1 等容放熱：回到初始狀態
請回答以下問題：
計算此循環中的最高溫度。（15 分）
計算此循環的熱效率。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "e2b5f23bebcb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00018', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-114-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '某理想的朗肯（Rankine）循環系統中，水經由泵流至鍋爐中，並在鍋爐
中被加熱至 10 MPa、450℃的水蒸氣後進入渦輪機，且在渦輪機中等熵
膨脹至 10 kPa。假設冷凝器出口為飽和液體。請根據上述條件，回答下
列問題。
若冷凝器入口狀態為液氣混和，乾度0.8，請估算循環熱效率。（15 分）
計算每公斤水的淨輸出功(kJ/kg)。（10分）
飽和水 壓力表
壓 飽和 比容(ν)  內能(u) 焓(h) 熵(S)
力 溫度 (m3/kg) (kJ/kg) (kJ/kg) (kJ/(kg·K))
kPa ℃ ν ν u u u h h h s s s
f f f
10 45.81 0.001010 14.67 191.82 2246.1 2437.9 191.9 2392.8 2584.7 0.6493 7.5009 8.1502
f g f g g f g g f g g
20 60.06 0.001017 7.649 251.38 2205.4 2456.7 251.4 2358.3 2609.7 0.8320 7.0766 7.9085
30 69.10 0.001022 5.229 289.20 2179.2 2468.4 289.2 2336.1 2625.3 0.9439 6.8247 7.7686
過熱水蒸氣 壓力表(10.0MPa)
比容(ν)  內能(u) 焓(h) 熵(S)
溫度°C
（m3/kg） (kJ/kg) (kJ/kg) (kJ/(kg·K))
400 0.02641 2832.4 3096.5 6.2120
450 0.02975 2943.4 3240.9 6.4190
500 0.03279 3045.8 3373.7 6.5966', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "e2b5f23bebcb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "279", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00019', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '常見高分子工業塑膠材料：壓克力（PMMA）、聚乙烯（PE）、聚丙烯（PP）、
環氧樹酯（Epoxy），請依塑膠材料分類之熱塑性（Thermoplastic）塑膠
和熱固性（Thermoset）塑膠列出各別之分類，並說明為何壓克力（PMMA）
可以用來製作光學鏡片及環氧樹酯（Epoxy）適用於半導體之 IC封裝？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "9fef8412208e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00020', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '試說明金屬壓鑄法（Die casting）與高分子塑膠射出成形（Injection
molding）各別原理或作法，並比較兩種製程之機台運作的差異，如相關
機台作動和機台構造及模具溫度高低等。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "9fef8412208e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00021', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '試說明雷射銲接（Laserwelding）原理或作法，並說明其應用於鈑金件銲
接之方式與限制。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "9fef8412208e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00022', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '試說明金屬硬幣（Coin）所適用金屬材料（至少兩種）及雙面圖案之相
關製程原理或作法。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "9fef8412208e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
