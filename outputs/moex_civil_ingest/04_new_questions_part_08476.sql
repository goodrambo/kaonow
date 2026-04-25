-- W1.6 questions batch 8476/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-77f8735d-moex-00150', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-2a72a0d9', 'sub-pukao-77f8735d-04', NULL, 'essay', '一般工業廢水的處理程序分成物理、化學及生物程序三大類，可以單獨
應用或是合併使用。食品工業廢水的污染有何特點？請說明其處理污染
的程序。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "93bf3cd8c584", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00151', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某研究發現，卵巢癌個案的組織型態分布在美國白人與亞裔美國人族群
中不同，如下表所示，根據此研究數據，研究者宣稱：相較於美國白人，
亞裔美國人黏液型卵巢癌的發生率較高。您是否同意該研究者的結論？
請說明您的理由。（25分）
卵巢癌的組織型態
合計
黏液型 其他型態
美國白人 33（13%） 225（87%） 258（100%）
亞裔美國人 55（27%） 151（73%） 206（100%）
OR=4.09（95%CI=3.02-5.56）,p <0.05', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "8a4c1976085a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00152', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某橫斷性研究調查 600 位年齡介於 20-65 歲且開車通勤的第一型糖尿
病患者，以問卷請受訪者自訴過去一年期間低血糖發作次數以及車禍
發生的狀況，數據如下表所示。請以未發生低血糖事件者為參考組，
分別計算發生低血糖事件 1 次以及>1 次者發生車禍的勝算比（odds
ratio）；也請根據下方列聯表（contingency table），在=0.05 的顯著水
準下，檢定低血糖發作次數與發生車禍之間是否有顯著的相關性？請
詳列檢定之虛無假設與對立假設統計量數值統計量相對應的
p-value 以及結論（註：P(2 >3.84)=0.05；P(2 >5.99)=0.05；
df=1 df=2
P(2 >7.82)=0.05；P(2 >11.07)=0.05）。（25 分）
df=3 df=4
是否曾發生車禍
低血糖發作次數 人數
是 否
0 300 20 280
1 200 20 180
>1 100 20 80', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "8a4c1976085a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00153', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', 'A、B 兩種市售 COVID-19 快篩試劑的敏感度（sensitivity）均為 0.95、
特異度（specificity）均為0.90，某公司購買這兩種快篩試劑為公司員工
進行快篩，每位員工都要接受 A、B 快篩各一次，該公司安全衛生單位
主管為了提高整體快篩的敏感度，您會建議該主管使用平行檢定（Test
inparallel）或系列檢定（Testinseries）來判讀兩次快篩的結果？根據您
的建議方法，使用兩種快篩試劑其結果合併判讀後的敏感度與特異度各
是多少？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "8a4c1976085a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00154', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某研究者進行迴歸分析探討 14位第 2 型糖尿病患糖化血色素（HbA1c）
濃度及其憂鬱分數（1-5 分）之間的相關性，下表左邊為其中的部分數
據，右邊則是根據 14 位樣本數據進行迴歸分析的結果。請計算分析結果
中的 A、B、C、D及 E等格子內的數值，並根據此分析結果，計算並闡
釋 HbA1c 濃度與憂鬱分數的皮爾森相關係數（Pearson’s correlation
coefficient）。（25分）
研究部分數據 迴歸分析結果
憂鬱分數 HbAlc(%)
1 6
3 5
3 6
4 9
5 11
2 6
5 8', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "8a4c1976085a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00155', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '新冠肺炎疫情持續升溫，假設某里長聽說附近便利商店有店員確診，里
長向衛生局查證，希望向里民公布便利商店名稱，試問：
是否公開名稱，牽涉便利商店的什麼權利？有助於實現什麼樣的公
益？（5分）
何謂比例原則？（5分）
試問何種情形公布商店地點，方符合比例原則？（10 分）
面對里民要求公布商店地點，衛生局及里長處理時，應該留意那些倫
理或原則？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "4f724319b465", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00156', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '毒品危害防制條例的目的為防制毒品危害，維護國民身心健康。請論述
此條例所稱毒品的定義。（10 分）說明臺灣毒品分級的依據、級數，並
舉兩例臺灣常見毒品說明其毒品分級級數。（10 分）最後說明負責毒品
分級的單位組織。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "4f724319b465", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00157', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '假設有某甲被醫師診斷為嚴重病人，多年來整天在街上遊蕩，對著空氣
喃喃自語。某甲之家人避不見面，幸好街坊幾家小吃店常會免費提供某
甲三餐所需。最近某甲忽然當街大吼大叫，並持刀向空中揮舞，試問：
何謂保護人？精神衛生法賦予保護人那些功能？（15 分）
倘若家人無法承擔責任，現行法有何替代途徑？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "4f724319b465", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00158', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '縮減醫療品質的鴻溝是一個重要議題，二代健保中一項重要的政策希望
透過醫療品質資訊透明公開作為促進醫療品質的策略之一。試論述醫療
品質資訊公開策略的立論基礎及機制為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "4f724319b465", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00159', 'pukao-77f8735d', 'pukao-77f8735d-moex-110-85716566', 'sub-pukao-77f8735d-03', NULL, 'essay', '請以Bradsaw,Jonathan（1972）社會需求分類（Taxonomyofsocialneed）
之四大面向為架構，申論民眾對於新冠肺炎疫苗施打的需求分析。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "aae8d0e445d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "426", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
