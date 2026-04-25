-- W1.6 questions batch 8125/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0c700c30-moex-00114', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '在關聯式資料庫中建立一個名為「圖書」資料表，其欄位結構與資料表
內容如下表所示：
圖書編號 圖書名稱 出版社 作者 售價 數量
B01 VisualBasic6手冊 A公司 Mary 350 5
B02 Excel2023 A公司 David 499 1
B03 Access2023 B公司 Mary 600 2
B04 Python訓練手冊 C公司 Kathy 355 3
B05 手把手Word2023 A公司 Mary 400 2
B06 E世代網頁設計 B公司 Kim 555 5
B07 T-SQL2023程式設計 A公司 Helen 699 2
寫出 SQL語法查詢圖書名稱包含字串”手”的圖書名稱、出版社、作者
的查詢結果，如下表所示：（10分）
圖書名稱 出版社 作者
VisualBasic6手冊 A公司 Mary
Python訓練手冊 C公司 Kathy
手把手Word2023 A公司 Mary
寫出 SQL語法查詢作者為”Mary”且數量小於 3 的圖書名稱、作者、數
量，且圖書名稱為遞減排序的查詢結果，如下表所示：（15 分）
圖書名稱 作者 數量
手把手Word2023 Mary 2
Access2023 Mary 2
寫出 SQL語法查詢新增一個欄位進價（內容為售價*數量），其數值介
於 1000至 2000的圖書名稱、售價、數量、進價的查詢結果，如下表
所示：（15 分）
圖書名稱 售價 數量 進價
VisualBasic6手冊 350 5 1750
Access2023 600 2 1200
Python訓練手冊 355 3 1065
T-SQL2023程式設計 699 2 1398', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "140ae8c34d59", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0915", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00115', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '資料結構中的佇列（Queue）是一個有序串列（List），請說明佇列在加入
（Insertion）和擷取（Retrieve）資料的原則；分別寫下以佇列方式加入和
擷取｛6,23,11,27,58｝數字串列的順序情形。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "140ae8c34d59", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0915", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00116', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '請描述電子通勤（E-commuting）對於員工、公司、社會的好處。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "140ae8c34d59", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0915", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00117', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '網路詐騙的方式中，社交工程（SocialEngineering）與網路釣魚（Phishing）
的操作手法為何？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "140ae8c34d59", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0915", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00118', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '一汽車生產工廠將某日生產的309部汽車，依A、B、C、D四種缺點及大、
中、小三種車型，分別檢驗並記錄其資料如下表：
車型\缺點 A B C D
大 15 21 45 13
中 26 31 34 5
小 33 17 49 20
在α = 0.05下，試以卡方檢定汽車缺點與車型大小是否有關（請詳細寫出
a.虛無與對立假設、b.檢定統計量公式、c.拒絕域、d.檢定值之計算過程、
e.檢定結果與結論）？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "39fb13711529", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1116", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00119', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '已知函數 為
0 1 3
()
1/3 1/2 1/6

試求：（每小題5分，共25分）
()
驗證 為一機率函數。
。
()
。
( ≤ 2.5| > 1)
。
()
 。
[(+1) ]
', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "39fb13711529", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1116", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00120', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '在簡單[直(線+迴1)歸]中，設自變數 為廣告費用，應變數 為銷售量，樣本
數n = 10。已知：
 
  
 = 140, = 1300, = 21040,
  
 
 
用最小平方法求迴歸=直25線2。8（,10分 ）= 184730
 
求斜率 之95%信賴區間。（10分）
求判定係數 。（5分）


', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "39fb13711529", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1116", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00121', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '為了測定工廠安全訓練的效率，下列資料是12家工廠於安全訓練前之年
平均意外事件數（X）和安全訓練後之年平均意外事件數（Y）：
50 87 37 141 59 65 24 88 25 36 50 35
41 75 35 129 60 53 26 85 29 31 48 37
假設資料的差異具有常態分配。令d=XY，請以顯著水準α = 0.05，進行單

尾檢定，以檢定安全訓練的效果（請詳細寫出a.虛無與對立假設、b.檢定統
計量公式、c.拒絕域、d.檢定值之計算過程、e.檢定結果與結論）。（25分）
附表一：t值表
α
∞
附表二：卡方分配臨界值表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "39fb13711529", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1116", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00122', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '若以整個經濟社會或國家為對象的研究範疇，屬於下列經濟學的何種研究方法？', '["個體經濟學（Microeconomics）", "總體經濟學（Macroeconomics）", "實證經濟學（Positiveeconomics）", "規範經濟學（Normativeeconomics）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "3c0482ee47bc", "answer_pdf_sha1": "f0806c49c35d", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00123', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '理性的人們之所以不再繼續進行某項活動，是因為：', '["邊際成本為零", "機會成本為零", "邊際效益小於邊際成本", "平均效益小於平均成本"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "3c0482ee47bc", "answer_pdf_sha1": "f0806c49c35d", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
