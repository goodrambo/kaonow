INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00261', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員通常於何階段評估客戶之繼續經營能力？', '["完成查核工作階段", "查核規劃階段", "整個查核工作階段", "測試與完成查核工作階段"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": "12b55ec2eaef", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00262', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'essay', 'A公司預計 3 月份的存貨資料如下：
存貨 3 月 1 日 3 月 31 日
製成品 120 單位 180 單位
原料 250 公克 350 公克
若每單位產品需耗用 7公克原料，原料於開始製造時投入。
3 月份 A公司預計將銷售6,000單位的產品，每單位製成品的加工成
本是$15，原料每公克的市場價格為$8。
試求：
3 月份應採購多少公克的原料？（5分）
3 月份的製成品成本？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00263', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'essay', 'A公司為半導體供應鏈中的一環，專門生產某單一產品，其各項成本
資料如下：
變動製造成本：每單位$30
固定製造費用：每年$1,000,000,000
正常產能：50,000,000 單位
無期初與期末在製品存貨
X1 年度生產 50,000,000 單位，出售 80%，每單位售價$60。X2 年度
生產 48,000,000單位，出售52,000,000 單位，每單位售價與 X1年度
相同。固定製造費用以產量作為分攤基礎，若有產生生產數量差異
（production-volumevariance）者，請直接調整銷貨成本，其它可能的
差異數字逕行忽略不計。
試作（不考慮所得稅）：
以全部成本法編製 X1 年度與X2 年度綜合損益表。（10分）
以變動成本法編製 X1 年度與X2 年度綜合損益表。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00264', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'essay', 'A公司為一家採收葡萄及釀造葡萄酒之公司，其有兩個部門，採收部
門負責葡萄採收，釀造部門負責葡萄酒的釀造，兩個部門於 20X3 年
期初均無存貨。當年度，採收部門採收 50,000 公斤的葡萄，成本價
$2,100,000；而採收的葡萄全數轉入釀造部門，且釀造部門每公斤需投
入額外加工成本$8，最後公司釀造的葡萄酒對外總售價為$3,000,000。
試問：
假如採收部門所採收的葡萄轉入釀造部門的轉撥計價為每公斤
$42，試計算兩個部門的營業利益。（8 分）（請詳列計算過程，否則
不予計分。）
假如採收部門所採收的葡萄轉入釀造部門的轉撥計價為每公斤
$36，試計算兩個部門的營業利益。（8 分）（請詳列計算過程，否則
不予計分。）
假如採收部門只需進行內部轉移葡萄，採收部門的經理是否會在乎
轉出的價格？其理由為何？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00265', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '關於變動成本及固定成本習性，下列敘述何者正確？', '["在攸關範圍內，單位成本隨成本動因之增減而呈正比例變動者，為變動成本", "在攸關範圍內，成本總數隨成本動因之增減而呈正比例變動者，為變動成本", "在攸關範圍內，成本總數隨成本動因之增減而呈反比例變動者，為固定成本", "在攸關範圍內，單位成本不隨成本動因之增減而變動者，為固定成本"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": "9c90102d70c2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00266', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '在攸關範圍內，若成本動因水準改變，則會產生下列何種情況？', '["總固定成本與總變動成本均會改變", "總變動成本與總固定成本不會改變", "總固定成本不會改變，而總變動成本會改變", "總固定成本會改變，總變動成本不會改變"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": "9c90102d70c2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00267', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', 'A公司採用分批成本制，以總成本加價30%作為產品訂價。批次NO.1直接原料$750,000，直 接人工$640,000，製造費用以直接人工成本180%分攤。該批次銷售時，會計分錄之借方科目 與金額，下列何者正確？', '["製成品存貨，$2,542,000", "銷貨成本，$2,542,000", "銷貨收入，$3,304,600", "銷貨成本，$3,304,600"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": "9c90102d70c2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00268', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', 'A 公司 X1 年成立，產銷客製化手環並採用分批成本系統，已分攤製造費用為直接人工成本 的150%。X1年產製四批次訂單編號為X101、X102、X103及X104，期末針對訂單編號X102 的多分攤或少分攤之製造費用調整分錄如下： 借：銷貨成本 2,106 貸：製造費用 2,106 調整後訂單X102總製造成本為$89,856，該訂單本期用料$70,200。訂單X102之已分攤製造 費用為何？', '["$8,705", "$7,020", "$13,057", "$10,530"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": "9c90102d70c2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00269', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', 'A公司下列3項未調整前之期末帳戶餘額： 在製品 7,500 製成品 30,000 銷貨成本 300,000 如果A公司期末多分攤$12,000的製造費用，並且A公司採用期末餘額的比例來調整多或少 分攤製造費用的影響，那麼調整後的銷貨成本期末餘額為何？', '["$288,000", "$289,333", "$290,400", "$310,667"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": "9c90102d70c2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00270', 'cpa', 'cpa-moex-112-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', 'A公司採分步成本制，A公司甲生產部門1月份並無期初在製品，1月份完成並轉出之產品 數量為6,000單位，期末在製品有1,200單位；另有3,000單位的損壞品於完工時進行檢驗發 現，此損壞程度在甲生產部門預期之內。若甲生產部門所有直接原料均於製程開始即投入，', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "7577c1ec238e", "answer_pdf_sha1": "9c90102d70c2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 6, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
