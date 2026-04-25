-- W1.6 questions batch 7858/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-704caaf1-moex-00015', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-8041b019', 'sub-promotion-704caaf1-02', NULL, 'essay', '某研究探討 Donepezil 藥物對於預防失智症惡化的效果，其結果數據如
下表。如果以 A 與 B 分別代表「使用 Donepezil」與「失智症惡化」兩
個事件；Pr（A）與 Pr（B）分別代表「使用 Donepezil」與「失智症惡
化」事件的機率。請利用機率運算的加法（Addition ruleof probability）
與乘法（Multiplicationruleofprobability）原則，分別說明「使用 Donepezil」
與「失智症惡化」是否為互斥（mutuallyexclusive）事件？以及是否為獨
立（independent）事件？（25 分）
使用Donepezil
失智症惡化 是 否
是 10 32
否 240 218', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "55fea4381e69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00016', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-8041b019', 'sub-promotion-704caaf1-02', NULL, 'essay', '2010年一個針對100 名 12-18 歲青少年所做的社區調查發現：青少年吸
菸盛行率為 6%。2020 年針對同一社區進行相同目的之調查，但這次的
調查將樣本數由100 人增加至 200 人，發現青少年吸菸盛行率約為8%。
在 α=0.05 水準下，請檢定該社區 2020 年的青少年吸菸盛行率是否有顯
著上升？〔註：Pr.(z>1.96)=0.025；Pr.(z>1.645)=0.05；檢定過程請詳
列檢定之假設、計算統計量、p-value數值範圍、以及統計決策與結論〕
（25分）
16730', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "55fea4381e69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00017', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-8041b019', 'sub-promotion-704caaf1-02', NULL, 'essay', '下表是位於非洲撒哈拉沙漠以南17 個國家生育率（y）與避孕率（x）的
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
（Pearson’scorrelation coefficient）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "55fea4381e69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00018', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-c309dc9d', 'sub-promotion-704caaf1-03', NULL, 'essay', '第一型輔助型 T細胞（Th1）與第二型輔助型 T細胞（Th2）是後天免疫
重要的 T細胞，請回答下列問題：（每小題 5 分，共 15 分）
各別的功能。
各別分化過程所需的因子。
各別如何被調控？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "f6fc2b3eae29", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "血清免疫學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00019', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-c309dc9d', 'sub-promotion-704caaf1-03', NULL, 'essay', '請說明人類 B 型肝炎病毒感染後，在急性期、復原 1 年後以及慢性感染
的血清學標記分別為何？另外如何用血清學標記辨別病人是否處於空窗
期？或是曾經施打過B型肝炎疫苗？（以HBsAg、Anti-HBc、Anti-HBs、
Anti-HBc IgM四種標記為主）（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "f6fc2b3eae29", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "血清免疫學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00020', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-c309dc9d', 'sub-promotion-704caaf1-03', NULL, 'essay', '癌症治療使用單株抗體類的藥物作標靶治療，請問目前所知，這些藥物
的可能抑制癌細胞生長或是殺死癌細胞的作用機轉為何？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "f6fc2b3eae29", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "血清免疫學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00021', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-c309dc9d', 'sub-promotion-704caaf1-03', NULL, 'essay', '側向流體免疫分析法（lateralflowimmunoassay）在 COVID-19 疫情期間
被應用在製作抗原快篩試劑，請用圖說明其原理（包含 test line, control
line需要何種抗體），（15 分）另說明其與 PCR檢測 SARS-CoV-2 之間不
同的地方。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "f6fc2b3eae29", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "血清免疫學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00022', 'promotion-704caaf1', 'promotion-704caaf1-moex-112-c309dc9d', 'sub-promotion-704caaf1-03', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 15分）
群體免疫
株落選擇理論（clonalselection theory）
抗體親和力（avidity）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "f6fc2b3eae29", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "167", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "血清免疫學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00023', 'promotion-704caaf1', 'promotion-704caaf1-moex-110-dcf2db81', 'sub-promotion-704caaf1-01', NULL, 'essay', '世界衛生組織於 2020 年宣布 COVID-19 為國際關注的突發公共衛生事
件，請詳述「何謂國際關注的突發公共衛生事件」，（10 分）以及國內
COVID-19 預防與防止擴大感染之措施。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "a3daf2e043b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "167", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共衛生學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('promotion-704caaf1-moex-00024', 'promotion-704caaf1', 'promotion-704caaf1-moex-110-dcf2db81', 'sub-promotion-704caaf1-01', NULL, 'essay', '請比較長照 1.0 與長照 2.0 的最主要的差異，（10 分）以及何謂 A、B、
C據點與三據點之關聯性？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "a3daf2e043b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "167", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共衛生學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
