-- W1.6 questions batch 4514/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel2-3df1c47f-moex-00005', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-113-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '說明以下擬說檢定相關名詞：（每小題 4分，共 20分）
型一錯誤（TypeI Error）
型二錯誤（TypeII Error）
顯著水準（SignificantLevel）
檢定力（Power）
P值（P-Value）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "9e2a8591d2c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113150", "c": "213", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "113", "exam_name": "113年公務人員高等考試一級暨二級考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00006', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-113-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '影像辨識於作物栽培管理上之其中一種應用，係透過相機擷取不同波長
之反射值，從不同波長之反射數值的改變，與作物的生育情況或健康程
度連結並建立模式，得以應用於判別作物生長或健康。其中以無人機作
為搭載相機之載具，得以應用於大範圍的栽培田區快速取得光譜反射數
值。某位育種研究人員規劃利用無人機獲取田間不同栽培條件下、不同
波長之反射數值，為了避免影像拍攝時受到其他環境因素造成之誤差，
因此該位研究人員設計了不同處理試驗組合的交叉試驗，這些處理分別
為：播種日期（2變級：2 月 1日播種、2 月15 日播種）、成熟期特性（2
變級：早熟、晚熟）、品種（早熟與晚熟特性之品種各4變級，共8變級），
每個處理組合種植 5 小區（5 重複），在接近均值的田區中，以完全隨機
設計排列所有處理組合，並於 3 月 15 日進行無人機空拍作業，取得第 i
播種日期、第j成熟期特性、第k品種、第l小區的光譜反射數值y 。
ijkl
若 y 觀測值以處理效應模型（treatment effects model）表示為：
ijkl
y
ijkl i j ij (j)k i(j)k (ijk)l
其中為總平均、為第i播種日期固定型效應、為第j成熟期特性
i j
固定型效應、 為第i播種日期與第j成熟期特性的交感效應、
ij (j)k
為第j成熟期特性下的第k品種隨機型效應（變方設為2 ）、
C(B) i(j)k
為第i播種日期第j成熟期特性第k品種的交感效應（變方設為2 ）、
AC(B)
為隨機誤差（變方設為2）。請依據模型完成以下變方分析表中，
(ijk)l e
各項變異來源（SOV；誤差除外）對應之自由度（DF）。（10分）
變異來源（SOV） 自由度（DF） 均方（MS） 均方期望值(E(MS))
2 2  2
播種日期 MS  5 40
A e AC(B) i
i
2 2  2
成熟期特性 MS  10 40
B e C(B) j
j
播種日期與成熟期特性交
MS 252 20 2
感效應 AB e AC(B) ij
i
成熟期特性下的品種 MS 2102
C(B) e C(B)
播種日期與成熟期特性與
MS 252
品種交感效應 AC(B) e AC(B)
誤差 62 MS 2
E e
續上題。依據變方分析表提供之均方期望值（E（MS）），以表中提供
之各項均方（MS）代號，寫出檢定各項變異來源（誤差除外），應使
用的 F值公式。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "9e2a8591d2c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113150", "c": "213", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "113", "exam_name": "113年公務人員高等考試一級暨二級考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00007', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-113-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '水稻田之溫室氣體排放以甲烷為主，欲調查 4 個水稻栽培品種（V1,V2,
V3,V4）於水田2 種不同湛水深度（W1,W2）下的甲烷排放量，考量湛
水管理的方便性，預計以湛水深度為大區因子、品種為小區因子，進行
大區採用 2重複之隨機完全區集設計的裂區設計進行試驗。
說明上述試驗應如何進行試驗單位之配置。（15 分）
寫出上述試驗之變方分析表的各項變異來源（SOV）與其各自對應之
自由度（DF）。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "9e2a8591d2c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113150", "c": "213", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "113", "exam_name": "113年公務人員高等考試一級暨二級考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00008', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-113-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '某研究員希望初步探討結合害蟲天敵（2變級：不使用天敵、使用天敵）
與殺蟲劑的施用（3 變級：不使用殺蟲劑、使用低劑量殺蟲劑、使用高
劑量殺蟲劑），是否有利於病蟲害的防治效果，因此於生長箱中以完全隨
機設計進行試驗，每個處理組合3 重複，並於試驗進行 1 週後，紀錄各
生長箱中存活的害蟲比例。
若欲對試驗結果進行變方分析，若考量害蟲比例數值介於0到1之間，
不符合常態分布之基本假設，應建議該研究員如何處置？（10 分）
分析後之變方分析表節錄部分如下，請說明分析結果並建議該研究員
如何進行後續之倆倆均值比較分析。（15分）
變異來源（SOV） F統計值 F臨界值
天敵 20.97 4.75
殺蟲劑 15.44 3.89
天敵與殺蟲劑交感效應 1.43 3.89', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "9e2a8591d2c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113150", "c": "213", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "113", "exam_name": "113年公務人員高等考試一級暨二級考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00009', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-112-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '政府對於某食品防腐劑的安全含量規定不能超過3.0ppm，某檢驗單位
針對此食品隨機抽取n10個單位的樣本，檢驗其防腐劑含量，得到平均
值X 2.32，標準差s0.36。
請用學生氏 t檢定在顯著水準（significancelevel）為 0.05下，檢定下
列假說：
H :3.0ppm vs. H :3.0ppm
0 1
（t 2.262; t 1.833）（10分）
0.025;9 0.05;9
請計算信賴水準（confidencelevel）為 0.95的單邊信賴上界（one-sided
confidenceupperbound），並用此數據來檢定上述的假說。進ㄧ步，請
說明如果錯用雙邊檢定（two-sidedtest）來檢定單邊假說（one-sided）
會產生何種影響？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "c1fadeac45e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112160", "c": "208", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員高等考試一級暨二級考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00010', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-112-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '某研究員執行某作物 A、B、C、D四個品種的比較試驗，採取以下的區
集設計（blockdesign），此設計有四個區集，每個區集有四個試區。
區集1 區集2 區集3 區集4
A D B C
B C A C
B C B D
A D A D
請問這個設計能執行那些品種的兩兩比較？並請說明如何計算試驗
機差均方（MSE）？（10分）
若改用逢機完全區集設計（RCBD）來執行，請畫出 RCBD 的田間配
置圖，並寫出變方分析表的變因（SOV）及自由度（DF）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "c1fadeac45e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112160", "c": "208", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員高等考試一級暨二級考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00011', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-112-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '某研究員培育成某作物 A、B、C、D四個新品系，田間試驗採用五重複
的完全逢機設計（CRD）來進行比較試驗，分析完資料得到以下結果：
x 3.76; x 3.96; x 4.45; x 4.89; MSE 0.18
A B C D
若用 Fisher 的最小顯著差異法（LSD）執行處理平均的兩兩比較，在
顯著水準 0.05 下，經過計算，其兩兩比較的臨界值為 0.569，請依此
執行兩兩比較。（10 分）
若改用 Turkey的誠實顯著差異法（HSD）執行處理平均的兩兩比較，
在顯著水準 0.05 下，經過計算，其兩兩比較的臨界值為 0.985，請依
此執行兩兩比較。並請比較使用LSD或 HSD的適當時機。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "c1fadeac45e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112160", "c": "208", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員高等考試一級暨二級考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00012', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-112-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '在執行田間試驗時，為了方便設置試驗因子，有時候會執行裂區設計
（split-plotdesign）或條區設計（strip-plotdesign）。假設有一個兩因子試
驗，其 A 因子有三個變級 A1、A2、A3；B 因子有四個變級 B1、B2、
B3、B4。因土壤肥力梯度的變異，需要設置兩個完全區集。
請詳細說明如何設置 A因子為主區試因；B 因子為副區試因之裂區設
計。請畫出田間配置圖，並說明如何檢定主效應A和 B，以及交感效
應 AB的顯著性？（15 分）
請詳細說明如何設置 A因子為直條試因；B 因子為橫條試因之條區設
計。請畫出田間配置圖。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:36+00:00", "source_pdf_sha1": "c1fadeac45e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112160", "c": "208", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員高等考試一級暨二級考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00013', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-111-359207d9', 'sub-heelevel2-3df1c47f-02', NULL, 'essay', '作文：（60分）
劉墉說：「格局可以是胸懷、是見識、是信心、是寬廣的抱負。」格
局決定著人生的發展方向，格局大了，未來的路才能寬。掌控了格局，
也就掌控了人生。請以「提升格局開創人生」為題，撰文一篇。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "41a30c323569", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111160", "c": "212", "s": "0103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "國文(作文、公文與測驗)", "year": "111", "exam_name": "111年公務人員高等考試一級暨二級考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00014', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-111-359207d9', 'sub-heelevel2-3df1c47f-02', NULL, 'essay', '公文：（20分）
內政部營建署所屬之「國家公園」及「國家自然公園」為具有特殊景
觀，或重要生態系統、生物多樣性棲地之國家自然遺產，亦為具有重
要之文化資產及史蹟，其自然及人文環境深富文化教育意義。依「國
家公園法」第 13條，國家公園區域內訂有各項禁止行為，如禁止焚
燬草木或引火整地、狩獵動物或捕捉魚類、污染水質或空氣、採折花
木……等行為。邇來民眾多有違反上列各項禁止行為，實有加強管理
之必要。試擬內政部營建署致各所屬「國家公園管理處」及「國家自
然公園管理處」函，依法加強管理及取締各項禁止行為，以維護國家
特有之自然風景、野生物及史蹟。
乙、測驗部分：（20分） 代號：2201
本測驗試題為單一選擇題，請選出一個正確或最適當的答案。
共10題，每題2分，須用2B鉛筆在試卡上依題號清楚劃記，於本試題或申論試卷上作答者，不予計分。
1 歧義句是指一個句子能以多種不同方式理解。下列選項，何者沒有歧義的問題？
①她是我剛認識的小娟的妹妹 ②這個人甚至連老王都不認識
③張三和李四的朋友都出席了 ④美元對臺幣的匯率小幅攀升
2 「把殘酷不公、令人憤怒的事情，以詼諧、輕鬆的方式，寫得滑稽可笑，乍看胡扯
瞎鬧，但是深識喜怒哀樂者，輒能領略其中的沉重與苦悶。」
下列選項，何者最符合上述寫作手法？
①付之一笑 ②嘲諷戲謔 ③笑裡藏刀 ④謔浪笑敖
3 朱光潛《詩論》：「移情作用是極端的凝神注視的結果，它是否發生以及發生時
的深淺程度都隨時隨人隨境而異。……不過欣賞自然，即在自然中發現詩的境
界時，移情作用往往是一個要素。」朱光潛《文藝心理學》又言：「大地山河以
及風雲星斗原來都是死板的東西，我們往往覺得他們有情感，有生命，有動作，
這都是移情作用的結果。」
下列選項所引詩詞，何者無「移情作用」之效果？
①菊殘猶有傲霜枝 ②數峰清苦，商略黃昏雨
③相看兩不厭，惟有敬亭山 ④莫聽穿林打葉聲，何妨吟嘯且徐行
4 「以烏魚子和一碟花生米，就著威士忌酒，也不必敬酒，也無須顧忌，自自然然，
各自喝著各自杯中的酒，直到臺先生想起約會的時間已到才離去，而我們原本沒有
預設的聚敘也在薄暮之中結束。許多年以後，人事已非，有時偶爾會想起某些平淡
的往事，禁不住心中充滿似甜蜜又感傷的滋味。那個暮春黃昏的景象，正是時時令
我緬懷的一景。」
根據上文內容，下列選項最接近作者旨趣的是：
①悲悼生命的無常 ②喟歎知己的難尋
③緬懷家鄉的閒適 ④追憶師友的聚散
5 「地方政府為了協助農民重建風災後的家園，特別撥了一筆鉅款，準備以低利貸給
農民。只是農民反應不如預期熱烈，他們需要錢時，仍去找放高利貸的人，接受非
法的盤剝。原來銀行的辦事員因為經辦利潤不高，對農民態度冷峻，加上申請手續
複雜，反倒使得放高利貸的人有機可乘，他們舌粲蓮花，放款迅速，吸引不少農民
上鉤。」
下列選項，描述上文人物的心態，何者最恰當？
①農民：謀事在人，成事在天
②銀行辦事員：事非經過不知難
③地方政府：我本將心向明月，奈何明月照溝渠
④放高利貸者：冷暖俗情諳世路，是非閑論任交親
6 「工業革命以來，人活在社會的目的不再是為了追尋生命的意義，或者懷疑存在的
價值，而是為了創造經濟價值、賺錢。智慧貶值了，同時創意走入死巷：如果創意
人想透過創意創造經濟價值，就不容易創造出有深度的作品；因為缺乏智慧，作品
也缺少透視力和有機性。而主流社會不再追求智慧，更造成創意品質低劣的惡性循
環。」
根據上文，下列選項何者最接近作者觀點？
①工業革命之後人們更重視創意
②有創意的作品是沒有經濟價值的
③創意人應該要仔細考量如何創作具有經濟價值的作品
④因為工業革命以來智慧貶值，所以作品也就每況愈下了
7 「報紙是印刷媒體的一種，和近代文化的發展關係密切，西方文化理論中對報紙所
扮演的角色頗為重視，最常為人引用是安德森關於『想像社群』的說法，他認為近
代民族國家的興起，是先由印刷媒體（特別是報紙和小說）帶動一種『共時』的想
像共同體，才導致民族國家的建構，換言之，前者是後者的基礎。」
下列選項，何者最符合上文所強調的「報紙」的特質？
①休戚與共的凝聚效果 ②超越立場的批判精神
③追求真相的社會責任 ④傳播進步的時代價值
8 陽子居南之沛，老聃西游於秦，邀於郊，至於梁而遇老子。老子中道仰天而歎曰：
「始以汝為可教，今不可也。」陽子居不答。至舍，進盥漱巾櫛，脫屨戶外，膝行
而前曰：「向者弟子欲請夫子。夫子行不閒，是以不敢。今閒矣，請問其過。」老
子曰：「而睢睢盱盱，而誰與居？大白若辱，盛德若不足。」陽子居蹵然變容曰：
「敬聞命矣！」其往也，舍者迎將，其家公執席，妻執巾櫛，舍者避席，煬者避竈。
其反也，舍者與之爭席矣。（《莊子．雜篇．寓言》）
老子起初以陽子居為「可教」，如今卻不可也，是因為陽子居：
①飽食終日，無所事事 ②態度跋扈，目空一切
③趨炎附勢，卑躬屈節 ④行為不端，違背仁德
9 承上題，陽子居聽了老子的教誨後，「其反也，舍者與之爭席矣。」其中「爭席」可
用以比喻：
①奮發向上，求取進步 ②地位崇高，受眾人擁戴
③競相搶先，務求勝過別人 ④彼此融洽無間，不拘禮節
10 金谷繁華，平泉佳麗，以及洛陽諸名園，皆勝甲一時，迄於今，求頹垣斷瓦之彷彿
而不可得，歸於烏有矣。所據以傳者，紙上園耳。即令余有園如彼，千百世而後，
亦歸於烏有矣。夫滄桑變遷，則有終歸無；而文字以久其傳，則無可為有，何必紙
上者非吾園也。（劉士龍〈烏有園記〉）
下列選項，最接近本文意旨的是：
①洛陽紙貴，子虛烏有 ②立言不朽，藏諸名山
③陵谷滄桑，時不我與 ④頹垣廢址，黍離麥秀', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "41a30c323569", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111160", "c": "212", "s": "0103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "國文(作文、公文與測驗)", "year": "111", "exam_name": "111年公務人員高等考試一級暨二級考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
