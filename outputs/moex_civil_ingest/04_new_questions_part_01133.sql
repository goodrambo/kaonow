-- W1.6 questions batch 1133/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-8390ed38-moex-00054', 'customs-8390ed38', 'customs-8390ed38-moex-112-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '朱雀國的海巡隊負責偵查偷渡案件，偵查隊員分為兩組，一組是資深巡查
官，每小時薪資$800，另一組是新進巡查員，每小時薪資$500。依據過去
二年資料，平均投入 100 人工小時（其中資深巡查官 40 小時，新進巡查
員 60 小時）可破獲一件偷渡案，海巡隊依據上述資料編制直接人工成本
預算。4 月份，海巡隊共查獲 20件偷渡案，實際發生直接人工成本為：資
深巡查官共計投入 880 小時，薪資總計$726,000；新進巡查員共計投入
1,220 小時，薪資總計$610,000。
試作（詳列計算過程，否則不予計分）：
請計算 4 月份直接人工彈性預算差異、價格差異、效率差異、組合差異
（mixvariance）及產出差異（yieldvariance），必須標示有利或不利，並
說明造成各項差異交互影響的可能原因，以及提出改善建議。（24 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "5b78b3ba1520", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00055', 'customs-8390ed38', 'customs-8390ed38-moex-112-194ec0d9', 'sub-customs-8390ed38-04', NULL, 'essay', '玄武國關務署有四個部門，分別是「通關徵稅局」、「貨物查緝局」、「關
務法規室」及「行政管理處」，下列是關務署各部門的成本預算資料：
成本項目 通關徵稅局 貨物查緝局 關務法規室 行政管理處 合 計
員工薪資 $118,000 $104,000 $63,000 $106,000 $391,000
設備折舊 320,000 792,000 136,800 240,200 1,489,000
原料耗材 23,900 56,100 12,000 27,000 119,000
安全檢查 50,000
雲端資料庫 560,000
檔案室維修 260,000
公用支出 121,550
$461,900 $952,100 $211,800 $373,200 $2,990,550
其他非財務資訊如下：
項目 通關徵稅局 貨物查緝局 關務法規室 行政管理處 合 計
員工人數 320 180 30 60 590
電腦小時數 3,500 7,000 1,200 500 12,200
服務民眾案件數 6,262 7,500 1,500 0 15,262
「行政管理處」負責內部教育訓練及人力資源管理，並未對民眾提供直接
服務，故服務民眾案件數為 0。
試作（詳列計算過程，否則不予計分）：
傳統上，關務署將尚未分攤的成本加上行政管理處的成本，以其他三個
部門的員工人數作為分攤基礎，分攤間接成本至其他三個部門。請編列
關務署部門別成本預算表，並計算三個部門服務民眾案件的單位成本
（列於預算表最下方）。（8分）
玄武國國會審查第小題的預算表時提出質疑，認為「通關徵稅局」服
務民眾案件的單位成本過高，要求撙節；該局局長表示：「在可控成本
$461,900 範圍內，已無節省空間。」關務署決定採用作業基礎成本制重
新編列預算。經查，安全檢查與雲端資料庫兩項成本與電腦運作有關，
故以電腦小時數分攤；檔案室維修與公共支出成本與案件的處理及備份
歸檔有關，故以服務民眾案件數分攤。行政管理處將部門成本（含分攤
的間接成本），依其他三個部門的員工人數為基礎，分攤至其他三部門。
請重編關務署部門別成本預算表，並計算三個部門服務民眾案件的單位
成本（列於預算表最下方）。（10 分）
請說明兩種不同成本會計制度的資訊差異。（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "5b78b3ba1520", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00056', 'customs-8390ed38', 'customs-8390ed38-moex-112-ac2adf20', 'sub-customs-8390ed38-05', NULL, 'essay', '依中央政府普通公務單位會計制度之一致規定，自下表所列修正收入、支
出及保留數之交易事項中，列出四項行政院與審計機關兩者會計處理相同
者之編號，並分別列出其應有之會計分錄。（25分）
（回答相關問題時，各分錄之會計科目原則以第四級科目名稱為準；若無
分錄亦應註明之，否則不予給分。）
編號 交易事項
1 減列收入實現數
2 減列支出實現數改列賸餘繳庫數
3 減列支出實現數改列應付帳款數
4 減列支出實現數改列保留數
5 減列應收帳款數
6 增列收入實現數
7 增列應收帳款數
8 減列應付帳款數', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "2f88a1022c2b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "政府會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00057', 'customs-8390ed38', 'customs-8390ed38-moex-112-ac2adf20', 'sub-customs-8390ed38-05', NULL, 'essay', '依關稅徵課會計制度規定，說明該制度之實施範圍（至少說明相關機關及
會計業務）、編送年度會計報告中之決算報表應包括那些主要表與附屬表
及預算控制類設有幾項第四級會計科目？（25 分）（回答時應依下列格
式，否則不予給分。）
項目 內容
實施範圍
決算報表之主要表
決算報表之附屬表
預算控制類設有幾項第四級會
計科目，並請列示', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "2f88a1022c2b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "政府會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00058', 'customs-8390ed38', 'customs-8390ed38-moex-112-ac2adf20', 'sub-customs-8390ed38-05', NULL, 'essay', '依國庫出納會計制度第 40點及第 41 點規定，除分類帳簿外，會計簿籍還
包括那二類簿籍？並依同制度第44 點至第 46點規定，分別說明國庫統制
會計、國庫支付會計、國庫代庫會計設置明細分類帳之情形？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "2f88a1022c2b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "政府會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00059', 'customs-8390ed38', 'customs-8390ed38-moex-112-ac2adf20', 'sub-customs-8390ed38-05', NULL, 'essay', '依內地稅徵課會計制度規定，若各類內地稅收入皆尚未認列應收稅（帳）
款，請列出下表各項與內地稅退還相關交易，應有之會計分錄。（25分）
（回答相關問題時，各分錄之會計科目應以第二級科目（即總分類帳科目）
名稱為準；格式無須重新謄寫，僅回答甲、乙、丙、丁、戊之正確分錄即
可，若無分錄亦應註明之，否則不予給分。）
編號 交易事項 會計分錄
公庫代理銀行依稅捐稽徵機關填具
1 收入退還書 甲
（應區分屬本年度及以前年度者）
2 簽發退稅支票 乙
3 將款項撥存機關退稅專戶 丙
4 退稅支票兌領 丁
5 逾兌領期退稅款收回繳庫 戊', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "2f88a1022c2b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "1108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "政府會計", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00060', 'customs-8390ed38', 'customs-8390ed38-moex-112-f9fb6a06', 'sub-customs-8390ed38-06', NULL, 'essay', '翻譯：請將下列英文段落翻譯成中文，中文段落翻譯成英文。
UndertheauthoritygrantedbytheImmigrationandNationalityAct(INA),
as amended, a Customs and Boarder Protection (CBP) officer may
question, under oath, any person coming into the country to determine his
or her admissibility. In addition, an inspector has authority to search
without warrant the person and effects of any person seeking admission.
（15分）
今天連假第一天，桃園機場出入境、加上轉機旅客就超過十萬人次排
隊人潮。有人形容就像看不到盡頭，得提前幾個小時、提早報到！搭
機出國外，搭船到離島的旅客也不少，前往綠島遊玩的遊客，第一班
客輪就載滿約 300 人。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00061', 'customs-8390ed38', 'customs-8390ed38-moex-112-f9fb6a06', 'sub-customs-8390ed38-06', NULL, 'essay', '英文作文：（20分）
Taiwanhasbeenrankedasthefourth-happiestcountryinAsiaand27thinthe
world by the Ranking Royals website. The ranking is based on six criteria,
including healthy life expectancy, GDPper capita, social support, freedom to
make your own decisions in life, absence of business and government
corruption, and giving to charity. Write an essay of about 250~300 words to
describeyour reactionsto thisnews.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00062', 'customs-8390ed38', 'customs-8390ed38-moex-112-f9fb6a06', 'sub-customs-8390ed38-06', NULL, 'single_choice', 'The way our eyes and brain handle information has become . Thanks to television, film and computers,ourabilitytoprocessimagesisfaster.', '["monotonous", "subsequent", "vulnerable", "sophisticated"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": "e6b8858a244a", "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL),
  ('customs-8390ed38-moex-00063', 'customs-8390ed38', 'customs-8390ed38-moex-112-f9fb6a06', 'sub-customs-8390ed38-06', NULL, 'single_choice', 'Whenwedon’tbelievewehavetheresourcesorabilitiestocopewithacertainproblemorstimuli,we create behaviorstodenyoravoidit.', '["rigid", "adaptive", "indiscrete", "insulated"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:11+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": "e6b8858a244a", "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "103", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
