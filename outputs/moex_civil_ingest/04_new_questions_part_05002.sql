-- W1.6 questions batch 5002/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-77f8735d-moex-00018', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-010ffe9d', 'sub-heelevel3-77f8735d-01', NULL, 'essay', '研究者想探討某利尿劑是否有效，他從健康的民眾中隨機抽出兩組人，
每組各 10人，一組給予利尿劑，另一組給予安慰劑，然後測量其每日的
尿量，所得結果如下：安慰劑組每日尿量平均值為 1180毫升，利尿劑組
每日尿量平均值為 1400 毫升，其標準差分別為 144 毫升及 245 毫升。
請問：
利尿劑的利尿效果是否有達統計上顯著差異？（α = 0.05）（15分）
利尿劑與安慰劑利尿效果差異的 95%信賴區間為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "65bbee070c66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00019', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-010ffe9d', 'sub-heelevel3-77f8735d-01', NULL, 'essay', '某病例對照研究欲探討嚼食檳榔與口腔癌的關係，研究者找了100 名口
腔癌患者，每位患者根據年齡、性別，各配對了一名健康的民眾當對照。
在此 100 組配對資料中，發現：口腔癌患者有吃檳榔，配對者有吃檳榔
共 20 對；口腔癌患者有吃檳榔，配對者無吃檳榔者共 60對；口腔癌患
者無吃檳榔，配對者有吃檳榔共10 對；口腔患者無吃檳榔，配對者無吃
檳榔者共10 對。請問：口腔癌與嚼食檳榔有統計相關嗎？（α = 0.05）
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "65bbee070c66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00020', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-010ffe9d', 'sub-heelevel3-77f8735d-01', NULL, 'essay', '執行一個病例對照研究時，一般而言，如果病例組選自社區，則對照組
也常選自社區，請說明社區對照的選取有何優點，及可能會面臨的困難。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "65bbee070c66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00021', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-010ffe9d', 'sub-heelevel3-77f8735d-01', NULL, 'essay', '分層分析（stratification）是在研究分析階段時，常用來控制干擾作用的
方法，請說明分層分析的意義、進行的步驟及主要的優缺點。（25 分）
Z =1.96、Z =1.645、Z =2.575
0.975 0.95 0.99
t =1.33、t =1.33、t =1.33
18,0.90 19,0.90 20,0.90
t =1.73、t =1.73、t =1.72
18,0.95 19,0.95 20,0.95
t =2.10、t =2.09、t =2.09
18,0.975 19,0.975 20,0.975
X2 =3.84、X2 =5.99、X2 =7.81
1,0.95 2,0.95 3,0.95', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "65bbee070c66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00022', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '根據世界衛生組織菸草控制框架公約，在制定和實施菸草控制方面的公
共衛生政策時，各締約方應根據國家法律採取行動，為防止這些政策受
菸草業的商業和其他既得利益的影響，主要具體倫理規範作法為何？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e009d118a446", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00023', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '病人自主權利法中有關意願人、醫療委任代理人的定義為何？又，意願
人為其預立所應符合之積極要件，及消極規範為何？醫療委任代理人之
積極及消極要件、及權限為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e009d118a446", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00024', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '根據我國醫療法之規範，何謂醫療廣告？以及該法針對醫療廣告之內容
與方式限制為何？（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e009d118a446", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00025', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '「營養及健康飲食促進法」於 2024年 1 月 3 日公布施行，賦予我國推動
營養及健康飲食促進之法源依據，該法主要內容區分那四大面向？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e009d118a446", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00026', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-77f8735d', 'sub-heelevel3-77f8735d-03', NULL, 'essay', '世界各國皆非常重視健康指標的建立，因為健康指標的建立與資料收集
結果可用以瞭解一個國家的健康狀態，其在衛生行政上的運用也相當廣
泛。請說明健康指標大致可分為那六大構面？請說明其定義、重要性，
並舉一例說明。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "8b5511d0b6d9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00027', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-113-77f8735d', 'sub-heelevel3-77f8735d-03', NULL, 'essay', '何謂跨理論模式（transtheoretical model）？請說明其對於衛生方案介入
行為改變的一些基本前提假設及 4 項重要的核心概念。（10 分）今欲在
社區內推動一項衛生計畫，鼓勵社區民眾規律運動。請依照跨理論模式
（transtheoreticalmodel）的理論概念，提出至少 3種與該概念對應之行為
改變介入策略。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "8b5511d0b6d9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "338", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
