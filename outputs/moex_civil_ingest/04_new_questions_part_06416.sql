-- W1.6 questions batch 6416/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0a2fc18c-moex-00120', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '有關貨幣的功能，下列敘述何者正確？①現代社會「一手交錢，一手交貨」的交易方式讓貨幣扮', '["看到一罐可口可樂售價為 15 元，我們知道貨幣具有計價單位功能", "將部 分年終獎金購買飯店自助餐優惠券日後享用，因此貨幣不能作為價值儲藏工具", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 22, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00121', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '根據交易方程式（equationofexchange），假設貨幣交易流通速度（transactionvelocityofcirculation ofmoney）固定，當貨幣數量成為原來的2倍時，下列敘述何者正確？', '["物價必定成為原來的2倍", "實質產出必定成為原來的2倍", "物價與實質產出的乘積不變", "物價與實質總交易量的乘積變成原來的2倍"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00122', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '下列何者為景氣循環中逆循環的經濟變數？', '["投資支出", "消費支出", "失業率", "通貨膨脹率"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00123', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '在實質景氣循環模型中，政府採擴張性財政政策，當勞動跨期替代彈性大小不同時，下列敘述何 者正確？', '["當勞動跨期替代彈性大時，物價會上升", "當勞動跨期替代彈性大時，利率會下跌", "當勞動跨期替代彈性小時，物價會上升", "當勞動跨期替代彈性小時，利率會下跌"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00124', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-a9c8416b', 'sub-locality-0a2fc18c-03', NULL, 'essay', '假設你觀察中央銀行的資產負債表，發現某日的準備金較前一日減少一
億元，同時，資產項中的國庫券也減少一億元。請分別畫出中央銀行與
銀行體系的資產負債表，並說明中央銀行透過公開市場操作進行何種操
作可造成此結果？中央銀行這樣做的目的是為了要增加、減少或維持既
有的貨幣供給？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "6a9b637a5b82", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00125', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-a9c8416b', 'sub-locality-0a2fc18c-03', NULL, 'essay', '假設大眾決定減少消費占所得的比例，而提高儲蓄占所得的比例。試用
IS-LM模型，繪圖並說明大眾此舉對所得、利率、消費、投資的短期效
果。此外，若中央銀行的政策目標為維持原本的所得水準，則中央銀行
該採取那些行動？繪圖並說明中央銀行的行動所帶來的效果與影響。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "6a9b637a5b82", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00126', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-a9c8416b', 'sub-locality-0a2fc18c-03', NULL, 'essay', '定義：貨幣供給(M)＝通貨(C)＋存款(D)＝貨幣乘數(m) 基礎貨幣
MB)，且 MB＝C＋準備金(R)，R＝法定準備金＋超額
×
準備金(ER)，其中法定準備金＝法定準備率( ) D。試推導出以法定準
D
(Monetary base,
備率、通貨對存款比率、超額準備對存款比率表示的貨幣乘數，意即求
×
C ER
出mm( , , )。並分別說明法定準備率、通貨對存款比率、超額
D D D
準備對存款比率提高對貨幣乘數的影響。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "6a9b637a5b82", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00127', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-112-a9c8416b', 'sub-locality-0a2fc18c-03', NULL, 'essay', '請詳述貨幣的定義與功能。並就臺灣貨幣總計數的定義，分析當某甲將
一萬元從活期存款帳戶提出，改存一萬元的定期存款，此行為對M1A、
M1B與 M2 的影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "6a9b637a5b82", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "319", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00128', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-98fbe395', 'sub-locality-0a2fc18c-04', NULL, 'essay', '請定義何謂「市場失靈」？請分別針對教育市場問題及醫療保險市場問
題，說明其可能造成「市場失靈」的原因。針對這兩項議題，政府可採
那些經濟措施來解決？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "b961b745c297", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00129', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-111-98fbe395', 'sub-locality-0a2fc18c-04', NULL, 'essay', '假設一地方只有甲、乙、丙三村，各村對於公園數量服務所能得到的邊
際利益，如下表所示：
公園數量
邊際利益 1 2 3 4 5 6
MB 30萬元 25萬元 20萬元 15萬元 10萬元 5萬元
甲
MB 35萬元 30萬元 25萬元 20萬元 15萬元 10萬元
乙
MB 40萬元 35萬元 30萬元 25萬元 20萬元 15萬元
丙
假設建造每一公園設施之成本為45 萬元，在上述情況下：
滿足 Samuelson 條件下之地方公園數量為何？（7 分）
若甲村表明對公園沒有需求，也沒有意願分擔公園興建的費用，因而
地方公園數量最終由乙村與丙村共同協商決定。試問該地方最後的公
園數量為何？各村負擔的建造成本分別是多少？（請說明原因）（8分）
若公園設施的建造成本由三村平均分擔，且由三村共同投票以簡單多
數決來決定地方公園數量，則投票結果是否符合柏拉圖最適？（請說
明原因）（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "b961b745c297", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "320", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
