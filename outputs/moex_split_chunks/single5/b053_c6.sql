-- moex_license_ingest questions batch 53/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('bookkeeper-moex-00842', 'bookkeeper', 'bookkeeper-moex-108-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依中華民國記帳士職業倫理道德規範相關規定，下列何者為該規範制訂之目的？', '["砥礪記帳士專業之道德文化", "指導記帳士避免遭受行政處罰", "記帳士如何協助客戶避稅的相關規範", "提高記帳士在執行業務過程中所獲得資訊之價值"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:24+00:00", "source_pdf_sha1": "ffaf06180d77", "answer_pdf_sha1": "5bdaf7f539a6", "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 48, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00843', 'bookkeeper', 'bookkeeper-moex-108-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '王記帳士之客戶甲商行，酬金高於新臺幣五十萬元，甲商行無正當理由，自行或要求多次或連續以低於 新臺幣五十萬元之現金支付，王記帳士配合客戶要求，未依記帳士暨記帳及報稅代理人防制洗錢與打擊 資恐辦法規定，向法務部調查局申報，王記帳士之行為違反記帳士職業倫理道德規範中那一項規範？', '["基本原則之誠正", "基本原則之保密", "行為準則之誠正", "行為準則之保密"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:24+00:00", "source_pdf_sha1": "ffaf06180d77", "answer_pdf_sha1": "5bdaf7f539a6", "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00844', 'bookkeeper', 'bookkeeper-moex-108-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依記帳士職業倫理道德規範，記帳士於執行業務時，應依照法令及財政部發布之其他攸關資料提供記帳 士服務，此係符合下列何項行為準則？', '["誠正", "務實", "保密", "適任"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:24+00:00", "source_pdf_sha1": "ffaf06180d77", "answer_pdf_sha1": "5bdaf7f539a6", "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "602", "s": "1202", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00845', 'bookkeeper', 'bookkeeper-moex-107-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '請回答下列有關存貨的會計處理問題：
大趣公司存貨會計制度採用永續盤存制，20X7年進貨及銷貨資料如下：
1月2日，期初存貨100單位，每單位$10；
2月5日，進貨400單位，每單位$10.5；
5月6日，銷貨300單位，每單位$15；
10月8日，進貨800單位，每單位$11.3；
11月20日，銷貨500單位，每單位$15；
12月31日，期末存貨為500單位。
根據以上資料，若公司存貨成本流動假設採用先進先出法，請問 20X7 年之
期末存貨成本、銷貨毛利各為多少？（請將答案按照下表格式列示於試卷上，
並請附計算過程。）（9分）
期末存貨成本
銷貨毛利
小康公司20X7年銷貨、期初存貨及本期進貨成本、零售價等資料如下：
成    本 零 售 價
銷貨收入  $ 2,400
期初存貨  $ 420 600
本期進貨  2,100 2,800
加價  300
加價取消  50
減價  550
減價取消  100
根據以上資料，若該公司採用「加權平均成本與淨變現價值孰低零售價法」
（傳統零售價法）估計期末存貨，請問該公司之成本比率、期末存貨成本各
為多少？（請將答案按照下表格式列示於試卷上，並請附計算過程。）（8分）
成本比率
期末存貨成本', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:25+00:00", "source_pdf_sha1": "6ac3ac7d31bb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "602", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00846', 'bookkeeper', 'bookkeeper-moex-107-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '甲會計員正在編製風光公司 20X7 年度之現金流量表。其中，營業活動現金流
量以直接法編製，並將利息收付及股利收入列入營業活動，股利支付列入籌資
活動。下列為該公司當年度部分帳戶情形：
部分帳戶金額：
銷貨收入  $21,600
銷貨成本  12,000
利息收入  500
利息費用  1,200
折舊費用  500
薪資費用  1,000
租金費用  600
其他營業費用  1,500
出售設備利益（包含在本期純益中） 200
所得稅費用  1,100
支付現金股利  5,000
本期稅後純益  4,400
現金餘額（20X7年1月1日） 9,000
部分帳戶金額增(減)數：
存貨  (1,000)
應收帳款（因銷貨而發生） (2,000)
預收利息  100
應付帳款（因進貨而發生） 200
應付薪資  (100)
應付租金  100
應付利息  (100)
應付所得稅  (200)
20X7年度公司有下列現金收付交易：
㉑出售機器設備一部，成本$5,000，累積折舊$4,000，售價$1,200。
㉒購買土地，成本$13,000。
㉓購買交通設備，成本$2,000。
㉔發行股票1,000股，每股面額$10，每股售價$10.7，共得款$10,700
根據上述資料，請計算風光公司20X7年度現金流量表中有關營業活動之淨現
金流入（流出）金額、投資活動之淨現金流入（流出）金額、籌資活動之淨現
金流入（流出）金額、期末現金及約當現金餘額。（無需編製現金流量表，請
將答案按照下表格式列示於試卷上，並請附計算過程。）（17分）
營業活動之淨現金流入（流出）
投資活動之淨現金流入（流出）
籌資活動之淨現金流入（流出）
期末現金及約當現金餘額', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:25+00:00", "source_pdf_sha1": "6ac3ac7d31bb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "602", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
