-- W1.6 questions batch 6418/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0a2fc18c-moex-00140', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '某研究擬測試三種品牌汽油的每加侖所能行駛之英哩數。由於不同廠牌
汽車的汽油性能特點不同，實驗選取 4 個廠牌汽車作為區集；意即，每
個廠牌的汽車都用每種類型的汽油進行測試。實驗結果如下表：（以英
哩/加侖為單位）
汽油品牌
I II III
甲 18 21 27
乙 24 23 28
汽車
丙 20 25 30
丁 22 23 27
試計算並列出適合此實驗設計的變異數分析表（ANOVATable）。（20分）
試寫出檢驗三種品牌汽油之每加侖英哩數差異的虛無假設與對立假
設，計算檢定統計量，並說明在 5%之顯著水準下，三種品牌汽油之每
加侖英哩數是否有顯著差異。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "acc34abf1944", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00141', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '假設 為解釋變數、 為反應變數，且i 1,2,...,n。為了描述兩變數之關
聯性，擬建立簡單線性迴歸模型： ，其中 為獨
 
立且相同 N(0,2) 分佈之誤差。請利用下方訊息回答問題：
 =  + + ,…,
, n , n , n ,
n14 X 630 Y 520 X Y 20940
i1 i i1 i i1 i i
n 2 , n 2
X 30300 Y 22482。
i1 i i1 i
試計算並寫出最小平方估計方程式。（10 分）
試計算並解釋判定係數（CoefficientofDetermination;R2）及樣本相關
係數（SampleCorrelation Coefficient）。（10分）
試計算並解釋當X 45時，Y的期望值之 95%信賴區間。（10分）
（參考值：t 2.179, t 1.782, t 2.160, t 1.771
0.025,12 0.05,12 0.025,13 0.05,13
t 2.145, t 1.761）
0.025,14 0.05,14
32280', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "acc34abf1944", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00142', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '定義X及Y為獨立的標準常態分布隨機變數，令U X/Y及V Y 。試
計算U和 V之機率密度函數，並說明 U和 V分別為何分布。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "acc34abf1944", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00143', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '定義母群體平均值為 ，欲進行假設檢定問題：
H （虛無假設）：  10；H （對立假設）：  10。
0 a
μ
已知母群體標準差為 6，樣本數是 36。在 95%的信心水準之下，當真實
的母群體平均值為 10.68 時，試計算並說明進行此檢定最合適的檢定統
計量之檢定力（Power）是多少？（20分）
32280
附表一、標準常態分布表(左尾機率)，例如：
P(Z≤1.96)=0.975
32280
附表二、F分布表(右尾機率)，例如：
P(F,>8.53)=0.10', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "acc34abf1944", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00144', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'essay', '假設 X 物品的市場中有 20 個相同的消費者。每位消費者的反需求曲線
（inversedemandcurve）為p1002qd，其中 p及 qd分別為 X商品的價
格及個別消費者的需求量。根據以上設定，回答下列問題：
求出 X物品的市場需求曲線（market demand curve）。（4分）
假設 X物品的市場中只有一個追求利潤最大的獨占廠商，且它面對
2
小題的市場需求曲線及擁有總成本函數C(q) q2 500，其中 q為獨
5
占廠商的產量。求出此獨占廠商的最適產量、最適價格、均衡利潤及
在最適價量下所造成的社會無謂損失（deadweightloss）。（8分）
假設 X物品的市場中有兩個追求利潤最大的雙占廠商。他們共同面對
2
小題的市場需求曲線，且擁有相同的成本函數C(q ) q2 500，其
i 5 i
中 q 為第 i，i 1,2，家廠商的產量。求出雙占廠商的最適產量、最適
i
商品價格及均衡利潤。（13 分）
=', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00145', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'essay', '考慮下列封閉的凱因斯模型：
Y CIG
C1000.5Y
d
Y YT
d
T 1000.2Y
I 15010i
G20
其中 i為實質利率，Y為實質產出水準，Y 為可支配所得，C為消費量，
d
T為總稅收，G為政府支出，I為投資數量。
給定以上模型，求出儲蓄函數。另外，在實質利率 i 1 下，使商品市
場均衡的實質產出水準為何？（6 分）
=
31660
32060 32160
−
給定以上模型及實質利率 i 1，且充分就業所得水準為Y 500。請問
f
此經濟體系具有膨脹性缺口（inflationary gap）或緊縮性缺口
= =
（deflationarygap）？若政府想以調整政府支出來消除此缺口，則應該
增加或減少多少政府支出？（6分）
給定第小題的模型設定，求出 IS曲線的方程式。（4 分）
考慮第小題的模型設定，但自發性投資由 150 減少為 120 及政府支
出由20增加為30。在新的參數下，求出IS曲線的方程式。另外，在新
的參數設定及實質利率i 1時，使商品市場均衡的實質產出水準為何？
（9 分）
=', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00146', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '若生產可能曲線（productionpossibilitiesfrontier）為一直線，則在何種條件，一國在自由貿易下會 有專業化生產的趨勢產生？', '["供給的價格彈性小於零", "當財貨的相對價格和生產可能曲線斜率不同時", "當財貨價格線和生產可能曲線斜率相同時", "各國的要素價格相等"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": "b1d8b4909cfe", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00147', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '假設電磁爐需求的價格彈性為1.6，如果技術進步使得電磁爐的生產成本大幅下降，則下列敘述何 者正確？', '["廠商的總收益增加", "廠商的總收益下降", "廠商的總收益不變", "無法判斷廠商總收益的增減"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": "b1d8b4909cfe", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00148', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '有關供給彈性的敘述，下列何者正確？', '["供應期間越短供給曲線的供給彈性越大", "供給彈性大小與供應期間長短並無關聯性", "供應期間越短供給曲線越陡", "供應期間越長供給曲線越陡"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": "b1d8b4909cfe", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00149', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '假設高等教育為正常財，且其價格上升。在其他條件不變的情況下，下列何者正確？', '["高等教育的需求量減少", "高等教育的替代效果及所得效果為反方向", "所得效果會使高等教育的需求量增加", "高等教育的替代效果會使高等教育的需求量增加"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": "b1d8b4909cfe", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
