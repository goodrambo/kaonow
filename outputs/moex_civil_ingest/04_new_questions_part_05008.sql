-- W1.6 questions batch 5008/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-77f8735d-moex-00078', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-aaf759af', 'sub-heelevel3-77f8735d-05', NULL, 'essay', '2016年臺灣男性與女性胃癌發生狀況的統計數據顯示於表一、表二，請
回答以下問題：（每小題 10分，共 30 分）
計算 2016 年臺灣男性胃癌粗發生率的公式為何？
解釋 2016 年女性年齡標準化率 B 之意義？並說明年齡標準化率 B 大
於年齡標準化率A的原因？
臺灣男性胃癌 0-74 歲之年齡累積發生率（cumulative incidence rate）
為何？0-74歲之年齡累積發生風險（cumulativeincidencerisk）為何？
表一 表二
項 目 男性 女性 2016年男性胃癌發生人數與具風險之人年數
案數（人） 2,306 1,352 發生 具風險之人年數
年齡組
年齡中位數 69 69 人數 （單位：萬）
粗率（每10萬人 19.68 11.44 0–4 0 55.1
口） 5–9 0 50.6
#1 10–14 0 57.9
年齡標準化率A 10.94 5.79
15–19 0 74.7
（每10萬人口）
20–24 3 83.5
年齡標準化率B#2 12.63 6.67
25–29 2 83.0
（每10萬人口）
30–34 13 89.5
#1使用1976年世界標準人口為
35–39 25 100.1
標準人口計算而得
40–44 46 90.3
#2使用2000年世界標準人口為 45–49 101 90.1
標準人口計算而得 50–54 137 92.5
55–59 235 86.1
60–64 338 75.3
65–69 289 53.4
70–74 235 30.8
75–79 281 25.6
80–84 257 16.8
85+ 344 16.7
Total 2,306 1,172.0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "d824b48a77b5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00079', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '接受常用高血壓處方藥物（drug A）治療的高血壓病人收縮壓平均值
（A）為 120 mmHg，某藥廠研發一種新的高血壓藥物（drug B），並
招募 25 位病人進行臨床試驗，治療後平均收縮壓為 115mmHg（標準
差 s=20 mmHg），99%信賴區間（confidence interval）為 115  2.797
（20/ 25）=103.8~126.2mmHg；若是進行雙尾統計檢定，在=0.01的
顯著水準下，檢定結果顯示 drug A 與 drug B 之間對於血壓控制的效果
並未達到統計顯著意義，統計檢力（power）僅為0.09。該藥廠於是想重
新進行實驗，請問有那一些方法可以提高統計檢力？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00080', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '全國的醫學中心統計資料顯示：急診室醫師在第一時間將「心臟病發作」
誤診為「消化不良」的機率約為 6%，某醫學中心檢視該中心同一時期急
診診斷資料發現：900位「心臟病發作」到該院急診的病人中，有45 位
在第一時間被誤診為「消化不良」，比率為 5%。在=0.01 的顯著水準下，
請檢定該醫學中心的誤診率是否低於全國的水準？請於檢定過程中寫出檢
定的：虛無假設與對立假設統計量及計算該統計量所需要的假設統
計量相對應的 p-value 數值或範圍檢定的結論。（註：P(z< -2.33)=0.01;
P(z< -1.96)=0.025；P(z<-1.645)=0.05）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00081', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', 'A、B、C三位心理學教授在星期一上午10：00-12：00都有擔任心理學概
論通識課程（為選修課）的教學工作，某學期 A、B、C 三位教授的心理
學概論修課人數分別有32人、25人、10人。如果以修課人數來代表授課
教授受歡迎的程度，在=0.05的顯著水準下，請檢定三位教授的受歡迎程
度是否相同？請於檢定過程中寫出檢定的：虛無假設與對立假設統計
量的數值統計量相對應的p-value檢定的結論（註：P（2>3.84,df=1）
=0.05；P（2>5.99,df=2）=0.05；P（2>7.82,df=3）=0.05）。（25 分）
34980
35080
36780
36880', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00082', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '某觀察性研究探討身體質量指數（BMI，連續性變項）與憂鬱症狀分數
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
poverty -.1857 0.0433 -4.28 <.0001', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "2984d74b2e7e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00083', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '有鑑於印度疫情升溫，變種病毒傳染力很強，中央流行疫情指揮中心（以
下稱指揮中心）宣布自 110年 5月 4 日起，14 天內曾有印度旅遊史之旅
客，應配合集中檢疫及採檢。國人某甲從印度返國，被要求集中檢疫，
不得居家檢疫。但第 7天時，某甲因為有躁鬱症，無法忍受成天單獨待
在狹小又一成不變的房內，希望居家檢疫，主張集中檢疫違反比例原則，
要求改以居家檢疫方式進行。試問：
集中檢疫限制了某甲的什麼權利？是為了實現什麼樣的公益？（5 分）
何謂比例原則？（5分）
指揮中心對某甲的集中檢疫是否符合比例原則？指揮中心之檢疫應
該留意何種倫理或原則？（10 分）
某甲對集中檢疫不服，依現行法有何救濟途徑？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "bee13eaf1581", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00084', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '按精神衛生法，論述精神疾病強制住院與強制社區治療事項的中央負責單
位。（5分）請說明針對緊急安置與強制社區治療的條件與程序。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "bee13eaf1581", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00085', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '請說明全民健康保險法第 43 條部分負擔規定，與現行全民健保部分負
擔執行情況之差異。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "bee13eaf1581", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00086', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '請說明二代健保實施後全民健保主要財務籌措方式，並申論現行財務籌
措方式相對於一代健保是否能增進財務分擔的公平性。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "bee13eaf1581", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00087', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-110-67b07c2c', 'sub-heelevel3-77f8735d-08', NULL, 'essay', '葡萄球菌是常見的感染病原體，請回答金黃色葡萄球菌（Staphylococcus
aureus）造成的相關疾病症狀。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "7c9988b9d9df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "342", "s": "2901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫用微生物及免疫學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
