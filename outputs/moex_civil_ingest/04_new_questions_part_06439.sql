-- W1.6 questions batch 6439/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00124', 'locality-0c700c30', 'locality-0c700c30-moex-112-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '連續變數 Y 代表因變數藥效（越大代表成效越佳），自變數 X 為類別變
數，代表 A、B、C三種藥物處方，三組人樣本數相同，各只接受其中一
種處方。
某軟體將 X轉成以下虛擬變數（dummy variable）X 及X ：
1 2
1 當X  A  0 當X  A
X 0 當X  B ，及X 1 當X  B
1 2
0 當X C 0 當X C
然後以 Y 對X 及X 配適迴歸模式：Y  X  X ε。請就以
1 2 0 1 1 2 2
下檢定結果比較三種藥物之藥效（如：何者顯著較佳，何者間無顯著
差別）。（15分）
Term Coef SECoef t-Value P-Value
Constant 8.200 0.732 11.20 0.000
X -2.10 2.10 -1 0.32
1
X 4.50 1.03 4.35 0.000
2
另一種軟體轉虛擬變數的方式如下：
1 當X  A   0 當X  A
X*  0 當X  B ，及X*  1 當X  B
1 2
1 當X C 1 當X C
然後以Y 對X*及X*配適迴歸模式：Y X*  X* ε。請就以下檢
1 2 1 1 2 2
定結果比較三種藥物之藥效。（15 分）
Term Coef SECoef t-Value P-Value
Constant 8.200 0.732 11.20 0.000
X* -2.64 1.01 -2.61 0.009
1
X* 3.50 1.01 3.46 0.000
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "b0cd53da890c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00125', 'locality-0c700c30', 'locality-0c700c30-moex-111-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '欲針對園區內 5,000 個租屋的上班族進行抽樣調查，以了解其租屋支出
及社會住宅需求。根據過去幾年的研究報告，月租屋支出之標準差為
S 30（千元），社會住宅需求比例（P）介於 35%到 45%之間。若採用簡
單隨機抽樣方式，欲在95%的信賴水準下估計月平均租屋支出（Y ）及
=
社會住宅需求比例（P），同時達到下列估計精確度的要求，則需多少樣
本數？（10分）
P pP 0.05 0.95, P(| y Y |3)0.95
式中 p及y分別為P及Y 的估計量。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "90b31d5f15a3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00126', 'locality-0c700c30', 'locality-0c700c30-moex-111-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '欲了解醫院的醫療採購情形，由 120 家醫院抽樣調查 30 家醫院，取得
下列（x,y）的樣本統計資訊。x：登記的病床數為輔助變數（單位：床），
y：醫療採購金額為興趣變數（單位：萬元）：
30 30
x22,500, y 19,500, s2 360,000,s2 250,000,s  240,000，
x y xy
1 1
已知 120 家醫院登記的總病床數為 96,000。
用比率估計量（ratioestimator, y ）及迴歸估計量（regressionestimator,
R
y ）估計平均一家醫院之醫療採購金額（Y ）。（10 分）
lr
求算前述兩個估計量相對於單位均數估計量（mean per unit estimator,
y ）的相對效率（relativeefficiency）並比較分析其精確度（precision）。
（10 分）
（註：答案如有小數，請計算至第二位）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "90b31d5f15a3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00127', 'locality-0c700c30', 'locality-0c700c30-moex-111-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '稽核單位欲了解申報資料的正確性，將申報資料共 10,000 件依其營業特
性別分成四層，每層的案件數分別為N 1,000; N 3,000; N 4,000;
1 2 3
N 2,000 ，再由每層抽取一簡單隨機樣本 n 10; n 30;n 40;
4 1 2 3
n 20進行查核。查核結果彙整如下表：
4
層別 1 2 3 4
短漏報件數 5 6 8 2
平均短漏報金額（萬元） 15 10 8 4
短漏報金額標準差（萬元） 40 30 50 10
配合前述抽樣設計，回答以下問題：（20 分）
㉑估計平均短漏報金額（Y ）及該估計量之標準誤。
㉒估計短漏報比例（P）及該估計量之標準誤。
假設前述資訊已知，原樣本配置方式改為何種配置方式將可提高估計
精確度？（5分）
依所建議之配置方式回答以下問題：（10分）
㉑若針對估計均數Y ，如何配置樣本 n 100 到各層？
㉒若針對估計比例 P，如何配置樣本 n 100到各層？
=
（註：答案如有小數，請計算至第二位）
=', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "90b31d5f15a3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00128', 'locality-0c700c30', 'locality-0c700c30-moex-111-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '欲調查某國家公園內的樹感染病蟲害的情況，該國家公園內共分成10個
區域，首先由 10 個區域隨機抽出 4 個區域，再就被抽出的區域隨機抽
出 5%的樹進行調查，調查結果如下表：
區域 樹種植 樹抽出 樹感染病蟲害
i 數量M 數量m 數量a
i i i
1 200 10 1
2 300 15 5
3 300 15 5
4 400 20 4
說明此抽樣設計的名稱及兩階段的抽樣單位（Primary Sampling Units
及 SecondarySampling Units）。（15 分）
試估計該國家公園內的樹感染病蟲害的比例（P），並提供95%信賴區
間。（20分）
（註：答案如有小數，請計算至第二位）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "90b31d5f15a3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00129', 'locality-0c700c30', 'locality-0c700c30-moex-111-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '下表為 1897-2014 年各月侵臺颱風合計次數表。
一至
月份 四月 五月 六月 七月 八月 九月 十月 十一月 十二月
三月
侵臺颱風次數 0 1 14 30 99 122 94 36 8 1
請估計每年侵臺颱風之平均次數。（5 分）
若每年侵臺颱風次數服從卜瓦松（Poisson）分配，依此資料之估計結
果，計算一年內侵臺颱風超過兩次（含）以上的機率。（10 分）
若將前述侵臺颱風次數表視為隨機的抽樣結果，且 p 代表八月發生侵
臺颱風次數在總侵臺颱風次數之比例。在顯著水準為 0.05下，檢定八
月發生侵臺颱風之比例是否超過1/4。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "d30135c2df39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00130', 'locality-0c700c30', 'locality-0c700c30-moex-111-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '若隨機變數 X與Y的聯合機率分配如下：
Y
X
4 5 6
8 0.10 0.20 0.20
9 0.20 0.20 0.10
計算在 X 8 的條件下，隨機變數 Y 的邊際分配、期望值與標準差。
（15 分）
=
詳細說明 X與Y是否為獨立隨機變數。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "d30135c2df39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00131', 'locality-0c700c30', 'locality-0c700c30-moex-111-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '若隨機變數 Y 為具有參數 n 與 p 的二項分配，定義 pˆ Y /n及
1
pˆ (Y 1)/(n2)為 p 的兩個估計量。
2
分別證明pˆ 與pˆ 是否為 p的不偏估計量。（10 分）
1 2
詳細推導pˆ 與pˆ 的均方誤差（mean squareserror, MSE）。（15分）
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "d30135c2df39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00132', 'locality-0c700c30', 'locality-0c700c30-moex-111-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '若考慮一項二因子之實驗設計，因子 A 有 3 個水準，因子 B 有 4 個水
準，每個處理皆有 3 個重複觀測值。得到以下變異數分析表（ANOVA）：
Sumof Degreesof Mean
F
squares freedom squares
TreatmentA 54.4 （B） （G） （K）
TreatmentB 27.6 （C） （H） （L）
InteractionAB 115.4 （D） （I） （M）
Error （A） （E） （J）
Total 299.5 （F）
寫出（A）至（M）的值，詳述其所需之公式與計算過程。（13 分）
詳述（L）與（M）之檢定統計的虛無假設與對立假設；並在顯著水準
為 0.05 下，說明各自檢定之結論。（12分）
t分配表
t
α', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "d30135c2df39", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00133', 'locality-0c700c30', 'locality-0c700c30-moex-111-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'essay', '假設 X 物品的市場中有 20 個相同的消費者。每位消費者的反需求曲線
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
=', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "3f21c357b91c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
