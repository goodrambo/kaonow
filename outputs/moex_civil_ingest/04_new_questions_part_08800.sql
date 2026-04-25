-- W1.6 questions batch 8800/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-d0d1b9a2-moex-00254', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-fa8ff513', 'sub-pukao-d0d1b9a2-01', NULL, 'single_choice', '依現行「中央總會計制度」之規定，下列何者非屬作業基金之財務報表？', '["盈虧撥補表", "現金流量表", "餘絀撥補表", "平衡表"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e5233a82878d", "answer_pdf_sha1": "ee696a58d80e", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "政府會計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 20, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00255', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'essay', '乙公司 X6 年 7 月 1 日購入一台設備，該設備定價$120,000，付款條件
2/10，n/30，乙公司 7 月 13日支付價款，使用年數合計法提列折舊，估
計可用 5 年，殘值$18,000。該設備購入當天，乙公司支付下列費用：運
費$1,850、搬運途中不慎損壞之修理費用$1,800、安裝費$2,300、試車費
$1,250。乙公司預計未來 5 年內每年扣除折舊及所得稅前之淨利均為
$1,280,000，所得稅稅率為20%，流通在外普通股股數均為400,000 股。
試作（每小題均為獨立問題）：
X6 年折舊費用。（7 分）
X7 年的每股盈餘。（7分）
X8 年 1 月 1日花費$16,000對該設備進行重大修理，估計大修後尚可
再使用 4 年，無殘值。X10 年 9 月 1 日，乙公司以$18,000 出售該設
備，出售損益為何？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00256', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'essay', '以下每小題均為獨立問題：
甲公司於 X6年初開始營業，相關資料如下：淨利$1,050,000，庫藏股
再發行價格超過成本$45,000，現金股利$200,000，提撥或有損失準備
$180,000，股票股利$80,000。甲公司 X6 年 12 月 31 日保留盈餘應有
的餘額為何？（7 分）
甲公司於 X6年初成立，X8年 12 月 31日股本帳戶情況如下：
普通股股本（面額$10） $1,000,000
5%非累積非參加特別股股本（面額$100） 500,000
7%累積完全參加特別股股本（面額$100） 1,500,000
至 X7 年底止，甲公司尚未發放過任何股利，甲公司 X8 年度宣告發
放股利$440,000。甲公司 X8 年度，普通股應分配之股利為何？（8 分）
|
41630', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00257', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'essay', 'X2 年初，甲公司購入一面額$300,000 之債券，並將其分類為「透過其他
綜合損益按公允價值衡量」之債券投資，該債券市場利率3%，票面利率
為 4%，每年年底付息一次，X6 年 12 月 31 日到期。甲公司 X4 年底，
「其他權益」科目之金融資產未實現(損)益為$8,259。該債券投資相關資
訊如下：
X4年12月31日 X5年12月31日 X6年12月31日
攤銷後成本 $305,741 $302,913 $300,000
公允價值 ？ 295,000 300,000
試作（四捨五入至整數位）：
X4 年底所投資債券的公允價值。（7 分）
X5 年應認列金融資產未實現(損)益。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00258', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'single_choice', '甲公司於X1年1月1日分別以$1,200,000購入乙公司普通股及丙公司公司債，皆分類為「透過 其他綜合損益按公允價值衡量之金融資產」，X1年底該乙公司普通股及丙公司公司債之公允價值 分別為$1,150,000及$1,300,000。甲公司於X2年7月1日以$1,100,000將乙公司普通股全數出售， 並於X2年9月30日以$1,400,000出售全部丙公司公司債。已知此交易之本期淨利為$8,000,000、 本期其他綜合損益為$500,000，請問甲公司X2年度考量前述交易後之「本期淨利」及「本期綜合 損益」分別為多少？（不考慮所得稅、利息收入與股利收入）', '["$8,000,000；$550,000", "$7,900,000；$650,000", "$8,200,000；$350,000", "$8,100,000；$450,000"]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": "02587aca6058", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": true, "flags": ["answer_corrected_skip_v1"], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00259', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'single_choice', '甲公司X6年12月份銀行對帳單餘額$405,606，12月底在途存款$25,000及未兌現支票$45,000， 其中有$20,000遲至X7年1月底均未兌現。X7年1月份銀行對帳單餘額$580,000，1月底在途存 款$43,000及未兌現支票$52,000。甲公司X7年1月31日現金正確餘額為：', '["$591,000", "$571,000", "$416,606", "$396,606"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": "02587aca6058", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00260', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'single_choice', '甲公司三年來之帳列淨利及淨損分別如下：X1年度淨利$101,000；X2年度淨損$25,600；X3年度', '["公司對存貨採實地盤存 制，各年期末存貨錯誤如下：X1年高估$25,500；X2年低估$8,680；X3年高估$5,540", "公司 購入文具用品，均於購入年度當年以費用列帳，期末未耗用部分，移至次年度繼續使用，但未調 整。未耗用情形如下：X1 年底全部耗盡。X2 年底未耗用部分計有$23,000。X3 年底未耗用部分 有$5,657。甲公司X3年之正確淨利為何？（不考慮所得稅）", "$8,437", "$17,117"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": "02587aca6058", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00261', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'single_choice', '物價不斷上漲時，定期盤存制之先進先出法和加權平均法，何者銷貨毛利率較高？何者期末存貨 成本較高？', '["先進先出法，先進先出法", "加權平均法，加權平均法", "先進先出法，加權平均法", "加權平均法，先進先出法"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": "02587aca6058", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00262', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'single_choice', '甲公司於X1年初購買機器設備$500,000，採成本模式衡量並以直線法提列折舊。甲公司X3年底 提列折舊後進行減損測試，可回收金額為$340,000，認列減損損失$25,000。甲公司對耐用年限與 殘值之估計最有可能的組合為下列何者？', '["10年；$25,000", "10年；$50,000", "20年；$25,000", "20年；$50,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": "02587aca6058", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL),
  ('pukao-d0d1b9a2-moex-00263', 'pukao-d0d1b9a2', 'pukao-d0d1b9a2-moex-111-d35177eb', 'sub-pukao-d0d1b9a2-02', NULL, 'single_choice', '甲公司持有乙公司股票並分類為透過損益按公允價值衡量之股票投資，若乙公司發放股票股利， 則甲公司之會計處理何者正確？', '["貸記股利收入", "貸記其他綜合損益", "貸記透過損益按公允價值衡量之股票投資", "無須作會計分錄，僅作備忘記錄 | 41630"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:03+00:00", "source_pdf_sha1": "e416025ce5d6", "answer_pdf_sha1": "02587aca6058", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "416", "s": "1002", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
