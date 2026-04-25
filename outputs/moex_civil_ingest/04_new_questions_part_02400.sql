-- W1.6 questions batch 2400/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-0c700c30-moex-00046', 'disabled-0c700c30', 'disabled-0c700c30-moex-113-e1711217', 'sub-disabled-0c700c30-04', NULL, 'essay', 'MSSQLServer 或 MySQL都屬於關聯式資料庫系統（RDBMS），請問：
（每小題10 分，共 30 分）
何謂 Transaction？並舉例說明使用時機。
Transaction 具備的 4個特性 ACID為何？
何謂 SQLInjection？並舉例說明。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "2ea630ba2108", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00047', 'disabled-0c700c30', 'disabled-0c700c30-moex-113-e1711217', 'sub-disabled-0c700c30-04', NULL, 'essay', '最小生成樹（MinimumSpanningTree）在網路設計中有重要的用途。如下
圖，請依要求找出最小生成樹，須清楚說明每一步驟加入的點或邊。若需
起點，以 A點為起點。（每小題10 分，共 20分）
請以 Prim 演算法找出最小生成樹，並詳述每一步驟加入的點或邊。
請以 Kruskal演算法找出最小生成樹，並詳述每一步驟加入的點或邊。
C
F
E H
A
J
K
D
B
I
G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "2ea630ba2108", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00048', 'disabled-0c700c30', 'disabled-0c700c30-moex-113-e1711217', 'sub-disabled-0c700c30-04', NULL, 'essay', '請參考下列資料表，並利用結構化查詢語言（SQL）回答下列問題：
（每小題 10 分，共 30 分）
學生資料表 教師資料表 課程資料表 選課資料表 成績資料表
學號 姓名 編號 姓名 課號 名稱 教師 課號 學號 學號 課程 分數
S01 李白 T01 陳桂林 C01 國文 T01 C01 S01 S01 C01 90
S02 杜甫 T02 王桂林 C02 國文 T02 C02 S01 S01 C03 95
S03 王維 C03 S01 S02 C02 80
C03 數學 T01
C01 S02 S02 C03 85
C02 S02 S03 C01 70
C03 S02 S03 C02 75
C01 S03
C02 S03
C03 S03
不考慮缺考情況，列出課程名稱、授課教師姓名、不及格（分數小於 60
分）人數（如下表）之 SQL指令。
名稱 姓名 不及格人數
國文 王桂林 2
國文 陳桂林 1
不考慮缺考情況，列出所有學生姓名及平均分數，並由高分至低分排序
（如下表）之 SQL指令。
姓名 平均分數
李白 72.5
杜甫 65
王維 52.5
列出缺考學生的姓名及課程名稱（如下表）之SQL指令。
姓名 名稱
李白 國文
杜甫 國文
王維 數學', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "2ea630ba2108", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00049', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-ec859484', 'sub-disabled-0c700c30-01', NULL, 'essay', '某一新創產業的營運狀況調查，目的是想了解新創產業的營業額。抽樣方
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
stageclustersampling withPPS）的抽樣方式抽得該3 個園區。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00050', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-ec859484', 'sub-disabled-0c700c30-01', NULL, 'essay', '欲估計 2021 年某鄉鎮的總農民所得（Y），由 300家農戶抽樣調查30 家
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
個估計量精確度比較高？說明理由。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00051', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-ec859484', 'sub-disabled-0c700c30-01', NULL, 'essay', '針對某一社區 2000 個家戶進行抽樣調查，以了解該社區有老人（65 歲
以上）的家戶比例（P）及平均家戶年所得（Y）。若欲在 95%的信心水
準下，估計有老人家戶的比例之估計誤差低於 3%的範圍，且估計平均
家戶年所得之估計誤差低於實際平均家戶年所得（Y）4%的範圍。實際
上，如果有老人的家戶比例落在 20%到 40%的範圍內，而實際平均家戶
年所得Y=1,000（千元）且變異數為 400,000（千元）。若採用簡單隨機
抽樣方式欲同時滿足前述兩個估計精確度的要求，應抽多大的樣本？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00052', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-ec859484', 'sub-disabled-0c700c30-01', NULL, 'essay', '在某一城市裡有 N=300 家餐廳，簡單隨機抽出 2/3 為樣本（n''=200 家
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
準誤。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "3c590e92864e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1114", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00053', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-4b760c19', 'sub-disabled-0c700c30-02', NULL, 'essay', '假 設 隨 機 變 數 X 服 從 指 數 分 配 ， 其 機 率 密 度 函 數 為
。令 μ 為其期望值，且 σ 為標準差。（每小題 5
f(x)ex, x0, 0
分，共 25分）
計算機率 P（X>μ+σ）。
令 Md 為此指數分配之中位數，試計算 Md。
計算隨機變數X介於中位數和平均數之間的機率。
自母體隨機抽取一隨機樣本，樣本大小（sample size）為 5。至少
有一個變數值介於中位數和平均數之間的機率為何？
計算條件機率P（X>Md|X>μ）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00054', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-4b760c19', 'sub-disabled-0c700c30-02', NULL, 'essay', '大意公司是車用電池製造商，隨機抽取 12件電池並測試其電池壽命，
電池壽命單位如下：（1 單位：100 小時）
25,50,45,55,45,28,35,42,25,30,32,38.
工程師想要以統計假設檢定方法檢定電池壽命的中位數是否為 30 單
位，顯著水準為0.05。
寫出虛無假設和對立假設，以符號檢定（signtest）方法檢定之，並
說明檢定統計量在虛無假設為真下的分配和檢定結果。（10 分）
電池壽命假設為常態分配。請檢定電池壽命的中位數是否為 30 單
位。寫出檢定統計量在虛無假設為真下的分配，計算 p值（p-value）
並說明檢定結果。此外，請說明題和的檢定統計量使用上的差
異。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL),
  ('disabled-0c700c30-moex-00055', 'disabled-0c700c30', 'disabled-0c700c30-moex-111-4b760c19', 'sub-disabled-0c700c30-02', NULL, 'essay', '自三個獨立的常態母體分別抽取樣本，其樣本大小，樣本平均值和樣
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
決定臨界值。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:04+00:00", "source_pdf_sha1": "cea57af887d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "104", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
