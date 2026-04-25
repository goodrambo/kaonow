-- W1.6 questions batch 5065/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-7c4986e7-moex-00245', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-d3ff7f6b', 'sub-heelevel3-7c4986e7-03', NULL, 'single_choice', '令橫軸變數為實質 GDP，縱軸變數為利率。假設實質貨幣需求只決定於利率。就 IS-LM模型 而言：', '["LM線為一水平線，且財政政策有效", "LM線為一水平線，且財政政策無效", "LM線為一垂直線，且財政政策有效", "LM線為一垂直線，且財政政策無效"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "7b2be102255d", "answer_pdf_sha1": "40ea3bc8eedf", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0908", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00246', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-d3ff7f6b', 'sub-heelevel3-7c4986e7-03', NULL, 'single_choice', '下列那一個學派，特別強調勞動跨期替代效果，並且工資的變化只是暫時性而非恆常性？', '["貨幣學派", "古典學派", "凱因斯學派", "實質景氣循環學派"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "7b2be102255d", "answer_pdf_sha1": "40ea3bc8eedf", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0908", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00247', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-33fe54d8', 'sub-heelevel3-7c4986e7-04', NULL, 'essay', '現在是 2022 年，總部位於美國的一家國際企業公司正考慮在西班牙建
造一座新的食品罐頭工廠。假設罐頭工廠只營運5 年的時間，預測的每
年現金流量（C）如下表所示，單位是百萬歐元。
t
C C C C C C
0 1 2 3 4 5
-100 +30 +20 +30 +20 +50
即期匯率是 USD1.05 = EUR1、美國的利率是 4%、歐元利率是 3%。
你可以假設食品罐頭工廠的生產是實質無風險的（realrisk-free），請回答
下列問題：
請計算該專案計畫產生的歐元現金流量的淨現值（NPV）。再者以美元
表示的淨現值是多少？（四捨五入至小數點後第二位）（10 分）
設若美國與歐元利率長期而言維持不變，而且拋補利率平價條件
（coveredinterestrateparity）成立，請列出該專案計畫每年的隱含遠期
匯率及計算該專案計畫的每年美元現金流量是多少？（四捨五入至小
數點後第二位）（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "8729804592f6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0923", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財務管理與投資學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00248', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-33fe54d8', 'sub-heelevel3-7c4986e7-04', NULL, 'essay', '考慮以下兩種貨幣政策情境，即在每一個情境下美國的 S&P500 指數、
股票 ABC及股票 XYZ的預期報酬率：
預期報酬率
情境： S&P500 指數 股票 ABC 股票 XYZ
升息 -10% -12% -5%
量化寬鬆 40% 48% 20%
根據以上資訊，請問：
分別計算兩支股票的貝它（β）係數，那一支股票是屬於攻擊型的？
（8 分）
如果情境發生機率相同，計算 S&P500 指數、股票 ABC 及股票 XYZ
的預期報酬率？（10分）
設若無風險資產的報酬率是 5%，則依據資本資產定價模型（CAPM），
這兩支股票的合理報酬率分別為多少？並選出那一支股票為較佳的
投資？（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "8729804592f6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0923", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財務管理與投資學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00249', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-33fe54d8', 'sub-heelevel3-7c4986e7-04', NULL, 'essay', '假設有甲、乙兩家公司的股票，P表示各公司於第 t 期的收盤股價，Q
t t
表示各公司於第t期時的流通在外股票股數，另外相關資訊如下：
股票 P Q P Q
0 0 1 1
甲 100 100 90 100
乙 50 200 60 200
請回答以下三個問題：
請計算以這兩家公司股票所形成的投資組合，其價格加權指數（price-
weighted index）由t 0到t 1時的變動百分比是多少？（9 分）
請計算市值加權指數（marketvalue-weightedindex）由t 0到t 1時的
變動百分比是多少？（9分）
請說明上述兩個子題答案的差異。（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "8729804592f6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0923", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財務管理與投資學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00250', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-33fe54d8', 'sub-heelevel3-7c4986e7-04', NULL, 'essay', '假設某一民營企業大正公司目前存在短期資金缺口，因而委託金融機構
（票券商）代為發行商業本票，發行金額共1,000萬元，每張面額10萬元，
發行期限為 30天，貼現率為 1.50%，試回答下列二問題：
請問發行融資性商業本票的成本有那些項目？（10分）
某投資人向票券商購買面額 10 萬元，10 天後到期之大正公司商業本
票（原始發行天數 30 天），成交利率為 1.625%，若當初商業本票每張
發行價格為 99,876.71 元，請問該名投資人必須支付多少錢以購買此
一短期票券？（四捨五入至小數點後第二位）（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "8729804592f6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0923", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財務管理與投資學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00251', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-a9c8416b', 'sub-heelevel3-7c4986e7-05', NULL, 'essay', '請回答下列有關金融監理與金融政策發展相關問題：
何謂系統性重要銀行（SystematicallyImportantBanks,SIBs）？現階段
金融監督管理委員會對我國系統性重要銀行（D-SIBs）的篩選標準及
實施要求為何？（15分）
近來「永續金融」已成為各國金融發展政策之核心之一，請說明永續
金融之主要意涵。現階段金融監督管理委員會推動「綠色金融行動方
案 2.0」的重點項目有那些？請任舉三項說明之。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "97d22a0c84c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0920", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00252', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-a9c8416b', 'sub-heelevel3-7c4986e7-05', NULL, 'essay', '相同的倒帳風險、流動性風險及稅負條件下，債券殖利率會因不同的到
期期限而不同，此稱之為利率期限結構，債券到期期限與殖利率間之關
係線則稱之為殖利率曲線（YieldCurve）。
請分別以純粹預期理論（Pure Expectation Theory）、市場區隔理論
（Market Segmentation Theory）及習性偏好理論（Preferred Habitat
Theory）說明「上升型」殖利率曲線背後的緣由。（15分）
111年3月美國的殖利率曲線曾出現倒掛現象（YieldCurveInversion），
請說明倒掛的殖利率曲線背後可能的經濟金融意涵。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "97d22a0c84c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0920", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00253', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-a9c8416b', 'sub-heelevel3-7c4986e7-05', NULL, 'essay', '其他條件不變下，請分別說明下列各項假設性事件，是否及如何影響我
國的準備貨幣與貨幣供給量？（每小題 5 分，共25 分）
新臺幣預期升值心理濃厚，外資大舉匯入，中央銀行（以下簡稱央行）
於外匯市場進行未沖銷的干預政策阻升。
中華郵政公司將存在央行的郵政儲金轉存款提出，轉購買央行發行的
儲蓄券。
因應經濟變化，美國聯準會連續升息，我國央行也決定跟著調升貼放
利率。
股市交易非常熱絡，國庫將高額的證券交易稅收轉存央行。
黃金價格暴漲，央行的外國資產市值增加。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "97d22a0c84c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0920", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL),
  ('heelevel3-7c4986e7-moex-00254', 'heelevel3-7c4986e7', 'heelevel3-7c4986e7-moex-111-a9c8416b', 'sub-heelevel3-7c4986e7-05', NULL, 'essay', '中央銀行的貨幣政策傳遞過程有所謂的連鎖反應或漣漪效果（ripple
effects），在其他條件不變下，請以美國聯準會為了反制通貨膨脹而升息
為例，繪圖並輔以文字說明聯準會的升息政策如何影響銀行準備金市
場，再影響貨幣市場，進而影響外匯市場與可貸資金市場，最後影響實
質 GDP市場。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:26+00:00", "source_pdf_sha1": "97d22a0c84c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "322", "s": "0920", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "貨幣銀行學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "金融保險"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
