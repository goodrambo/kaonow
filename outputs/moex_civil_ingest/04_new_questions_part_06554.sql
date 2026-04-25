-- W1.6 questions batch 6554/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-3df1c47f-moex-00059', 'locality-3df1c47f', 'locality-3df1c47f-moex-112-20e3c385', 'sub-locality-3df1c47f-04', NULL, 'essay', '土壤的形成最初始於岩石或各種沉積物的風化作用，再受到環境的影
響。請詳細說明於自然環境中，土壤主要的化育作用。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "c24164e9c22e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "327", "s": "1813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00060', 'locality-3df1c47f', 'locality-3df1c47f-moex-112-20e3c385', 'sub-locality-3df1c47f-04', NULL, 'essay', '土壤是一個包含礦物質、有機物、水和空氣的混合物，請定義土壤質地、
土壤構造與土壤孔隙，以及申論這三個土壤物理特性對於水分與養分在
土壤之移動，以及對植物生長之影響。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "c24164e9c22e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "327", "s": "1813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00061', 'locality-3df1c47f', 'locality-3df1c47f-moex-112-20e3c385', 'sub-locality-3df1c47f-04', NULL, 'essay', '土壤物化特性影響污染物在土壤中之變化：
以無機污染物而言，土壤對於無機污染物的主要作用機制為何？（8分）
以有機污染物而言，土壤對於有機污染物的主要作用機制為何？（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "c24164e9c22e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "327", "s": "1813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00062', 'locality-3df1c47f', 'locality-3df1c47f-moex-112-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '某研究員欲進行 A、B 兩種不同品牌有機肥料，對高雄 9 號（綠晶）毛
豆（Glycinemax(L.)Merril）的大區產量比較試驗。試驗設計規劃時其田
區採完全隨機設計（completely randomized design, CRD）進行。今在收
穫期，兩種不同品牌有機肥料的每個重複以 1 m2 進行產量實測記錄
（kg/m2），其五個重複資料進行記錄，如下所示：
重複
1 2 3 4 5
有機肥料品牌
A 33 38 36 42 43
B 35 33 34 32 36
請完成下列表格：（8 分）
有機肥料品牌 Mean SD SE CV
A
B
*SD：standarddeviation;SE：standarderrorformean;CV：coefficientofvariation
請描述 SD、SE，以及 CV的定義與適用時機，並舉例說明之。（10分）
請建立 A、B兩種不同品牌有機肥料對應之毛豆平均產量的 95%信賴
區間，並進行比較及闡述結果，t分布值請參閱附表一。（10 分）
請在變方均值的前提下，建立 A、B兩種不同品牌平均產量差異的95%
信賴區間，並闡述結果。（10分）
在 α=0.05，建立變方分析表（analysisofvariancetable,ANOVAtable），
並以最小顯著差異法（Leastsignificantdifference（LSD）test）進行多
重比較及闡述結果，F分布值請參閱附表二。（15 分）
請比較、、三小題結果之差異，並闡述何種結果較為可行。（10分）
附表一※t分布值：=P(t>t )
df
df =0.10 =0.05 =0.025 =0.01
2 1.886 2.920 4.303 6.965
3 1.638 2.353 3.182 4.541
4 1.533 2.132 2.776 3.747
5 1.476 2.015 2.571 3.365
6 1.440 1.943 2.447 3.143
7 1.415 1.895 2.365 2.998
8 1.397 1.860 2.306 2.896
9 1.383 1.833 2.262 2.821
10 1.372 1.812 2.228 2.764
11 1.363 1.796 2.201 2.718
12 1.356 1.782 2.179 2.681
附表二※F分布值：=P(F>Fα=0.05,  , )=0.05
df1df2
df＼df 1 2 3 4
2 1
1 161.4476 199.5000 215.7073 224.5832
2 18.5128 19.0000 19.1643 19.2468
3 10.1280 9.5521 9.2766 9.1172
4 7.7086 6.9443 6.5914 6.3882
5 6.6079 5.7861 5.4095 5.1922
6 5.9874 5.1433 4.7571 4.5337
7 5.5914 4.7374 4.3468 4.1203
8 5.3177 4.4590 4.0662 3.8379
9 5.1174 4.2565 3.8625 3.6331', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "8459b608cffb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "327", "s": "1816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00063', 'locality-3df1c47f', 'locality-3df1c47f-moex-112-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '近年來，由於水資源的短缺與溫室效應，因此在作物栽培過程中，節水
灌溉與溫室氣體減排效應逐漸成為熱門的研究議題。今一位農藝學者欲
在開放田區中，探討三種節水灌溉程度（W1、W2、W3）與四個水稻品
種（V1、V2、V3、V4）間的溫室氣體減排效應。而該學者依據試驗條
件的限制，因此採行裂區設計（Split-plot design）加隨機完全區集設計
（RCBD）進行，並且在試驗的副區隨機誤差自由度設定為18 的條件下，
請回答下列問題：
依據試驗條件設計試驗規劃，請說明相關的試驗配置與原因。（10 分）
設計繪出田間建議配置圖。（5分）
列出變方分析表之相關自由度。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "8459b608cffb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "327", "s": "1816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00064', 'locality-3df1c47f', 'locality-3df1c47f-moex-112-44bd4b53', 'sub-locality-3df1c47f-05', NULL, 'essay', '進行農業數據分析時，所獲得的觀測值係為實際的真值再加上誤差值。
而進行試驗設計的目的就是適當的排除誤差，留下純淨真值，以真實呈
現實質的處理效應。因此，請描述試驗過程中誤差值的來源，並描述如
何排除相關誤差的影響。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "8459b608cffb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "327", "s": "1816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00065', 'locality-3df1c47f', 'locality-3df1c47f-moex-111-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '請述下列名詞之意涵，並舉例說明之：（每小題 4分，共 20分）
有性生殖
無性繁殖
修剪
嫁接
整枝（含誘引拉枝）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "1eb1f77b83d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "328", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00066', 'locality-3df1c47f', 'locality-3df1c47f-moex-111-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '作物嫁接有那些方法？請詳述之。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "1eb1f77b83d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "328", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00067', 'locality-3df1c47f', 'locality-3df1c47f-moex-111-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '植物的光合作用分為那兩類？影響光合作用的外界因素有那些？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "1eb1f77b83d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "328", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL),
  ('locality-3df1c47f-moex-00068', 'locality-3df1c47f', 'locality-3df1c47f-moex-111-545614f0', 'sub-locality-3df1c47f-01', NULL, 'essay', '請說明東方美人茶（膨風茶）成因、特色、產業困境與發展遠景。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:00+00:00", "source_pdf_sha1": "1eb1f77b83d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "328", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "農業技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
