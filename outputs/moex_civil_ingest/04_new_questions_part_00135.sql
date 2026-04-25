-- W1.6 questions batch 135/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-3df1c47f-moex-00242', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-110-6ed013db', 'sub-aboriginal-3df1c47f-07', NULL, 'single_choice', 'Whichstatementbestsumsupthepassage?', '["Animalpedigreeisaguaranteeoffoodquality", "Animalwelfareisalsoaneconomicissue", "File-cabinetdrawersareefficientforegglaying", "Happierhensmakeotheranimalshappy"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:28+00:00", "source_pdf_sha1": "6069e65a1298", "answer_pdf_sha1": "c5158b77d9cd", "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "407", "s": "0213", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "法學知識與英文(包括中華民國憲法、原住民族行政及法規、英文)", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00243', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-110-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '假設以四種不同飼料配方 A、B、C、D 餵飼四組幼鴨，記錄所有鴨隻
6 週後的增重，以增重的數據進行變方分析，獲得分析結果如下表：
自由度 平方和 均方 F p-value
飼料配方 3 2396.07 798.69 7.99 0.0018
機差 16 1598.88 99.93
總和 19 3994.95
根據上述研究的說明及變方分析表，回答以下問題：
變方分析表的虛無假設為何？對立假設為何？（8分）
處理因子為何？（3分）
本研究的試驗單位為何？共有多少個試驗單位參與研究？（6分）
本研究採用何種試驗設計？（3 分）
變方分析結果可獲得什麼結論（設顯著水準為0.01）？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:28+00:00", "source_pdf_sha1": "698deea41d44", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "407", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00244', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-110-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '在試驗田區內以四重複的隨機完全區集設計，比較 A、B、C、D四種不
同紅豆品種的產量是否有顯著差異，試驗後的產量數據如下：
區集
品種 I II III IV
A 45 39 40 45
B 25 28 30 29
C 28 31 24 28
D 31 37 35 33
分別計算 A、B、C、D各紅豆品種的產量平均值與標準誤差（standard
errors）。（20 分）
計算以下變方分析表(1)～(5)欄位之數值結果。（10 分）
DF SS MS F p-value
Block (1) 9.0 (3)
Treatment (2) 556.5 (4) 20.739 0.0002
Error 9 80.5 (5)
Total 15
承上題，依據變方分析表 F = 20.739 及其對應的 p-value = 0.0002，在
顯著水準設為 0.05 下，可獲得什麼結論？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:28+00:00", "source_pdf_sha1": "698deea41d44", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "407", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00245', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-110-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '因應智慧農業的發展，農場管理員希望透過簡單線性回歸模式，以累積
溫度來預測葉菜生長的葉片數，進而規劃生產時程，因此收集一批葉菜
的累積溫度與葉片數資料如下：
重複 1 2 3 4 5 6 總和 平方和
累積溫度（x） 91 181 222 298 390 408 1590 497694
葉片數（y） 2 3 5 7 9 10 36 268
求累積溫度與葉片數的相關係數（correlation coefficient）。（10分）
將上述累積溫度與葉片數資料以統計軟體進行回歸分析，得分析結果
如下，請依據分析結果，寫出以累積溫度預測葉片數的簡單線性回歸之
最小平方法估計式，並據以預測10片葉片所需累積溫度為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:28+00:00", "source_pdf_sha1": "698deea41d44", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "407", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00246', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-110-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '某機構受委託抽檢某市售產品的藥劑殘留量，假設該藥劑法定標準殘留
量不得高於 5 ppm，108 年從市售產品隨機抽樣 300 件樣品中，經檢驗
發現有 273件符合法定標準。
依據抽驗結果，符合法定標準的比例（p）為何？求取符合法定標準比
例（p）的95%雙尾信賴區間（假設該比例值的分布可以常態分布概似
之，且標準常態分布 97.5%百分位數為 1.96）。（10 分）
經過 108年的抽檢後，近年來縣政府努力宣導，希望能將市售產品檢
出藥劑殘留符合法定標準的比例提升至 95%以上，並即將在 111年再
次辦理市售產品抽檢檢視宣導成果。若縣政府希望符合法定標準比例
的估計誤差低於正負 1%內，且要求型Ｉ錯誤發生之機率不得高於5%
（不考慮型 II 錯誤發生之機率），請說明：㉑何謂抽檢發生型 I 錯誤。
㉒根據前述要求，應從市售產品隨機抽樣幾件樣品。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:28+00:00", "source_pdf_sha1": "698deea41d44", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "407", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-444ca548-moex-00001', 'aboriginal-444ca548', 'aboriginal-444ca548-moex-114-3082b5f1', 'sub-aboriginal-444ca548-01', NULL, 'single_choice', '依司法院大法官解釋意旨，關於法律之敘述，下列何者錯誤？', '["所謂法律，原則上係對不特定人之權利義務所為之抽象規定", "預算案實質上為行政行為之一種，但因具有法律之形式，故稱之為措施性法律", "若法律實際適用結果，僅單一或少數對象受該法律規範者，即為憲法所不許", "法律明確性原則並無禁止立法者衡酌生活事實之複雜性及適用於個案之妥當性，適當運用不確 定法律概念之可能性"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:52+00:00", "source_pdf_sha1": "bf7be7405e55", "answer_pdf_sha1": "2e88d7bce4a9", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "510", "s": "0602", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業行政"}'::jsonb, NULL),
  ('aboriginal-444ca548-moex-00002', 'aboriginal-444ca548', 'aboriginal-444ca548-moex-114-3082b5f1', 'sub-aboriginal-444ca548-01', NULL, 'single_choice', '關於法律不溯及既往原則之敘述，下列何者錯誤？', '["不論負擔性或授益性法律均有法律不溯及既往之適用", "真正溯及既往係指，法規於時間上向前適用於已確定終結之案件", "原則上法律不溯及既往只禁止真正溯及既往之情形，惟若不真正溯及既往之影響過鉅，則宜制 定過渡條款", "基於重大公益之考量仍可能例外允許制定真正溯及既往之法規"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:52+00:00", "source_pdf_sha1": "bf7be7405e55", "answer_pdf_sha1": "2e88d7bce4a9", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "510", "s": "0602", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業行政"}'::jsonb, NULL),
  ('aboriginal-444ca548-moex-00003', 'aboriginal-444ca548', 'aboriginal-444ca548-moex-114-3082b5f1', 'sub-aboriginal-444ca548-01', NULL, 'single_choice', '下列何者非屬不確定法律概念？', '["食品安全衛生管理法第15條之「有毒或含有害人體健康之物質或異物」", "建築法第58條之「危害公共安全者」", "空氣污染防制法第62條之「通知限期補正或改善」", "廢棄物清理法第2條之「有害事業廢棄物」"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:52+00:00", "source_pdf_sha1": "bf7be7405e55", "answer_pdf_sha1": "2e88d7bce4a9", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "510", "s": "0602", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業行政"}'::jsonb, NULL),
  ('aboriginal-444ca548-moex-00004', 'aboriginal-444ca548', 'aboriginal-444ca548-moex-114-3082b5f1', 'sub-aboriginal-444ca548-01', NULL, 'single_choice', '關於公立中小學與學生之法律關係，下列敘述何者正確？', '["學校不得對學生作成行政處分", "學生與學校成立公法上之營造物利用關係", "學校制定學生退學之校規，無需任何法律依據", "學生與學校間之營造物利用關係發生爭執時，僅得透過家長會協議解決"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:52+00:00", "source_pdf_sha1": "bf7be7405e55", "answer_pdf_sha1": "2e88d7bce4a9", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "510", "s": "0602", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業行政"}'::jsonb, NULL),
  ('aboriginal-444ca548-moex-00005', 'aboriginal-444ca548', 'aboriginal-444ca548-moex-114-3082b5f1', 'sub-aboriginal-444ca548-01', NULL, 'single_choice', '下列何者為行政法人？', '["國立故宮博物院", "中央銀行", "國家中山科學研究院", "公平交易委員會"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:52+00:00", "source_pdf_sha1": "bf7be7405e55", "answer_pdf_sha1": "2e88d7bce4a9", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "510", "s": "0602", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
