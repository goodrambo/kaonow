-- W1.6 questions batch 6759/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-77f8735d-moex-00004', 'locality-77f8735d', 'locality-77f8735d-moex-114-010ffe9d', 'sub-locality-77f8735d-01', NULL, 'essay', '下表為某縣市某餐廳疑似食物中毒事件風險因子調查之結果。請說明本
調查應用之研究設計可能為何？（5 分）並闡述表格中分析結果之意義。
（15分）
中毒 未中毒
單變項分析 多變項分析
（n=337） （n=205）
風險因子 有吃 沒吃 有吃 沒吃 OR(95%CI) OR(95%CI)
刺身 279 56 126 78 3.1(2.14.6) 2.1(1.33.3)
壽司 312 23 141 63 6.1(3.610.2) 5.1(3.210.1)
開胃菜 208 120 109 93 1.5(1.02.1) 0.9(0.61.4)
附錄
卡方分布表
33860
51150
t分布表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "53278ce6b8f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00005', 'locality-77f8735d', 'locality-77f8735d-moex-114-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '請從憲法第 23 條之規定，敘述得以公共衛生法限制人民基本權利所必
須具備之構成要件與具體內容（指其所涉之法律原則）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "ca3d7f8bc224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00006', 'locality-77f8735d', 'locality-77f8735d-moex-114-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '2023年新修正之菸害防制法終將新興菸品，包括電子煙（類菸品）與加
熱菸（指定菸品）納入管制。試問：
依菸害防制法第 15 條規定，不得製造、輸入、販賣、供應、展示或廣
告之產品，除「與菸品或菸品容器形狀近似之糖果、點心、玩具或其
他物品」，還包括那些產品？且除「不得製造、輸入、販賣、供應、展
示或廣告」之限制外，還有那些限制？（8 分）
依菸害防制法第 7 條規定，加熱菸經公告為指定菸品後，業者應於製
造或輸入前申請健康風險評估審查，經核定通過後始得為之。請問政
府對未經核定通過者、或依法完成申報之菸品有新發現健康風險者，
應分別做何種處置？（8分）
同樣依菸害防制法第 7 條規定，加熱菸經扣押或扣留於海關者，主管
機關應作何處置？（9分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "ca3d7f8bc224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00007', 'locality-77f8735d', 'locality-77f8735d-moex-114-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '我國於 2024 年通過再生醫療法與再生醫療製劑條例，針對再生醫療技
術與再生醫療製劑採雙軌制管理。試問：
依再生醫療製劑條例規定，再生醫療製劑共分那幾類？其定義為何？
（13分）
依再生醫療法規定，再生醫療技術之定義為何？有那些技術被排除？
（7 分）
再生醫療法第8 條規定，醫療機構執行再生技術得免完成人體試驗之
情形有那些？再生醫療製劑條例規定再生醫療製劑得附加附款許可
之條件為何？請分別說明之。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "ca3d7f8bc224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00008', 'locality-77f8735d', 'locality-77f8735d-moex-114-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '依醫師法第 11條規定，醫師非親自診察，不得施行治療、開給方劑或
交付診斷書，但在何種情形下得進行通訊診察？而進行通訊診察需執
行治療時，應由何人執行？（9分）
依通訊診察治療辦法第 20 條第 1 項規定，醫療機構實施通訊診療時
應遵行事項（除不得為初診病人之規定、與其他中央主管機關公告之
事項以外）有那些？（16分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "ca3d7f8bc224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00009', 'locality-77f8735d', 'locality-77f8735d-moex-114-77f8735d', 'sub-locality-77f8735d-03', NULL, 'essay', '假設某種新的傳染病，已有上市的疫苗，若政府已將一部分民眾納入公
費施打對象，且考慮將某些民眾納入擴大施打對象。請詳述政府在評估
該疫苗是否擴大施打時，應考量什麼因素？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "401396093ccd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00010', 'locality-77f8735d', 'locality-77f8735d-moex-114-77f8735d', 'sub-locality-77f8735d-03', NULL, 'essay', '臺灣即使有全民健康保險，研究顯示身心障礙族群仍有諸多健康不平
等，例如較高的死亡率、較低的藥順從性及較低的特定醫療利用。請問
可能的原因為何？以及政策上可以如何著手？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "401396093ccd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00011', 'locality-77f8735d', 'locality-77f8735d-moex-114-77f8735d', 'sub-locality-77f8735d-03', NULL, 'essay', '請詳述公家健康保險財源的籌措原則，並說明我國全民健康保險保費是
否符合這些原則。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "401396093ccd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00012', 'locality-77f8735d', 'locality-77f8735d-moex-114-77f8735d', 'sub-locality-77f8735d-03', NULL, 'essay', '請說明何謂醫病共享決策（Shared Decision Making, SDM）以及一個成
功的 SDM所應包含的面向？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "401396093ccd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00013', 'locality-77f8735d', 'locality-77f8735d-moex-114-173e98ef', 'sub-locality-77f8735d-04', NULL, 'essay', '何謂精實管理（LeanManagement）？請以醫院之應用為例將精實管理五
大原則加以闡述。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "64d54713a3ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫療制度與品質管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
