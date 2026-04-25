-- W1.6 questions batch 6447/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00204', 'locality-0c700c30', 'locality-0c700c30-moex-110-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '根據實質景氣循環理論，暫時性政府支出乘數：', '["等於一", "大於一", "小於一", "等於零"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00205', 'locality-0c700c30', 'locality-0c700c30-moex-110-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '物價上漲率之計算必須考慮：', '["貨幣供給存量", "利率之高低", "新臺幣之升、貶值幅度", "基期之選擇"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00206', 'locality-0c700c30', 'locality-0c700c30-moex-110-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '令橫軸變數為實質GDP（Y），縱軸變數為利率（i）。在IS線右邊任一點的（Y,i）組合都意味 著：', '["商品市場有超額供給", "商品市場有超額需求", "貨幣市場有超額供給", "貨幣市場有超額需求"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00207', 'locality-0c700c30', 'locality-0c700c30-moex-110-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '在 MicrosoftAccess中，建有「老師資料表」與「課程資料表」，兩個表
格皆有四個欄位，內容如下：
老師資料表 課程資料表
老師ID 姓名 電話 地址 課程ID 課程名稱 老師ID 上課教室
1 張三 123 臺中市 1 國文 1 文學大樓
2 王武 456 高雄市 3 數學 1 理學大樓
3 劉丹 897 桃園市 4 物理 4 理學大樓
5 高樂 756 臺南市 6 電子學 3 科技大樓
請寫出下列 SQL查詢指令的輸出結果：
SELECT 課程資料表.課程 ID, 課程資料表.課程名稱, 老師資料表.
姓名, 課程資料表.上課教室, 老師資料表.電話, 老師資料表.地址
FROM老師資料表 INNER JOIN 課程資料表 ON老師資料表.老師ID
= 課程資料表.老師 IDORDERBY課程資料表.課程 ID（5 分）
SELECT 課程資料表.課程 ID, 課程資料表.課程名稱, 老師資料表.
姓名, 課程資料表.上課教室, 老師資料表.電話, 老師資料表.地址
FROM 老師資料表 RIGHT JOIN 課程資料表 ON 老師資料表.老師 ID
= 課程資料表.老師 IDORDERBY課程資料表.課程 ID（7 分）
SELECT 課程資料表.課程 ID, 課程資料表.課程名稱, 老師資料表.
姓名, 課程資料表.上課教室, 老師資料表.電話, 老師資料表.地址
FROM老師資料表 LEFTJOIN課程資料表 ON老師資料表.老師 ID=
課程資料表.老師IDORDER BY課程資料表.課程 ID（8 分）
SELECT課程資料表.課程名稱, 課程資料表.上課教室FROM課程資料表
UNION
SELECT 老師資料表.姓名, 老師資料表.地址 FROM 老師資料表
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "368b83678547", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00208', 'locality-0c700c30', 'locality-0c700c30-moex-110-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', 'NAS網路儲存裝置是一種家中或辦公室常用的網路儲存裝置，其通常由
數顆硬碟組成 RAID 磁碟陣列來作為儲存空間。常用的 RAID 模式包含
有：RAID0、RAID1、RAID5、RAID6 與 RAID10，如果我們現在使用 6
顆實體硬碟來組成磁碟陣列，請回答以下問題：
請問上述 RAID 模式，可以允許同時兩顆硬碟出錯，而還能正確還原
資料的模式有那幾種？（4 分）
我們定義磁碟陣列的磁碟利用率為其實際可以儲存資料的大小除以
全部硬碟的空間。請問上述 RAID 模式中，磁碟利用率大於（不含）
1/2 的有那幾種？（6 分）
上述 RAID 模式中，資料讀取效能最差的是那一種模式？寫入效能最
好的是那一種模式？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "368b83678547", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00209', 'locality-0c700c30', 'locality-0c700c30-moex-110-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', 'WiFi是很重要的無線通訊技術，請回答以下問題：
請問何謂 SSID？（7分）其是唯一的嗎？（3分）
請寫出三種主流的無線加密方式，並說明之。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "368b83678547", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00210', 'locality-0c700c30', 'locality-0c700c30-moex-110-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '請使用 C語言完成以下程式：
寫一個函式 intmymax（intn,int**array）來計算正整數方陣中所有元
素的最大值，其中輸入參數 array 為大小 nn 的二維正整數方陣，回
傳值為該方陣中的元素最大值。（10 分）
1 2 3
使用上述函數，寫一個程式來計算正整數矩陣A 4 5 6 的最大
7 8 9
值，陣列變數A在宣告時需使用動態記憶體方式配置。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "368b83678547", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00211', 'locality-0c700c30', 'locality-0c700c30-moex-110-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '下表為中華民國110 年 10月底人口數、性別比例及人口密度統計表。
人口數
土地面積 性別比例（每百女人口密度（每平
縣市
（平方公里） 子所當男子數） 方公里人口數）
總計 男 女
新北市 2,052.574,014,8691,960,4422,054,427 95.43 1,956.02
臺北市 271.79972,538,2991,208,3851,329,914 90.86 9,338.86
桃園市 1,220.952,272,6631,125,3861,147,277 98.09 1,861.38
臺中市 2,214.902,815,4771,382,0721,433,405 96.42 1,271.15
臺南市 2,191.651,864,799 928,682 936,117 99.21 850.86
高雄市 2,951.852,749,2931,355,1401,394,153 97.20 931.38
宜蘭縣 2,143.63 451,175 227,222 223,953 101.46 210.47
新竹縣 1,427.54 574,806 293,417 281,389 104.27 402.66
苗栗縣 1,820.31 538,940 277,786 261,154 106.37 296.07
彰化縣 1,074.401,257,033 638,686 618,347 103.29 1,169.99
南投縣 4,106.44 485,983 248,298 237,685 104.47 118.35
雲林縣 1,290.83 671,182 346,966 324,216 107.02 519.96
嘉義縣 1,903.64 494,293 256,417 237,876 107.79 259.66
屏東縣 2,775.60 805,717 410,328 395,389 103.78 290.29
臺東縣 3,515.25 213,718 109,715 104,003 105.49 60.80
花蓮縣 4,628.57 321,971 162,726 159,245 102.19 69.56
澎湖縣 126.8641 106,147 54,656 51,491 106.15 836.7
基隆市 132.7589 364,766 181,861 182,905 99.43 2,747.58
新竹市 104.1526 452,844 223,672 229,172 97.60 4,347.89
嘉義市 60.0256 265,208 128,102 137,106 93.43 4,418.25
金門縣 151.656 141,180 70,367 70,813 99.37 930.92
連江縣 28.8 13,516 7,822 5,694 137.37 469.31
若性別比例為 X，人口密度為 Y，且 2,256.69、 33,358.11、
233,202.3、 147,581,075 及 3,226,744，計算性別比例
∑ = ∑ =
與人口密度之相關係數 。（10分）
∑ = ∑ = ∑ =', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "17475fdc6540", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00212', 'locality-0c700c30', 'locality-0c700c30-moex-110-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '依題一的資料，以人口密度作為反應變數，其他皆為解釋變數進行迴歸
模型分析，得到以下參數估計結果：
Estimate Stderror
（Intercept） 10,890.376 3,076.995
土地面積 -0.550 0.178
人口數 總計 0.053 0.0101
人口數 男 -0.110 0.022
人口數 女 NA NA
性別比例 -76.789 28.760
參數估計表中之「NA」表示估計結果是不可得到的；詳述「人口數 女」
之參數估計結果為「NA」之原因。（5分）
詳述「土地面積」之迴歸係數估計值的意義。（5 分）
在顯著水準為0.01 下，檢定各解釋變數之顯著性；並依此結果決定那
些變數可被剔除。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "17475fdc6540", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00213', 'locality-0c700c30', 'locality-0c700c30-moex-110-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '依題二的迴歸模型分析，得到以下變異數分析（Analysis of variance，
ANOVA）表：
Sourceof Degreesof Sumof Mean F
variation freedom squares square
Regression （1） （4） （6） （8）
Error （2） 18,022,930 （7）
Total （3） （5）
寫出 ANOVA 表中（1）至（8）的值。（8分）
計算判定係數R²及調整判定係數 ，並詳述兩者之意義與差異。（10分）
下表為各解釋變數之變異膨脹因子 （varianceinflation factor，VIF）：

土地面積 人口數 總計 人口數 男 性別比例
VIF 1.178 2,876.474 2,870.672 1.341
詳述何謂 VIF及其值的意義。（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "17475fdc6540", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
