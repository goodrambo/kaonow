-- W1.6 questions batch 4560/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0c700c30-moex-00072', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-ec859484', 'sub-heelevel3-0c700c30-05', NULL, 'essay', '欲了解某區域養殖漁戶營運狀況，該區域共有800家養殖漁戶，首先由該
區域抽得一個包含500戶（第一重樣本n500）的簡單隨機樣本以取得養
殖型態（是否為漁電共生的層別資訊），調查得知其中100戶為漁電共生
戶，進而以簡單隨機抽樣由漁電共生及非漁電共生的養殖漁戶分別抽20%
以調查其營運成本資訊，調查結果整理如下表：
第一重樣本 第二重樣本 養殖漁戶年營運成本
養殖型態（層別） （戶） （戶） 平均年營運成本 標準差
n n y （十萬元） s
（十萬元）
h h i i
漁電共生（I） 100 20 120 100
非漁電共生（II） 400 80 50 60
合計 500（n） 100（n） 75（s）
估計該區域養殖漁戶平均年營運成本（Y）（以十萬元為單位）及該估計
量的標準誤。（10分）
如果此調查總預算為44,500元，取得養殖型態的單位成本為9元，調查
營運成本的單位成本為400元（c9, c 400），有關標準差、各層權
h
重、各層平均年營運成本及標準差之母體資訊分別以前述樣本資料（s,
n
i , y , s ）取代。試求：（15分）
w
i n i i
⑴決定分層雙重抽樣的最佳抽樣設計（Optimumdoublesample plan），
亦即求算n、n 。
h
⑵就⑴的抽樣設計求算平均年營運成本估計量（以十萬元為單位）的
變異數。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "27bf9d703b82", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00073', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-ec859484', 'sub-heelevel3-0c700c30-05', NULL, 'essay', '欲了解2022年國內汽車銷售概況，就2000家汽車銷售業者進行調查，汽車
銷售業者分為兩大類：國產型（I）及進口型（II），業者家數分別為N =1500
1
及N =500。抽樣方法採用分層隨機抽樣，依類別分層，從每一層分別隨
2
機抽出10家業者進行調查。假設2021年（x）各類業者的年平均銷售量已
知為：X =220（輛）; X =140（輛）。
1 2
調查結果20家業者在2021年（x）及2022年（y）的銷售量統計如下：
樣本均數
層別 比率 樣本共變異數 樣本標準差
變數 y ,x
（h） i i （Rˆ ） s s
（輛） h xyh h
y 240 100
I 1.2 7200
x 200 80
y 180 60
II 1.8 2200
x 100 40
合計 s s s
=110, =90, =9000
y x xy
利用下列估計量估計年平均銷售量（Y ）及該估計量的變異數：（15分）
⑴y ，分層隨機抽樣結合簡單均數估計量（meanperunitestimator）。
st
⑵y ，分層隨機抽樣結合分開比率估計量（separateratio estimator）。
Rs
⑶y ，分層隨機抽樣結合混合比率估計量（combinedratioestimator）。
Rc
求算估計量y 、y 、y 對單位均數估計量（y ）之相對效率（relative
st Rs Rc
efficiency），並說明那個估計量具有較佳精確度。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "27bf9d703b82", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00074', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '若隨機變數 且 ，其中 代表連續均勻分配。
試求：
| =  ∼ (0,)  ∼ (0,1) 
的聯合密度函數 。（5分）
的機率密度函數 。（5分）
(,) (,)
、 、 、 、 。（15分）
 ()
() () () (,) ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "b8040108fbe5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00075', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '已知變異數是25，平均數 未知之常態分配中取出樣本大小為 之隨機樣
本 ，在顯著水準α=0.05下，檢定假設 ：μ=30vs. ：μ<30。
 
若希望μ=26.7時之檢定力達0.975，則需要多少樣本數？（25分）
,,⋯,  ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "b8040108fbe5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00076', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '欲比較三種不同的植物荷爾蒙（A、B、C）對癒傷組織新芽分化的影響。
每種植物荷爾蒙均重複五次實驗，分別測量所誘導出的新芽長度（cm），
得到資料如下：
荷爾蒙
A B C
1.7 0.4 1.1
1.6 0.5 1.0
1.5 0.3 0.7
1.9 0.2 0.8
1.2 0.3 0.5
試列出變異數分析（ANOVA）表及詳細計算過程。（10分）
試問3種植物荷爾蒙對誘導出的新芽長度的效果是否相等（α=0.05）？
請詳細寫出a.虛無與對立假設、b.檢定統計量公式、c.拒絕域、d.檢定值
之計算過程、e.檢定結果與結論。（10分）
資料需符合那3個假設？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "b8040108fbe5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00077', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '某電子公司想瞭解某電子組件之壽命，於是隨機取出樣本大小為n=10的
隨機樣本 ，其中 表示每個電子組件之壽命。若得到的樣本
數據為9，3，5，7，2，3，1，4，8，4（單位：10,000小時），請使用符號
1,2,⋯,10 
檢定方法，以α=0.05來檢定電子組件之壽命的中位數是否有顯著超過2.5
萬小時？（25分）
附表一
N(0,1)
(z)
α
-3 -2 ∅ -1 0 1z 2 3 -3 -2 -1 0 1 zα2 3
z 1 2
P(Z≤z)= (z)= ew/2dw
2
∅[(z)1(z)]
z
α
Zα
Zα/2
表二
附表二：F (v1, v2)值表
0.05', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "b8040108fbe5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00078', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'essay', '某一私有財的市場需求函數為 ，其中 、 分別是價格與
需求量。此私有財的市場供給是由兩群廠商所提供：每一家第1群廠商的
 = 1800−60  
邊際成本為 、每一家第2群廠商的邊際成本為 ，其中
（ ）是每一家第 群廠商的產量。個別廠商所生產的商品同質且沒
 = 5  = 10
有固定成本。假設每一群各由100家廠商所組成。請計算並回答下列問題：
  = 1,2 
（未提供詳細計算過程，不計分）
假設個別廠商都不能影響市場的交易價格及交易量。請問市場均衡時
的交易量與交易價格分別為何？（5分）市場均衡時，第1群及第2群廠
商的市場占有率分別為多少？（5分）又市場均衡時，第1群廠商總利潤
與第2群廠商總利潤分別為何？（5分）
假設兩群的廠商互相勾結、訂價以極大化利潤。兩群廠商勾結後同意，
第1群廠商市占率與第2群廠商市占率之比為2：1。請問在兩群廠商互相
勾結之下，市場均衡的交易價格及交易量分別為何？（5分）又市場均
衡時，第1群廠商總利潤與第2群廠商總利潤分別為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00079', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'essay', '以下為A國某一年度經濟活動的資料（單位：億元）：
民間消費：800 投資：1000
政府支出：700 政府稅收：800
出口：1060 進口：860
A國人民在國外的勞動所得：150 A國人民援助國外：30
A國贈與外國機器設備：10 A國人民持有國外證券的報酬：50
A國人民新增外國證券投資：250 外國人新增A國證券投資：300
A國人民出售專利給國外廠商所得：20
32460、32760
假設沒有其他項的交易，也沒有誤差與遺漏，請依國民所得會計帳與國際
收支帳定義，回答下列問題：
分別計算A國本年度的國民所得毛額（grossnationalincome,GNI）、民間
儲蓄毛額（ ）、經常帳餘額（CA）、資本帳餘額（KA）及央行準備與
相關項目增加或減少的金額（R）。（15分，未提供計算過程，不計分）
S
近3年來臺灣的超額儲蓄大幅增加，每年均超過新臺幣3兆元。請由國民
所得會計恆等式推導出一國超額儲蓄（ES）與其經常帳餘額的關係式
（4分，未提供推導過程不計分），並說明臺灣這幾年超額儲蓄大幅增加
的兩種可能原因。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00080', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'single_choice', '下表為A玩具廠在固定資源下的生產組合，下列敘述何者正確？ 玩偶 消防車 400 0 300 200', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00081', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-112-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'single_choice', '350', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:04+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "327", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 200, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
