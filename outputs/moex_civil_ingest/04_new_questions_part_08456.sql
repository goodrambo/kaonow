-- W1.6 questions batch 8456/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-704caaf1-moex-00013', 'pukao-704caaf1', 'pukao-704caaf1-moex-114-6cba014f', 'sub-pukao-704caaf1-03', NULL, 'essay', '我國曾爆發塑化劑（DEHP）被非法添加於食品中的事件，請說明該事
件之健康危害、涉及之食安法規條文，以及政府處理與未來防範對策。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "ea6eaf96634f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "439", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品衛生與安全概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00014', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-8ae50b1f', 'sub-pukao-704caaf1-01', NULL, 'essay', '請以公共衛生三段五級預防概念為架構，說明如何防治失智症？並請進
一步說明新冠疫情肆虐期間，對於失智症患者照護應該特別注意事宜？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "53106b064600", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共衛生與衛生法規概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00015', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-8ae50b1f', 'sub-pukao-704caaf1-01', NULL, 'essay', '從公共衛生的角度，請敘述少子化對國家及社會可能造成的衝擊為何？
又，那些醫療衛生之公共政策有助於減緩臺灣目前少子化的現象？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "53106b064600", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共衛生與衛生法規概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00016', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-8ae50b1f', 'sub-pukao-704caaf1-01', NULL, 'essay', '觀察 1996 至2022 年亞洲主要競爭國家平均餘命的變化，臺灣的平均餘
命的表現相對落後於日本、新加坡、南韓等國家。請說明可能的原因並
提出改善平均餘命的策略？（25分）
1996-2022平均餘命的變遷
國家 1996年 2009年 2022年
日本 80.20 82.59 84.00
新加坡 76.60 81.4 83.00
南韓 74.15 79.97 82.70
臺灣 74.95 79.01 79.84', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "53106b064600", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共衛生與衛生法規概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00017', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-8ae50b1f', 'sub-pukao-704caaf1-01', NULL, 'essay', '假設時間回到 2021 年底，Covid-19 主要流行病毒株為 Delta病毒，傳染
率高，重症率也高。中央流行疫情指揮中心要求，為了維持醫療及防疫
量能，所有「醫事人員、防疫人員、外送員、合法攤商、賣場收銀人員、
郵差及各級學校教職員工作，或服務性質具有『接觸不特定人士或無法
保持社交距離』」特性之產業，均應接種兩劑疫苗，否則不得上班。違者
將依傳染病防治法第67條處以新臺幣6萬元以上30萬元以下之罰鍰。
某甲在舞廳上班，因為有確診者曾經光顧，主管機關作疫情調查時，發
現某甲沒有接種兩劑疫苗，以違反前開規定，處以 30 萬元罰鍰。某甲主
張，主管機關前開規定明文所列行業，並沒有包含舞廳或類似之行業，
且因為疫情收入驟減，無力支付罰鍰，主管機關之處罰過當。請問某甲
之主張，有無理由？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "53106b064600", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共衛生與衛生法規概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00018', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-535684c7', 'sub-pukao-704caaf1-02', NULL, 'essay', '請敘述下列研究方法的定義並說明此種類型研究的主要限制。（每小題
10 分，共 20分）
橫斷性研究（cross-sectionalstudy）
生態研究（ecologicalstudy）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00019', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-535684c7', 'sub-pukao-704caaf1-02', NULL, 'essay', '請列舉五個判斷因果關係的條件，並說明其意義。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00020', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-535684c7', 'sub-pukao-704caaf1-02', NULL, 'essay', '某學者想要瞭解年齡贊成某項新政策的比例是否不同。在 100 個 50 歲
以上所組成的隨機樣本中（第一組），有31 個贊同該項新政策，而在 100
個 30-50 歲所組成的隨機樣本中（第二組），有 24 個贊同該項新政策，
請回答下列問題：
如何得知兩組在贊同該項新政策的比例是否不同？（α = 0.05）（12 分）
兩組在贊同該項新政策比例差值的 95%信賴區間。（8 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00021', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-535684c7', 'sub-pukao-704caaf1-02', NULL, 'essay', '某研究者研究每天三餐飲食吃辣椒的習慣和十二指腸潰瘍的關係，得到
的資料如下表。
有十二指腸潰瘍 沒有十二指腸潰瘍
三餐飲食均吃辣椒 280 220
三餐飲食均沒吃辣椒 220 280
請回答下列問題。
請計算三餐飲食均吃辣椒者與三餐飲食均沒吃辣椒者，得到十二指腸
潰瘍風險的勝算比（oddsratio）。（8 分）
請說明三餐飲食均吃辣椒和十二指腸潰瘍的關聯性。（12 分）
44650', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL),
  ('pukao-704caaf1-moex-00022', 'pukao-704caaf1', 'pukao-704caaf1-moex-113-535684c7', 'sub-pukao-704caaf1-02', NULL, 'essay', '有關不同治療藥物對於腎盂腎炎病人住院天數的影響。某研究者在由 A
藥物治療的病人中隨機抽出 36 名，其平均住院日為 4.51 天，標準差為
1.98 天；在由 B藥物治療的病人中隨機抽出 36名，其平均住院日為 6.28
天，標準差為2.54 天，假設二種治療藥物的病人母全體住院天數均呈常
態分布，且變異數相等，請回答下列問題：
如何得知用A藥物治療腎盂腎炎病人可否縮短平均住院天數？（15分）
請計算 A 藥物與 B 藥物治療腎盂腎炎病人平均住院天數差值之 95%
信賴區間。（10分）
Z =1.96、Z =1.645、Z =2.575
0.975 0.95 0.99
t =1.29、t =1.29、t =1.29
70,0.90 71,0.90 72,0.90
t =1.67、t =1.67、t =1.67
70,0.95 71,0.95 72,0.95
t =1.99、t =1.99、t =1.99
70,0.975 71,0.975 72,0.975', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:59+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "446", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
