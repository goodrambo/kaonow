-- W1.6 questions batch 803/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-f7485f85-moex-00001', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'essay', '甲公司於 X2 年7 月 1日在拍賣中以$6,300,000收購乙公司之若干資產，
因無法個別辨認各項資產之取得成本，擬按公允價值比例分攤。各項資
產於取得日之公允價值如下：
土地 $2,362,500
建築 $4,725,000
機器設備 $1,837,500
運輸設備 $1,575,000
試作：（計算至個位數四捨五入）
按相對公允價值法分攤購買價格，機器設備及運輸設備之入帳成本各
為若干？（6分）
假設機器設備之估計耐用年限為 8 年，殘值$90,000，採年數合計法提
列折舊；運輸設備之估計耐用年限為 5年，殘值$45,000，採直線法提
列折舊。試求 X3 年 12 月 31 日機器設備及運輸設備之帳面價值各為
若干？（6 分）
甲公司於 X4 年底以$650,000 出售機器設備，試計算出售損益（請註
明利益或損失）？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00002', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'essay', '甲公司 6 月份的存貨紀錄如下：（每小題 6 分，共18 分）
日期 交易 單位數量 單位成本 單位售價
6/1 期初存貨 3,600 $135
6/10 進貨 4,800 120
6/16 銷貨 6,000 $198
6/23 進貨 6,600 105
6/26 銷貨 5,400 205
6/30 進貨 3,000 90
請根據以下存貨成本計算方式，分別計算期末存貨成本：先進先出法
（FIFO）、加權平均法、移動加權平均法（小數點後二位四捨五入）。
在各方法下，甲公司6月份存貨週轉率為若干（小數點後二位四捨五入）？
假設甲公司採定期盤存制，以及先進先出法，7月份存貨相關資料如下：
銷貨收入 $2,800,000 銷貨運費 $60,000
銷貨退回 $140,000 進貨運費 $90,000
進貨 $1,500,000 進貨退出 $30,000
（其中進貨包含一批起運點交貨之在途商品$35,000）
在 8 月初甲公司倉庫不幸發生火災，經全力搶救後，僅存一批存貨，其
淨變現價值$42,000，則使用毛利率法（採用 6月份毛利率）計算甲公司
因火災造成的存貨損失為多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00003', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'essay', '2025 年 1月 1 日，甲公司帳上股東權益項目如下：
普通股股本（每股面值$10，已發行並流通75,000股）$750,000
資本公積-普通股 $200,000
保留盈餘 $540,000
本年度內，發生下列交易：
1月15日 宣告每股$2的現金股利，股東登記日為1月31日，支付
日為2月15日
2月15日 支付1月宣告的現金股利
4月15日 宣告10%股票股利，股東登記日為4月30日，股票發放
日為5月15日。當日每股市價為$15
4月15日 發放股票股利
5月1日 宣布1股分割為2股。股票分割前每股市價為$15，每股
面值調整為$5
7月1日 宣告每股$0.60的現金股利，股東登記日為12月15日，
支付日為2026年1月10日
12月31日 本年度稅後淨利為$260,000
根據上述資訊，回答下列問題：（每小題 5 分，共15 分）
2025年底資產負債表上，「普通股股本」餘額為多少？
2025年底資產負債表上，「資本公積-普通股」餘額為多少？
2025年底資產負債表上，「保留盈餘」餘額為多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00004', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '甲公司於X4年1月1日買入一設備，成本$400,000，估計耐用年限6年，殘值$16,000，以直線 法提列折舊。X5年1月1日進行定期維修費用$5,000，並添購新配件$60,000，本次添購配件預計 可增加設備每年50%的生產力。若原設備耐用年限不變，但殘值提升至$21,000，則甲公司X5年 應認列之折舊費用為何？', '["$62,500", "$63,000", "$75,000", "$76,000"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00005', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '甲牧場飼養的羊隻於X5年9月30日共生產羊乳10,000公升，每公升羊乳市價為$210，運送至 市場之運輸成本每公升$10，出售成本每公升為$5。當月份發生飼料費用$50,000，採收羊乳工資 $26,000，其他支出$35,000，試問甲牧場採集的羊乳入帳金額是多少？', '["$1,839,000", "$1,950,000", "$2,026,000", "$2,061,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00006', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '甲公司於X5年7月1日出售一台特殊機器給乙客戶，並提供一年內免費更換零件的售後服務保 證，估計每個零件更換成本為$50,000。若甲公司評估發生一個零件故障機率為30%，二個零件故 障機率為60%，三個零件故障機率為10%，則甲公司X5年應認列估計產品保證負債金額為何？', '["$0", "$60,000", "$90,000", "$100,000"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00007', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '甲公司於X5年4月1日以$1,081,696之價格發行面額$1,000,000、利率5%、10年期公司債，每 年4月1日及10月1日付息，發行當日市場利率為4%。甲公司為曆年制，採有效利率法攤銷溢 折價，則甲公司X5年應認列利息費用是多少？（四捨五入至整數位）', '["$32,417", "$37,500", "$42,583", "$43,201"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00008', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '下列各項中，有幾項屬於籌資活動之現金流量？①收取現金股利  ②舉借債務  ③出售交易目的', '["透過其他綜合損益按公允價值衡量之債券投資評價損益 ⑤再出售庫藏股票  ⑥採權益法認列之投資損失", "1項", "2項", "3項"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00009', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '甲公司X5年期初應收帳款$66,000，期末應收帳款$68,000，期初應付帳款$50,000，期末應付帳款 $58,000，期初存貨$126,000，期末存貨$130,000，本期銷貨成本$1,900,000，則甲公司X5年度進 貨付現金額是多少？', '["$1,888,000", "$1,896,000", "$1,904,000", "$1,912,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL),
  ('aboriginal-f7485f85-moex-00010', 'aboriginal-f7485f85', 'aboriginal-f7485f85-moex-114-d35177eb', 'sub-aboriginal-f7485f85-01', NULL, 'single_choice', '甲公司X5年發生下列交易：添購設備支付$160,000；借款給關係企業$100,000；出售一筆帳面金 額為$900,000土地，獲利$45,000；出售交易目的持有之金融資產，帳面金額$80,000，損失$6,500； 增資發行新股$300,000。則甲公司X5年現金流量表中投資活動之現金流量為多少？', '["淨現金流入$685,000", "淨現金流入$758,500", "淨現金流入$958,500", "淨現金流入$1,205,000"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "fdd87a649633", "answer_pdf_sha1": "074507e641f2", "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "201", "s": "1307", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "會計學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "外交行政人員"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
