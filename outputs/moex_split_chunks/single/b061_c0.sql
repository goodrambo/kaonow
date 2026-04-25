-- moex_license_ingest questions batch 61/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('bookkeeper-moex-01212', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '甲公司X2年之期末存貨為期初存貨之5倍，營業外損益只有利息費用一項。
以下是依據甲公司X2年財務報表計算之財務比率及相關資訊：
銷貨收入  $30,000,000
淨利率  10%
所得稅率  20%
利息保障倍數  11
應收帳款週轉率  6
存貨週轉率  12
期初存貨  $600,000
期初應收帳款  $900,000
呆帳費用  $300,000
試求：
計算甲公司X2年之利息費用金額。（4分）
計算甲公司X2年之營業費用金額。（4分）
甲公司於X3年發現一些以前年度錯誤之會計處理，使X1年及X2年之期末存
貨分別低估$100,000及高估$200,000，且X1年及X2年之期末備抵呆帳分別低
估$80,000 及高估$100,000。計算甲公司 X2 年正確之存貨週轉率。（計算至小
數點以下二位）（4分）
承第小題，計算甲公司X2年正確之利息保障倍數。（計算至小數點以下二位）
（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01213', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '甲公司於X1年4月1日購入一項機器設備，甲公司於X1年4月22日完成付款。
與該機器使用相關之其他資訊如下：
購買價格  $10,000,000
付款條件  1/20,n/60
運費  $40,000
安裝成本  $50,000
場地整理成本  $60,000
試車費  $100,000
試車產出之樣品銷售可得之淨價款 $20,000
訓練員工使用機器之成本 $70,000
預計管理機器將產生之成本 $300,000
耐用年限   8年
殘值  $230,000
試作：
計算甲公司應認列該機器之成本。（5分）
分別依年數合計法及倍數餘額遞減法計算該機器X1年及X2年之折舊費用。（小
數點以下四捨五入至整數位）。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01214', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '下列為甲公司之情況。
甲公司在X1年初取得乙公司40%股權，應採權益法處理但該公司歷年來皆以成本
法處理該投資項目。報稅時，乙公司僅能以成本法申報該項投資。乙公司各年度淨
利及股利資料列示如下：
年    度   淨利（損）     股   利
X1年  $1,500,000 $600,000
X2年  700,000 400,000
X3年   (300,000) 200,000
X4年  700,000 360,000
另外，甲公司過去三年之期末存貨發生下列錯誤：
X2年      高估  $200,000
X3年      低估  160,000
X4年      高估  520,000
假設X4年度的錯誤金額已入帳但尚未結帳，且應考慮所得稅影響數。報稅時，乙
公司可以申請更正存貨之錯誤，並補繳少繳之稅款或退還多繳之稅款。
試求：根據下列狀況試作甲公司X4年必要之更正分錄：
假設X4年度的錯誤金額已入帳但尚未結帳，所得稅率15%。（9分）
假設X4年度的錯誤金額已入帳已結帳，所得稅率15%。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01215', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '大哲公司X1年1月1日發行一面額$1,400,000，四年到期之公司債，每年年底付息，票面利率5%之公司 債。發行時市場利率為4%，因此大哲公司之發行價格為103.63。大哲公司X4年初以票面金額至市場上 買回，大哲公司採利息法攤銷。下列敘述何者正確？', '["大哲公司不必認列任何損益", "大哲公司應認列$38,852 非常損失", "大哲公司應認列$26,406非常利益", "大哲公司應認列$13,463的其他利益"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01216', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '丁公司發行兩種股票：普通股，每股面額$10，流通在外股數100,000股；特別股，累積非參加，每股面 額$20，流通在外股數25,000股，股利率5%。丁公司於X4年未分配任何股利，X5年3月15日分配現 金股利$80,000。請問特別股於X5年度可分配之現金股利為：', '["$25,000", "$50,000", "$60,000", "$80,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01217', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '大同公司採用年數合計法提列折舊，X4年7月1日購入一新設備，成本$160,000，估計殘值為$10,000，可 使用五年。試問大同公司X6年年底對該設備應提列之折舊金額為多少？', '["$25,000", "$30,000", "$35,000", "$45,000"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01218', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '大豐公司本年度應收帳款期末餘額為$80,000，其中$10,000為已過期帳款60天；公司評估後認為，已過 期帳款約有50%無法收回，未過期部分約5%無法收回，調整前之備抵壞帳為借方餘額$1,000。根據上述 資料，請問大豐公司本年度應收帳款淨額應為多少？', '["$9,500", "$8,500", "$70,500", "$71,500"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01219', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '大公企業會計本年度期末發現下列錯誤，期初存貨高估$5,000，期末存貨低估$8,000。在沒有調整前， 下列何者是大公企業可能產生的錯誤？', '["淨利低估$13,000", "銷貨成本低估$13,000", "銷貨成本高估$5,000", "業主權益高估$13,000"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01220', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '甲公司X4年6月30日銀行存款的帳上餘額為$83,950，銀行對帳單之銀行存款餘額為$80,200。其中，當 月銀行存款的調節項目如下： 銀行手續費  $  250 銀行代收票據  9,500 在途存款  22,000 未兌現支票  9,000 請問甲公司在X4年6月30日之正確銀行存款為：', '["$83,950", "$93,200", "$102,450", "$106,200"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01221', 'bookkeeper', 'bookkeeper-moex-104-d35177eb', 'sub-bookkeeper-01', NULL, 'single_choice', '乙公司X4年度之綜合損益表所示如下： 綜合損益表 銷貨收入    $50,000 銷貨成本     （20,000） 銷貨毛利    $30,000 折舊  $3,000 其他營業費用  7,000     （10,000） 淨利    $20,000 本期其他綜合損益          0 本期綜合損益總額    $20,000 X4年度流動項目之金額變動如下： 應收帳款  增加$5,000 存貨  增加$4,000 預付保險費  減少$2,000 應付帳款  減少$2,100 應付費用  增加$4,000 請問乙公司X4年度營業活動之淨現金流入（出）為：', '["$14,900", "$17,900", "$24,900", "$25,100"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:26+00:00", "source_pdf_sha1": "d4bb38bfd4ad", "answer_pdf_sha1": "0663b26b8679", "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
