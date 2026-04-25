-- W1.6 questions batch 6550/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-3df1c47f-moex-00019', 'locality-3df1c47f', 'locality-3df1c47f-moex-114-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '一位研究人員採用完全隨機設計（CRD）進行了一項農業試驗，研究施
肥量（X）與水稻產量（Y）之間的關係。試驗中，5個施肥水準被隨機
分配到 15個小區（每個小區 3個重複）。下表顯示了統計軟體的輸出結
果總結：
Analysis of Variance Table
Response: y
Df Sum Sq Mean Sq F value Pr(>F)
x 1 820.5 820.50 40.993 2.334e-05 ***
Residuals 13 260.2 20.02
---
Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1
‘ ’ 1
lm(formula = y ~ x, data = dat)
Residuals:
Min 1Q Median 3Q Max
-7.2579 -2.9543 -0.3783 1.5992 7.8283
Coefficients:
Estimate Std. Error t value Pr(>|t|)
(Intercept) 4.2500 1.8804 2.260 0.0416 *
x 0.9500 0.1484 6.403 2.33e-05 ***
---
Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1
‘ ’ 1
Residual standard error: 4.474 on 13 degrees of freedom
Multiple R-squared: 0.7592, Adjusted R-squared: 0.7407
F-statistic: 40.99 on 1 and 13 DF, p-value: 2.334e-05
試述在完全隨機設計（CRD）的背景下，解釋變異數分析表（ANOVA）
中的結果，迴歸方程式 ˆ 。截距和斜率分別代表什麼？計
Y 4.250.95X
算 X和 Y之間的相關係數 r，並解釋其含義。描述此統計結果如何使用
變異數分析和 p值來判斷施肥水準是否對產量有顯著影響。在田間試驗
中完全隨機設計中可能出現的迴歸假設違反情況，以及殘差分析如何偵
測出這種違反情況。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:59+00:00", "source_pdf_sha1": "b633188f6fc5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "326", "s": "1311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00020', 'locality-3df1c47f', 'locality-3df1c47f-moex-114-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '一位研究人員希望透過溫室試驗來探討兩個因素對番茄產量的影響。因
素 A（灌溉程度）：低()和高()，因素B（肥料類型）：有機肥料()和
化學肥料()，A 和 B 的每種組合代表一種處理組合（共四種處理：
AB、AB、AB、AB）。
為了減少環境變異，試驗在兩個區組內進行，分別代表溫室的兩個區域
（區組 1 和區組2）。在每個區組內，所有四種處理組合均隨機分配到各
個小區。收穫後，記錄每個小區的番茄產量（公斤/株）。
統計軟體產生了以下部分變異數分析表：
變異來源 df SS MS F值
區組（Block） 1 12.0 12.0
A因子 1 45.0 45.0
B因子 1 18.0 18.0
A×B 1 5.0 5.0
誤差 4 12.0 3.0
總和 8 92.0
試述此一統計結果，對於實驗的說明與解釋，可進一步說明本實驗的
結論為何？利用下列平均數，估計A和B的主效果和交互效應。（20分）
處理 平均產量（kg）
A–B– 20
A–B+ 24
A+B– 26
A+B+ 28
如果研究者希望在此基礎上增加第三個因素 C（溫度：低溫 vs高溫），
請敘述如何設計一個具有兩個區組的三因素析因設計，並具體說明處
理總數、小區數量和模型結構。（10 分）
（F =7.708,F =5.317,F =3.838,F =9.55）
0.05,1,4 0.05,1,8 0.05,4,8 0.05,2,3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:59+00:00", "source_pdf_sha1": "b633188f6fc5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "326", "s": "1311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00021', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '請列表說明甘藷、馬鈴薯、山藥、慈菇及薑等作物之屬名、英名及食用
部位貯藏器官名稱。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "721e28afabfd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00022', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '作物栽培的連作障礙的意義與類型有那些？可行的解決策略是什麼？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "721e28afabfd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00023', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '作物健康種苗的生產影響作物栽培的產量與品質至鉅，請說明健康種苗
的檢測及生產方法。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "721e28afabfd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00024', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '碳匯淨零是國家農業重要發展方向目標方針，有那些栽培策略可以具體
達成此一目標？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "721e28afabfd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00025', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '請回答下列問題：
詳繪植物粒線體（mitochondria）的(a)解剖示意圖，及標示(b)膜間腔
（intermembranespace）、(c)內膜（innermembrane）、(d)基質（matrix）
與(e)丙酮酸-氫氧離子反向運輸載體（pyruvate-OH-antiportcarrier）結
構的位置。（10分）
請詳述基質（matrix）所參與之生理代謝功能。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "ac7258b20921", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00026', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '請論述植物根系被動（蒸散作用）及主動（根壓）吸收水分之機制。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "ac7258b20921", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00027', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '請論述在高光逆境下的作物形態及結構與光保護機制。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "ac7258b20921", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00028', 'locality-3df1c47f', 'locality-3df1c47f-moex-113-e4f6108f', 'sub-locality-3df1c47f-02', NULL, 'essay', '請詳述矽對水稻作物生長的影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "ac7258b20921", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "326", "s": "1310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
