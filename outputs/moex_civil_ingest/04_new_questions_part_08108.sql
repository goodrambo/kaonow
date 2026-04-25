-- W1.6 questions batch 8108/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0a2fc18c-moex-00252', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-c4f12cde', 'sub-pukao-0a2fc18c-01', NULL, 'essay', '3 40 60
計算 X與 Y的期望值與變異數。（8分）
計算 E(X+Y)與 Var(X+Y)。（8 分）
計算 X 與 Y 的共變異數與相關係數，並判斷 X 與 Y 是正相關、負相
關或不相關。（9分）
一間百貨公司分析它們最近的銷售情況，並且決定顧客購買商品的付款
方式與商品價格類別之間的關係，得到下表中的聯合機率：
現金 信用卡 簽帳金融卡
$20以下 .09 .03 .04
$20-$100 .05 .21 .18
$100以上 .03 .23 .14
以簽帳金融卡付消費款的比例為何？（5 分）
以信用卡支付之下，消費款超過$100 的機率為何？（5分）
以信用卡或簽帳金融卡支付消費款的比例為何？（5分）
44350
某週刊曾報導廣告主與網際網路服務供應商及搜尋引擎簽訂合約，在網
站上刊登廣告，付費方式是根據點擊該項廣告的潛在顧客的數目而定。
不幸的是，點擊詐欺（為了增加廣告收入而點擊該項廣告）已然成為問
題。40%的廣告主宣稱，他們成為點擊詐欺的受害者。假定隨機抽選 380
位廣告主，以了解點擊詐欺的狀況：
樣本比例與母體比例的差距在±0.04 以內的機率是多少？（5分）
樣本比例大於0.45 的機率是多少？（5分）
某醫學期刊中描述一項研究，想要判斷運動是否可以延長心臟麻痺病患
的生命。招募 801 位心臟麻痺病患的樣本；其中 395 位接受運動的訓練，
而另外的 406 位則無。在接受運動的群組當中有 88 位病患未能延長生
命，而在無運動群組中有105位病患未能延長生命。
在5%的顯著水準下，研究人員是否可以推論運動訓練能夠延長生命？
寫下假設檢定的過程，包括虛無與對立假設、拒絕域、檢定統計量與檢
定結果。（15分）
有一位候選人在宣告參選之前，評估選民對他的初始支持率。不做任何
事前公開活動之前提下，若選民支持他的比例數p 大約 0.15，他將投入
選戰。從隨機選取的 n個選民的ㄧ項民調中，該候選人希望比例數 p 的
估計值 y/n 距離 p 在 0.03 之內。也就是說，決策乃基於形如 y/n ± 0.03
的ㄧ個 95%信賴區間，y代表支持該候選人的選民人數：
在候選人對於p 的大小沒有任何概念下，如何決定所需樣本數大小，
以便達到所求之可靠度及準確度？（5分）
假設由該選區隨機選取1,068個選民進行訪談，得到 y=214 個選民的
支持，求 p 的95%信賴區間。根據此樣本所提供的訊息，該候選人是
否決定投入選戰？（5分）
比較的最大誤差與 0.03，說明為何會有如此差別？（5 分）
44350
統計課中一位成績接近底部的學生甲，決定投入一定的練習時數以改善
期末的成績。但是甲並不想做過多的練習，因為甲企圖以最少的工作量
達到最終畢業的目的。甲註冊一門統計課，離期末考僅有 3個星期，並
且最後學期總成績是以下列方式決定：
學期總成績＝20%（作業）＋30%（期中考）＋50%（期末考）
為了決定在剩餘的 3 星期內要付出多少努力，甲必須根據作業分數（有
20 分）與期中考分數（有 30 分）去預測期末考成績。甲的這些分數分
別是 12/20 與14/30。
甲蒐集去年選修這門統計課 30 位學生的期末考分數、作業分數
（assignment），與期中考分數（midterm）。
利用以下30 位學生的資料所做的迴歸分析結果回答問題：
決定估計的迴歸方程式並檢定模型的有效性（5%的顯著水準）。（4 分）
估計的標準誤為何？如何詮釋這個統計量？（4 分）
判定係數為何？這個統計量提供什麼訊息？（4 分）
詮釋估計的迴歸方程式中每一個係數。（4分）
在此模型中，檢定作業分數之係數是否為零（5%的顯著水準）？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "9eac717fa839", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1118", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00253', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '如果小強收到他的工資率增加的通知，並決定增加他的工作時數，可得知工資率增加時，下列敘述何者 正確？', '["他的所得效果大於他的替代效果", "他的替代效果大於他的所得效果", "他的所得效果和替代效果相同", "他的所得效果和替代效果都增加"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00254', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '臺灣中央銀行目前最常採行的是下列何種貨幣政策工具？', '["重貼現率（re-discountrate）", "存款準備率（requiredreserveratio）", "公開市場操作（openmarketoperation）", "扭轉操作（operationtwist）"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00255', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '某國2018年國民所得帳統計資料如下（單位十億元）： 總投資（GrossInvestment）：180、國民所得（NationalIncome）：1,000、淨出口（NetExports）：20、 個人所得（PersonalIncome）：850、民間消費（PrivateConsumption）：700、儲蓄（Saving）：50、 政府支出（GovernmentExpenditure）：200、國內生產淨值（NetDomesticProduct）：1,050。 該國2018年的國內生產毛額（GDP）為何？', '["1,000", "950", "1,100", "1,070"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00256', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '阿倫剛畢業，要經營一間行動咖啡店，他花錢考到一張咖啡師證照，買了一組手沖咖啡設備、不同的咖啡 豆，用家裡現成的小貨車，每天到不一樣的地點做生意。請問下列何者是阿倫的沉沒成本（sunkcost）？', '["手沖咖啡設備", "不同的咖啡豆", "現成的小貨車", "考咖啡師證照"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00257', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '假設某經濟體系只生產小麥與汽車兩種產品，兩種產品的生產可能曲線在何種情況下可能會整條內移？', '["汽車生產技術進步", "利率上升", "勞動力減少", "增加小麥出口"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00258', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '假設一理性消費者僅消費X與Y兩種產品，若他覺得(X,Y)=(1,1)、(X,Y)=(2,1)、(X,Y)=(1,2)三個消 a a b b c c 費組合帶給他的滿足程度相同，請問下列何者可代表此消費者之效用函數？', '["U(X,Y)=1.5X+1.5Y", "U(X,Y)=X+Y", "U(X,Y)=Min{X,Y}", "U(X,Y)=XY"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00259', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '所謂名目匯率是指：', '["一種追求一國絕對利益的成本", "一種用另一國通貨表示一國通貨的價格", "一種以進口物品表示出口物品的比率", "一種追求一國比較利益的成本"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00260', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '假設某地只生產x和y 兩種財貨，原本的生產可能曲線為6X2+2Y2=24，經過一段時間之後，其生產可 能曲線變為2x2+y2=12。該地在這段時間發生了什麼事？', '["以x為主的技術退步", "以y為主的技術退步", "以x為主的技術進步", "以y為主的技術進步"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 8, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL),
  ('pukao-0a2fc18c-moex-00261', 'pukao-0a2fc18c', 'pukao-0a2fc18c-moex-110-6948958a', 'sub-pukao-0a2fc18c-02', NULL, 'single_choice', '假設產品A的市場需求函數為：Q  = 100 − 2P，市場供給函數為：Q =3P。若是政府對產品A課徵每單 D S 位5元的銷售稅，則最終消費者付的價格為多少？政府所收到的稅收為多少？', '["23元，270元", "23元，300元", "25元，250元", "25元，300元"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:11+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "419", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 9, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
