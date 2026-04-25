-- W1.6 questions batch 6443/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00164', 'locality-0c700c30', 'locality-0c700c30-moex-111-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '一位統計分析師想瞭解身高（Y，以英寸為單位）是否可以用手掌張
i
開長度（X ，以公分為單位）和性別（X ，男性是 1，女性是 0）來
1 2
預測？他收集 66名大學生為樣本。所配適的線性迴歸模型如下：
Y  X  X , i 1, ,n.
i 0 1 1i 2 2i i
請依據表 1回答下列問題。
表1:ANOVA
Source SumofSquares DF Meansquare Ftest
Regression 840.8436 2
Error (1) (3) (5)
（Lackoffit） (2) (4)
（Pureerror） 283.8476 45
Total 1220.4394 65
請計算表1中(1) (5)所列的線性迴歸的ANOVA相關訊息。（10分）
在顯著水準 5%下，請檢定身高是否與手掌張開長度(X )和性別
1
−
(X )有線性關係存在。請列出虛無假設/對立假設、檢定統計量及
2
決策法則。在無需查表之下，你的建議結論為何？（5分）
在顯著水準 5%下，請檢定線性迴歸模型是否有顯著的缺適（lack
of fit）？以了解線性迴歸模型是否足以描述身高與手掌張開長度
(X )和性別(X )之間的關係。請列出虛無假設/對立假設、檢定統
1 2
計量及決策法則。在無需查表之下，你的建議結論為何？請說明缺
適檢定所需要之假設。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "f2f154707a0b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00165', 'locality-0c700c30', 'locality-0c700c30-moex-111-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '一位統計分析師分析奧林匹克男子田徑短跑200公尺數據，包含1900年
至 2020 年間舉行的 28 次男子 200 公尺奧林匹克短跑比賽獲金牌的秒
數，其中第一次和第二次世界大戰期間沒有舉辦奧運會，而2020年奧林
匹克運動會因為 COVID-19 疫情實際是 2021 年在日本東京舉行。因此
資料包含year（以年為單位）和Y（以秒為單位），其散布圖在圖1。
圖1 奧林匹克年份和男子田徑短跑200公尺秒數散布圖
這位統計分析師重新定義變數，他把“西元年（year）”平減 1963，並
定義新的解釋變數 X，也就是 X year 1963。樣本相關資訊如下，其
中 n 為樣本數，請依據這些資訊回答問題。
= n −
X 0.1429, Y 20.5582, S (X -X)(Y-Y)=888.2171,
XY i i
i1
n n
S (X -X)2=36859.4286, S (Y-Y)2 24.3354
XX i YY i
i1 i1
請計算(X,Y)的皮爾森相關係數。（5分）
該統計分析師配適模型Y  X ，此處是誤差項。請寫出
i 0 1 i i i
以最小平方估計法所得到的估計迴歸線，並推導共變異數 ˆ 和 ˆ，
0 1
也就是 ˆ ˆ 。（ 分）
Cov(,) 10
0 1
在顯著水準0.05之下，請檢定H : 0是否顯著？請詳述檢
0 1
定統計量之值、決策法則和結論。請問年份和獲金牌的秒數之間是
否存在線性關係？以此資料是否可以推論人類在田徑短跑越跑越
快？t分配臨界值，t (26) 2.0555, t (27) 2.0518。（10分）
0.025 0.025', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "f2f154707a0b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00166', 'locality-0c700c30', 'locality-0c700c30-moex-111-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '一位統計分析師受託分析20 名年齡 40~60歲高血壓患者的血壓相關
數據，以評估可能影響血壓的重要因素，資料描述如下：
血壓（Y，反應變數，以 mmHg 為單位），年齡（X ，以年為單位），
1
重量（X ，公斤），體表面積（X ，平方公尺），高血壓病史（X ，
2 3 4
以年為單位），基礎脈搏（X ，以每分鐘為單位），壓力指數（X ，
5 6
0 100 為範圍）。部分統計套裝軟體輸出結果在表2 和表 3。
表2
− 反應變數 5個解釋變數 判定係數
X X -X 0.451 
1 2 6 

X X ,X -X 0.925
2 1 3 6
X X -X ,X -X 0.905
3 1 2 4 6
X X -X ,X -X 0.196
4 1 3 5 6
X X -X ,X 0.754
5 1 4 6
X X -X 0.416
6 1 5
表3
解釋變數 TypeISS 偏判定係數
X SSR(X ) 243.266 0.4344
1 1
X SSR(X |X ) 306.886  0.96891
2 2 1 ,
X SSR(X |X ,X ) 0.765  0.07763
3 3 1 2 ,|
X SSR(X |X ,X ,X ) 0.250  0.02755
4 4 1 2 3 ,|,
X SSR(X |X ,X ,X ,X) 0.965  0.1092
5 5 1 2 3 4 ,|,,
X SSR(X |X ,X ,X ,X,X ) 1.023E-04  1.3E-05
6 6 1 2 3 4 5 ,|,,,
這位分析師一開始採用(1)式中模型 1 的複迴歸分析，他擔心有多
,|,,,,
重共線性（Multicollinearity）問題。
模型1：
Y X  X  X  X  X  X , i 1, ,n. (1)
…
i 1 1i 2 2i 3 3i 4 4i 5 5i 6 6i i
請協助這位分析師利用表 2 判斷是否有嚴重的多重共線性，並說明
模型1是否合適？如果不合適，請詳細說明原因和判斷方法。（5分）
表 3第二欄的定義，若 SSR（X|X）代表給定 X 已在模型中，X 加
i j j i
入模型中的額外平方和（extra sum of squares）。請計算 SSR
（X ,X ,X ,X ,X ,X ）。最後一欄符號代表偏判定係數（coefficient of
1 2 3 4 5 6
partialdetermination）。請說明偏判定係數R2 的計算式及其意
Y,X X ,X
3 1 2
義。請利用表 3結果，建議分析師採用那些變數，詳細說明理由和
判斷方法。（10分）
請利用表 3結果及 SST=560，SSR（X ,X ,X ）=551.568，計算 SSR
1 2 5
（X |X ,X ）和偏判斷係數R2 。（10分）
5 1 2 Y,
X X ,X
5 1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "f2f154707a0b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00167', 'locality-0c700c30', 'locality-0c700c30-moex-111-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '一位教師擬瞭解學生的測試表現是否受智商和教學方法所影響，以
60 名學生為實驗對象，在採用三種教學方法之下，獲得測試成績Y，
智商 X。前兩種教學方法 M ,M 變數定義如下。
1 2
1 教學法1 1 教學法2
M  M
1 0 其他 2 0 其他
這位教師分別考慮的模型如下：
模型 1 Y  X , i 1, ,n.
…
i 0 1 i i
模型 2 Y  M M , i 1, ,n.
…
i 0 2 1i 3 2i i
模型 3 Y  X M M , i 1, ,n.
…
i 0 1 i 2 1i 3 2i i
請使用表 4部分電腦輸出 3個模型的變異數分析（ANOVA,Analysis
of Variance）報表來回答下列問題。
在考慮模型 3 之下，請檢定智商 X 該解釋變數對於解釋測試成績
是否有顯著的解釋能力。請用顯著水準=0.05檢定並詳述檢定統
計量之值、決策法則、結論和所需之假設。t 分配臨界值，
t (56)2.0032。（10分）
0.975
在考慮模型 3 之下，請檢定教學方法 M 和 M 這兩個虛擬變數是否
1 2
在模型 3 對預測學生測試成績有效應。請在顯著水準=0.05，檢定
H :==0，請詳述檢定統計量之值、決策法則、結論和所需之假
0 2 3
設。F分配左尾臨界值，F (1,56) = 4.0130 , F (2,56) = 3.1619。
0.95 0.95
（10 分）
請使用表 4說明那一種教學方法最能提升測試成績，須說明論述。
（5 分）
表4
模型1ANOVA表
AnalysisofVariance
Source DF SumofSquares MeanSquare Fvalue P-value
Regression 1 816.928 816.928 14.72 0.0003
Error 58 3219.255 55.504
Total 59 4036.183
模型2ANOVA表
AnalysisofVariance
Source DF SumofSquares MeanSquare Fvalue P-value
Regression 2 2880.033 1440.017 71 P-value
Error 57 1156.150 20.283
Total 59 4036.183
模型3ANOVA表和參數估計
AnalysisofVariance
Source DF SumofSquares MeanSquare Fvalue P-value
Regression 3 3512.745 1170.915 125.27 <.0001
Error 56 523.438 9.347
Total 59 4036.183
模型3參數估計
Variable DF Estimate StandardError tvalue P-value
Intercept 1 56.024 4.306 13.01 <.0001
X 1 0.350 0.043 8.14 <.0001
M 1 -15.770 0.967 -16.3 <.0001
1
M 1 -11.943 0.972 -12.28 <.0001
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "f2f154707a0b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "316", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00168', 'locality-0c700c30', 'locality-0c700c30-moex-110-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '何謂抽樣誤差？那種樣本可以測量抽樣誤差？有那些方法可以降低抽
樣誤差？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b8fe30e44328", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00169', 'locality-0c700c30', 'locality-0c700c30-moex-110-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '何謂簡單隨機樣本？（5 分）
考慮簡單隨機抽樣，請證明任一母體元素u , i=1,…, N 被選入樣本的
i
機率為 n/N。（5分）
請問下列敘述是否正確？「若任一母體元素u ，i=1,…,N 被選入樣本
i
的機率皆相等，則此樣本稱為簡單隨機樣本」，若不正確，請舉一反例
說明。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b8fe30e44328", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00170', 'locality-0c700c30', 'locality-0c700c30-moex-110-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '抽樣時，採分層隨機抽樣方法而不採用簡單隨機抽樣方法的原因有那
些？（10分）
考慮分層隨機抽樣，證明在抽樣總成本固定之下，使樣本平均之變異
N / c
數最小的各層樣本數最佳配置為n n( i i i )，其中N 是第 i 分層
i L i
N / c
k k k
k1
的大小，2是第 i 分層的變異數，c 是由第 i 分層獲得一觀察值的成
i i
本。（15分）
考慮分層隨機抽樣，請問在那一種樣本配置下，母體平均估計量與簡
單隨機抽樣時的母體平均估計量相同，試證明之。（10分）
(k 1)nMSBSST', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b8fe30e44328", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00171', 'locality-0c700c30', 'locality-0c700c30-moex-110-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '考慮系統抽樣，請導出 ，
(n1)SST
n k
MSB (y y)2
k1 i
i1
1 k n
其中N=nk， 是系統樣本（集群）內任2元素的相關係數，MSW  (y y)2
k(n1) ij i
i1 j1
k n
SST (y y)2
ij
i1 j1
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b8fe30e44328", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00172', 'locality-0c700c30', 'locality-0c700c30-moex-110-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '考慮集群抽樣，若母體總數 M已知，請問母體總和的估計量為何？若
不知母體總數 M，但知道集群總數 N 時，請問母體總和的估計量為
何？（5分）
n
M y
1 i i
考慮兩階段集群抽樣，證明母體平均估計量 i1 是母體平
M n
均的不偏估計量。其中M =M/N。提示：E() E E ()（10分）
1 2|1
考慮兩階段集群抽樣，由相等大小集群 M抽取相等大小樣本 m，且當
1 2
N很大時，證明在固定抽樣成本下，使V() (2  w)值最小的m
n b m
2c
為m w 1，其中c 是第一階段每一觀察值的成本，c 是第二階段每
2c 1 2
b 2
一觀察值的成本，2是集群平均間的變異數，2是集群內元素間的變
b w
異數。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b8fe30e44328", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00173', 'locality-0c700c30', 'locality-0c700c30-moex-110-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '令 的聯合機率密度函數（Joint probability density function）為
。求 使得 符合聯合機率密度
,

函數的要求；並求/ 的邊 際機率密度函數（Marginalprobabilitydensity
(,) =  ,0 <  <  < ∞  (,)
function）， 、 、以及 、 。（25分）
,
() () () ()', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "fbccfa3a59a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
