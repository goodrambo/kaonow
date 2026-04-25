-- W1.6 questions batch 1141/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-8390ed38-moex-00134', 'customs-8390ed38', 'customs-8390ed38-moex-110-78566e18', 'sub-customs-8390ed38-01', NULL, 'essay', '甲公司 X6 年及X7 年列報之部分財務資訊如下：
X6 年 X7 年
稅前淨利 $ 500,000 $ 600,000
稅前其他綜合淨利 200,000 100,000
期末資產總額 8,000,000 9,000,000
期末負債總額 3,000,000 3,500,000
X8 年初經會計師查核發現下列事項：
⑴X6年初按市場利率4%，購入面額$500,000，票面利率5%，每年12月31
日付息之可轉換公司債，該公司管理金融資產之經營模式主要是透過收取
合約現金流量及出售達成，因此將該投資認列為「透過其他綜合損益按公
允價值衡量之金融資產」。X6年及X7年該公司針對該債券投資認列於損
益及其他綜合損益之金額如下：
X6 年 X7 年
認列於損益
利息收入 $20,890 $20,726
預期信用減損損失 9,000 2,000
認列於其他綜合損益
未實現評價利益（損失） 50,000 (30,000)
備抵損失 9,000 2,000
X7 年底該債券投資之總帳面金額為$513,876。
⑵該公司於 X6 年底將所生產之成本為$900,000 設備以$1,000,000 售給乙
公司，合約約定甲公司可於 X7 年底以$1,100,000 買回該設備。甲公司
於 X6 年認列該筆交易$1,000,000 銷貨收入及$900,000 銷貨成本，X7 年
底行使買回權，認列$1,100,000機器設備。
試作：
計算甲公司 X6 年及 X7 年下列項目之正確金額。（以下列格式作答，
資產總額及負債總額不考慮所得稅之影響）（16分）
X6 年 X7 年
稅前淨利
稅前其他綜合淨利
期末資產總額
期末負債總額
甲公司 X7 年尚未結帳，針對上述各事項分別作 X8 年初發現錯誤之更
正分錄，若無須更正，請註明「無更正分錄」，否則不予計分。（不考
慮所得稅之影響）（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "aacec0dc5dd7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00135', 'customs-8390ed38', 'customs-8390ed38-moex-110-78566e18', 'sub-customs-8390ed38-01', NULL, 'essay', '甲公司X8年度資產負債表會計項目之變動及X8年綜合損益表資料如下：
增加（減少） 綜合損益表
現金及約當現金 $2,530,000 銷貨收入 $8,800,000
應收帳款 500,000 銷貨成本 (1,900,000)
備抵損失 80,000 預期信用減損損失 (180,000)
存貨 300,000 折舊費用 (600,000)
透過其他綜合損益按公允價值 薪資費用 (1,253,000)
衡量之權益工具投資 260,000 出售設備利益 40,000
房屋淨額 2,200,000 利息費用 (63,000)
設備淨額 440,000 贖回債券損失 (150,000)
應付帳款 80,000 所得稅費用 (444,000)
應付薪資 (200,000) 本期淨利 4,250,000
應付利息 (200,000) 其他綜合損益 168,000
本期所得稅負債 (136,000) 本期綜合損益 $4,418,000
應付公司債淨額 1,288,000
遞延所得稅負債 300,000
普通股股本，面值$10 2,200,000
資本公積 540,000
法定盈餘公積 425,000
其他權益 (56,000)
未分配盈餘 2,409,000
庫藏股票（成本） 500,000
X8 年度其他資料如下：
⑴透過其他綜合損益按公允價值衡量之權益工具投資，本期購入
$630,000；出售原始認列金額為$300,000 之投資，得款$580,000；本期
產生未實現評價利益$210,000。
⑵發行 200,000 股普通股交換房屋一棟，每股股價為$12，房屋公允價值
為$2,400,000。
⑶以$200,000出售帳面金額為$160,000之設備；本年度新購設備$1,000,000。
⑷1月1日按面額贖回$2,000,000面額之應付公司債，尚未攤銷折價為
$150,000。
⑸7 月 1 日以 105 價格發行面額$3,000,000之應付公司債，票面利率 5%，
有效利率為 4%。
⑹本期宣告並發放現金股利及 10%股票股利，股票股利按每股$12沖轉未
分配盈餘。
⑺X6 年給與於 X9 年底既得之員工認股權，本期認列與該認股權相關之
薪資費用$100,000。
⑻支付$500,000購買庫藏股票。
⑼甲公司將支付利息列為營業活動，支付股利列為籌資活動。
試作：計算甲公司 X8 年度下列各項之金額。（每小題 5 分，共30 分）
向客戶收取現金。
支付利息。
支付所得稅。
支付現金股利。
營運產生之現金。（應註明流入或流出）
籌資活動之淨現金流量。（應註明流入或流出）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "aacec0dc5dd7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00136', 'customs-8390ed38', 'customs-8390ed38-moex-110-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '依審計準則公報第 72 號「查核財務報表對法令遵循之考量」之規定，回
答下列問題：
該審計準則公報依查核人員之責任劃分，將受查者應遵循之法令架構分
成兩類：對財務報表之重大金額及揭露具直接影響之法令，以及對財務
報表之金額及揭露不具直接影響之其他法令（簡稱其他法令）。試針對
上述兩類法令各舉兩例說明之。（8 分）
針對進一步查核程序而言，查核人員對受查者是否遵循其他法令，應執
行那些特定查核程序？（10分）
會計師如認為所辨認未遵循或疑似未遵循法令事項對財務報表具重大
影響，且未適當反映於財務報表，而決定出具保留意見之查核報告，則
會計師須於查核報告中那一段溝通受查者未遵循或疑似未遵循法令事
項？（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "ea2ca867df8a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00137', 'customs-8390ed38', 'customs-8390ed38-moex-110-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '由於受查者內部控制之設計及執行通常具有穩定性，因此審計準則公報第
49 號「查核人員對所評估風險之因應」規定，於某些情況下，查核人員可
以採用以往控制測試所取得之查核證據作為當期之控制測試查核證據。惟
查核人員當期如計劃採用以往查核所取得對特定控制執行有效性之查核
證據時，應遵循那些規範？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "ea2ca867df8a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00138', 'customs-8390ed38', 'customs-8390ed38-moex-110-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '甲公司為一家上市公司，會計師受託查核x1 年及 x2 年之財務報表，惟甲
公司連續數年發生營運虧損，且 x3 年亦將有債務即將到期。除上述情況
外，會計師已取得足夠及適切的證據支持甲公司之財務報表已依照所適用
之財務報導架構編製及揭露。請依下列格式回答在下列 3 種情況下（各為
獨立的情況），會計師應出具之查核意見，以及應於查核報告中的那一段
溝通繼續經營不確定相關事宜。
情況 查核意見 於那一段溝通繼續經營不確定相關事宜
1
2
3
會計師認為受查者有繼續經營上的不確定性，而受查者已於財務報表中
做充分之揭露。（8 分）
會計師認為受查者有繼續經營上的不確定性，惟受查者不願於財務報表
中做相關之揭露，會計師認為此部分的不實表達具重大性，但未達廣泛
性。（8分）
會計師根據所取得之證據認為，甲公司已對繼續經營上的不確定性事項
採取適當的因應措施，可以消除會計師對甲公司繼續經營上不確定性的
疑慮，也認同甲公司於財務報表無須揭露有關繼續經營不確定性之資
訊，惟會計師想要跟查核報告使用者溝通有關繼續經營上不確定性相關
的查核事項。（9 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "ea2ca867df8a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00139', 'customs-8390ed38', 'customs-8390ed38-moex-110-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '受查公司持有大量的投資性不動產，並採用公允價值模式衡量，會計師規
劃聘任甲鑑價公司協助有關投資性不動產公允價值相關事項之查核。請回
答下列相關問題：
會計師在決定是否採用甲鑑價公司之工作之前，應執行那些程序？（9分）
甲鑑價公司之工作完成後，查核人員應就查核目的評估查核人員專家工
作之適當性，於評估時應執行那些程序？（9分）
會計師根據自行蒐集之查核證據及查核人員專家工作之採用，決定出具
無保留意見之查核報告。試問會計師是否可以在其查核報告中提及查核
人員專家工作之採用？並請說明其理由。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "ea2ca867df8a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00140', 'customs-8390ed38', 'customs-8390ed38-moex-110-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '請回答下列 5 個子題各項是否正確？請分別說明各項正確或不正確的理
由？（每小題 5分，共 25分）
針對短期性的決策，要將固定成本分攤至各個產品上。
企業在制定投資決策時，因為固定成本在各種方案中都一樣，故其為一
種沉沒成本。
在面臨數家廠商投標的情況下，公司的訂價決策，最好是採用特殊訂單
訂價決策。
在接受特殊訂單之決策中，下列四項成本都屬攸關成本：①接受特殊訂
單所需額外投入之固定成本②接受特殊訂單所需額外投入之變動成本
③無論接受特殊訂單與否，都無法免除之固定成本④接受特殊訂單可免
除之固定成本。
強力公司正考慮是否裁撤某一產品線，該產品線的成本除了變動成本
外，尚包括所分攤而來的固定成本。一旦決定裁撤，則目前被分攤到該
產品線的固定成本將會轉分攤至其他產品線。若該產品線確認停工，則
該停工產品線的邊際貢獻消失，公司整體淨利不會受其影響。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "10001c1f6908", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1113", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00141', 'customs-8390ed38', 'customs-8390ed38-moex-110-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '全國集團針對旗下兩家子公司（臺北公司與臺中公司）進行成本－數量－
利潤分析。
臺北公司銷售商品 A 單位價格 70 元，每年固定成本 300,000 元，每單
位變動成本包括變動製造成本 22 元和變動銷售成本 8 元。請問每單位
邊際貢獻為何？（5 分）
臺北公司 A產品目前單位價格70 元，每單位變動成本包括變動製造成
本 22 元和變動銷售成本 8 元。假設公司決定降價 20%，而原銷售量
40,000單位可增加 10%，則淨利會減少數為何？（10分）
臺中公司的固定成本是$450,000，損益兩平銷貨收入是$2,250,000，若公
司預計銷貨收入是$2,700,000，預計利潤數為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "10001c1f6908", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1113", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00142', 'customs-8390ed38', 'customs-8390ed38-moex-110-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '針對下列各項成本制度的敘述，判斷各項敘述是否錯誤？並針對錯誤的項
目提出正確的說明。
有關正常成本制度（Normal Costing）的敘述，係指直接成本以預算費
率追溯，間接成本以實際費率分攤。（10分）
作業成本制度（OperatingCosting）可適用於皮鞋廠、罐頭食品廠、家電
用品製造商、水泥廠。（10分）
有關分步成本制與分批成本制的差異，分步成本制適用於產品之間差
異大、有其獨特性之產業；分批成本制適用於產品之間無差異的產業。
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "10001c1f6908", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1113", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00143', 'customs-8390ed38', 'customs-8390ed38-moex-110-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '由於誠信公司的資金有限，無法執行各部門提出的全部投資計畫。因此，
誠信公司資本分配決策時，董事會的投資原則是：「找出幾組投資計畫，
投資總額不超過公司資金總額度 630,000,000 元而且總淨現值是正值，並
為各種組合中最高者。」
目前有五個投資計畫，下表列出各個投資計畫的投資總額與淨現值：
投資計畫 投資總額（元） 淨現值（元）
甲 300,000,000 24,000,000
乙 120,000,000 12,000,000
丙 180,000,000 21,000,000
丁 240,000,000 25,500,000
戊 150,000,000 13,500,000
請列出10 種可能的投資組合方案。（10分）
請依公司的投資原則，分別列出所挑選出 7組可行的投資組合，每個組
合的投資總額與淨現值。（14 分）
挑選出 1組最佳的投資組合？（1 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:12+00:00", "source_pdf_sha1": "10001c1f6908", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "103", "s": "1113", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
