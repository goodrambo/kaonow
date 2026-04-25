-- W1.6 questions batch 8793/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-d0d1b9a2-moex-00184', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-112-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'essay', '甲公司於X1年1月1日以$500,000購入設備，該設備以直線法作折舊，
估計耐用年限為5年，殘值為$0。甲公司以重估價模式作該設備之會計
處理。X1年12月31日與X2年12月31日該設備之公允價值分別為
$360,000及$412,500。
試作：
甲公司X1及X2年度因該設備產生之損益及其他綜合損益各為若
干？（須註明利益或費損）（10分）
若該公司以等比例重編法處理所有資產重估價，則X2年12月31日該
設備之累計折舊餘額為若干？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6d16cd9ca367", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00185', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-112-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'essay', '甲公司於X1年1月1日以總成本$138,554.33買進面額$200,000、10年期、
票面利率5%、每年底付息債券，前述價格推算可得該債券之原始有效
利率為10%。該債券X1年及X2年底公允價值分別為$160,000及
$180,000。
試作：（計算至小數點下兩位）
若該債券被列入「按攤銷後成本衡量之投資」，則X2年度甲公司因
該債券產生之損益為何？（4分）
若該債券被列入「透過損益按公允價值衡量之投資」，則X2年度甲
公司因該債券產生之損益為何？（4分）
若該債券被列入「透過其他綜合損益按公允價值衡量之債券投資」，
則X2年度甲公司因該債券產生之損益及其他綜合損益各為何？（7分）
41330', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6d16cd9ca367", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00186', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-112-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'essay', '甲公司X1年與X2年之有關財務資料如下：
甲公司
資產負債表
X2年與X1年12月31日
X2年 X1年
資產
現金與約當現金 $ 5,542,500 $ 2,787,750
應收帳款（淨額） 2,052,000 2,016,000
存貨 1,102,500 4,410,000
預付租金 212,625 100,125
透過損益按公允價值衡量之金融資產-
債券投資 103,500 0
透過其他綜合損益按公允價值衡量之金
融資產-股票投資 46,500 0
土地 6,312,375 5,749,875
機器設備 1,822,500 1,147,500
累計折舊-機器設備 (234,000) (247,500)
資產總額 $16,960,500 $15,963,750
負債
應付帳款 $ 697,500 $ 1,647,000
應付薪資 50,625 80,550
應付利息 45,000 0
應付所得稅 67,500 33,750
應付票據-短期 2,532,375 3,307,500
長期借款 4,833,000 4,527,450
負債總額 $ 8,226,000 $ 9,596,250
權益
普通股股本（每股面額為$10） $ 2,002,500 $ 652,500
資本公積-股本溢價 2,880,000 2,475,000
其他權益 9,000 0
保留盈餘 3,843,000 3,240,000
權益總額 $ 8,734,500 $ 6,367,500
負債及權益總額 $16,960,500 $15,963,750
41330
甲公司
綜合損益表
X2年1月1日至12月31日
銷貨收入 $ 6,525,000
銷貨成本 (4,635,000)
毛利 $ 1,890,000
營業費用
行銷費用 $(495,000)
管理費用 (373,500) (868,500)
營業淨利 $ 1,021,500
營業外收入及支出
利息費用 (112,500)
處分機器設備利益 45,000 (67,500)
稅前淨利 $ 954,000
所得稅費用 (238,500)
本年度淨利 $ 715,500
其他綜合損益 9,000
本年度綜合損益 $ 724,500
41330
其他補充資訊：
(1) 甲公司以$562,500現金購買土地。
(2) 於X2年12月31日，甲公司以向銀行舉借長期借款方式，新增購買
成本為$1,125,000之機器設備。
(3) 甲公司於X2年中以現金$405,000處分部分機器設備，處分日有關
該機器設備之原始成本與累計折舊分別為$450,000與$90,000。
(4) 於X2年12月31日，甲公司以現金$103,500之對價投資乙公司之債
券，此債券投資之目的係為交易目的而持有。
(5) 於X2年6月1日，甲公司以現金$37,500之對價投資丙公司之普通
股股票，甲公司於該日作一不可撤銷之選擇，將該股票投資分類
為「透過其他綜合損益按公允價值衡量之金融資產-股票投資」；於
X2年末，甲公司仍持有該股票投資，且X2年12月31日該股票投資
之公允價值為$46,500。
(6) 於X2年度，甲公司償還短期應付票據$775,125。
(7) 於X2年度，甲公司償還長期借款$819,450。
(8) 於X2年度，甲公司增資新發行普通股135,000股，每股發行價格為$13。
(9) 於X2年度，甲公司發放現金股利$112,500。
(10)甲公司於X2年度之綜合損益表中，管理費用$373,500之明細項目
包含：折舊費用$76,500、薪資費用$94,500、租金費用$51,300與其
他費用$151,200。
(11)甲公司於編製現金流量表時，利息費用並未分類為籌資活動，而支
付現金股利分類為籌資活動。
試作：
編製甲公司X2年度間接法下之現金流量表中，來自營業活動之現金
流量。（注意：必須由稅前淨利開始編製）（12分）
若甲公司以直接法編製X2年度之現金流量表，下列金額為何？（未
列示計算過程或說明者，不予計分）（4分）
A.自客戶收取之現金金額
B.支付給供應商之現金金額
甲公司X2年度之現金流量表中，下列金額為何？（未列示計算過程
或說明者，不予計分）（4分）
A.來自投資活動之淨現金流入（流出）為何？
B.來自籌資活動之淨現金流入（流出）為何？
41330', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6d16cd9ca367", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00187', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'essay', '依據我國審計準則 315號（原審計準則公報第七十五號）「辨認並評估重
大不實表達風險」之規定，控制可分為直接控制或間接控制。
試問：（每小題 10 分，共 20分）
何謂直接控制？那些組成要素屬於直接控制？
何謂間接控制？那些組成要素屬於間接控制？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00188', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'essay', '依據我國審計準則 240號（原審計準則公報第七十四號）「查核財務報表
對舞弊之責任」之規定，財務報導舞弊通常藉由故意不實之會計估計而
達成。查核人員追溯複核前一年度財務報表中管理階層所作重大會計估
計判斷及假設之目的為何？（14分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00189', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'essay', '依據我國審計準則 610 號（原審計準則公報第七十三號）「採用內部稽
核人員之工作」之規定，內部稽核職能之目的及範圍通常包括用以評估
並改善企業之治理、風險管理及內部控制流程有效性之確信及諮詢工
作。下列 8 項與內部稽核職能有關工作，請回答下列工作屬於那一項內
部稽核職能目的與範圍。請作適切的分類，勿重複分類，填入其代碼即
可。（未依格式作答，不予計分）（每小項 2 分，共計 16 分）
內部稽核職能目的與範圍 內部稽核職能有關工作
與治理有關 ㉑，…
與風險管理有關 ㉒，…
與內部控制有關 ㉓，…
㉑財務及營運資訊之檢查
㉒績效管理及課責性
㉓法令遵循之複核
㉔營運活動之複核
㉕內部稽核職能可協助執行偵查舞弊之程序
㉖告知組織之適當內部單位與風險及控制有關之資訊
㉗內部稽核職能可協助辨認並評估重大暴險，以及改善風險管理與內部
控制
㉘道德與價值', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00190', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'single_choice', '若會計師無法維持超然獨立之立場，則不能提供下列何項服務？', '["代編財務資訊", "財務報表核閱", "管理諮詢服務", "稅務訴訟服務"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": "702ed3418265", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00191', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'single_choice', '會計師事務所可以透過下列那個機制來合理確信所提供的專業服務符合專業準則及法令的規範？', '["品質管制制度", "同業評鑑制度", "持續進修制度", "遵守一般公認財會準則"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": "702ed3418265", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00192', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'single_choice', '依會計師職業道德規範，下列何者將使獨立性可能受到自我評估（self-review）之影響？', '["事務所過度依賴單一客戶之酬金來源", "對審計客戶所提供之非審計服務將直接影響審計案件之重要項目", "發現事務所其他成員先前已提供之專業服務報告，存有重大錯誤情況", "客戶人員以專家姿態壓迫查核人員接受某爭議事項之專業判斷"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": "702ed3418265", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00193', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-6b16960c', 'sub-pukao-d0d1b9a2-04', NULL, 'single_choice', '依據審計準則706號（原審計準則公報第六十號）「查核報告中之強調事項段及其他事項段」，下 列何者非屬會計師可於查核報告中納入強調事項段之情況？', '["對以前年度財務報表所表示之意見已予更新，且與前期所表示者不同", "已發布之財務報表因存有重大不實表達而予以重編", "對受查者財務狀況或財務績效具重大影響之災害", "重大訴訟或監管措施未來結果之不確定性"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:02+00:00", "source_pdf_sha1": "6a0db34df973", "answer_pdf_sha1": "702ed3418265", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1008", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
