-- moex_license_ingest questions batch 76/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00751', 'cpa', 'cpa-moex-108-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '有關採用機率與金額大小等比例抽樣法（probability-proportional-to-size-sampling, PPS），下列敘 述何者正確？ sampling interval）的計算方式，為母體中的實體單位數（the number of physical units） 除以樣本量 PPS最具有效率', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "b31a6169dd18", "answer_pdf_sha1": "13aaf559a1eb", "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 24, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00752', 'cpa', 'cpa-moex-108-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '依我國審計準則公報第65號「財務報表之核閱」規定，會計師受託執行上市（櫃）公司財務報 表核閱服務時，下列敘述何者正確？', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "b31a6169dd18", "answer_pdf_sha1": "13aaf559a1eb", "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 25, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00753', 'cpa', 'cpa-moex-108-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '某公司製造 A、B、C三種產品，A產品與 C產品為聯產品，B產品
則為 A 產品之副產品。該公司採用「副產品不分攤聯合成本」的方
法，其製程相關資訊如下所述：
第一製造部門耗用 57,500公斤之原料，共發生製造成本$345,000。
該製造部門完成並轉出之產品中有 70%轉入第二製造部門繼續加
工，另 30%為 C產品之半成品，轉入第三製造部門繼續加工。
來自第一製造部門轉入之半成品繼續在第二製造部門加工，並且
耗用加工成本$230,000。第二製造部門完成之產品中，有 80%為 A
產品之半成品，轉入第四製造部門繼續加工。另外的 20%為 B 產
品，其售價為每公斤$3 且須耗費銷售費用$12,420。
產品於第三製造部門繼續加工過程中發生 5%的損耗，於第三製
造部門的再加工成本為$138,000，其正常品每公斤售價為$20。
產品於第四製造部門繼續加工過程中發生 10%的損耗，於第四
製造部門的再加工成本為$92,000，其正常品每公斤售價為$24。
試作：依以下兩種獨立情況回答問題（計算過程中若有除不盡，一
律四捨五入後取至整數）。
假設 B 產品之淨變現價值作為 A 產品之銷貨收入，試按分離點售
價法計算 A產品及 C產品各應分攤多少聯合成本。（12 分）
假設 B 產品之淨變現價值作為 A 產品生產成本減項，並且另外假
設 A產品分攤之聯合成本為$230,000，共產出28,750 公斤的 A產
品及 5,750 公斤的 B 產品，本期 A 產品出售量占產出量之 80%，
無期初存貨。除上述外，若其他條件不變，則 A 產品之銷貨毛利
為何？（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "80e5c4216acd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00754', 'cpa', 'cpa-moex-108-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '尚康公司採用標準成本制之全部成本法（full costing），並以200,000
單位的產能作為基準產能，生產數量差異全部結轉至銷貨成本。下年
度該公司預計生產 160,000 單位，各項預估金額如下：單位變動製造
成本為$20，單位變動銷管費用為售價的 12.5%，固定製造成本
$600,000，固定銷管費用$400,000。每單位售價$80，目標淨利為
$185,000。
試作：
預估應銷售多少單位方能達成目標淨利？（6分）
若實際售價受景氣因素影響降為$72，但其餘資料仍與之前預估的
情境相同，試計算因售價預測錯誤對營業淨利的影響為何？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "80e5c4216acd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00755', 'cpa', 'cpa-moex-108-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司生產一運動設備，每月生產 800 單位，每月製造成本
$1,072,000，其製造成本內容如下：
直接原料成本  $624,000
直接人工成本  256,000
製造費用
原料訂購成本  4,000
原料運送成本  72,000
品質檢驗成本  44,800
重製成本  8,400
折舊費用（直線法）  62,800
合計  $1,072,000
根據工程顧問對公司作業分析得到下列資料：
作業成本庫    作業成本動因    動因耗用成本
原料訂購成本  訂購次數  每次$1,000
原料運送成本  運送數量  每單位原料$3
品質檢驗成本  檢驗時數  每小時$70
重製成本  重製數量  每單位$150
其他資訊：
直接原料每單位$26，每批次訂購的原料數量皆為一樣。
每一單位產品耗用直接人工 2小時，每小時工資率為$160。
為了提升競爭力，甲公司實施策略性成本管理，創新並設計出新的
生產模式，其實施成果包括：
每一單位產品耗用直接原料數量減少 10%，直接原料每單位成本
減少$2。
每次訂購成本減少至$800，故同時將原來每批次訂購數量調減為
原來的 72%。
每一單位產品耗用直接人工減少 0.5 小時，以因應每小時工資率上
漲為$180。
檢驗時數減少 37.5%。
重製率由 7%減少為 5%。
試作：
基於相同生產數量，在新的生產模式下，運動設備的主要成本為
多少？（6 分）
基於相同生產數量，在新的生產模式下，每批次訂購原料的數量
為多少單位？每個月須訂購幾次？（6分）
基於相同生產數量，在新的生產模式下，每月製造成本為多少？
（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "80e5c4216acd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00756', 'cpa', 'cpa-moex-108-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '依所得稅法及其相關法規規定，計算並回答下列問題：
25 條之規定？（6 分）
A營造公司總機構在日本，其在中華民國境內無分支機構，以我國
甲營造公司為其營業代理人，在中華民國境內承包營建工程，A 營
造公司 107年度在我國境內營業收入為 9 億元，依所得稅法第 25條
規定納稅，並由甲營造公司代扣稅款。試問：A 營造公司 107 年度
在我國之營利事業所得稅應納稅額為多少？（3分）
B 國際運輸公司總機構在中華民國境外，其在中華民國境內無分支
機構，以我國乙運輸公司為其營業代理人，在中華民國境內經營國際
運輸業務，該公司107年度在我國境內營業收入為8億元，依所得稅
法第 25 條規定納稅，並由乙運輸公司代扣稅款。試問：B 國際運輸
公司107年度在我國之營利事業所得稅應納稅額為多少？（3分）
C 影片公司之總機構設於美國，其在中華民國境內無分支機構，以
我國丙公司為其營業代理人，其 107 年度之出租影片收入為 5 千萬
元，並由丙公司代扣稅款。試問：C 影片公司 107 年度在我國之營
利事業所得稅應納稅額為多少？（3 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:10+00:00", "source_pdf_sha1": "2689da149a8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00757', 'cpa', 'cpa-moex-108-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '請依所得稅法規定回答下列問題：
年度甲（60 歲）及其配偶（71 歲），扶養同戶籍下列親屬，則該
申報戶可申報之免稅額總額最高為多少？（提示：當年度之免稅額基
準為每人全年 8.8 萬元）（5 分）
1.就讀於國外公立學校研究所之妹妹（40歲）。
2.全年在服兵役之兒子（24歲）。
3.107 年 6月畢業之女兒（22歲）。
4.無謀生能力之舅舅（80歲）。
年度乙與配偶合併申報撫養未成年之女兒一人及領有身心障礙手
冊之胞兄一人，當年度有下列費用（均取具合法憑證），則該申報戶
可列舉扣除之金額為多少？（提示：上限額度：保險費 2.4 萬元，購
屋借款利息 30 萬元，租金支出 12 萬元，儲蓄投資特別扣除額 27 萬
元）（10分）
1.每人之人身保險費（非全民健保費）均為 10萬元，總共 40 萬元。
2.每人之全民健保費均為 3萬元，總共 12萬元。
3.該胞兄之醫藥費 3 萬元，獲保險公司給付 1萬元。
4.女兒因就學所需，在北部租屋，租金共 12 萬元。
5.購買自用住宅利息支出 50 萬元，另有銀行存款利息收入 30 萬元。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:10+00:00", "source_pdf_sha1": "2689da149a8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00758', 'cpa', 'cpa-moex-108-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲公司銷售土地及房屋與乙公司，雙方簽訂買賣契約僅約定土地及房屋
銷售總價（含稅）200,000,000 元，未分別訂明土地及房屋之銷售價格，
該筆土地之當期土地公告現值為 7,875,000 元，房屋之評定標準價格為
2,500,000元，試問依加值型及非加值型營業稅法及其相關法規規定，甲
公司應開立之統一發票免稅及應稅銷售額各為若干？（請列出計算式否
則不予計分，答案請四捨五入至以元為單位。）（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:10+00:00", "source_pdf_sha1": "2689da149a8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00759', 'cpa', 'cpa-moex-108-9bdab6d6', 'sub-cpa-05', NULL, 'essay', 'A公司財務經理在甲會計師教唆下，以人頭虛列薪資支出，涉嫌以詐術
或不正當方法逃漏營利事業所得稅，經稅捐稽徵機關調查屬實。請就稅
捐稽徵法之規定，回答下列問題：
甲會計師可能遭受何種處罰？（3 分）
A公司可能遭受何種處罰？（2 分）
A公司負責人在稅捐稽徵機關進行調查前發現此不當行為，應如何補
救始可免罰？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:10+00:00", "source_pdf_sha1": "2689da149a8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00760', 'cpa', 'cpa-moex-108-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得基本稅額條例規定，申報107年度綜合所得稅時，下列何者應計入個人基本所得額？ 出售私募基金受益憑證之所得 申報綜合所得稅時，未申報之非現金捐贈 國內未上市（櫃）及非屬興櫃公司之股利所得 國外來源所得總額新臺幣50萬元', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:10+00:00", "source_pdf_sha1": "2689da149a8e", "answer_pdf_sha1": "68437cc80423", "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
