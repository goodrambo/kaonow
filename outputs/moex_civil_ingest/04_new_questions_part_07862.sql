-- W1.6 questions batch 7862/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-77f8735d-moex-00021', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '某研究探討 Donepezil 藥物對於預防失智症惡化的效果，其結果數據如
下表。如果以 A 與 B 分別代表「使用 Donepezil」與「失智症惡化」兩
個事件；Pr（A）與 Pr（B）分別代表「使用 Donepezil」與「失智症惡
化」事件的機率。請利用機率運算的加法（Addition ruleof probability）
與乘法（Multiplicationruleofprobability）原則，分別說明「使用 Donepezil」
與「失智症惡化」是否為互斥（mutuallyexclusive）事件？以及是否為獨
立（independent）事件？（25 分）
使用Donepezil
失智症惡化 是 否
是 10 32
否 240 218', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "55fea4381e69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00022', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '2010年一個針對100 名 12-18 歲青少年所做的社區調查發現：青少年吸
菸盛行率為 6%。2020 年針對同一社區進行相同目的之調查，但這次的
調查將樣本數由100 人增加至 200 人，發現青少年吸菸盛行率約為8%。
在 α=0.05 水準下，請檢定該社區 2020 年的青少年吸菸盛行率是否有顯
著上升？〔註：Pr.(z>1.96)=0.025；Pr.(z>1.645)=0.05；檢定過程請詳
列檢定之假設、計算統計量、p-value數值範圍、以及統計決策與結論〕
（25分）
16730', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "55fea4381e69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00023', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '下表是位於非洲撒哈拉沙漠以南17 個國家生育率（y）與避孕率（x）的
描述性統計數據。
生育率（/1,000）（y） 避孕率（%）（x）
算數平均數 6.50 13.50
根據17個國家的原始避孕率與生育率數據所計算出來的迴歸方程式為：
y7.445x。顯著性檢定的結果如下表所示：
0
Sumof Squares df Mean Square F Sig.
Regression 548.875 1 548.875 4.228 0.058
Residual 1947.360 15 129.824
Total 2496.235 16
請計算迴歸方程式的截距項，以及避孕率與生育率之皮爾森相關係數
0
（Pearson’scorrelation coefficient）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "55fea4381e69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00024', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '請試述可避免死亡（avoidable mortality）的定義，並申論可避免死亡率
與醫療照護品質之相關性。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "b23299c7f637", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00025', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '嚴重特殊傳染性肺炎（COVID-19）除了此疾病對身體健康的直接影響，
請試述為因應新冠疫情所採取之防疫措施對民眾健康福祉可能產生的
負面影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "b23299c7f637", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00026', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '請試述政府長期照護服務財源採用稅收制與保險制之差異。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "b23299c7f637", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00027', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '衛生福利部官員日前表示，健保總額預算最近 8年來累積成長 35%，預
算共增加新臺幣 2,168 億元（健保總額預算由 6,196 億元成長至今年的
8,364 億元），請說明健保總額預算應該考量那些重要因素？你認為過去
8 年的健保總額預算的累積成長率是否足夠？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "b23299c7f637", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00028', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-820a958c', 'sub-promotion-77f8735d-04', NULL, 'essay', '請說明國內有關農藥殘留容許濃度之訂定原則與流程。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "947be3715152", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00029', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-820a958c', 'sub-promotion-77f8735d-04', NULL, 'essay', '因應全球永續環境議題，請說明國內有關回收廢料再利用於食品器具容
器包裝之法規、流程與限制。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "947be3715152", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00030', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-820a958c', 'sub-promotion-77f8735d-04', NULL, 'essay', '請說明健康風險評估應用於環境管理之法規面、執行方式與如何利用成
果進行環境管理。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "947be3715152", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
