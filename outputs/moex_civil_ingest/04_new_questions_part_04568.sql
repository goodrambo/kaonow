-- W1.6 questions batch 4568/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0c700c30-moex-00152', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-111-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'single_choice', '下列那一個學派，特別強調勞動跨期替代效果，並且工資的變化只是暫時性而非恆常性？', '["貨幣學派", "古典學派", "凱因斯學派", "實質景氣循環學派"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "7b2be102255d", "answer_pdf_sha1": "40ea3bc8eedf", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "325", "s": "0908", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00153', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-111-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '在人機互動的場域中，有所謂 VR（Virtual Reality）與 AR（Augmented
Reality），請各舉出一個實際的應用試述它們是什麼？並從沉浸度及虛擬
度強弱比較它們的不同。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "980b07b242f5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "325", "s": "2617", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00154', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-111-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '資料表正規化（Normalization）為降低新增異常、刪除異常、更新異常等
資料異動異常的有效方式，請試述：（每小題10分，共30分）
資料表達成二階正規化的特徵。
資料表達成三階正規化的特徵。
需要資料表反正規化（Denormalization）的原因與做法。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "980b07b242f5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "325", "s": "2617", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00155', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-111-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '在資料庫設計中，兩資料表最小基數（MinimumCardinality）的關係，可
分為 O:O、M:O、O:M、M:M（O 表選擇，M 表強制，冒號前面表父資
料表，後面表子資料表），請比較並解釋其中 M:O與 O:M關係中資料庫
設計的難度。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "980b07b242f5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "325", "s": "2617", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00156', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-111-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '兩個資訊設備互連溝通，端賴使用相同的通訊協定（Protocol），國際標
準組織（ISO）定義了開放式系統互聯模型（OpenSystemInterconnection
Model,OSI模型），OSI模型從實體層（PhysicalLayer）到應用層（Application
Layer）共分為七層架構，請針對下列TCP/IP通訊協定，試述其功能、舉
出實際應用，並指出屬於OSI模型的那一層：（每小題15分，共30分）
ICMP
UDP', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "980b07b242f5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "325", "s": "2617", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00157', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-111-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '主副程式的參數傳遞，主要可區分為傳值呼叫（callbyvalue）和傳址呼
叫（callbyaddress），請說明此兩種方法何種的計算效率較高及其較高的
原因？下列主副程式，請分別依照傳值呼叫和傳址呼叫寫出輸出的答案。
（15 分）
主程式 副程式
A=1 Function F(X,Y, Z)
B=2 Z=X
C=3 X=Y
F(A, B,C) Y=Z
PRINTA, B,C END', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "980b07b242f5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "325", "s": "2617", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00158', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-ec859484', 'sub-heelevel3-0c700c30-05', NULL, 'essay', '025
一、某人欲研析某地區街=貓數. 目，將該地區劃分為四等份並編號 i=1, 2, 3, 4
如下：
1 2
3 4
而其所採之抽樣設計分兩階段進行如下：
⑴首先隨機選擇一個區域並觀察該區域街貓數目 。
⑵若 ，則繼續觀察其相鄰之兩個區域作為樣本區域，否則若
(y)
，則隨機選擇剩下未觀察之三個區域中的其中一個區域作為樣本區
y > 10 y ≤
域。
10
例如若第 1個區域在第⑴階段被選，且 ，則在其他第 2,3,4等三
個區域中再隨機選擇一個區域觀察，若 ，則繼續觀察第 2 及 3個
y ≤ 10
區域。注意：第 1及第 4個區域不相鄰，同理第 2及第 3個區域不相鄰。
y > 10
今假設該地區街貓實際分布如下：
y = 7 y = 13
請根據此抽樣設計及母體，回答下列問題：（每小題 5 分，共 20分）
y = 19 y = 1
若不考慮樣本出現順序，樣本組合為 之機率為何？
第 4個區域之抽樣包含機率（inclusion probability）？
s = (2,3)
若以觀察值之平均值，記為y，為母體平均之估計量，請問y之偏誤
（bias）為何？
請問y之均方誤差（meansquare error）為何？
二、某人於康寧鄉進行一項有關 110年 6 月農牧業從業戶之生產成本及收入
調查，該鄉共有3 戶養豬場，10戶養雞場，農業從業戶之戶數不詳，但
由航空測量之空照圖可判明康寧鄉之農地面積為300 公頃，而根據公務
資料，康寧鄉 6月之雞隻在養隻數為 10,000隻。
其抽樣設計如下：養豬場全選，養雞場及農業戶則分別以簡單隨機抽樣
取出不放回之方式各選擇 4 戶養雞場及 10 戶農業戶，調查所得資料如
下：
養豬場：
6 月平均在養豬頭數 500 750 200
6 月生產成本（萬元） 300 450 150
養雞場：
6 月平均在養雞隻數 500 1500 300 200
6 月生產成本（萬元） 35 120 15 30
農業戶：
耕地面積（公頃） 2 0.5 5 1 0.3 2 1.2 3 1 4
6 月生產成本（萬元） 2 6 6 1 5 5 2 3 5 5
請回答下列問題：
請以您認為合適的估計量推估康寧鄉養雞場平均6月每場之生產成本
以及其 95%信賴區間，並說明使用該估計量之理由，並據以計算如果
下年度想針對康寧鄉的養雞場再執行一次生產成本調查以推估該年
度 6 月平均每場生產成本，並希望能將 95%最大抽樣誤差控制在6 萬
元以內，請問所需最小樣本數為何？（15分）
請問康寧鄉畜牧戶從業戶6月平均每場之生產成本以及其95%信賴區
間為何？（10 分）
請以您認為合適的估計量推估康寧鄉6月總生產成本以及其95%信賴
區間，並說明使用該估計量之理由。（10分）
請問康寧鄉 6月農牧業總生產成本以及其 95%信賴區間為何？（5 分）
三、龍江大學企業管理學系規劃於系館增設一性別友善廁所，事前先行對全
系學生進行意願調查，調查方式是以簡單隨機抽樣取出不放回的方式於
全系 240 位學生（其中有200位女學生及40 位男學生）中，選擇60 位
學生作為調查樣本，並詢問其對增設性別友善廁所之意見。
於 60 位樣本學生中，共有 24 位學生表示贊成。而 60 位樣本學生中有
30 位男同學，30 位女同學，男同學中有 6 位表示贊成，女同學中則有
18 位表示贊成。（每小題 10分，共 20 分）
請以您認為合適的估計量推估龍江大學企業管理學系學生贊成增設性
別友善廁所之比例及其95%信賴區間，並說明採用此一估計量之理由。
會計學系也想參考企業管理學系的經驗，規劃設立性別友善廁所並先
對學生意見進行調查。系主任計劃分別由女同學及男同學中各以簡單
隨機抽樣取出不放回的方式選擇若干同學，總計希望能由會計學系的
250 位學生中選擇 100 位學生作為調查樣本。因為會計學系男女生比
例為 4：6，因此系主任規劃男學生之樣本數為 40，而女學生之樣本數
為 60。請問您是否認同此一樣本數配置，請說明您的理由，同時如果
您不認同，請提出您認為較適當的樣本數配置。
四、為推估三民市內之便利商店每日營業額以作為評估是否應該投入經營
便利商店之參考，某人在三民市內總數為50 間的便利商店中，以簡單隨
機抽樣取出不放回的方式選擇了 10 間便利商店，並詢問其店長當日該
店預估之營業額，同時並提供 200 元之禮券以答謝店長之合作。調查所
得資料中，10 間樣本便利商店之日營業額資料如下：（樣本平均為 6 萬
元，樣本變異數為 2.67（萬元）2）
商店編號 1 5 6 14 17 21 32 42 43 45
日營業額
5 3 6 6 6 7 8 4 7 8
（萬元）
某人又由上表的 10 間商店中，以簡單隨機抽樣取出不放回的方式選擇其
中5間，請店長提供其當日營業報表之總結摘要，以記錄其實際日營業額，
同時又額外提供1000元禮券給這5位店長作為答謝。其資料如下：
商店編號 5 17 21 32 42
報表摘要日營業額
5 9 9 11 8
（萬元）
請回答下列問題：（每小題 10分，共 20分）
請以適當之方式推估三民市之便利商店之平均日營業額及其95%信賴
區間。
在這次調查中總共花費了 7,000 元購買禮券，請問若想再執行一次抽
樣設計相同之調查，但將購買禮券之預算增加為 8,000 元，請問直接
詢問店長日營業額及查閱營業報表之樣本數應如何配置為宜？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "cefc7c219d68", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00159', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '025 0.05 0.1
t =2.306，t =2.262，t =2.228，t =1.860，t =1.833，t =1.812', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "100c96cee8ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00160', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '025,8 0.025,9 0.025,10 0.05,8 0.05,9 0.05,10
F =6.059，F =6.053，F =4.459，F =3.838', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "100c96cee8ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00161', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '025,2,8 0.025,4,8 0.05,2,8 0.05,4,8
一、令 與 為具獨立同分布、期望值 的指數（exponential）隨機變數。
令 以及 。（每小題 10 分，共20分）
  1⁄
試求 與 之聯合機率密度函數。
 =  −  = 
試求 之邊際機率密度函數。
 

二、令 為一組隨機抽自常態分配 N(0, )之樣本。假設 ，
在顯著水準 0.05下：   
,,...,   > 
試求檢定 ： vs. ： 的最強力檢定（most
powerfultest）。（10分）  
  =    = 
試求檢定 ： vs. ： 的齊一最強力檢定
（uniformly mostpowerfultest）。（5分） 
  =    > 
說明檢定 ： vs. ： 的齊一最強力檢定是否存
在。（5 分）    
  =    ≠ 
三、以下是 兩變數之觀測資料：
X 11 9 14 10 12 15 7 5 13 8 6
Y 7.4(6,6.)77 12.74 7.11 7.81 8.84 6.08 5.39 8.15 6.42 5.73
以下考慮皮爾森相關係數（Pearson’s correlation coefficient ）與皮爾曼
等級相關係數（Spearman’s rank correlation coefficient ）。

試畫出 之散布圖，並試計算 與 。（10分）

試刪去本數據中之離群子後，重新計算 與 。（5 分）
(,)  
試問 與 何者容易受離群子影響？（5分）
 
 
四、甲公司之零件製造部門有三台機器，輪流由五名員工（ABCDE）負責操
作。李主任擬研究不同機器以及不同員工之生產量是否不同。以下是隨
機抽取之生產量資料：
機器一 機器二 機器三
員工A 31 25 35
員工B 33 26 33
員工C 28 24 30
員工D 30 29 28
員工E 28 26 27
試寫出 ANOVA表（Analysis ofVarianceTable）。（5 分）
在顯著水準 0.05 下，試檢定不同機器之生產量是否不同。（5 分）
在顯著水準 0.05 下，試檢定不同員工之生產量是否不同。（5 分）
試寫出模型假設。（5 分）
五、乙公司從2018年第一季至2020年第四季之銷售量如下表所示：
第一季 第二季 第三季 第四季
2018 1,600 2,500 2,800 2,970
2019 2,100 3,100 3,650 3,350
2020 2,250 3,250 3,840 3,860
假設該公司近年第一至四季的季節指數分別為 74.720、103.978、', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:05+00:00", "source_pdf_sha1": "100c96cee8ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1115", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
