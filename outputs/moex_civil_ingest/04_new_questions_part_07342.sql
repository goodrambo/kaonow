-- W1.6 questions batch 7342/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('police-8a5d488d-moex-00273', 'police-8a5d488d', 'police-8a5d488d-moex-111-068ae566', 'sub-police-8a5d488d-02', NULL, 'essay', '試比較號誌管制路口採用「保護左轉」與「允許左轉」的差別。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "4d211425e38a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "1705", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通工程與管制", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00274', 'police-8a5d488d', 'police-8a5d488d-moex-111-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '警車由 A地點至C地點需先行駛高速公路至 B 地點，再行駛市區道
路到目的地 C 地點。根據過去經驗 A地點至 B地點所需時間是常態
分布，所需平均時間是 15 分鐘，變異數是 20 分鐘。B 地點至 C 地
點所需時間亦是常態分布，所需平均時間是 20分鐘，變異數是 40分
鐘。試求警車可於 30 分鐘內從 A 地點至 C 地點的機率？以及超過
45 分鐘從 A地點至 C地點的機率？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "040d915a2239", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00275', 'police-8a5d488d', 'police-8a5d488d-moex-111-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '某省道路段的速限為 70公里/小時，為改善超速事故問題，於該路段
設置超速取締設施。為評估改善成效，以車牌辨識方法隨機找到 10
部於此設施設置前和設置後均有通過該路段的車輛，這 10 部車輛的
車速資料如下表所示。試在=0.05 之顯著水準下，檢定該路段執行
超速取締能否有效降低駕駛車速？（25 分）
駕駛人編號
調查期間
1 2 3 4 5 6 7 8 9 10
科技執法前車速
74 80 70 66 80 78 87 85 68 81
（km/hr）
科技執法後車速
66 68 72 70 75 68 72 69 68 67
（km/hr）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "040d915a2239", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00276', 'police-8a5d488d', 'police-8a5d488d-moex-111-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '某警局想了解不同類型車輛在不同號誌時相通過路口之車速是否一
樣。該警局蒐集實地資料，並以迴歸模式和變異數分析表（ANOVA
table）分析之，結果如以下二表所示。試在=0.05之顯著水準下，寫
出變異數分析表之假說檢定與說明檢定結果的意義，並計算調整判定
係數（AdjustedR2），以及解釋模式分析結果與應用意義。（25分）
來源 DF 平方和 均方 F值 Pr>F
模型 4 527.9 132.0 40.3 <.0001
誤差 36 118.0 3.3
總計 40 645.9
參數 估計值 標準誤差 t值 Pr>|t|
截距 45.4 0.61 74.34 <.0001
大客車 -5.0 0.72 -6.97 <.0001
小客車 -1.4 0.66 -2.06 0.056
機車（比較基底） - . . .
紅燈 4.0 0.69 5.85 <.0001
黃燈 6.6 0.69 9.65 <.0001
綠燈（比較基底） - .', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "040d915a2239", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00277', 'police-8a5d488d', 'police-8a5d488d-moex-111-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '某地區道路交通事故之機車駕駛的安全帽配戴情形與死亡情況如下
表所示。試在=0.05 之顯著水準下，檢定安全帽配戴情形與死亡情
況是否有關？並以死亡率解釋其關係。（25分）
是否配戴 是否死亡？
安全帽？ 是 否 合計
是 140 9,060 9,200
否 60 740 800
合計 200 9,800 10,000
附表一：標準化常態分配機率表
附表二：t分配表
附表三：卡方分配表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "040d915a2239", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00278', 'police-8a5d488d', 'police-8a5d488d-moex-110-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'essay', '中譯英：（25分）
臺灣彰化地方法院 109 年度訴字第 687 號刑事判決，被告黃○○進
行陳情抗議活動，造成前往處理之某分局員警洪○○跌倒受傷，經檢
察官以傷害、妨害公務等罪嫌提起公訴。法院查驗證據發現，分局長
事前指示遭遇陳抗民眾推擠時，員警要直接順勢跌倒，並將陳抗人士
以現行犯逮捕；致使法院無法排除其係為了要逮捕被告而順勢倒地的
可能；故以罪疑惟輕之原則，判決被告無罪，並於判決書中附記事項。
請將該判決書附記事項以下部分譯為英文：
「我國既為法治國家，執法者除了應廉潔自持外，執法手段更必須合
法正當，不得逾越應恪守之界線，此即本院一再強調的『執法之前，
先要守法』基本觀念。……正因出於對員警執法安全的重視和保護，
本院懇切呼籲警界長官們，切勿對基層員警做出不當的指示或要求，
也再次提醒每位堅守崗位、認真付出的員警們，你們應恪遵的對象，
唯有『國家的憲法與法令』！」', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "1390dfe43c09", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中華民國憲法與警察專業英文", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00279', 'police-8a5d488d', 'police-8a5d488d-moex-110-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '依憲法及司法院大法官解釋，有關依政黨比例代表制選出之代表，下列敘述何者錯誤？', '["僅限於獲得百分之五以上政黨選舉票之政黨才能分配席位", "依政黨比例代表制產生之代表，仍得由選民罷免", "依政黨比例代表制產生之代表出缺後有遞補制度", "僅限於立法委員選舉才有政黨比例代表"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "1390dfe43c09", "answer_pdf_sha1": "b5e0a630e6f1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00280', 'police-8a5d488d', 'police-8a5d488d-moex-110-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '關於考試院之職權，下列敘述何者錯誤？', '["公務人員之任用資格，應經考試院依法考選銓定之", "考試院職權之行使限制人民權利者，須有法律之依據，始得為之", "考試院就其所掌事項之法律案，有對立法院提案之權", "考試院對立法院通過之法律案，得經總統核可，移請立法院覆議"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "1390dfe43c09", "answer_pdf_sha1": "b5e0a630e6f1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00281', 'police-8a5d488d', 'police-8a5d488d-moex-110-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '依司法院大法官解釋之意旨，關於立法院文件調閱權，下列敘述何者錯誤？', '["立法院使用調閱權所取得之資訊，於使用時應注意維護關係人之名譽隱私及營業秘密", "立法院不得調閱檢察機關偵查中之案件卷證", "立法院得調閱已偵查終結之所有案件之卷證", "立法院得立法對拒絕配合文件調閱者科處罰鍰"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "1390dfe43c09", "answer_pdf_sha1": "b5e0a630e6f1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00282', 'police-8a5d488d', 'police-8a5d488d-moex-110-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '下列何者非屬立法委員得主動提出之議案？', '["預算案", "法律案", "憲法修正案", "總統罷免案"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "1390dfe43c09", "answer_pdf_sha1": "b5e0a630e6f1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
