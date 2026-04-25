-- W1.6 questions batch 1023/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-03ec2c8b-moex-00111', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-f9fb6a06', 'sub-customs-03ec2c8b-05', NULL, 'single_choice', '①challenge ②constrain ③violate ④regulate', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00112', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-f9fb6a06', 'sub-customs-03ec2c8b-05', NULL, 'single_choice', '①escaped ②excluded ③participated ④persuaded', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "792008be0317", "answer_pdf_sha1": "df36763d88bd", "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00113', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '025 0.05
一、利用簡單隨機抽樣法（simplerandomsampling），自母體{6,7,8,9,10}中
抽出 3個數為一組樣本，樣本中的最大值以 X表示，最小值以 Y表示。
請列出 X，Y 的聯合機率分配（joint probability distribution）f(x, y)。
（10 分）
請求算機率p(X 10,Y 7)。（5 分）
請求算期望值E(X |Y 6)。（5分）
令Z  X+Y，請計算期望值E(Z)。（5 分）
二、公司在全國 250個銷售據點販賣新產品 A，為了解 A產品的市場接受度，
行銷部門依全國地理位置分為甲、乙、丙、丁四個區域，其中甲區有 85 個
銷售據點，乙區有 70 個銷售據點，丙區有 60 個銷售據點，丁區有 35 個
銷售據點。現將每個區域視為一個層別，以分層隨機抽樣（stratifiedrandom
sampling）法，自甲、乙、丙、丁各區中分別抽出15，12，8，5 個銷售據
點，調查每個銷售據點 A產品一週的銷售數量。由於各區幅員及交通狀況
不同，調查費用也隨之不同，已知甲、乙、丙、丁各區，調查每個銷售據
點的成本分為 6.25、4、9、9（單位：萬元）。調查結果得 A產品在每個
銷售據點一週銷售數量的平均數及標準差資料如下：
區域 甲 乙 丙 丁
平均數 80.6 165 304 482
標準差 32.5 95.2 129.6 269.1
估計 A產品一週的總銷售量並計算其 95%信賴區間。（10分）
現公司的管理高層欲估計 A 產品一週的總銷售量，及要求估計的 95%
誤差界限為 5000，則各區須調查多少個銷售據點，才能使調查總費用
最低？同時計算需花費多少的調查費用？（14 分）
若調查總費用的預算為350萬元，請問各區銷售據點最佳的調查數量為
何，方能達到的要求？（6分）
三、某貿易商進口了一批5000箱的機能飲料，每箱飲料依序編號且每一箱內含
有20瓶飲料。現貿易商的主管想了解每瓶飲料的平均咖啡因含量，遂依每
箱飲料編號順序，以每隔500箱抽出一箱方式，自此批飲料中抽出10箱，
檢測每箱飲料的咖啡因含量，分別為y ,y ,...,y 。（每小題10分，共20分）
1 2 10
請問貿易商的主管採用何種抽樣方法？母體大小為何？
參數為何？請寫出該參數的估計量。
四、報名參加減肥中心春季班的班員共有 200 人，經減肥中心量測得平均體重
為 72.5 公斤。每位班員均採用減肥中心提供之飲食餐 3 個月後，減肥中
心主管想了解班員體重情況，於是從班員中隨機選了 10 位班員，並且測
量其體重。得這10 位班員減肥前及減肥後體重資料如下：
班員 1 2 3 4 5 6 7 8 9 10
減肥前體重 58 82 64 76 64 76 54 50 88 94
減肥後體重 52 70 64 64 58 70 52 46 76 82
分別以比率估計量（ratioestimator）、廻歸估計量（regressionestimator）
及差數估計量（differenceestimator），估計班員減肥後的平均體重，並
計算其變異數。（21分）
根據的結果，您會建議採用那一個估計量？（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "f263ff45b4f7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00114', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '令 X 表示自北北基隨機調查 n 人，回答支持 A案公投的人數；p 表示 A
1 1 1
案公投在北北基的母體支持率。令 X 表示自高屏區隨機調查 n 人，回答
2 2
支持 A案公投的人數；p 表示 A案公投在高屏區的母體支持率。
2
p,i=1,2 未知時，其最佳估計量( pˆ )為何？（5分）
i
i
試推導出 pˆ  pˆ 的期望值和變異數，並說明 pˆ  pˆ 的分配。（10分）
1 2 1 2
若 n =1200，X =500，n =900，X =300。在顯著水準為 0.1 之下，試檢
1 1 2 2
定兩區的 A 案支持率是否相等？（寫出虛無假設和對立假設，並說明
檢定統計量之分配及檢定之結果。）（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "90e086715901", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00115', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '一種金屬重量（單位：g）假設為常態分配，平均值和變異數分別為(, 2)，
即X ~ N(,2)。值未知，但2值已知。
隨機抽取一樣本，樣本大小為n。在顯著水準為 0.05 下，檢定H :10，
0
H :10。
1
檢定統計量為何？其分配為何？（5分）
假設樣本平均值x 12，9，欲使檢定結果拒絕 H，n最少應該為多
0
少？（5分）
續題，在 n=144 之下，請分別計算在=12,14 之型 II誤差機率(β)，
並畫出檢定力曲線圖（powercurve）（請標示清楚橫軸及縱軸，和=10,
12,14 的對應機率值）。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "90e086715901", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00116', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '工程師研究電壓大小和溫度高低對手機壽命的影響。在指定的 2 種不同電
壓（100V,200V）和 2種不同溫度（25℃,35℃）的組合下分別量測手機
壽命（單位：千小時）；不同電壓和不同溫度組合下的實驗各反覆做2 次，
且所有實驗順序是隨機的。電壓大小和溫度高低組合下的手機壽命如表 1
所示。
表 1 手機壽命
電壓（V）
溫度（℃） 總和
100 200
25 12,16 10,12 50
35 8,10 6,8 32
總和 46 36 82
這是那種實驗設計（即實驗設計的名稱為何）？（5分）
寫出變異數分析的固定效應模式（fixedeffectsmodel）及假設。（10 分）
列出變異數分析表並檢定電壓，溫度和交互作用是否是影響手機壽命的
顯著因子，顯著水準 α=0.05。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "90e086715901", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00117', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '假設隨機變數 X 服從指數分配，已知其期望值()為 0.5 且變異數(2)為
0.25。
令 L =μ，L =X的中位數，L =μ3。
0 1 2
計算 P(X< L )之機率值，並求L 的值。（5 分）
1 1
計算 P(X< L , X>L )之機率值。（5分）
1 0
自母體中連續抽取 5 個數值，計算最多有 1 個數值落在 L 和 L 區間或
1 0
L 和 L 區間之機率。（10分）
0 2
附表:Z值表
0.4 0.4
N(0,1)
0.3 N(0,1) 0.3
0.2 0.2
0.1 0.1
Φ(z)
α
Zα
Zα/2
附表:F (v1,v2) 值表
0.05', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "90e086715901", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00118', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '假設我國對於蘋果的國內需求與供給分別為P1404Q與P202Q，
其中P和Q分別代表價格與數量。試問：
封閉經濟體系下，我國蘋果市場的均衡價格與數量分別是多少？（6分）
若我國為小型開放經濟體系，蘋果的國際價格為＄40，則我國開放貿易
後的國內均衡生產量、消費量與進口量分別是多少？（9分）
承上題，如果本國對於進口產品課徵$4從量關稅，則國內的均衡價格、
生產量與消費量各為多少？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "a2aa91bdd8f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00119', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '淑美原先在電子公司上班，每月薪資為 30,000 元，因故辭職改開咖啡店，
第一個月營收 90,000 元。但為了開設咖啡店，淑美從銀行帳戶領出 80 萬
元並貸款100萬元用來支應咖啡店裝潢費用，此外咖啡店每個月需要支付
房租 15,000 元、水電瓦斯及材料費 25,000 元與員工薪水 26,000 元。若每
個月的帳戶利息損失 1,200 元，每個月的貸款利息 2,580 元。根據上述資
訊回答以下問題：
請計算咖啡店第一個月的外顯成本、隱含成本、經濟成本、會計利潤及
經濟利潤。（20分）
淑美繼續營業的條件是什麼？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "a2aa91bdd8f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00120', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-110-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '假設市場上有 A與 B兩群消費者。A群消費者有30 人，其個人需求曲線
為x 52P 0.04I 0.5P；而 B群消費者有 20人，其個人需求曲線為
A x A y
x 3P 0.2I P 。式中，P 為x財貨的價格、P 為y財貨的價格、x
B x B y x y i
與I 為i類消費者之x財貨的需求量與所得，i  A,B。如再假設此時
i
I  I 100且P 10。試問：
A B y
若x是私有財，請求解該財貨的市場需求曲線。（15分）
若x是公共財，請計算該財貨的市場需求曲線。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "a2aa91bdd8f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "104", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
