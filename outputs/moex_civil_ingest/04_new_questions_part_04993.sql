-- W1.6 questions batch 4993/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-704caaf1-moex-00091', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-8041b019', 'sub-heelevel3-704caaf1-07', NULL, 'essay', '全國的醫學中心統計資料顯示：急診室醫師在第一時間將「心臟病發作」
誤診為「消化不良」的機率約為 6%，某醫學中心檢視該中心同一時期急
診診斷資料發現：900位「心臟病發作」到該院急診的病人中，有45 位
在第一時間被誤診為「消化不良」，比率為 5%。在=0.01 的顯著水準下，
請檢定該醫學中心的誤診率是否低於全國的水準？請於檢定過程中寫出檢
定的：虛無假設與對立假設統計量及計算該統計量所需要的假設統
計量相對應的 p-value 數值或範圍檢定的結論。（註：P(z< -2.33)=0.01;
P(z< -1.96)=0.025；P(z<-1.645)=0.05）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00092', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-8041b019', 'sub-heelevel3-704caaf1-07', NULL, 'essay', 'A、B、C三位心理學教授在星期一上午10：00-12：00都有擔任心理學概
論通識課程（為選修課）的教學工作，某學期 A、B、C 三位教授的心理
學概論修課人數分別有32人、25人、10人。如果以修課人數來代表授課
教授受歡迎的程度，在=0.05的顯著水準下，請檢定三位教授的受歡迎程
度是否相同？請於檢定過程中寫出檢定的：虛無假設與對立假設統計
量的數值統計量相對應的p-value檢定的結論（註：P（2>3.84,df=1）
=0.05；P（2>5.99,df=2）=0.05；P（2>7.82,df=3）=0.05）。（25 分）
34980
35080
36780
36880', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00093', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-8041b019', 'sub-heelevel3-704caaf1-07', NULL, 'essay', '某觀察性研究探討身體質量指數（BMI，連續性變項）與憂鬱症狀分數
（depression，連續性變項，分數愈高代表憂鬱症狀愈明顯）之間的相關
性，研究者進行一般線性迴歸（general linear regression）分析時同時也
控制了樣本是否來自收入在貧窮線以下的家庭（poverty，二分變項）。以
下是迴歸分析的結果。請根據此結果寫出包括 BMI、depression 以及
poverty三個變項在內的一般線性迴歸方程式，並在顯著水準=0.05 下，
根據模式一與模式二結果說明 BMI與憂鬱症分數之間的關係。（25 分）
模式一 模式二
Standard t Standard t
Parameter Estimate Pr>|t| Parameter Estimate Pr>|t|
Error Value Error Value
Intercept 0.0112 0.056 0.20 0.8419 Intercept 0.2167 0.0734 2.95 0.0033
BMI 0.0065 0.002 3.15 0.0017 BMI 0.0038 0.0021 1.81 0.0720
poverty -.1857 0.0433 -4.28 <.0001', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00094', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-1b9c6180', 'sub-heelevel3-704caaf1-08', NULL, 'essay', '為利醫療資源整合，我國自民國 74 年起辦理醫療網計畫，試問目前第九
期建構敏捷韌性醫療照護體系計畫，其計畫整體目標為何？（15分）以及
為達成此計畫試舉例5項其策略目標？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "84751185c88a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政與法規", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00095', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-1b9c6180', 'sub-heelevel3-704caaf1-08', NULL, 'essay', '食品安全一直是政府施政的重點，食品安全衛生管理法修正通過之後強
調食安五環的政策，試以蛋品為例說明如何推動該政策之作法？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "84751185c88a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政與法規", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00096', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-1b9c6180', 'sub-heelevel3-704caaf1-08', NULL, 'essay', '我國採用疫苗方式對於嚴重特殊傳染性肺炎進行防治，然該疫苗並未成
為正式商品，因此是先援用那條條文進行相關緊急授權？（10 分）試說
明可以採用那一條法規特別說明注意事項之內容？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "84751185c88a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政與法規", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00097', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-1b9c6180', 'sub-heelevel3-704caaf1-08', NULL, 'essay', '渥太華憲章與世界衛生組織皆強調健康的支持性環境可分為物理環境
（包括自然環境及人造環境）及社會環境，試說明我國在建構健康友善
支持性環境的五大策略為何？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "84751185c88a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政與法規", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00098', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-1b9c6180', 'sub-heelevel3-704caaf1-08', NULL, 'essay', '請問衛生福利部110 年度施政計畫中有關建構優質防疫應變體系，鞏固
國家防疫安全之作法有那些？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "84751185c88a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政與法規", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00099', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-67b07c2c', 'sub-heelevel3-704caaf1-04', NULL, 'essay', '葡萄球菌是常見的感染病原體，請回答金黃色葡萄球菌（Staphylococcus
aureus）造成的相關疾病症狀。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "7c9988b9d9df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫用微生物及免疫學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('heelevel3-704caaf1-moex-00100', 'heelevel3-704caaf1', 'heelevel3-704caaf1-moex-110-67b07c2c', 'sub-heelevel3-704caaf1-04', NULL, 'essay', '器官移植後潛在病毒的再活化常導致移植物排斥現象，請回答常見伺機
性再活化的 BK病毒以及巨細胞病毒（CMV）的致病機制及導致的相關
併發症。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:10+00:00", "source_pdf_sha1": "7c9988b9d9df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "367", "s": "2901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫用微生物及免疫學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
