-- moex_license_ingest questions batch 69/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00681', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '個人進口郵包之關稅完稅價格，如逾郵包物品進出口通關辦法規定之免稅限額者，依加值型及非 加值型營業稅法及相關法規規定，有關營業稅報繳規定之敘述，下列何者正確？', '["應於進口後按關稅完稅價格全額依規定計算稅額，向戶籍所在地國稅局報繳", "應於進口後就超過免稅限額部分依規定計算稅額，向戶籍所在地國稅局報繳", "應於進口時按關稅完稅價格全額依規定計算稅額，向海關報繳", "應於進口時就超過免稅限額部分依規定計算稅額，向海關報繳"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 19, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00682', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依加值型及非加值型營業稅法規定，納稅義務人虛報進項稅額，除追繳稅款外，按所漏稅額處以 幾倍的罰鍰？', '["5倍以下", "1至5倍", "5至10倍", "3倍以下"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 20, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00683', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '甲出售自用住宅用地一筆，申報移轉現值為400萬元，繳納40萬元之土地增值稅，若甲2年內 又重購土地申報移轉現值為300萬元之自用住宅用地，依土地稅法規定，甲可申請退還之土地增 值稅若干？', '["40萬元", "30萬元", "10萬元", "0元"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 21, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00684', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依稅捐稽徵法規定，違反稅法規定應處罰鍰者，由下列何者處分之？', '["主管稽徵機關", "財政部", "高等行政法院", "法務部行政執行署"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 22, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00685', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依遺產及贈與稅法規定，下列有關遺產稅稅率之敘述，何者正確？', '["最高邊際稅率為40%", "課稅遺產淨額超過5,000萬元部分，適用最高稅率", "累進稅率分為三個級距10%、15%、20%", "課稅遺產淨額為1億元，應適用20%稅率課徵遺產稅"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00686', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依遺產及贈與稅法規定，下列何者視為被繼承人之遺產？', '["甲死亡前3年內贈與配偶之不動產", "乙死亡前2年內贈與孫女之上櫃股票", "丙死亡前2年內贈與已離婚配偶之不動產", "丁死亡前2年內贈與已離婚配偶之上櫃股票"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00687', 'cpa', 'cpa-moex-109-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '甲是一位學成歸國的經濟學人，為作育英才，甲於109年1月間以現金3,000萬元成立信託，受 託人為乙銀行，契約中明定受益人為素有聲譽的某財團法人管弦樂團基金會，依遺產及贈與稅法 與相關法規規定，下列敘述何者正確？', '["不計入委託人甲的贈與總額課稅", "不計入委託人甲的遺產總額課稅", "對甲課徵贈與稅", "對受託銀行課徵贈與稅"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:08+00:00", "source_pdf_sha1": "7c1b78aca74b", "answer_pdf_sha1": "fa0e8eb61f87", "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00688', 'cpa', 'cpa-moex-109-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司於 X2 年 1 月 1 日發行 135,000 股普通股以交換乙公司全部發
行在外普通股 100,000 股的 90%，惟合計持有乙公司 10,000 股之部
分股東不願接受該股份交換條件，甲公司亦未以現金或其他對價收購
乙公司剩餘 10%股權。甲公司為上市公司，其普通股於 X2 年 1月 1
日之每股市價為$30，乙公司為公開發行公司，其普通股無活絡市場
公開報價，於 X2 年 1 月 1 日之估計每股公允價值為$48。
Xl年 12 月 31 日甲公司可辨認淨資產之帳面金額為$1,800,000，包括
普通股股本$900,000（每股面額$10）、資本公積$500,000 與保留盈餘
$400,000，除有未入帳專利權$500,000 外，其餘資產及負債之帳面金
額均等於公允價值。
Xl年 12 月 31 日乙公司可辨認淨資產之帳面金額為$3,500,000，包括
普通股股本$1,000,000（每股面額$10）、資本公積$1,500,000 與保留
盈餘$1,000,000，且除土地低估$800,000 外，其餘資產及負債之帳面
金額均等於公允價值。
試作：
就前項收購之交易實質，設算收購移轉對價之金額。（3分）
X2 年 1 月 1日合併資產負債表中下列各項目之金額：（12分）
㉑可辨認淨資產
㉒商譽
㉓普通股股本
㉔資本公積
㉕保留盈餘
㉖非控制權益', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "33b1628d20f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00689', 'cpa', 'cpa-moex-109-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司於 X5 年7 月 1日支付$1,030,000取得乙公司 80%普通股股權
並具控制，採權益法處理該項投資，並依收購日公允價值$800,000、
$300,000 分別衡量屬非控制權益之特別股及普通股。當日乙公司除設
備低估外，其他可辨認資產、負債之帳面金額均等於公允價值，且無
合併商譽。該設備尚可使用 5年，無殘值，採直線法提列折舊。甲公
司於 X7 年 1 月 1 日支付$520,000 取得乙公司 60%特別股股權。X5
年 1 月 1 日乙公司之權益包括普通股股本$900,000、10%累積特別股
股本$750,000 及保留盈餘$330,000。乙公司 X5 年度至 X7 年度保留
盈餘變動情形如下：
X5 年 X6 年 X7 年
期初保留盈餘 $330,000 $405,000 $480,000
加：本期淨利（損） 300,000 225,000 (120,000)
減：特別股股利 (75,000) (75,000) (75,000)
普通股股利 (150,000) (75,000) (30,000)
期末保留盈餘 $405,000 $480,000 $255,000
X5年12月31日甲公司將帳面金額$180,000之設備以$205,000出售
給乙公司，該設備尚可使用 5 年，無殘值，乙公司採直線法提列折
舊。甲公司於 X6 年以成本加價三成之計價方式，將商品以$260,000
出售給乙公司，X6 年乙公司之期末存貨中有$19,500 購自甲公司。
X6 年 1 月 1 日甲公司以$96,000 加應計利息購入乙公司發行面額
$100,000、票面利率 8%之公司債，當時該公司債之帳面金額為
$108,000，X9 年12 月 31日到期，採直線法攤銷溢折價。
乙公司各年度財務報表須於次年送交股東會承認，並決議股利發放金
額，其中特別股股利於每年 5 月31 日發放，普通股股利於每年 11月
30 日發放，且無積欠特別股股利之情形。假設各年度損益於年度中
平均發生，且不考慮所得稅，試作：
計算甲公司①X6 年認列之「權益法投資之損益份額—乙公司」及
②X6 年 12 月 31 日帳列「採用權益法之投資—乙公司」之餘額。
（6 分）
X7 年 1 月 1日甲公司取得乙公司 60%特別股之投資分錄。（2分）
計算 X7 年合併財務報表中非控制權益淨利及 X7 年 12 月 31 日非
控制權益之金額。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "33b1628d20f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00690', 'cpa', 'cpa-moex-109-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司之功能性貨幣為新臺幣，於X0 年 12 月 31 日對一高度很有可能
發生之預期咖啡購買交易（預期交易將於 X2 年 12 月 31 日發生）進行
避險。甲公司將下列兩項避險關係指定為現金流量避險並適用避險會計：
㉑商品價格風險避險關係：以外幣計價之預期咖啡購買交易之咖啡價
格相關現金流量變異（被避險項目）與以外幣計價之商品遠期合約
（避險工具）間之避險關係。此避險關係於 X0 年12 月 31 日指定，
避險期間至 X2年 12 月 31日。甲公司將前述商品遠期合約之整體
價值變動指定為避險工具，此避險關係符合避險會計之所有要件，
且被避險項目與避險工具關鍵條款均相同，無任何避險無效部分。
㉒外幣風險避險關係：彙總暴險（被避險項目）與遠期外匯合約（避
險工具）間之避險關係。指定為被避險項目之彙總暴險所表彰之外
幣風險，係前述對商品價格風險避險關係所指定之以外幣計價之兩
項目（即預期咖啡購買交易及商品遠期合約）之外幣現金流量組合
匯率變動之影響。此避險關係於X1 年 12 月 31日指定，避險期間
至 X2 年 12 月 31 日。甲公司將前述遠期外匯合約之整體價值變動
指定為避險工具，此避險關係符合避險會計之所有要件，且被避險
項目與避險工具關鍵條款均相同，無任何避險無效部分。
作為避險工具的商品遠期合約及遠期外匯合約與X2年12月31日預
期交易發生時買入咖啡存貨之價格如下表（單位：新臺幣元）：
X0/12/31 X1/12/31 X2/12/31 備註
商品遠期合約 即期部分$0 即期部分$990 即期部分$1,500 到期日結清
相關公允價值 +遠期部分0 +遠期部分11 +遠期部分20 時甲公司收
資訊 整體公允價值0 整體公允價值$1,001 整體公允價值$1,520 取$1,520現金
遠期外匯合約 即期部分$0 即期部分$(440) 到期日結清
相關公允價值 +遠期部分0 +遠期部分(10) 時甲公司支
資訊 整體公允價值0 整體公允價值$(450) 付$450現金
買入咖啡存貨 買入價格$10,000
試作：
請分別回答下列項目之金額：（9分）
⑴X1年12月31日甲公司因前述商品遠期合約而列入其他權益之金
額。（須註明其為借餘或貸餘，否則不予計分）
⑵X2年12月31日甲公司於存貨入帳基礎調整前，因前述商品遠期
合約及遠期外匯合約而列入其他權益之金額。（須註明其為借餘
或貸餘，否則不予計分）
⑶X2年12月31日甲公司資產負債表中買入之咖啡存貨帳面金額。
彙總暴險之定義為何？若甲公司並未指定商品價格風險避險關係
（此避險關係不適用避險會計），則甲公司彙總外幣暴險是否仍可能
適用避險會計？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "33b1628d20f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
