-- W1.6 questions batch 2371/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-0a2fc18c-moex-00034', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-decd973b', 'sub-disabled-0a2fc18c-02', NULL, 'single_choice', '現行民法關於繼承人之繼承原則之規定，下列敘述何者正確？', '["繼承人僅以法律所規定之人為限，不得以遺囑指定繼承人", "被繼承人死亡後，經繼承人表示繼承時，始發生繼承之效力", "因採個人主義，被繼承人對其財產得不受限制以遺囑自由處分之", "因採無限責任繼承主義，繼承人應繼承被繼承人之一切權利與義務"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "0c2a462631d6", "answer_pdf_sha1": "0408f66f88b4", "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "0103", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "基礎能力測驗(作文、中華民國憲法及法學緒論)", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 30, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00035', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '美國職棒大聯盟的冠軍戰採七戰四勝制，而且每戰必須分出勝負。若經專
家評估，D隊與Y隊每次對戰，D隊獲勝的機率為 p，則 Y隊獲勝的機率
為何？求 D 隊拿到冠軍，且 D 隊輸掉 0、1、2 場對戰之機率又各為何？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "2288624255a5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00036', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '滿分一百分的統計學考試，全班成績的莖葉圖如下：
十 |個
5 |3445778889
6 |479
7 |0445
8 |016
9 |11457
求 3 個四分位數（若其落在兩個分數中間，以兩分數之平均作為分位數即
可）、標準差，並說明成績分布是左偏、對稱、還是右偏。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "2288624255a5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00037', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '某公司同時僱用全職與約聘的員工，人事部長隨機抽取該公司 400 位員
工，調查他們對公司福利（如三節獎金）的滿意度如下表：
單位：人
滿意度
滿意 無意見 不滿意 總和
工作類型
全職 35 20 10 65
約聘 145 130 60 335
總和 180 150 70 400
在 0.05 顯著水準之下，可以做出工作類型與滿意度有關的結論嗎？
（25分）
卡方分配之機率表
df χ2   χ2   χ2 χ2 χ2 χ2   χ2   χ2
0.99 0.975 0.95 0.90 0.10 0.05 0.025 0.01
1 0.000 0.001 0.004 0.016 2.706 3.841 5.024 6.635
2 0.020 0.051 0.103 0.211 4.605 5.991 7.378 9.210
3 0.115 0.216 0.352 0.584 6.251 7.815 9.348 11.345
4 0.297 0.484 0.711 1.064 7.779 9.488 11.143 13.277
5 0.554 0.831 1.145 1.610 9.236 11.070 12.833 15.086
6 0.872 1.237 1.635 2.204 10.645 12.592 14.449 16.812', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "2288624255a5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00038', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '政府平抑物價部門想知道同一款護唇膏在三種不同通路販售的平均價格
是否有差異，就從各通路分別隨機抽樣 5 支記錄其售價。請以 0.05 顯著
水準，檢定下方資料。（25分）
單位：元
通路 Outlet 美妝店 百貨公司
396 495 627
429 561 561
價
462 462 528
格
396 594 660
495 561 627
F分配之機率表
分子自由度
F 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
0.05
1 161 200 216 225 230 234 237 239 241 242 243 244 245 245 246
2 18.5 19.0 19.2 19.2 19.3 19.3 19.4 19.4 19.4 19.4 19.4 19.4 19.4 19.4 19.4
3 10.1 9.55 9.28 9.1 9.01 8.94 8.9 8.85 8.81 8.8 8.76 8.74 8.7 8.71 8.70
4 7.71 6.94 6.59 6.39 6.26 6.16 6.09 6.04 6.00 5.96 5.94 5.91 5.89 5.87 5.86
5 6.61 5.79 5.41 5.19 5.05 4.95 4.88 4.82 4.77 4.74 4.70 4.68 4.66 4.64 4.62
分 6 5.99 5.14 4.76 4.53 4.39 4.28 4.21 4.15 4.10 4.06 4.03 4.00 3.98 3.96 3.94
母
7 5.59 4.74 4.35 4.12 3.97 3.87 3.79 3.73 3.68 3.64 3.60 3.57 3.55 3.53 3.51
自
由 8 5.32 4.46 4.07 3.84 3.69 3.58 3.50 3.44 3.39 3.35 3.31 3.28 3.26 3.24 3.22
度
9 5.12 4.26 3.86 3.63 3.48 3.37 3.29 3.23 3.18 3.14 3.10 3.07 3.05 3.03 3.01
10 4.96 4.10 3.71 3.48 3.33 3.22 3.14 3.07 3.02 2.98 2.94 2.91 2.89 2.86 2.85
11 4.84 3.98 3.59 3.36 3.20 3.09 3.01 2.95 2.90 2.85 2.82 2.79 2.76 2.74 2.72
12 4.75 3.89 3.49 3.26 3.11 3.00 2.91 2.85 2.80 2.75 2.72 2.69 2.66 2.64 2.62
13 4.67 3.81 3.41 3.18 3.03 2.92 2.83 2.77 2.71 2.67 2.63 2.60 2.58 2.55 2.53
14 4.60 3.74 3.34 3.11 2.96 2.85 2.76 2.70 2.65 2.60 2.57 2.53 2.51 2.48 2.46
15 4.54 3.68 3.29 3.06 2.90 2.79 2.71 2.64 2.59 2.54 2.51 2.48 2.45 2.42 2.40', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "2288624255a5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00039', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'essay', '若廠商的短期成本函數為C(Q)200Q6Q2  Q3 600，其中Q為
3
廠商的產量。根據此成本函數，回答下列問題：
固定成本函數為何？（4 分）
邊際成本函數為何？（5 分）
平均變動成本函數與平均固定成本函數分別為何？（8分）
邊際成本最低所對應的產量為多少？邊際成本線與平均變動成本
線相交位置所對應的產量為多少？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "b81cfb4da5a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "0804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00040', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'essay', '請根據 IS-LM模型的內容，佐以繪圖分析與說明，回答下列問題：
當廠商投資意願與利率變化愈不具有關係時，此對擴張性貨幣政策
與財政政策之產出效果的影響為何？（12分）
流動性陷阱（liquiditytrap）所指為何？與沒有流動性陷阱的狀態相
比較，於流動性陷阱下，擴張性貨幣政策與財政政策之產出效果會
因此擴大或減縮？（13 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "b81cfb4da5a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "0804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00041', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', '假設小白選擇麵包及牛奶的消費量以達到效用最大。在其他條件不變下， 小白在麵包的價格上升後多消費了麵包，但減少牛奶的消費量。下列敘述 何者正確？', '["麵包為正常財，且牛奶為正常財", "麵包為正常財，且牛奶為劣等財", "麵包為劣等財，且牛奶為正常財", "麵包為劣等財，且牛奶為劣等財"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "b81cfb4da5a0", "answer_pdf_sha1": "a2fead896f0a", "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "0804", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00042', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', '關於具約束力的價格上限，下列敘述何者錯誤？', '["從價格上限獲益的消費者數比原本的總消費者數來得少", "價格上限造成超額需求", "價格上限同時造成獲益者與受害者", "價格上限高於原市場價格"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "b81cfb4da5a0", "answer_pdf_sha1": "a2fead896f0a", "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "0804", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00043', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-114-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', '假設一個財貨的價格從100元降低為60元，而其需求量從45個增加到55 個，則依照中點法（midpointmethod），其需求的價格彈性為何？', '["-0.25", "-0.4", "-2.5", "-4"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "b81cfb4da5a0", "answer_pdf_sha1": "a2fead896f0a", "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "306", "s": "0804", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
