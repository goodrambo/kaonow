-- moex_license_ingest questions batch 110/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-01091', 'cpa', 'cpa-moex-105-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '下列何者不是一套良好的平衡計分卡所具備的特質？', '["明確顯示各個構面策略目標的因果關係", "包含所有可能的衡量指標以求衡量之完整性", "設定每個目標所欲達成的績效水準", "連結策略規劃與預算分配"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "c88a34846fb7", "answer_pdf_sha1": "02a373102f08", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01092', 'cpa', 'cpa-moex-105-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '關於獎酬與績效評估之敘述，下列何者不正確？', '["在評估部門經理個人績效時，宜採用與評估部門整體績效一致之績效指標", "在評估部門經理個人績效時，宜採用與評估部門整體續效不同之績效指標", "給予經理人固定獎酬容易產生道德危險（moral hazard），但經理人所承擔的風險較小", "給予經理人變動獎酬能提供較高之努力誘因，但經理人亦承擔較高之風險"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "c88a34846fb7", "answer_pdf_sha1": "02a373102f08", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01093', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '大華公司採曆年制，假設 105 年度公司股東可扣抵稅額帳戶期初餘額為 0，105 年
5月10日繳納104年度營利事業所得稅500,000元，同年6月30日利息收入被扣
繳稅款50,000元，7月5日獲配轉投資收益（股利）1,000,000元，另含100,000元
的可扣抵稅額，9月20日繳納暫繳稅額150,000元，該公司以105年10月1日為
除息基準日，發放現金股利淨額共計 2,000,000 元，假設該公司稅額扣抵比率為
20.00%，試回答下列問題：
在除息日前應計入股東可扣抵稅額之項目、金額及日期為何？請依下列格式寫
出。（8分）
應計入項目      應計入金額      應計入日期
陳大華是大華公司負責人，中華民國境內居住者，個人持有公司股權40%，則陳
大華可以領取多少現金股利淨額？又可獲配多少可扣抵稅額？應計入綜合所得
稅之營利所得為多少？請列出計算式，否則不予計分。（9分）
試問大華公司除息時應減除多少可扣抵稅額？（3分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01094', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '大安公司為一般稅額計算之營業人，105年1至2月有關金額如下（均不含稅）：
應稅銷售額  $10,000,000
外銷銷售額  1,000,000
進貨與費用（含捐贈育幼院$200,000）  9,400,000
購入固定資產（含乘人小汽車$600,000）  2,600,000
上期留抵稅額  100,000
請算出下列該期數據（需列出計算式）：
銷項稅額（2分）
可扣抵之進項稅額（2分）
溢付（或應納）稅額（2分）
應退稅額（2分）
留抵稅額（2分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01095', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲公司所有一般土地3筆，其中一筆土地有地上物（房屋），其債務經債權人移送
執行，內容如下：
㉑甲公司於 105年向金融機構辦理房屋抵押貸款 2,500萬元，積欠本金計1,525萬
元。
㉒甲公司於104年移轉一筆土地，於移轉後因故經稽徵機關補徵土地增值稅1,000萬
元，滯欠本稅及利息1,015萬元。
㉓甲公司滯欠營業稅 250 萬元、房屋稅 2 萬元及地價稅 28,000 元（其中有地上物
之土地地價稅為6,000元）。
倘甲公司因強制執行事件，其地上物（房屋）及所坐落之土地遭法院拍賣，拍定價
格為1,850萬元，該地上物（房屋）拍賣之營業稅32萬5,000元，該拍賣土地之土
地增值稅385萬元，則稅捐稽徵機關可獲分配之各項租稅債權（土地增值稅、地價
稅、房屋稅、營業稅）分別為多少？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01096', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，本國國民王先生於民國105年全年度出售我國未上市股票10張，獲利100萬元，試問 如何課稅？', '["應課徵所得稅，但採百分之十五稅率分離課稅，與綜合所得稅合併報繳", "應課徵所得稅，計入綜合所得稅之財產交易所得合併課稅", "免納綜合所得稅", "未上市股票停徵所得稅，但納入所得基本稅額計算範圍"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": "2f8a55112784", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01097', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '某甲之家庭成員有妻子某乙與未成年受扶養兒子某丙共三人，某甲於申報 104 年度綜合所得稅時採用夫 妻各類所得分開計稅，合法金融機構之存款利息所得為某甲20萬元、妻15萬元、兒子10萬元，依所得 稅法規定，在申報減除儲蓄投資特別扣除額時，下列敘述何者正確？', '["採各類所得分開計稅方式時，每人可以享有27萬元儲蓄投資特別扣除額", "採夫方各類所得分開計稅時，則夫分開計稅可減除之儲蓄投資特別扣除額為 2 萬元，妻與兒子可以減 除25萬元", "採妻方各類所得分開計稅時，則妻分開計稅可減除之儲蓄投資特別扣除額為15萬元，夫與兒子可以減 除12萬元", "採妻方各類所得分開計稅時，則妻分開計稅可減除之儲蓄投資特別扣除額為 7 萬元，夫與兒子可以減 除20萬元"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": "2f8a55112784", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01098', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，有關納稅義務人申請適用房地合一自用住宅優惠課稅之條件，下列敘述何者錯誤？', '["本人或其配偶、未成年子女須辦竣戶籍登記、持有並居住於該房屋連續滿六年", "交易前五年內，無出租、供營業或執行業務使用", "個人與其配偶及未成年子女於交易前六年內未曾適用本款優惠規定", "其免稅所得額，以不超過四百萬元為限"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": "2f8a55112784", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01099', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法及其相關法規中有關固定資產折舊的相關規定，下列何者正確？', '["折舊方法經申報稽徵機關核准變換後，得採用年數合計法", "提列折舊時應預估殘值，且殘值應等於最後一年度之未折減餘額", "耐用年數屆滿仍繼續使用，應保持帳列殘值不再續提折舊", "因故未達規定耐用年限而廢棄者，未折減餘額得依會計師所得稅查核簽證報告核實認定損失"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": "2f8a55112784", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01100', 'cpa', 'cpa-moex-105-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '黃小姐為我國境內居住之個人，104年度有一筆由保險公司支付之年金保險給付新臺幣（以下同）3,500萬 元，該張保單之要保人為其母，保險期間開始日為97年3月18日，則依所得基本稅額條例及其相關規 定，其應計入104年度個人基本所得額之金額為若干元？', '["0元", "170萬元", "500萬元", "3,500萬元"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "a0fa3fd88c6d", "answer_pdf_sha1": "2f8a55112784", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
