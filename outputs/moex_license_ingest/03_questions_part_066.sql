-- moex_license_ingest questions batch 66/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00651', 'cpa', 'cpa-moex-109-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '審計抽樣之目的，係以測試自母體選出樣本之結果為依據，俾對母體作出結論。下列敘述何 者錯誤？', '["查核人員對應收帳款餘額採分層抽樣方式以專注查核餘額較大之客戶，通常可減少樣本量， 並有利偵查重大錯誤之金額", "查核目的如係測試應收帳款之真實性，用於函證之抽樣單位可為客戶帳款餘額或個別發票 金額", "自交易類別或科目餘額選取特定受測項目，通常係取得查核證據之有效率方法，因此對所 選取特定項目之檢查，有助於對母體中剩餘之項目提供查核證據", "查核人員執行進貨之控制測試時，可能著重於發票是否經過核對並經適當核准；執行證實 測試時，則可能著重於當期進貨金額在財務報表上是否允當表達"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7602cf0a08b3", "answer_pdf_sha1": "96f45fb26fe3", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 21, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00652', 'cpa', 'cpa-moex-109-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '會計師查核某上市公司，因關係人交易無法取得足夠適切的證據，而決定出具無法表示意見 之查核報告，下列何段不會出現在該查核報告中？', '["無法表示意見之基礎段", "關鍵查核事項段", "強調事項段", "其他事項段"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7602cf0a08b3", "answer_pdf_sha1": "96f45fb26fe3", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 22, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00653', 'cpa', 'cpa-moex-109-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '甲集團的重要子公司由其他會計師查核，集團主辦會計師對該會計師的專業能力、信譽與 獨立性感到滿意，但為了顯示責任的區分，集團主辦會計師擬於所出具之無保留意見查核 報告中提及其他會計師的工作。集團主辦會計師於查核報告中應如何說明採用其他會計師 的工作？', '["於查核意見段說明其他會計師查核範圍", "於查核意見段與查核意見之基礎段提及其他會計師，說明其他會計師查核範圍", "另增加強調事項段說明其他會計師查核範圍", "另增加其他事項段說明其他會計師查核範圍"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7602cf0a08b3", "answer_pdf_sha1": "96f45fb26fe3", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00654', 'cpa', 'cpa-moex-109-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列事項何者最可能於會計師查核報告之「關鍵查核事項」段中說明？', '["重大生產設備安裝時程之認定，嚴重影響折舊費用認列之金額", "查帳人員受新冠肺炎疫情之影響，無法赴受查客戶海外子公司查帳，導致出具保留意見之 查核報告", "受查客戶一家重要子公司的財務報表由海外聯盟事務所查核", "受查客戶正與一家同業協商併購事宜"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7602cf0a08b3", "answer_pdf_sha1": "96f45fb26fe3", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00655', 'cpa', 'cpa-moex-109-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列何種情況下，會計師最有可能在查核報告交付日後仍採取作進一步之行動？①纏訟多年', '["受查者面臨重大經營危機，極可能發生倒閉", "受查者發 生員工侵占公司資產事件", "查核人員發現查核後財務報表所列報之關係人交易存在重大不 實表達", "僅"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7602cf0a08b3", "answer_pdf_sha1": "96f45fb26fe3", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00656', 'cpa', 'cpa-moex-109-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司產銷 A與B兩種產品，其中 A產品 1,000單位、B產品 2,000
單位，下列係兩產品相關資料：
A B
直接原料成本 $150,000 $100,000
直接人工成本 48,000 12,000
機器小時 50 200
機器整備次數 2 5
零件種類數 10 5
檢驗小時 2 6
直接人工每小時工資率為$120，製造費用之相關資料如下：
作業成本庫 成本動因 每單位成本動因之成本
1.電力 機器小時 $ 30
2.機器設備 整備次數 1,000
3.監工 直接人工小時 70
4.材料處理 零件種類數 20
5.品質檢驗 檢驗小時 150
試作：（請詳列計算過程，否則不予計分。金額計算至小數點第一位以
下四捨五入。）
以直接人工小時為製造費用之分攤基礎，計算 A 與 B 兩種產品之單
位成本。（4分）
若該公司採用作業基礎成本制，如有一客戶願意按製造成本加成20%
購買B產品，則甲公司最高的報價應為多少？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "2ec3327f2a56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00657', 'cpa', 'cpa-moex-109-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司實施責任會計，責任中心績效評估是以利潤額或以投資報酬率
為基礎。甲公司設有電池及手機二部門，電池是手機之零組件，手機
部門明年的預算是以銷售量 15,000 單位為基礎，而預算列示於下：
每單位 總金額
銷貨收入 $400 $6,000,000
銷貨成本：
電池 $70 $1,050,000
其他零件 37 555,000
直接人工 30 450,000
變動製造費用 45 675,000
固定製造費用 32 480,000
總銷貨成本 214 3,210,000
毛利 186 2,790,000
營業費用：
變動銷售費用 $18 $270,000
固定銷售費用 19 285,000
固定管理行政費用 38 570,000
總營業費用 75 1,125,000
稅前淨利 $111 $1,665,000
手機部經理深信，手機售價調降，必能增加銷量。若調降售價 5%（即
$20），將增加16%（即 2,400單位）銷量。手機部現存閒置產能可吸
收此項增量。
目前手機部所使用之電池是以每單位$70購自於公司外部供應商，而
電池部之電池亦只售予公司外部買主。手機、電池二部門經理正洽談
電池之企業內跨部門間之移轉。惟規格須略做修改，估計可降低電池
材料成本每單位$1.50。由於是內部移轉，故變動銷售費用可以免除。
手機部經理期望可以每單位$50自單一來源取得電池之供應。
電池部產能 75,000 單位，以 64,000 單位（未含公司內手機部需求量）
為作業量基礎之預算列示於下：
每單位 總金額
銷貨收入 $100 $6,400,000
銷貨成本：
原料及零件 12 768,000
直接人工 8 512,000
變動製造費用 10 640,000
固定製造費用 11 704,000
總銷貨成本 41 2,624,000
毛利 59 3,776,000
營業費用：
變動銷售費用 6 384,000
固定銷售費用 4 256,000
固定管理行政費用 7 448,000
總營業費用 17 1,088,000
稅前淨利 $42 $2,688,000
請作：
請列表計算降價5%前、後之利潤，用以說明手機部是否願意降價
5%。（6分）
不考慮第小題，若手機部需求17,400單位電池，電池部願意以每
單位$50提供電池給手機部嗎？請以計算式支持你的答案。（7分）
不考慮第、小題，若電池部以每單位$50提供17,400單位電池給
手機部，以滿足手機部之需求，則如此將對甲公司更有利嗎？請以
計算式支持你的答案。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "2ec3327f2a56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00658', 'cpa', 'cpa-moex-109-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司生產機器人 1 號，有兩個服務部門，S1 與S2，兩個生產部門
P1 與 P2，S1 提供服務給 P1、P2與 S2，而 S2提供服務給 P1、P2與
S1，S1 提供 P1 的服務是 S1 服務 S2 的四倍。本月份公司營運資料
如下：
使用的服務
作業 成本 P1 P2
S1 $90,000 ？ 50%
S2 60,000 55% 25%
P1 與 P2 每月營運的固定成本分別為$360,000與$520,000。
試問：
請根據相互分攤法，分別計算每個生產部門與服務部門的總成本。
（12 分）（請詳列計算過程，否則不予計分。金額計算至整數位。）
公司每個月可提供生產250個機器人 1 號，若為了促銷該產品，投
入包裝模具開發成本$900,000，該模具預計可使用一年，每個機器
人包裝材料$300，根據上述資料，若公司的成本加成率為 15%，請
問機器人的訂價應為何？（4 分）（請詳列計算過程，否則不予計分。
金額計算至小數點第二位以下四捨五入。）
每個機器人 1 號，耗用 P1 生產小時數為 23 小時，有一家廠商向
甲公司提議，可以提供 P1 加工作業，每個機器人$1,600，但一次
要訂製 270個，生產過程 P2是瓶頸產能，P1 加工後的產品可於市
場以$2,000賣出。假設 P1外包後，P1 部門即可裁撤，其他部門不
變，下個月公司所有業務的作業量與本月相同，從公司的角度考量，
你贊成接受該廠商的提議嗎？為什麼？（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "2ec3327f2a56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00659', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲本年出售一筆土地（地上無建築物），售價1,000 萬元，移轉時公告現
值為 800 萬元，該筆土地係於 25年前向乙以 500萬元購得。取得時，雙
方約定以公告現值 200萬元申報土地移轉現值，甲出售土地時，政府發
布之消費者物價指數較取得時上漲 50%，取得後，未發生其他相關費用
（不考慮增繳之地價稅），依土地稅法規定回答下列問題：
出售之土地如何申報土地移轉現值，對甲最有利？（5分）
以對甲最有利的方式，計算應納之土地增值稅額？（5分）（未列計算
式不予計分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00660', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲是小有名氣的地方小農，一家五口和樂融融。甲自 100 年起任職於某
財團法人，該財團法人以促進農業技術之國際合作為創設目的。甲長期
派駐國外擔任農業技術團技師，109 年 3 月中旬，於國外示範耕耘機操
作方式時，不幸被耕耘機壓傷致死。依遺產及贈與稅法及相關法規規定，
回答下列問題：
遺產稅的配偶扣除額及各順序繼承人扣除額是否可自遺產總額中扣
除，其判斷要件為何？（5 分）
繼承人主張甲因執行職務死亡，主張遺產稅免稅額應加倍扣除，是否
可採？請說明理由。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
