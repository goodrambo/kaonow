-- W1.6 questions batch 398/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-6f0ba476-moex-00400', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-112-f6c431ec', 'sub-aboriginal-6f0ba476-04', NULL, 'single_choice', '假設某甲之年所得為50萬元，某乙之年所得為100萬元，課徵比例消費稅後消費支出均為10萬 元。此種消費稅之性質為何？', '["累退性", "累進性", "定額性", "重分配性"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:55+00:00", "source_pdf_sha1": "c94bff83b282", "answer_pdf_sha1": "1b1c1a70a85e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "508", "s": "1201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 22, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00401', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-112-f6c431ec', 'sub-aboriginal-6f0ba476-04', NULL, 'single_choice', '下列何者為我國近年收入相對較高的國稅？', '["關稅", "貨物稅", "營業稅", "土地稅"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:55+00:00", "source_pdf_sha1": "c94bff83b282", "answer_pdf_sha1": "1b1c1a70a85e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "508", "s": "1201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00402', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-112-f6c431ec', 'sub-aboriginal-6f0ba476-04', NULL, 'single_choice', '財產稅的法定稅率往往會高於有效稅率的原因，主要是評估比率（assessmentratio）為多少？', '["小於零", "小於一", "等於一", "大於一"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:55+00:00", "source_pdf_sha1": "c94bff83b282", "answer_pdf_sha1": "1b1c1a70a85e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "508", "s": "1201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00403', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-112-f6c431ec', 'sub-aboriginal-6f0ba476-04', NULL, 'single_choice', '財政紀律法規定，稅式支出包括下列那幾項？①稅額扣抵  ②稅負遞延  ③成本費用加成減除', '["僅", "", "", "僅"]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:55+00:00", "source_pdf_sha1": "c94bff83b282", "answer_pdf_sha1": "1b1c1a70a85e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "508", "s": "1201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 25, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00404', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-111-e0b1f2ed', 'sub-aboriginal-6f0ba476-01', NULL, 'essay', '甲公司在 20X1 年 1 月 1 日購入成本$160,000 的機器一台，該機器估計
可使用 10 年且估計殘值為$20,000，採用直線法折舊，且該公司的會計
年度為曆年制。公司於 20X3 年初發現該機器只能再使用 5 年，且估計
未來殘值為$18,000。
試作：（以下要求皆為相互獨立的情況）
若甲公司均採用直線法計算折舊，則 20X3 年度該機器應提列的折舊
費用為多少金額？（5分）
若甲公司採用雙倍餘額遞減法計算該機器之折舊，請計算 20X2 至
20X3 年度該機器各年度應提列的折舊。（10 分）
若甲公司一直採用直線法計算折舊，20X4 年 7 月 1 日將該機器作價
$100,000，並支付現金$100,000，交換定價$200,000之新機器一部。新機
器之安裝成本計$5,500，公司付現支應。當時舊機器如直接出售，現金價
為$90,000。假定此資產交換具商業實質，請作機器交換的分錄。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:56+00:00", "source_pdf_sha1": "5e8d2b41a0ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "506", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00405', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-111-e0b1f2ed', 'sub-aboriginal-6f0ba476-01', NULL, 'essay', '乙公司 20X1 年1 月 1日以$2,772,550 購入丙公司發行之面額$3,000,000
公司債，年利率8%，每年12 月 31 日付息，20X5 年 12 月 31日到期還
本。當時市場有效利率為10%，乙公司將此項投資認列為「按攤銷後成
本衡量之金融資產」，並採有效利率法攤銷折價。若 20X1 年 12月31 日
該公司債之市價為$2,800,000，20X2 年 12 月 31日之市價為$2,900,000。
試作：（計算過程若有小數，請四捨五入至整數位）
記錄乙公司此項金融資產20X2年12月31日應有之會計分錄。（5 分）
若 20X3 年 4 月 1 日乙公司以$2,910,000 另加利息出售該公司債，請
記錄當日乙公司應作之分錄。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:56+00:00", "source_pdf_sha1": "5e8d2b41a0ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "506", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00406', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-111-e0b1f2ed', 'sub-aboriginal-6f0ba476-01', NULL, 'essay', '甲公司於 20X2 年 6 月 30 日編製銀行調節表後，記錄調整及更正分錄
如下：
6月30日 現金 360
廣告費 360
#329支票記錄錯誤更正
30日 銀行手續費 900
現金 900
4月份銀行手續費扣款
30日 應收帳款 2,700
現金 2,700
客戶存款不足退票
30日 租金費用 9,340
現金 9,340
#340支票漏記
補充資料：
㉑ 6 月 30日公司現金帳餘額為$119,480；銀行對帳單金額為$135,700。
㉒截至 6 月 30日未兌現支票為$47,800；在途存款金額為$19,000。
試作：運用上述資料，編製 6 月30 日之銀行調節表。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:56+00:00", "source_pdf_sha1": "5e8d2b41a0ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "506", "s": "1303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00407', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-111-e0b1f2ed', 'sub-aboriginal-6f0ba476-01', NULL, 'single_choice', '甲公司X1年3月1日以$305,000購入「透過損益按公允價值衡量之權益工具投資」，X1年12月 31日公允價值為$284,000，X2年2月1日全數售出，收到$300,000，試問X2年綜合損益表上， 下列敘述何者正確？', '["本期損益中包含透過損益按公允價值衡量投資之評價利得$16,000", "本期損益中包含透過損益按公允價值衡量投資之處分利得$16,000", "本期損益中包含透過損益按公允價值衡量投資之評價損失$5,000", "本期損益中包含透過損益按公允價值衡量投資之處分損失$5,000"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:56+00:00", "source_pdf_sha1": "5e8d2b41a0ff", "answer_pdf_sha1": "fc2ea2237657", "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "506", "s": "1303", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00408', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-111-e0b1f2ed', 'sub-aboriginal-6f0ba476-01', NULL, 'single_choice', '丙公司X8年2月初發現X6年與X7年的折舊費用各都多提列$1,000，不考慮所得稅問題，請問 丙公司 X8 年底提供 X7 年及 X8 年兩年比較性財務報表時，報表表達上有關「綜合損益表」與 「權益變動表」部分，下列敘述何者正確？', '["X7年不予更動，X8年「綜合損益表」中當年折舊費用減少$2,000予以更正", "X7年不予更動，X8年僅在「權益變動表」期初保留盈餘加：前期損益調整$2,000", "僅在X7年與X8年「權益變動表」期初保留盈餘各加：前期損益調整$1,000", "X7年「綜合損益表」重編，當年折舊費用減少$1,000，並在「權益變動表」期初保留盈餘加： 前期損益調整$1,000，X8年報表不受影響"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:56+00:00", "source_pdf_sha1": "5e8d2b41a0ff", "answer_pdf_sha1": "fc2ea2237657", "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "506", "s": "1303", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('aboriginal-6f0ba476-moex-00409', 'aboriginal-6f0ba476', 'aboriginal-6f0ba476-moex-111-e0b1f2ed', 'sub-aboriginal-6f0ba476-01', NULL, 'single_choice', '丙公司X3年資產負債表上1月1日存貨為$30,000，12月31日存貨為$45,000、應付帳款-供應商 為$20,000，綜合損益表銷貨成本為$150,000。若當年實際支付供應商現金支出$180,000。試問丙 公司X3年「應付帳款-供應商」期初金額為多少？', '["$5,000", "$35,000", "$45,000", "$65,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:56+00:00", "source_pdf_sha1": "5e8d2b41a0ff", "answer_pdf_sha1": "fc2ea2237657", "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "506", "s": "1303", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "財稅行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
