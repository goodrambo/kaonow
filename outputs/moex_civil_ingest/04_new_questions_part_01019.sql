-- W1.6 questions batch 1019/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-03ec2c8b-moex-00071', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-113-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'single_choice', '有關政府因應景氣循環（business cycle）所採取的總體經濟政策，下列敘 述何者錯誤？', '["財政政策可透過政府支出、稅收和轉移支付來影響經濟", "貨幣政策可透過改變貨幣數量或利率來影響經濟", "匯率政策可透過買賣本幣和外幣來影響匯率", "總合需求管理政策主要是影響一個經濟體系的自然產出水準"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "6f76ab1b056f", "answer_pdf_sha1": "aff3e98fba69", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "0902", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00072', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '某一新創產業的營運狀況調查，目的是想了解新創產業的營業額。抽樣方
法採一段集體抽樣（one-stageclustersampling），新創產業共 600家公司
分散在 30個園區（cluster），首先由 30 個園區抽出 3 個園區，這3 個園
區內的新創公司數及總營業額列於下表。
園區總營業額
園區（cluster） 公司數
（百萬元）
（M ）
i （y）
i
1 15 90
2 25 110
3 40 280
分別就下列兩種抽樣設計利用對應的不偏估計量以估計整體新創產業的
總營業額及該估計量的標準誤。
若前述一段集體抽樣係結合簡單隨機抽樣（SRS）（one-stage cluster
sampling with SRS）抽得該 3個園區。（15分）
若前述一段集體抽樣係結合抽出機率與園區大小成比例（PPS）（one-
stageclustersampling withPPS）的抽樣方式抽得該3 個園區。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00073', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '欲估計 2021 年某鄉鎮的總農民所得（Y），由 300家農戶抽樣調查30 家
農戶，定義 x為普查年（2016年）所得，y為 2021 年所得。母體資料 x與
y之變異數（S2,S2）、共變數（S ）及y對 x之比率（R）如下所示：
x y xy
S2 2500,S2 6400,S 3600,R1.3。
x y xy
N
(x  X)2
i
（母體變異數S2係以N 1為分母，例如，S2  1 ，式中X 為母
x N 1
體均數。）
計算迴歸估計量（ ）、比率估計量（ ）及均數估計量（ ）的變異
數。（15分）
  
根據之結果，比較估計量的相對效率（relativeefficiency），你認為那
個估計量精確度比較高？說明理由。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00074', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '針對某一社區 2000 個家戶進行抽樣調查，以了解該社區有老人（65 歲
以上）的家戶比例（P）及平均家戶年所得（Y）。若欲在 95%的信心水
準下，估計有老人家戶的比例之估計誤差低於 3%的範圍，且估計平均
家戶年所得之估計誤差低於實際平均家戶年所得（Y）4%的範圍。實際
上，如果有老人的家戶比例落在 20%到 40%的範圍內，而實際平均家戶
年所得Y=1,000（千元）且變異數為 400,000（千元）。若採用簡單隨機
抽樣方式欲同時滿足前述兩個估計精確度的要求，應抽多大的樣本？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00075', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '在某一城市裡有 N=300 家餐廳，簡單隨機抽出 2/3 為樣本（n''=200 家
餐廳）以取得其餐廳大小（類別）的資訊。餐廳依其大小分成兩類（層）：
小型餐廳和大型餐廳。進而再由每一類（層）餐廳抽幾家（n）調查其
2021年的營業額（y），得到資料如下：
平均每家營業額
標準差
類別（層別） n '' n y
h h i s
（百萬元） i
小型餐廳 120 10 20 10
大型餐廳 80 5 80 60
合計 200 15
請說明這是何種抽樣方式？（5 分）
就前述調查資料估計該城市餐廳平均每家營業額（Y ）及該估計量之標
準誤。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00076', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '假 設 隨 機 變 數 X 服 從 指 數 分 配 ， 其 機 率 密 度 函 數 為
。令 μ 為其期望值，且 σ 為標準差。（每小題 5
f(x)ex, x0, 0
分，共 25分）
計算機率 P（X>μ+σ）。
令 Md 為此指數分配之中位數，試計算 Md。
計算隨機變數X介於中位數和平均數之間的機率。
自母體隨機抽取一隨機樣本，樣本大小（sample size）為 5。至少
有一個變數值介於中位數和平均數之間的機率為何？
計算條件機率P（X>Md|X>μ）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00077', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '大意公司是車用電池製造商，隨機抽取 12件電池並測試其電池壽命，
電池壽命單位如下：（1 單位：100 小時）
25,50,45,55,45,28,35,42,25,30,32,38.
工程師想要以統計假設檢定方法檢定電池壽命的中位數是否為 30 單
位，顯著水準為0.05。
寫出虛無假設和對立假設，以符號檢定（signtest）方法檢定之，並
說明檢定統計量在虛無假設為真下的分配和檢定結果。（10 分）
電池壽命假設為常態分配。請檢定電池壽命的中位數是否為 30 單
位。寫出檢定統計量在虛無假設為真下的分配，計算 p值（p-value）
並說明檢定結果。此外，請說明題和的檢定統計量使用上的差
異。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00078', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '自三個獨立的常態母體分別抽取樣本，其樣本大小，樣本平均值和樣
本變異數分別如下：
(n 16,x 62, s2 55),(n 16,x 66, s2 53), (n 8,x  44,s2 62)
1 1 1 2 2 2 3 3 3
若三個母體變異數都相等，其不偏估計量為何？（5分）
證明上題的不偏估評估量（unbiased estimator）確實具有不偏性。
（5 分）
若三個母體變異數都相等，估計母體變異數的 95%信賴區間
（confidenceinterval）。（5分）
在三個母體變異數都相等下，檢定三個母體平均值是否全部相等。
列出變異數分析表（ANOVA Table），並說明檢定結果。顯著水準
為 0.05。（10分）
由題的檢定結果，再據以檢定是否 2（第二個母體平均值）大
於 （第一個母體平均值）？計算 p 值，並說明檢定結果。顯著
μ
水準為 0.05。（5分）
μ1
註：若分配的自由度不在附表裡，則以附表裡最接近的自由度代替以
決定臨界值。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00079', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '大千 3C公司的銷售經理想知道硬碟的銷售量是否受價格影響。隨機
抽取 10筆不同價格下硬碟的銷售量，其數據如下：（單位：百元）
No. 1 2 3 4 5 6 7 8 9 10
價格 30 32 34 35 36 37 38 39 40 42
銷售量 9 6 3 5 4 3 2 2 2 1
畫出銷售量和價格的散布圖（scatterplot）。（5 分）
依據上題的散布圖，寫出迴歸方程式和其誤差項的假設。（5 分）
以最小平方誤差法（least squares error method）估計上題中迴歸方
程式的斜率值。（5 分）
計算誤差變異數的估計值。（5分）
對迴歸方程式中的斜率檢定是否為零？顯著水準為 0.05。（5 分）
附表：標準常態分配的累積機率
附表：t值表
附表：2表 卡方分配臨界值表
附表：F (v1,v2)值表
0.05
(v )
1
)
2
v
(
附表：二項分配機率表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00080', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-111-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '某消費者的手機話費合約服務即將到期，因此面臨兩家電信公司手機話費
方案的抉擇。電信公司 A的合約方案為「吃到飽」方案，不論撥打多少電
話，每月固定收取 119元的通話服務費。電信公司 B則為「用多少，收多
少」方案，僅收取每分鐘 1元的通話費，不收取固定服務費。假設消費者
每月通話分鐘數的需求為 QD = 150－50P，其中 P 為每分鐘的通話價格，
QD為通話分鐘需求數，請回答下列問題：（每小題 5 分，共 25分）
對於此二電信公司，此消費者若增加手機通話一分鐘的額外費用各為多
少？
根據你對小題的回答，當選擇電信公司 A或B，此消費者每個月在兩
個合約方案的通話分鐘數是多少？
接續小題，依據消費者的通話需求與合約方案，消費者每月向每個電
信公司支付的金額是多少？
此兩個方案中，消費者將從每個電信公司獲得多少消費者剩餘
（consumersurplus）？
最終此消費者將選擇那個電信公司？請說明。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:24+00:00", "source_pdf_sha1": "be50498ecf56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
