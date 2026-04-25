-- W1.6 questions batch 5482/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-e0adf6cd-moex-00100', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-236aff17', 'sub-heelevel3-e0adf6cd-02', NULL, 'essay', '何謂動機？動機如何分類？曉華的期末考及期末報告有將近10項，他可
以用那些方式促進其準備考試或撰寫報告的動機？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "59d7c799b9c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育心理學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00101', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-236aff17', 'sub-heelevel3-e0adf6cd-02', NULL, 'essay', '人本心理學取向的學習理論包括羅吉斯（Rogers）以及馬斯洛（Maslow）
等理論背景，請說明此一取向的學習特徵及教師教學特質。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "59d7c799b9c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育心理學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00102', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-236aff17', 'sub-heelevel3-e0adf6cd-02', NULL, 'essay', '何謂社會情緒學習（Social Emotional Learning）？其內涵包含那五大面
向？試說明針對國中學生可採用的社會情緒教學方法。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "59d7c799b9c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育心理學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00103', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-40444de9', 'sub-heelevel3-e0adf6cd-03', NULL, 'essay', '某教育學者認為，COVID-19疫情期間，大多數國民中小學校皆採行線上
教學來代替實體教學。但是，線上教學的學習成效深受各種因素的影響與
干擾，因此，他認為有必要重新制訂線上教學時，學習成績是否達到「及
格」的通過標準。請問：你會建議他該如何設定此通過標準？請至少列舉
五項步驟的建議。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "2b3b3e7cdcbc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00104', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-40444de9', 'sub-heelevel3-e0adf6cd-03', NULL, 'essay', '某市教育局舉辦一年一度的國小學生才藝競賽，並聘請兩位表演藝術專
家針對10名進入總決賽的小學生才藝表演進行客觀的評分。這兩位專家
針對這10名學生的評定名次如下表，請問：這兩位專家的評分間有無關聯
性或一致性存在？（25分）
（查表的t值臨界值為：t 2.306）
.975,8
學生 A B C D E F G H I J
甲專家 2 8 5 7 4 6 1 9 3 10
乙專家 5 4 1 8 3 7 6 10 2 9', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "2b3b3e7cdcbc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00105', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-40444de9', 'sub-heelevel3-e0adf6cd-03', NULL, 'essay', '某教育學者想知道某校六年級學生的平均身高，他自該校隨機抽取9名學
生為樣本，並測得其身高分別為140、142、140、143、139、140、141、
142、141公分（已計算出這9名學生身高的M=140.89，SD=1.26），請問：
你會推估出該校六年級學生的平均身高之95%信賴區間（查閱t分配表，臨
界值為 2.306）為何？請寫出計算過程並說明你的答案。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "2b3b3e7cdcbc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00106', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-40444de9', 'sub-heelevel3-e0adf6cd-03', NULL, 'essay', '請解釋下±列專有名詞：（每小題5分，共25分）
參數估計不變性（invarianceof parameter estimation）
差異試題功能（differentialitemfunctioning）
可能值（plausiblevalues）
效度量尺（validityscale）
試題特徵曲線（itemcharacteristiccurve）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "2b3b3e7cdcbc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00107', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-6c2680bf', 'sub-heelevel3-e0adf6cd-04', NULL, 'essay', '領導是發揮影響力的歷程，請說明僕人領導（servantleadership）的意涵，
並提出實踐僕人領導的重要策略。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "dde49b8d266d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00108', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-6c2680bf', 'sub-heelevel3-e0adf6cd-04', NULL, 'essay', '溝通為教育行政組織不可或缺的要素，請列舉教育行政組織溝通障礙的
因素，以及化解教育行政組織溝通障礙的做法。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "dde49b8d266d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL),
  ('heelevel3-e0adf6cd-moex-00109', 'heelevel3-e0adf6cd', 'heelevel3-e0adf6cd-moex-112-6c2680bf', 'sub-heelevel3-e0adf6cd-04', NULL, 'essay', '聯合國於2015年宣布「2030永續發展目標」（Sustainable Development
Goals,SDGs），其中優質教育為其重要目標之一，請分析優質教育的意涵，
並說明「實施優質教育，以實現永續發展目標」的重要途徑。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:34+00:00", "source_pdf_sha1": "dde49b8d266d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "315", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "教育行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
