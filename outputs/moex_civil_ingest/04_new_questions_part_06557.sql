-- W1.6 questions batch 6557/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-3df1c47f-moex-00089', 'locality-3df1c47f', 'locality-3df1c47f-moex-111-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '研究人員進行一個水稻肥料的複因子試驗，考慮氮肥(A)、磷肥(B)及鉀
肥(C) 3 個因子的施用量，每一個因子選用低( )及高( )兩個等級，田間
設計為 CRD，重複 2 次的產量試驗結果如下：
− +
重複
處理組合
I II
C 100 120
B
C 160 180
−
A
−
C 240 260
+
B
−
C 300 200
−
+
C 190 210
+
B
C 220 260
−
A
−
C 280 300
+
B
+
C 300 290
−
+
請估計各主效應和各交感效應及+計算各效應的標準誤差。（10分）
請寫出變方分析表中的各變因、自由度、平方和及均方值。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "11905c6c8cf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "328", "s": "1716", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00090', 'locality-3df1c47f', 'locality-3df1c47f-moex-111-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '為比較甜瓜在不同收穫時間其葉片含水量之差異，因此將收穫時間當
成參試處理，分別在 4 個不同的時間點（T1, T2, T3, T4）取樣，如將
每一片葉片當成一個試驗單位，每一時間點分別取樣來自 4 株不同植
株（P1, P2, P3, P4）的 4 個不同大小的葉片（S1, S2, S3, S4），不同大
小的葉片含水量不同，此試驗共取樣16片葉片，分別測量其葉片含水量。
請詳述符合此「隨機」試驗之進行步驟。（10分）
寫出分析此試驗資料之線性統計模式，並解釋模式中各成分之意義及
說明其限制條件。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "11905c6c8cf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "328", "s": "1716", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00091', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '智慧農業常使用無人機為工具，請舉例說明如何應用，並評估其效益。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "d2c70f5f87cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00092', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '茶樹種植常面臨氣候變遷之影響，近年來常發生因氣溫過低引起樹體傷
害，請說明寒害症狀及有效的防、減災策略。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "d2c70f5f87cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00093', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '請說明甘藷採收後處理及貯藏，及如何周年提供超商烤甘藷之原料？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "d2c70f5f87cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00094', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '何謂能源作物？分幾類？每類各舉兩樣作物，並說明能源作物燃料之優
點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "d2c70f5f87cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00095', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '何謂 apicaldominance？（10分）請問該植物生理現象與 auxin、cytokinin
及 strigolactone之相關性。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "fc92805c682d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1715", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00096', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '分別說明C3型、C4型與CAM型植物下列的差異：（每小題15分，共30分）
在光合作用路徑上
在植物構造方面', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "fc92805c682d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1715", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00097', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '試論述香莢蘭產業在臺灣發展之瓶頸及未來展望。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "fc92805c682d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1715", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00098', 'locality-3df1c47f', 'locality-3df1c47f-moex-110-03bf821e', 'sub-locality-3df1c47f-06', NULL, 'essay', '說明土壤水分依作物可利用性之分類、影響植物需水量因子及那些植物
構造和栽培管理可增加作物耐淹水性？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "3d3422966972", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "324", "s": "1711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生產概論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
