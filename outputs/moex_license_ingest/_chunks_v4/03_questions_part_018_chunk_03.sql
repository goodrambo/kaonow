INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00881', 'cpa', 'cpa-moex-107-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', 'A公司股票於107年3月21日經核准上市，於掛牌買賣前，甲將該股票贈與乙，贈與當日該股 票之承銷價格為100元，實際交易價為120元，資產淨值為80元。甲申報贈與稅時，A公司股 票已上市，收盤價為140元。依遺產及贈與稅法及其相關法規規定，該股票應申報之贈與價值為 多少元？', '["80", "100", "120", "140"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "8ab58f7eb7b2", "answer_pdf_sha1": "ee8510c81af0", "source_family": "moex-gov-tw", "moex": {"exam_code": "107140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "107", "exam_name": "107年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00882', 'cpa', 'cpa-moex-107-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司於 X1 年 10 月 1 日以$1,600,000 取得乙公司 80%的股權，採
權益法處理該項投資，並依可辨認淨資產比例份額衡量非控制權益，
當時乙公司的權益包含股本$1,000,000 以及保留盈餘$600,000，除了
設備低估$400,000 外，其他資產、負債的帳面金額均等於公允價值，
該設備尚可使用八年，採直線法提列折舊。
X2年 7月 1日乙公司出售廠房給甲公司獲利$21,000，該廠房尚可使
用七年，無殘值，採直線法提列折舊。甲公司 X2年和 X3年本身淨
利（不含投資收益或股利收入）分別為$120,000 及$170,000，乙公司
X2年和X3年之保留盈餘變動情形如下：
X2年  X3 年
期初保留盈餘 $660,000    $730,000
加：淨利  100,000    160,000
減：股利  (30,000) (80,000)
期末保留盈餘 $730,000    $810,000
試計算：
X3年甲公司帳列投資收益以及合併報表中之控制權益淨利。（4分）
X3年 12月31日甲公司帳列「投資乙公司」項目餘額。（2分）
X3年合併報表中之非控制權益淨利。（2分）
X3年 12月31日合併報表中之非控制權益項目餘額。（2分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "3ba1d7be9317", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00883', 'cpa', 'cpa-moex-107-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司於 X5 年 1 月 1 日購入乙公司流通在外普通股 12,000 股中
的 10,800 股而對乙公司具有控制，並採權益法處理該項投資。當日
乙公司除未入帳專利權$15,000（剩餘效益年限為 5 年）外，各項可
辨認資產、負債之帳面金額均等於公允價值，且無合併商譽，並依可
辨認淨資產之比例份額衡量非控制權益。X6 年底甲、乙兩家公司之
相關資料如下：
甲公司 乙公司
本身淨利（不含投資收益或股利收入）  $80,000 $70,000
普通股加權平均流通在外股數  25,000  12,000
可認購乙公司股份之認股權數（外部投資人持有）    2,000
可認購甲公司股份之認股權數（乙公司持有）  1,000
可認購甲公司股份之認股權數（外部投資人持有）  2,000
面額$100，股利率5%累積，可轉換之特別股股數    1,000
面額$10，股利率10%累積，不可轉換之特別股股數  5,000
乙公司於 X6年曾將成本$16,000 的商品以$20,000 售予甲公司。該批
存貨至X6年底仍有半數尚未出售。不考慮所得稅。
其他資料：
㉑可認購乙公司股份之認股權為X6年 7月1日發行，每一認股權可
依$9 認購乙公司一股普通股，乙公司 X6 年 7 月 1 日至 12 月 31
日普通股平均市價為每股$12。
㉒可認購甲公司股份之認股權為X5年 1月1日發行，每一認股權可
依$12認購甲公司一股普通股，甲公司普通股X6年平均市價為每
股$18。
㉓可轉換特別股每股可轉換為乙公司 5 股普通股，甲公司持有乙公
司 60%之可轉換特別股。
試作：（小數點計算至第二位，第三位四捨五入）
X6年乙公司基本每股盈餘及稀釋每股盈餘。（7分）
X6年合併基本每股盈餘及合併稀釋每股盈餘。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "3ba1d7be9317", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00884', 'cpa', 'cpa-moex-107-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司於X1年初以美元$18,268取得A公司所發行面額美元$20,000、
票面利率3%之公司債，該公司債於每年12月31日付息，X5年12月31日
到期，採有效利息法攤銷溢折價，X1 年初該債券之市場利率為 5%。
甲公司之功能性貨幣為新臺幣，並將該投資分類為透過其他綜合損益
按公允價值衡量之金融資產。X1年12月31日及X2年12月31日該公司
債之公允價值分別為美元$18,247及美元$18,396。
美元兌新臺幣之相關匯率資料如下：
X1年 1月 1日  31.5  X1年平均  31.6
X1年 12月 31日 32.0  X2年平均  31.0
X2年 12月 31日 30.5
若不考慮該債券之預期信用損失，試作：
甲公司該債券投資於X1及X2年度帳上應認列之利息收入。（4分）
甲公司該債券投資於X1及X2年度帳上應認列之兌換（損）益。
（6分）
甲公司該債券投資於X1及X2年度帳上應認列之其他綜合（損）益。
（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "3ba1d7be9317", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00885', 'cpa', 'cpa-moex-107-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司於X1年 1月1日平價發行 4年期公司債，其面額$1,000,000、
票面利率 5%、每年 12月 31日付息；並同時簽訂一項支付浮動指標
利率（以 X1年 1月1日及後續三年每年12月 31日之 1年期即期指
標利率決定）、收取 5%固定利率之 4年期利率交換合約，其名目本
金為$1,000,000 且於每年 12月31日淨額交割當期之交換利息。以利
率交換合約規避公司債整體公允價值變動風險，且利率交換與公司債
之關鍵條款皆相同，因此於各期間內皆可推定此避險完全有效。X1
年 1月1日，1年期即期指標利率為5%；X1年、X2年及 X3年之每
年 12月31日之1年期即期指標利率分別為 5.4%、5%及 4.6%。所有
相關期間內，前述指標利率之收益曲線皆為水平。此避險關係符合避
險會計之所有要件。甲公司採取於認列被避險項目因避險導致之帳面
金額調整數時，即開始攤銷該調整數。另外，假設前述公司債及利率
交換皆無信用風險。
試作：
X1 年 12 月 31 日及 X2 年 12 月 31 日甲公司有關利率交換合約之相
關分錄（計算結果四捨五入至整數位）。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "3ba1d7be9317", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00886', 'cpa', 'cpa-moex-106-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司於20X1年1月1日以$2,400,000購入廢水除污設備一組（含支付專業機
構安檢成本$300,000），並獲得政府低利貸款之全額補助，是日該設備正式啟
用，估計耐用年限 10 年，殘值為零，採直線法提列折舊，惟該設備啟用後每
3 年須由專業機構安檢一次，合格後始得繼續使用，每次安檢成本預估為
$300,000。該優惠低利貸款期間為3年，每年年底支付利息2%。甲公司之增額
借款利率為 10%。政府於 20X3 年 1月 1 日修改法規提高安檢標準，要求該設
備使用滿 2 年即須安檢，故甲公司旋即於 20X3 年 1 月 2 日進行安檢，支付
$260,000。
試作：
甲公司20X1年及20X3年度有關此項設備之購買、折舊、安檢支出，以及優惠
貸款之舉借、付息及償還等應有分錄。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "ea4ee0145b00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00887', 'cpa', 'cpa-moex-106-78566e18', 'sub-cpa-01', NULL, 'essay', '某公司於20X5年年初開始營業，至20X5年年底止有五項建造合約正在進行，公
司採用完工百分比法計算工程損益，每項合約結果皆能可靠估計，有關合約的相
關資料列示如下：
項      目  甲  乙  丙  丁  戊  合計
合約總價款  1,000,000 1,300,000 1,500,000 500,000  650,000  4,950,000
至20X5年底發生的成本  640,000 240,000 615,000 302,500  555,000  2,352,500
估計完工尚須投入成本  160,000 960,000 940,000 247,500  45,000  2,352,500
20X5年請款數  600,000 400,000 600,000 150,000  600,000  2,350,000
20X5年收款數  550,000 400,000 500,000 100,000  600,000  2,150,000
試作：
若合約滿足「合約合併」的條件要求，必須將各合約視為單一建造合約處理，
則20X5年底應認列的工程損益若干？（2分）
若合約滿足「合約分立」的條件要求，必須將各合約視為個別建造合約處理，
則20X5年底應認列的工程損益若干？（3分）
若合約係採「合約合併」方式處理，計算 20X5 年底在建工程與工程進度請
款金額之差額及其在資產負債表的表達？（2分）
若合約係採「合約分立」方式處理，計算 20X5 年底在建工程與工程進度請
款金額之差額及其在資產負債表的表達？（3分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "ea4ee0145b00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00888', 'cpa', 'cpa-moex-106-78566e18', 'sub-cpa-01', NULL, 'essay', '乙公司於20X1年1月1日與 100名員工訂定各給與200股普通股（每股面額
$10）的協議，條件為員工不得在既得期間內離職。若乙公司20X1年獲利成長
超過15%，則股票可於20X1年底既得，若公司在20X1年、20X2年度間的獲
利成長平均每年超過10%，則可於20X2年底既得，若在20X1年至20X3年間
獲利成長平均每年超過8%，則可於20X3年底既得。給與日依協議條件估計每
股之公允價值為$40。20X1年至20X3年間乙公司預期不發放股利。
20X1年底，乙公司獲利成長12%，未達15%，有15位員工離職。乙公司預期
20X2 年的獲利將維持相同的成長率，故預期股票將於 20X2 年底既得。20X2
年度預期仍將有15位員工離職。
20X2年底，乙公司獲利僅成長6%，兩年平均未超過10%，故股票並未於20X2
年底既得。20X2 年度實際有 12 位員工離職，乙公司並預期 20X3 年會有 8 位
員工離職，獲利將至少成長6%，故可達成三年每年平均成長8%的目標。
20X3年底，有5位員工離職，實際獲利成長率為9%，三年平均成長率為9%，
符合績效條件。
試作：乙公司所有必要分錄。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "ea4ee0145b00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00889', 'cpa', 'cpa-moex-106-78566e18', 'sub-cpa-01', NULL, 'essay', '丁公司向租賃公司簽訂租賃合約，自 20X4 年 1 月 1 日起租用機器一部，租期
四年，每年底支付租金$620,000，機器的修理費用每年約需$20,000，由租賃公
司負擔。租期屆滿時，機器的估計殘值為$200,000，丁公司得以$20,000的價格
承購。該機器的估計耐用年限為八年，八年後無殘值。已知租賃公司的隱含利
率為 6%，該機器在租賃開始日的公允價值等於最低租賃給付額之現值，丁公
司採用直線法提列折舊。
試作：
丁公司20X4年分錄。（5分）
丁公司20X5年資產負債表之表達（區分流動或非流動）。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "ea4ee0145b00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00890', 'cpa', 'cpa-moex-106-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司之會計年度採曆年制，於20X1年期初購入運輸設備一批共計$90,000,000，
財務報表依耐用年限五年無殘值採直線法認列折舊費用，稅上則依耐用年限五年
無殘值採年數合計法提列折舊費用。20X2年4月1日（20X1年度財務報表核准
發布後）發現運輸設備之折舊費用計算錯誤，20Xl 年折舊費用少計$3,000,000；
所得稅申報書中折舊提列無任何錯誤。適用之營利事業所得稅稅率為20%。
試作：完整考量所得稅影響數之錯誤更正分錄。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "ea4ee0145b00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
