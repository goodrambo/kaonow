-- moex_license_ingest questions batch 63/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('bookkeeper-moex-01342', 'bookkeeper', 'bookkeeper-moex-103-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '請回答下列有關現金流量表的問題，每一問題皆須詳列計算過程，否則不予計分：
當年度銷貨收入淨額為$15,000,000，部分會計科目期初及期末餘額如下：
會計科目    期初餘額 期末餘額
應收帳款  $5,500,000 $5,800,000
應付帳款          3,400,000 3,800,000
預收銷貨收入    600,000 500,000
存貨    1,200,000 1,000,000
試問：當年度因銷貨交易所收取的現金。（6分）
公司於當年10月30日以$900,000（支付$300,000之現金及市值$600,000之公司
股票）購入持股100%之子公司，當時子公司之淨資產如下：
現金       $80,000
約當現金   100,000
存貨       150,000
應收帳款   230,000
固定資產   500,000
應付帳款 （110,000）
長期負債 （300,000）
淨資產    $650,000
試問：該項交易於當年度現金流量表中，屬那一類活動之現金流量？其現金及約
當現金支出或流入多少？（6分）
公司於當年大幅更換辦公室之設備，當年度與設備相關科目變動之資料如下：
會計科目    期初餘額 期末餘額
設備  $96,000 $120,000
累計折舊    60,000 36,000
應付設備款    30,000 40,000
其他補充資料如下：當年度將舊設備以現金價格$12,000出售，其成本為$72,000、
累計折舊為$48,000。
試問：當年新購設備成本為何？當年因增添及處分設備而流出或流入多少現金？
（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:27+00:00", "source_pdf_sha1": "eb7c2b3095ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01343', 'bookkeeper', 'bookkeeper-moex-103-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '財務會計應遵循下列何者處理？', '["業主指示", "稅法規定", "一般公認會計原則", "管理理念"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:27+00:00", "source_pdf_sha1": "eb7c2b3095ad", "answer_pdf_sha1": "151da49cfd80", "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01344', 'bookkeeper', 'bookkeeper-moex-103-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '會計處理程序正確的順序為：', '["衡量、認定、記錄、溝通", "認定、記錄、衡量、溝通", "認定、衡量、記錄、溝通", "認定、記錄、溝通、衡量"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:27+00:00", "source_pdf_sha1": "eb7c2b3095ad", "answer_pdf_sha1": "151da49cfd80", "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01345', 'bookkeeper', 'bookkeeper-moex-103-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '甲公司年底調整前試算表上之收入為$30,000，費用為$17,000，必須調整之事項為：預收收益已實現部分 為$2,500、本期折舊$1,200及已賺得但尚未入帳之收益有$2,000，則本期淨利為何？', '["$16,300", "$12,300", "$11,300", "$7,300"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:27+00:00", "source_pdf_sha1": "eb7c2b3095ad", "answer_pdf_sha1": "151da49cfd80", "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01346', 'bookkeeper', 'bookkeeper-moex-103-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '甲公司一月初業主權益$400,000，一月底業主權益$500,000，一月份收入$670,000，業主提取$30,000， 本月業主無增資，則一月份費用為：', '["$740,000", "$770,000", "$570,000", "$540,000"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:27+00:00", "source_pdf_sha1": "eb7c2b3095ad", "answer_pdf_sha1": "151da49cfd80", "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
