-- W1.6 questions batch 5270/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00043', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '請說明雷諾數與福祿數為何？其物理意義又為何？（20分）
37760', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "13312f903001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00044', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '水由一個巨大的水櫃流出後流到停留在磅秤上的A車，如下圖所示管徑
d=10 cm、H 為5 m、H為10 m、h為0.3 m。瞬間車及車內的質量為500 Kg，
T
此時秤的重量為何？車子的加速度為何？（20分）
H d
T
H
h
A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "13312f903001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00045', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '一個斷面為正方形的管子用於運送燃油，斷面的長寬均為15 cm，燃油的
運動黏滯係數（）為610-4 m2/s，燃油的比重為0.85。當管子的流量為
0.02 m3/s時，每100 m長的管子之能量損失為多少？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "13312f903001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00046', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '有一400m3之儲存槽儲存液態天然氣。天然氣之主要成分為甲烷。儲存
槽內之甲烷壓力為100 kPa，液態及氣態之體積占比分別為98%及2%。
請問儲存槽內甲烷之質量為何？甲烷之乾度為何？（10分）
在燃氣發電中，需先將液態天然氣汽化，釋放之能量稱為冷能。請問
之天然氣汽化至100 kPa之飽和蒸汽釋放之冷能。（10分）
給予數據：甲烷100 kPa，v = 0.002366 m3/kg，v = 0.55665 m3/kg，
f g
h = -286.5 kJ/kg，h =223.83 kJ/kg。
f g', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3a1a6698e6b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00047', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '100 kPa，150℃的水在可逆過程下被加入熱量75 kJ/kg，加熱過程可為
等溫、等容或等壓。請問在何種過程熵改變量最大？試以T-S圖解釋之。
（10分）
液態物質在可逆絕熱過程時，溫度之改變為何？（5分）
理想氣體在可逆絕熱過程時，溫度與壓力關係為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3a1a6698e6b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00048', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '空氣進入一絕熱穩流渦輪機之壓力為1200kPa，溫度為1500K，出口
壓力為200kPa。渦輪機之等熵效率為78%。在等壓比熱為常數且值為
1.004 kJ/kg∙K之假設下，求出渦輪機出口溫度及熱力學第二效率。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3a1a6698e6b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00049', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '將大氣等壓或等容冷卻，何者之露點溫度（dew point temperature）較
低？請以T-S圖解釋。（5分）
將大氣溫度由35℃降至20℃，絕對濕度由0.0175降至0.01，相對濕度由50%
提高至70%，請問需加濕或除濕？請將此過程顯示於濕氣圖上。（5分）
大氣自20℃，100 kPa，相對濕度60%壓縮至600 kPa，並冷卻至20℃，
將水分移除。若乾空氣流量為0.5 kg/s，請問水移除流量及冷卻後之相
對濕度。（10分）
37720', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3a1a6698e6b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00050', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一鋼瓶內有2kmol的碳（carbon,C）及2kmol的氧（oxygen,O ），溫度為
2
25℃，壓力為200 kPa。在燃燒後產生1 kmol二氧化碳（carbon dioxide,
CO ），1kmol一氧化碳（carbonmonoxide,CO）以及過剩的氧。燃燒後溫
2
度為1000K。請問鋼瓶最後壓力以及此燃燒過程之熱傳量為何？（20分）
給予數據：
CO CO O C
2 2
形成焓
（enthalpyof
-393522 -110527 0 0
formation）
（kJ/kmol）
等壓比熱
0.842 1.041 0.922
（kJ/kg/K）
分子量
44 28 32 12
（kg/kmol）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3a1a6698e6b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00051', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '圖一為一控制系統方塊圖，其中r(t)為輸入，y(t)為輸出。
（每小題10分，共30分）
圖一
假設K=1且輸入為ㄧ單位步階（unitstep）函數，求解輸出y(t)。
假設K = 1，求解此系統之增益邊界（gain margin），以分貝（dB）為
單位。
如欲使此系統之相位邊界（phasemargin）為135 ，比例控制器K值該如
何設計？
°', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "87ed4707415b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00052', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '圖二為一典型的倒單擺系統，包含台車、支桿、與一個位於支桿頂端的重
物。F是施加於台車的力，倒單擺支桿與垂直地面的夾角為θ，而x表示台
車的位移。
圖二
經過簡化後，假設此倒單擺系統的動態方程式可表示成：
0.1̈ −0.01̈ = 
求解此系統之轉移函數（transfer function）， ，其中 代表拉
0.2̈ −10 = ̈
普拉斯轉換（Laplacetransform）。（10分）
ℒ{}/ℒ{} ℒ
繪出此系統（輸入為F，輸出為）之波德圖（Bodeplot）以表示其之頻
率響應。波德圖應包含以分貝（dB）為單位之增益（gain）圖與相位
（phase）圖兩個部分。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "87ed4707415b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
