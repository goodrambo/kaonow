-- moex_license_ingest questions batch 182/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('bookkeeper-moex-00022', 'bookkeeper', 'bookkeeper-moex-114-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '乙公司X1年度將銷售一款新型商品，新商品第1年上市估計僅能銷售500,000單位，單位變動 成本$180。 估計固定成本將包括折舊費用$2,700,000，租金費用$2,800,000，管理費用$2,000,000，以及廣告費 用$2,500,000。 試問乙公司欲在X1年度達成損益兩平目標，對於新型商品的單位售價應設定之金額為何？', '["$191", "$195", "$200", "$202"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "6d92ab6ec67a", "answer_pdf_sha1": "b1533b8ff15e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1301", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 18, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00023', 'bookkeeper', 'bookkeeper-moex-114-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '甲企業有兩位合夥人A君與B君，X4年初之資本餘額為：A君$450,000，B君$950,000，損益約 定由兩人平分。若C君以$600,000現金投入甲企業並取得五分之一權益，此時三位合夥人的資本 額比例（A：B：C）為：', '["22.5%：47.5%：30%", "35%：35%：30%", "25.7%：54.3%：20%", "27.5%：52.5%：20%"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "6d92ab6ec67a", "answer_pdf_sha1": "b1533b8ff15e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1301", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 19, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00024', 'bookkeeper', 'bookkeeper-moex-114-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '甲公司擁有一棟辦公大樓，今年支付$500,000現金維修電梯，此支出為經常性維修，並不增加電 梯功能或延長使用年限。若甲公司誤將此維修記錄為：借記電梯設備$500,000，貸記現金$500,000， 後續並提列折舊，對本期淨利與營業活動淨現金流入的影響為何？', '["本期淨利：高估；營業活動淨現金流入：無影響", "本期淨利：高估；營業活動淨現金流入：高估", "本期淨利：低估；營業活動淨現金流入：無影響", "本期淨利：低估；營業活動淨現金流入：高估"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "6d92ab6ec67a", "answer_pdf_sha1": "b1533b8ff15e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1301", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 20, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00025', 'bookkeeper', 'bookkeeper-moex-114-cb3b9dc5', 'sub-bookkeeper-02', NULL, 'essay', '納稅義務人甲（50 歲、單身）為中華民國境內居住之個人，扶養弟弟乙
（45歲，符合中央衛生福利主管機關公告須長期照顧之身心失能且領有
身心障礙手冊）。113 年度中華民國境內收入、支出等相關資料如下：
㉑甲為多層次傳銷事業參加人，全年進貨累積金額為 100 萬元、銷貨收
入 150萬元，甲未保留相關進、銷貨憑證；甲進貨累積金額達標，取
得業績獎金 10萬元；假設純益率6%、經紀人費用率 20%。
㉒甲獲配境內上市公司股利50萬元、出售境內上市公司股票獲利300萬元。
㉓甲參加攝影比賽優勝，獲得獎金 20 萬元，但作品歸舉辦單位所有；假
設費用率30%。
㉔甲於 1 月出售 100 年取得之臺北市 A 房屋（乙設籍），售價 3,000 萬
元，取得成本無法查得，但出售年度之房屋評定現值 100 萬元、土地
公告現值400萬元、所得標準 45%。另甲於 3月出售 100 年取得之臺
北市 B房屋（無人設籍），核計有財產交易損失 15萬元。
㉕甲於 5 月出售 110 年取得之新北市 C 房屋（甲設籍並實際居住），售
價 5,000萬元，取得成本 4,000萬元，相關費用 100 萬元（取得合法憑
證）、依土地公告現值計算之漲價總數額 200萬元、土地增值稅 40萬
元、出售年度之房屋評定現值 100 萬元、土地公告現值 400萬元、所
得標準 34%。
㉖甲於 10 月購進取得臺中市 D 房屋（甲設籍並實際居住），買進價款
4,000 萬元，房屋評定現值100萬元、土地公告現值 400萬元、所得標
準 30%。
㉗列舉扣除額合計 25 萬元（取得合法憑證）。
㉘乙全年租金支出 12 萬元。
請以最有利甲之課稅方式，計算：
113 年度綜合所得稅結算申報之營利所得、執行業務所得、財產交易
所得、其他所得、特別扣除額、綜合所得淨額各為若干元？請依下列
表格格式繪製到試卷上作答（未列表或未列計算式者不予計分）。（18分）
計算式 金額
營利所得
執行業務所得
財產交易所得
其他所得
特別扣除額
綜合所得淨額
假設 A、B、C、D屋之所有權人皆為甲，且出售前 1年內無出租、營
業或執行業務使用，則甲買賣房地產之重購退稅金額為若干元？（7分）
提示：假設 113 年度個人免稅額為每人 9.7萬元、標準扣除額單身者13.1
萬元、身心障礙特別扣除額每人 21.8 萬元、長期照顧特別扣除額
每人 12 萬元、房屋租金支出特別扣除額每戶 18 萬元、每人基本
生活費 21萬元。
113 年度綜合所得稅稅額速算公式
級別 稅率 課稅級距 累進差額
1 5% 0~590,000 0
2 12% 590,001~1,330,000 41,300
3 20% 1,330,001~2,660,000 147,700', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "2c6b7e974d80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "租稅申報實務", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00026', 'bookkeeper', 'bookkeeper-moex-114-cb3b9dc5', 'sub-bookkeeper-02', NULL, 'essay', '平安公司為總機構在中華民國境外之營利事業，其在中華民國境內經
營國際運輸業務，且在境內無分支機構，以境內快樂公司為其營業代
理人。114 年度平安公司境內營業收入為 3 億元（已向財政部申請准
予依所得稅法第 25 條計算所得額）、113 年度核定虧損 100 萬元，則
平安公司114年度應納營利事業所得額、應納稅額、課稅方式分別為
何？（10分）
甲公司為總機構在中華民國境內之營利事業，會計年度採曆年制，若
未依規定辦理暫繳申報及結算申報，請依所得稅法第 68 條、79 條分
別說明稽徵機關該如何處理？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "2c6b7e974d80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "租稅申報實務", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00027', 'bookkeeper', 'bookkeeper-moex-114-cb3b9dc5', 'sub-bookkeeper-02', NULL, 'essay', '甲公司為總機構在中華民國境內之營建業，114年出售臺中市 1筆土地、
及 3 筆甲公司興建完成後第一次移轉之房地，相關資料如下表，請分別
計算上述 4筆房地交易有多少交易所得或損失、及應如何繳納房地合一
稅？又甲公司 114 年度中華民國境內之營利事業所得額（不含4 筆房地）
為 500萬元，則114 年度應納營利事業所得稅額為若干元？（20分）
依公告現值計算之
持有期間 出售房地收入 取得房地成本、費用
土地漲價總數額
A土地 1年2個月 4,000萬元 4,500萬元 100萬元
B房地 1年6個月 3,000萬元 3,200萬元 50萬元
C房地 2年6個月 2,500萬元 2,400萬元 120萬元
D房地 3年6個月 2,300萬元 2,000萬元 160萬元', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "2c6b7e974d80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "租稅申報實務", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00028', 'bookkeeper', 'bookkeeper-moex-114-cb3b9dc5', 'sub-bookkeeper-02', NULL, 'essay', '佳佳小吃店為獨資之小規模營利事業，負責人王先生為中華民國境內
居住之個人，114 年營業稅相關事項如下表，佳佳小吃店每期應繳納
營業稅各為若干元？假設王先生114 年度除經營此小吃店外，無其他
收入，依所得稅法第 71條第 2項規定，如何課徵佳佳小吃店、王先生
之所得稅？（15分）
稽徵機關查定銷售額 申報核定之進項稅額
4〜6月 30萬元 4萬元
7〜9月 45萬元 3萬元
10〜12月 50萬元 6萬元
大大公司為兼營營業人，114年 7～8月營業稅相關事項如下（金額皆
未含稅）：
購買國外勞務 100 萬元，其中 50 萬元專供應稅貨物使用、30 萬元專
供免稅貨物使用、20萬元為共同使用。當期應稅銷售額 400萬元、免
稅銷售額250萬元（內含土地銷售額 150 萬元）。請以比例扣抵法、直
接扣抵法分別計算大大公司購買國外勞務之應納稅額各為若干元？
（10分）
加值型營業人向在境內無固定營業場所之外國事業購買勞務，依加值
型及非加值型營業稅法第 36 條第 1 項規定，該如何課徵營業稅並說
明理由？又在何種情況下，勞務買受人免依加值型及非加值型營業稅
法第 36條第 1項規定辦理？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:17+00:00", "source_pdf_sha1": "2c6b7e974d80", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "租稅申報實務", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00029', 'bookkeeper', 'bookkeeper-moex-114-a2a4e0d3', 'sub-bookkeeper-03', NULL, 'single_choice', '經核准分期繳納之稅款，個人在新臺幣至少多少元以上，稅捐稽徵機關得要求納稅義務人提供相當擔保？', '["100萬元", "150萬元", "200萬元", "300萬元"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "c4e8833aec6b", "answer_pdf_sha1": "61e5e3cbd67e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "稅務相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00030', 'bookkeeper', 'bookkeeper-moex-114-a2a4e0d3', 'sub-bookkeeper-03', NULL, 'single_choice', '根據稅捐稽徵法規定，下列擔保品價值之計算何者錯誤？', '["黃金按九折計算", "核準上市之有價證券按八折計算", "銀行存款單摺，按存款本金加利息計算", "經中央銀行掛牌之外幣按八折計算"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "c4e8833aec6b", "answer_pdf_sha1": "61e5e3cbd67e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "稅務相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00031', 'bookkeeper', 'bookkeeper-moex-114-a2a4e0d3', 'sub-bookkeeper-03', NULL, 'single_choice', '丙營業人未依規定申請稅籍登記即開始營業，被處2萬元罰鍰；若在該期間之營業額按所漏稅額處五倍以 下罰鍰為80萬元。請問丙營業人應繳多少罰鍰？', '["82萬元", "80萬元", "41萬元", "2萬元"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "c4e8833aec6b", "answer_pdf_sha1": "61e5e3cbd67e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "稅務相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
