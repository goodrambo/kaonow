-- moex_license_ingest questions batch 192/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('bookkeeper-moex-00122', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', 'A未取得記帳士資格卻執行記帳士業務，請問下列敘述何者正確？', '["通知考選部剝奪A未來參加記帳士考試資格", "由檢察官提起公訴", "由財政部處新臺幣3萬元以上15萬元以下罰金", "由財政部處新臺幣3萬元以上15萬元以下罰鍰"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 44, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00123', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '記帳士A以不正當方法招攬業務，移送懲戒委員會遭停止營業1年，請問該停業決定之法律性質為 何？', '["行政命令", "行政處分", "行政指導", "行政契約"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 45, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00124', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '下列何者非商業負責人？', '["經理人", "董事", "有限合夥人", "清算人"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 46, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00125', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '公司申請設立登記之資本額，應經會計師查核簽證，因此訂有「會計師查核簽證公司登記資本額辦法」， 請問該項辦法之法律性質為何？', '["法規命令", "行政規則", "行政處分", "行政指導"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 47, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00126', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '交通科技執法是一種用科技儀器來監測交通情形、舉發違規事件、降低車禍意外機率、減省警察人力 的一種方式，其最大目的為「遏止違規行為，減少交通事故傷亡」。下列敘述何者正確？', '["交通科技執法是機器作成的行政處分，得不記明理由", "交通科技執法的書面行政處分，仍必須要署名，不得以蓋章為之", "交通科技執法得不給予陳述意見的機會", "交通科技執法之救濟期間有錯誤時，應由處分機關以通知更正之，並自通知送達之日起算為法定 期間"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 48, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00127', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依據行政程序法之規定，下列敘述何者錯誤？', '["無效之行政處分自始不生效力", "行政處分未經撤銷、廢止，或未因其他事由而失效者，其效力繼續存在", "書面之行政處分自送達相對人對其發生效力", "一般處分自公告日或刊登政府公報、新聞紙登載首日起發生效力"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 49, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00128', 'bookkeeper', 'bookkeeper-moex-114-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '甲有限公司遭財政部國稅局認定逃漏營利事業所得稅高達新臺幣1千萬元整，除課公司補稅外並處以 補稅額二倍罰鍰。然事後發現係重複計算結果導致課稅處分發生錯誤，重新核算後結果逃漏稅額度僅 為新臺幣1百萬元整，請問原處分效力如何？', '["逃漏稅事實明確，為維持法安定性故原處分應予以維持", "原處分為輕度瑕疵，甲有限公司得請求撤銷原處分", "原處分為重大明顯瑕疵，應為無效", "國稅局應廢止原處分另為適法處分"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "301a5f0a4291", "answer_pdf_sha1": "56890c44c55f", "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "602", "s": "1302", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 50, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00129', 'bookkeeper', 'bookkeeper-moex-113-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '請回答下列兩個問題：
甲公司產銷某一新產品，預計單位售價為$20，當產銷量為3,000單
位時，營業淨利為$3,000；若當產銷量為 5,000 單位時，營業淨利
則為$15,000。試計算甲公司之單位變動成本、損益兩平之銷售量。
（請附計算過程，並將答案依照下表格式列示於試卷上。）（8分）
單位變動成本
損益兩平銷售量
乙公司 X3年底的流動負債為$800,000，X3年底的流動比率為 1.5，
速動比率為 1.2，X3 年底的流動資產僅包含現金$200,000 以及應收
帳款與存貨。考量公司資金並不夠充裕，因此公司欲透過發行 5年
期應付公司債取得$160,000資金用來償還$160,000之短期銀行借款。
試問：（請附計算過程，並將答案依照下表格式列示於試卷上。）
㉑目前乙公司 X3 年底之存貨金額為何？（4分）
㉒目前乙公司 X3 年底之應收帳款為何？（4分）
㉓若乙公司透過發行 5 年期應付公司債取得$160,000 資金用來償還
$160,000 之短期銀行借款，則速動比率將為何？（請計算至小數點
以下兩位）（4 分）
X3年底存貨金額
X3年底應收帳款
速動比率', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "d3d8aed0950c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "602", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00130', 'bookkeeper', 'bookkeeper-moex-113-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '甲公司 X1 年至 X3 年帳列銷貨收入分別為$700,000、$800,000、
$900,000，帳列銷貨成本分別為$570,000、$640,000、$720,000，帳列
期末存貨分別為$78,000、$80,000、$83,000。若 X1 年期末存貨高估
$4,000、X2 年期末存貨低估$4,000、X3 年期末存貨高估$5,000。
試計算：（請附計算過程，並將答案依照下表格式列示於試卷上。）
該公司 X1、X2、X3 年之正確營業毛利率。（請計算至小數點以下
兩位）（9分）
X1年正確營業毛利率
X2年正確營業毛利率
X3年正確營業毛利率
該公司 X2、X3 年之正確存貨周轉率。（請計算至小數點以下兩位）
（6分）
X2年正確存貨周轉率
X3年正確存貨周轉率', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "d3d8aed0950c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "602", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-00131', 'bookkeeper', 'bookkeeper-moex-113-d35177eb', 'sub-bookkeeper-01', NULL, 'essay', '甲公司收到銀行對帳單並與公司帳簿核對，發現下列各事項：
㉑ 9 月 30日銀行對帳單餘額為公司帳面餘額之90%。
㉒銀行未入帳之在途存款為$88,000。
㉓未兌現支票為$51,000。
㉔託收票據，銀行已完成收款，票面金額為$36,000，利息收入為
$720。
㉕銀行之帳戶管理費為$800。
㉖甲公司於 9 月 25 日請銀行代收一張發票日為 9 月 30 日之支票
$28,000，並記入公司之銀行存款，但該票據遭退票。
㉗公司將支付給供應商的支票$9,150 誤以$9,510入帳。
㉘銀行誤將乙公司開出之支票$4,200，誤扣在甲公司的帳戶。
試計算該公司 9 月 30 日之公司帳面餘額、銀行對帳單餘額與正確銀
行存款餘額。（請附計算過程，並將答案依照下表格式列示於試卷上。）
（15分）
9月30日之公司帳面餘額
9月30日之銀行對帳單餘額
9月30日之正確銀行存款餘額', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:18+00:00", "source_pdf_sha1": "d3d8aed0950c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "602", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
