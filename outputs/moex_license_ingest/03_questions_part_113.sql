-- moex_license_ingest questions batch 113/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-01121', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'essay', '臺北公司於 X1年 1月 1日取得臺中公司 80%股權，採權益法處理該項投資，
非控制權益依其公允價值衡量。除未入帳專利權外，其他可辨認資產、負債之
帳面金額均等於公允價值，專利權分五年攤銷。
臺北公司移轉對價  非控制權益公允價值
臺中公司
（80%）  （20%）
子公司權益公允價值  $312,500 $250,000  $62,500
普通股股本（面值$10）  $100,000
保留盈餘   150,000
權益總額  $250,000
減：取得股權帳面金額  200,000   50,000
公允價值超過帳面金額差額  $62,500 $50,000  $12,500
專利權  $25,000 $20,000  $  5,000
商譽   37,500  30,000    7,500
合計  $62,500 $50,000  $12,500
臺北公司於 X3 年 7 月 1 日以$80,000 出售臺中公司 20%的股權（即其投資的
25%），假設 X2 年底臺中公司之權益$315,000，其中普通股股本$100,000，保
留盈餘$215,000，X3 年淨利為$30,000，其中前半年$12,000，後半年$18,000，
當年未發放股利。
試作：（10分）
臺北公司出售股權之分錄。
X3年底合併資產負債表專利權金額。
X3年底臺北公司帳列投資帳戶餘額。
X3年度非控制權益淨利。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01122', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司與乙公司於 X1 年年初簽訂合約，設立由雙方聯合控制之丙公司，雙方
出資金額均為$2,000,000，分別取得丙公司 50%之權益，該聯合協議屬合資性
質。X3 年年初乙公司將持有丙公司之權益出售 2/5 予甲公司，售價為
$1,200,000，甲公司因而取得對丙公司之控制。乙公司雖對丙公司喪失聯合控制
但仍具重大影響。當日乙公司剩餘之丙公司權益的公允價值為$1,800,000，甲公
司原持有之丙公司 50%權益公允價值為$3,000,000。X1 年度至 X3 年度丙公司
淨利與現金股利如下：
X1年度  X2年度    X3年度
淨利（年度中平均賺得）  $500,000  $600,000    $560,000
現金股利（9月發放）  300,000  450,000    380,000
試作：
X3年年初甲公司購買丙公司20%權益之分錄。（5分）
X3年年初乙公司出售丙公司20%權益之分錄。（5分）
分別計算X3年12月31日甲公司與乙公司對丙公司投資之帳列金額。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01123', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'essay', '本題假設CP（商業本票）浮動利率合乎國際會計準則第39號之基準利率定義。
X1年年初甲公司平價發行5年期浮動利率公司債$1,000,000，票面利率為一年
期 CP 利率+3%，每年年底依當年年初之一年期利率付息。該公司希望將利率
鎖定為固定利率，於是在發行公司債之同日另簽定付 5%固定利率且收一年期
CP 浮動利率之零成本利率交換，此利率交換之名目本金為$1,000,000，期間為
5年，收付息日與公司債相同。不考慮所得稅之影響。X1年、X2年及X3年交
換合約相關資料如下：
X1年  X2年  X3年
期初一年期CP利率  5%  4%  3%
期末利率交換公允價值  -$37,000  -$57,000  -$39,000
試作：
請分別回答X1年、X2年及X3年下列各項目之金額：（12分）
⑴利率交換與公司債交易對當期損益之淨影響？
⑵利率交換與公司債交易對當期其他綜合損益之淨影響？
⑶利率交換與公司債交易有關之「其他權益－現金流量避險」項目於 12 月
31日餘額？
公司債的浮動利率指標為CP，企業若簽訂其他浮動利率指標之利率交換作為
前述公司債的避險工具，在何種情況下可適用避險會計？（3分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01124', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'essay', '丙公司 X4 年年初截至第一季末及第二季末的所得相關金額如下，所得稅率為
25%，預計X5年將有足夠課稅所得以實現虧損扣抵遞轉的所得稅利益。
至第一季止  至第二季止
稅前會計損失  $937,500  $1,500,000
交際費剔除  75,000  135,000
折舊費用認列的差異（財務會計較稅法多認列）  75,000  225,000
分期收款銷貨毛利認列差異（財務會計較稅法多認列） 300,000  675,000
試問：第二季的所得稅費用（利益）並作分錄？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01125', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'single_choice', '甲公司於X1年初以現金$160,000取得乙公司15%股權，並列為備供出售－金融資產。X1年初至X2 年底該投資之公允價值增加$40,000。甲公司於X3年4月1日以現金$1,560,000另取得乙公司60% 股權，並依非控制權益之公允價值衡量非控制權益，當日乙公司可辨認淨資產之公允價值為 $2,320,000、甲公司原持有乙公司 15%股權投資之公允價值為$412,000，25%非控制權益之公允價值 為$684,000。X3年4月1日甲公司取得60%股權後帳列「投資乙公司」之餘額應為何？', '["$1,972,000", "$1,760,000", "$1,720,000", "$1,715,000"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": "7ec3e9d3f436", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01126', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'single_choice', '承上題，企業合併所產生商譽之金額為何？', '["$79,000", "$124,000", "$164,000", "$336,000"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": "7ec3e9d3f436", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01127', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'single_choice', '甲公司於X1年1月1日發行面額$10、市價$20之普通股25,000股取得乙公司全部淨資產，並支付 合併相關直接成本$30,000。此外，甲公司允諾若乙公司X1年稅前淨利能達到$750,000，則將額外發 行 10,000 股普通股給乙公司之股東。X1 年初該項或有對價之公允價值為$40,000，甲公司收購乙公 司之分錄應借記「投資乙公司」之金額為何？', '["$570,000", "$540,000", "$530,000", "$500,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": "7ec3e9d3f436", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01128', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'single_choice', 'X3年6月8日甲公司以現金$25,000、發行股票12,000股（每股面額$10、市價$56），收購乙公司 80%股權，當時乙公司可辨認資產之帳面金額為$560,000（公允價值$700,000）、負債之帳面金額為 $230,000（公允價值$230,000）。假設乙公司收購日之非控制權益係依公允價值衡量，且其收購日之 公允價值為$162,500，則收購日歸屬於非控制權益之商譽金額為何？', '["$0", "$68,500", "$80,250", "$376,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": "7ec3e9d3f436", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01129', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'single_choice', '甲公司於X1年底以$150,000的價格出售機器予其持股80%的乙公司。該機器成本為$200,000，出售 時帳面金額為$120,000，且該機器尚有5年的耐用年限，採直線法提列折舊。此一公司間銷售對X1年 的合併淨資產及合併淨利之影響為何？', '["合併淨資產增加$30,000，合併淨利增加$30,000", "合併淨資產增加$30,000，合併淨利減少$30,000", "合併淨資產減少$30,000，合併淨利減少$30,000", "均無影響"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": "7ec3e9d3f436", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01130', 'cpa', 'cpa-moex-105-1cd83735', 'sub-cpa-06', NULL, 'single_choice', 'X6年5月31日甲公司吸收合併乙公司，並委託一鑑價公司針對乙公司之建築物進行評價。該評價 作業於X6年底尚未完成，故甲公司暫以$420,000認列該項建築物，並估計其耐用年限自合併日起尚 有7年無殘值，採直線法提列折舊。該鑑價公司在X7年2月1日提出鑑價報告，指出此建築物於收 購日之公允價值估計為$576,000，耐用年限自收購日起尚有8年，其餘條件不變。甲公司在X7年2月 1日收到鑑價報告後，針對X6年財務報表中建築物帳面金額應追溯調整之金額為何？', '["$7,000", "$149,000", "$156,000", "$534,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "aa44ee264bcd", "answer_pdf_sha1": "7ec3e9d3f436", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "高等會計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
