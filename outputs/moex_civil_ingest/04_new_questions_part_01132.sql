-- W1.6 questions batch 1132/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-8390ed38-moex-00044', 'customs-8390ed38', 'customs-8390ed38-moex-112-78566e18', 'sub-customs-8390ed38-01', NULL, 'essay', '甲公司新任會計主管於 X3 年底進行調整分錄時，發現公司過去之會計處
理出現下列錯誤：
㉑甲公司採永續盤存制，於 X2 年 1 月 1 日以$5,000,000 現銷商品給乙公
司，該存貨成本為$4,000,000，雙方約定甲公司須於 X4 年 1 月 1 日以
$6,050,000 購回原商品，甲公司於 X2 年 1 月 1 日將此交易認列為正常
之銷貨收入及銷貨成本。
㉒甲公司於 X2 年 9 月 1 日現銷某商品$500,000，並提供該商品 6 個月之
保證型保固承諾，公司預估此項保固支出之成本將為$5,000。客戶於購
買商品時，另外支付$12,000 向甲公司購買服務型保固一年，故該客戶
於購買商品 18 個月內，都可享受甲公司提供之免費維修服務。甲公司
原會計人員於X2年9月1日將所收到之現金$512,000全數貸記銷貨收
入，且對保固承諾並未有任何分錄，僅於 X3 年 2 月及 11 月兩次進行
保固維修時，依每次實際發生金額，各認列$4,000 之保固費用。
㉓甲公司 X2 年7 月 1 日以$5,500,000 購入一新設備，耐用年限 10年，無
殘值，採年數合計法提列折舊，該設備於報廢時需要重大之復原除役支
出，若以公司適用之折現率 8%折現，購入日除役支出之現值為
$550,000。甲公司原會計人員於 X2 年購入設備時忽略此尚未實際支付
之復原除役成本，僅借記設備$5,500,000。
㉔甲公司於 X2 年 1 月 1 日承租一部機器，每年租金$1,000,000 於期初支
付，甲公司原會計人員係於支付各期租金時直接認列租金費用，然該租
賃合約於租賃開始日之租賃負債現值（以隱含利率 8%計算）應為
$5,500,000。於租約到期時該機器無償移轉給甲公司，機器耐用年限為
10 年，殘值為$300,000，甲公司對類似機器採倍數餘額遞減法提列折舊。
試作：
請逐一針對前述4 項錯誤，為甲公司作 X3 年底應有之更正與調整分錄。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "f5c211415f8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00045', 'customs-8390ed38', 'customs-8390ed38-moex-112-78566e18', 'sub-customs-8390ed38-01', NULL, 'essay', '乙公司某一現金產生單位中含 A、B及 C 3 項機器設備和分攤之商譽，由
於該公司相關產業之技術環境，於本期產生對其不利之重大變動，因此乙
公司對該現金產生單位進行減損測試，前述現金產生單位中之 3項機器設
備於 X1 年底之帳面價值分別為$100,000、$150,000 及$200,000，分攤商譽
帳面價值為$40,000。機器設備 A、B之公允價值減出售成本分別為$87,000
及$118,000，機器設備 C則無法決定其使用價值或公允價值減出售成本，
該現金產生單位之可回收金額經估計為$360,000。乙公司該現金產生單位
之各資產於 X1年底認列減損後之剩餘耐用年數皆為 5年，採直線法提折
舊或攤銷（若有需要時），無殘值。
由於乙公司相關產業之技術環境，於 X2 年產生對其有利之重大變動，乙
公司於 X2 年 12 月 31 日發現 X1 年底之減損跡象不復存在。除了機器設
備 A之公允價值減出售成本為$81,000 外，乙公司無法就其他機器設備取
得使用價值或公允價值減出售成本。X2 年底該現金產生單位可回收金額
估計為$346,000。
試作：
乙公司 X1年底有關資產減損之調整分錄。（8 分）
乙公司 X2年底有關資產減損迴轉利益相關分錄。（9分）
如果乙公司該現金產生單位包含之商譽資產改為專利權，請問乙公司
X1 年底對現金產生單位之 3 項機器設備，所認列之減損合計金額會較
為多或少？於X2 年底對現金產生單位之 3項機器設備，所認列之減
損迴轉利益合計金額會較為多或少？（本小題不用計算，但須說明理
由始予計分）（8 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "f5c211415f8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00046', 'customs-8390ed38', 'customs-8390ed38-moex-112-78566e18', 'sub-customs-8390ed38-01', NULL, 'essay', '丙公司數年前以平價發行面額$20,000,000，票面利率 10%，每年年底付息
一次，於 X2年底到期之票據來向丁銀行貸款。過去丙公司每年底都能支
付相關利息，惟X1 年底因新冠疫情嚴重影響公司現金流，致使丙公司未
能支付 X1 年度之利息。因此丙公司與丁銀行於 X2 年 1 月 1 日進行債務
協商。雙方同意對該貸款進行下列之修改：
㉑對於積欠之利息部分，丁銀行接受丙公司帳面金額$1,200,000之土地做
為積欠利息之清償，該土地於協商日之公允價值為$1,500,000。
㉒對於本金部分，丁銀行同意將票據到期日延長一年，至 X3 年底，本金
不變但將票面利率下降為 4%，仍為每年底付息，協商日之市場利率為
7%。丙公司於協商債務時，支付$50,000之協商費用給丁銀行。
試作：
丙公司於 X2年 1 月 1 日及 12月 31 日應有之分錄。（9分）
假設丁銀行對此放款本金之債務修改並不符合金融資產除列之要件，請
作丁銀行對放款本金部分之 X2 年 1 月 1 日及 12 月 31 日應有之分錄
（含收到利息之分錄）。（8分）
有關本金協商部分，假設丙公司無須支付協商費用給丁銀行，但丁銀行
僅將票面利率下降為 8%，票據到期日延長一年至X3 年底，本金不變。
協商日之市場利率為 12%。請作丙公司 X2 年 1月 1 日及12 月 31 日應
有之分錄。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "f5c211415f8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00047', 'customs-8390ed38', 'customs-8390ed38-moex-112-78566e18', 'sub-customs-8390ed38-01', NULL, 'essay', '某公司於 X4年初與 30位經理人員簽定員工可以每股$40認購普通股（每
股面額$10）之認股權協議，條件為經理人員不得在既得期間內離職。
若公司 X4 年獲利增加超過 20%，則認股權可於 X4 年底既得 300 單位。
若公司在 X4、X5 年間之獲利平均每年增加超過15%，則可於 X5年底既
得 200 單位。若公司在 X4 年至 X6 年間之獲利增加平均每年超過 12%，
則可於 X6 年底既得 100 單位。認股權於既得後，員工可在 2年內執行。
X7 年底有14 位經理人員執行全部之認股權，其餘經理人員尚未執行任何
認股權。
公司 X4 年至 X6 年間預期不發放股利，其 X4 年至 X6 年間預計與實際之
離職人數與獲利成長率資料如下：
估計未來 本期實際預期下期獲當期實際獲 認股權/單位
年度
離職人數 離職人數利成長率 利成長率 公允價值 內含價值
X4 年初 $15 $0
X4 年底 2 1 17% 16% 12 6
X5 年底 1 3 15% 12% 9 6
X6 年底 -- 2 -- 14% 17 14
X7 年底 21 20
試作：
假設前述股份基礎給付係權益交割者，則該公司 X4 年至 X6 年底各產
生多少酬勞成本？並做 X7 年底分錄。（12分）
假設前述股份基礎給付係現金交割者，則該公司 X4 年至 X6 年底各產
生多少酬勞成本？並做 X7 年底分錄。（13分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "f5c211415f8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00048', 'customs-8390ed38', 'customs-8390ed38-moex-112-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '請回答下列有關會計師對上市公司財務報表出具無保留意見查核報告之
問題：
會計師查核報告中至少應包括那些段（sections）？（15分）
會計師得視情況於查核報告中額外增加那些段？（6分）
如果會計師想要於查核報告中溝通當年度查核規劃的重要事項，應於何
段中說明？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "1496351eda9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00049', 'customs-8390ed38', 'customs-8390ed38-moex-112-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '品質管理準則 1號「會計師事務所之品質管理」為會計師事務所建立品質
管理制度提供指引，該準則要求會計師事務所應採用風險基礎方法，以相
互連結且協調之方式設計、付諸實行及執行品質管理制度之各項組成要
素，俾使事務所能主動管理其所執行案件之品質。請說明採用風險基礎方
法建立事務所品質管理制度時，應包括那些步驟或程序？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "1496351eda9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00050', 'customs-8390ed38', 'customs-8390ed38-moex-112-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '請回答下列有關於財務報表查核時，會計師執行風險評估程序相關之問題：
會計師執行風險評估程序後，應辨認及評估那兩個層級的重大不實表達
風險？（10分）
何謂顯著風險（significantrisk）？請列舉至少兩項審計準則中明定為顯
著風險之重大不實表達風險。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "1496351eda9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00051', 'customs-8390ed38', 'customs-8390ed38-moex-112-0e802df0', 'sub-customs-8390ed38-03', NULL, 'essay', '依我國審計準則委員會所發布規範會計師服務案件準則總綱，會計師服務
案件所適用準則共分為那幾大類？並說明每一類準則所適用之案件類型。
此外，如果會計師受託執行公司永續報告之確信案件，其適用之準則為
何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "1496351eda9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00052', 'customs-8390ed38', 'customs-8390ed38-moex-112-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '玄武國主要出口項目為煤礦，該國中央煤礦公司有兩個部門，採礦部門設
於玄武國境內，負責開採並運送初級煤礦至提煉部門，每季產能為 20,000
噸初級煤礦，全數運往提煉部門，每噸開採成本$78，每噸運輸成本$5。
提煉部門設於朱雀國，負責將初級煤礦精煉為燃煤，每季產能為16,000 噸
燃煤（初級煤礦與燃煤的轉換比為 1：0.8），燃煤每噸售價為$150；另外，
提煉部門可就近在朱雀國採購品質同級的初級煤礦，每噸$93。玄武與朱
雀兩國的營利事業所得稅稅率分別為 30%及 20%。另，所涉國家採單一貨
幣，無須考慮匯兌。
試作（詳列計算過程，否則不予計分）：
採礦部門與提煉部門所能接受初級煤礦最低和最高的轉撥價格為何？
說明理由。（6分）
若以所得稅極小為目標，中央煤礦公司應設定轉撥價格為何？（6 分）
若中央煤礦公司以第小題的轉撥價格評估各部門績效（依稅後營業利
益），目前採礦部門覓得新商機，有機會銷售 12,000 噸的初級煤礦給毗
鄰的青龍國客戶，每噸售價$88，運輸成本由新客戶承擔。就採礦部門
立場，是否應接受這筆新訂單？就公司立場，是否應接受這筆新訂單？
（10分）
承第小題，中央煤礦公司想採用分權化管理方式，就這筆新訂單而言，
公司應將初級煤礦的轉撥價格訂為多少，才能使部門利益與公司利益一
致？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "5b78b3ba1520", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00053', 'customs-8390ed38', 'customs-8390ed38-moex-112-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '青龍國關務總署為打擊日漸猖獗的走私毒品，決心加重查緝力度。經考察
他國經驗，茲有以下兩項投資方案可供選擇：
方案一：購買一批新型查緝機器設備，總價 5,000萬元，耐用年限 10 年，
殘值 50 萬元，採直線法提列折舊。估計這批新型機器每年可查
獲毒品市值 820萬元，每年需投入維修費用 100萬元。
方案二：採購一批訓練有素的緝毒犬，總價 3,500 萬元，服役年限 8 年，
採直線法提列折耗。犬隻退役時，政府需支付一筆費用給認養家
庭，預估500萬元。估計這批緝毒犬每年可查獲毒品市值770萬
元，每年需投入照養費用90 萬元。
試作（詳列計算過程，否則不予計分）：
請計算兩方案的實際還本期間、會計報酬率（以期初投資額為基礎）、淨
現值，並據此提出建議。青龍國中央銀行基準利率為 6%，8 年期及 10 年
期的$1 複利現值分別為 0.627及 0.558，8 年期及10年期的$1年金現值分
別為 6.21及 7.36。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "5b78b3ba1520", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
