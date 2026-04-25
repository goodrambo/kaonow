-- W1.6 questions batch 8299/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-4ece01bd-moex-00051', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '試寫出平面三參數正交轉換、四參數相似轉換，以及六參數仿射轉換的
公式，並試各舉一例說明應用這些轉換的時機。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "541ea2870ac6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00052', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '何謂雙距偏心測量？以此法求待定點坐標時，需要那些觀測量？並請說
明應用此法如何計算待定點坐標？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "541ea2870ac6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00053', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-4c00feca', 'sub-pukao-4ece01bd-03', NULL, 'essay', '如圖所示，量測兩個長方形 E和 F的四個邊長，長度分別為 a、b、c和
d，其量測標準差分別為 3σ、2σ、σ 和 σ。假設所有觀測量均獨立不相
關，試計算這兩個長方形 E和 F面積的標準差及其相關係數。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "541ea2870ac6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1712", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00054', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-a777794d', 'sub-pukao-4ece01bd-05', NULL, 'essay', '如下圖桁架，假設桁架所有節點皆為樞接，桿件自重不計，A點為鉸支
承，D點為滾接支承，請詳細計算：
求出 A點與 D點垂直方向反力，並指出是向上或是向下。（10分）
求出桁架構件 FE,FC,BC 的內力，並指出構件是受拉力或是受壓力。
（15 分）
4kN
2kN 2kN
3m 3m
G F E
1.5m
B C
1.5m
A D
1.5m 3m 1.5m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "afc6a4d9ef14", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00055', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-a777794d', 'sub-pukao-4ece01bd-05', NULL, 'essay', '如下圖剛架，A 點為滾接支承，C 點為鉸支承，B 點為固定接頭，桿件
自重不計。請詳細計算：
求出 A點與 C點垂直方向反力，並指出是向上或是向下。（10分）
繪製構件 AB與 BC的剪力圖與彎矩圖。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "afc6a4d9ef14", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00056', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-a777794d', 'sub-pukao-4ece01bd-05', NULL, 'essay', '一單筋矩形梁寬b25cm，有效深度d 50cm，拉力鋼筋量A 14cm2，
s
混凝土抗壓強度 f280kgf/cm2，鋼筋降伏強度 f 4200kgf/cm2，求
c y
設計彎矩強度M 。需詳列解答過程。（25分）
n', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "afc6a4d9ef14", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00057', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-111-a777794d', 'sub-pukao-4ece01bd-05', NULL, 'essay', '混凝土結構設計規範對於剪力鋼筋提供之剪力計算強度 V 訂有上限值，
s
請寫出此值並詳述做此規定之目的；設計時，若 V 值超過上限值，應如
s
何處置？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "afc6a4d9ef14", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "432", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00058', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-92e63a65', 'sub-pukao-4ece01bd-01', NULL, 'essay', '國內離岸風機諸多採用套筒或稱管架（jacket）式基礎，請試述套筒式
基礎從製造場地至海上施工完成之步驟。（10分）
請詳述鋼筋排紮及組立前、中應注意及考慮的事項及細節。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "72932d0af031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00059', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-92e63a65', 'sub-pukao-4ece01bd-01', NULL, 'essay', '地下連續壁施工，請問單元劃分的考慮因素有那些？（15分）在開
挖時需對鄰近建築物之影響加以評估，在開挖擋土過程中可能導致之影
響及原因有那些？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "72932d0af031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL),
  ('pukao-4ece01bd-moex-00060', 'pukao-4ece01bd', 'pukao-4ece01bd-moex-110-92e63a65', 'sub-pukao-4ece01bd-01', NULL, 'essay', '請詳述針對山岳隧道進洞前之洞口開挖準備工作及施工規定。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:47+00:00", "source_pdf_sha1": "72932d0af031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "435", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
