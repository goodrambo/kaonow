-- W1.6 questions batch 6736/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-6f0ba476-moex-00555', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-3e700a6a', 'sub-locality-6f0ba476-05', NULL, 'single_choice', '甲將名下一筆房地信託與乙，約定全部信託利益之權利歸屬甲之子丙，依土地稅法及房屋稅條例 規定，本筆房地在信託關係存續中，房屋稅及地價稅之納稅義務人分別為：', '["房屋稅、地價稅均為丙", "房屋稅、地價稅均為乙", "房屋稅為丙、地價稅為乙", "房屋稅為乙、地價稅為丙"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:05+00:00", "source_pdf_sha1": "2255401c3abb", "answer_pdf_sha1": "d17af0bc0582", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1404", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "租稅各論", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00556', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'essay', '甲小姐（居住者）於110年依稅法計算之綜合所得總額為450萬元、
綜合所得淨額為400 萬元（均不包含股利所得），無任何扣繳稅款，
其他資料如下：
㉑獲配境內乙公司之現金股利 80萬元；獲配境外A公司之現金股利
100 萬元。
㉒出售境內上市公司丙公司之股票，獲利 260 萬元；出售境外未上市
公司 B公司之股票，獲利20 萬元。
㉓出售國內私募投資基金之受益憑證損失100萬元。
㉔因交通事故而受傷，獲得境內丁保險公司之保險給付 50 萬元；此
外，獲得境內戊保險公司之年金保險給付4,000萬元。上述保險之
要保人與受益人均非屬同一人，保險開始日均在100 年。
請問：
若其依法選擇將股利所得合併於綜合所得總額中計稅，則應繳或應
退稅額為多少元？（5分）
若其依法選擇將股利所得分開計稅，則依所得基本稅額條例計算之
一般所得稅額為多少元？（5分）
若其依法選擇將股利所得分開計稅，則依所得基本稅額條例計算之
基本稅額為多少元？（5分）
提示：
110 年度綜合所得稅速算公式（單位：新臺幣元）
級距 應納稅額＝綜合所得淨額 ×稅率－累進差額
1 0~540,000×5%－0
2 540,001~1,210,000×12%－37,800
3 1,210,001~2,420,000×20%－134,600
4 2,420,001~4,530,000×30%－376,600
5 4,530,001以上 ×40%－829,600', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00557', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'essay', '請依營利事業所得稅法及相關規定回答下列問題：
境內甲公司採歷年制，請回答下列問題：（15分）
㉑ 110 年甲公司之國內稅前所得額為 800 萬元。其於境外 A 國設
立 B 公司，由甲公司 100%持股。B 公司本年度之稅前淨利 900
萬元，所得稅 225 萬元。B 公司配發給甲公司現金股利 500 萬
元，繳交 A國扣繳稅款 50萬元後，匯回現金 450萬元。請問甲
公司之境外已納稅額可扣抵稅額為多少元？
㉒甲公司於 99 年 1 月購入廠房，購入成本 2,500 萬元，按平均法
折舊，耐用年數為 24 年，估計殘值 100萬元。99年與 109 年之
躉售物價指數分別為 100 與 130，公司辦理資產重估價且獲稽徵
機關核准，重估後廠房之估計殘值為 10 萬元。請問 110 年該廠
房之折舊費用為多少元？（計算至元為止，角以下無條件捨去）
㉓甲公司 110 年帳列營業毛利 6,000 萬元，營業費用為 5,000 萬元
（內含捐贈支出）。捐贈支出如下：
捐贈項目 金額（單位：萬元）
於偏遠地區舉辦文化創意活動 1,100
透過興學基金會指定對特定學校捐款 3,000
捐贈經政府登記有案之體育團體 20
對政治團體之捐贈 500
請問其可認列之捐贈金額為多少元？（計算至元為止，角以下無
條件捨去）
境外營利事業M於 110 年 11 月出售數筆房地產，土地漲價總數額
均未超過本次公告現值扣除前次移轉現值之差額，交易相關費用均
為 100萬元（已提供合法憑證）。詳細資料如下表：（表格中金額均
為新臺幣萬元）
購入日 取得成本 售價 土地漲價總數額 土地增值稅
109年11月 1,900 2,100 150 30
108年12月 2,700 3,100 200 40
108年8月 3,400 4,100 300 60
107年9月 5,350 5,100 100 20
請問：（10 分）
㉑前述交易之應納稅額總共為多少元？
㉒ M公司應如何申報繳納前述交易之所得稅？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00558', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'essay', '請依我國稅法及相關規定，回答下列問題：
請分別說明遺產中之「無償供公眾通行之道路」、「公共設施保
留地」與「法定空地」，在計算遺產淨額時，有何規定？（5 分）
請問在符合那些條件下，被繼承人死亡前之贈與，應視為被繼承人
之遺產，併入遺產總額中課稅？其立法意旨為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00559', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'single_choice', '稅捐稽徵法第44條規定，營利事業依法應保存憑證而未保存者，應就其未保存憑證經查明認 定之總額，處以多少罰鍰？', '["處百分之三罰鍰，但最高不得超過新臺幣100萬元", "處百分之五罰鍰，但最高不得超過新臺幣100萬元", "處百分之十罰鍰，但最高不得超過新臺幣100萬元", "處百分之十罰鍰，但最高不得超過新臺幣200萬元"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": "6fc5642b3ef9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00560', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'single_choice', '下列有關課稅要件之敘述，何者錯誤？', '["認定課徵租稅之構成要件事實時，應以實質經濟事實關係及其所生實質經濟利益之歸屬與 享有為依據，納稅義務人就該事實負舉證之責任；但稅捐稽徵機關應依稅捐稽徵法及稅法 規定負擔協力義務", "稅捐稽徵機關對涉及租稅事項之法律，其解釋應本於租稅法律主義之精神，依各該法律之 立法目的，衡酌經濟上之意義及實質課稅之公平原則為之", "納稅義務人基於獲得租稅利益，違背稅法之立法目的，濫用法律形式，規避租稅構成要件 之該當，以達成與交易常規相當之經濟效果，為租稅規避", "稅捐稽徵機關查明納稅義務人及交易之相對人或關係人有租稅規避之情事者，為正確計算 應納稅額，得按交易常規或依查得資料依各稅法規定予以調整"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": "6fc5642b3ef9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00561', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'single_choice', '下列何者非稅捐稽徵法所稱之稅捐？', '["特別稅課", "關稅", "契稅", "娛樂稅"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": "6fc5642b3ef9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00562', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'single_choice', '下列有關稅捐核課期間起算方式之敘述，何者錯誤？', '["依法應由納稅義務人申報繳納之稅捐，已在規定期間內申報者，自申報日之翌日起算", "依法應由納稅義務人申報繳納之稅捐，未在規定期間內申報繳納者，自規定申報期間屆滿 之翌日起算", "印花稅自依法應貼用印花稅票日起算", "由稅捐稽徵機關按稅籍底冊或查得資料核定徵收之稅捐，自該稅捐所屬徵期屆滿之翌日 起算"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": "6fc5642b3ef9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00563', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'single_choice', '依我國稅法規定，有關所得之課稅範圍，下列何者正確？', '["綜合所得稅採屬人主義，不論國內、外所得皆屬課稅範圍", "個人所得基本稅額採屬地主義，國內所得方屬課稅範圍", "營利事業所得稅採屬地主義，國內所得方屬課稅範圍", "營利事業所得稅採屬人主義兼屬地主義"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": "6fc5642b3ef9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00564', 'locality-6f0ba476', 'locality-6f0ba476-moex-110-9bdab6d6', 'sub-locality-6f0ba476-03', NULL, 'single_choice', '依所得稅法規定，有關納稅義務人申請適用房地合一自用住宅優惠課稅之條件，下列敘述何 者錯誤？', '["本人或其配偶、未成年子女須辦竣戶籍登記、持有並居住於該房屋連續滿6年", "交易前5年內，無出租、供營業或執行業務使用", "個人與其配偶及未成年子女於交易前6年內未曾適用本優惠規定", "其免稅所得額，以不超過400萬元為限"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:06+00:00", "source_pdf_sha1": "4b41bbed0214", "answer_pdf_sha1": "6fc5642b3ef9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "312", "s": "1405", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
