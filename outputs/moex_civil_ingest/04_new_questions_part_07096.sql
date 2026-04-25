-- W1.6 questions batch 7096/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-d0d1b9a2-moex-00524', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'single_choice', '關於查核人員與受查者治理單位之溝通，下列敘述何者錯誤？', '["查核人員應就溝通之形式、時點及預期之內容，與受查者治理單位溝通", "查核人員應及時與治理單位溝通", "查核人員應就其查核方法的運用與查核過程的進展，與治理單位溝通其是否適當", "溝通之形式究竟是採用口頭，抑或是書面方式，由查核人員依其專業判斷與公報規定而定"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": "6df25b623a35", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00525', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'essay', '永續公司以生產空氣清淨機為主要產品，其相關資料如下表︰
銷售單位 5,000單位
單位售價 $40,000
單位變動成本 $30,000
統計製程管制作業耗用時數 8,000小時
每單位產品偵測與鑑定耗用時數 2小時
工廠重製產品百分比 10%
每單位產品重製成本 $6,000
估計因品質不良而喪失之銷貨 600單位
因產品瑕疵，到顧客處無償修理之產品比率 8%
因產品瑕疵，每單位產品修理成本 $7,500
另各種作業每小時費率如下︰
統計製程管制作業 每小時 $600
偵測與鑑定 每小時 $800
試作︰（15分）
計算該公司空氣清淨機之預防、鑑定、內部失敗及外部失敗之品質成
本各為多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00526', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'essay', '文山公司之財務經理想了解該公司廣告支出與營業額之關係，因此他
採用高低點法與迴歸分析法對過去 10 個月之相關資料作分析。
月份 營業額 廣告支出
1月 $51,000 $1,500
2月 72,000 3,500
3月 56,000 1,000
4月 64,000 4,000
5月 56,000 500
6月 64,000 1,500
7月 43,000 1,000
8月 83,000 4,500
9月 56,000 2,000
10月 61,000 2,000
其所估計之迴歸函數如下：營業額＝$46,443＋$6.584 廣告支出
試作︰（15分）
×
當投入廣告支出 $2,000 時，請問以迴歸分析法與高低點法所獲得之
成本估計函數進行營業額預估時，兩法之預估差異數為多少？（假定
營業額與廣告支出僅有同期間關係）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00527', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'essay', '新台船公司開發了一型高級遊艇，並製造完成第一艘遊艇，其相關資
訊如下表。該公司甫接獲該型遊艇第一批訂單，希望購買 6艘同型遊
艇。依該公司評估，其製造人工有學習效果，可適用 90%累積平均學
習模式。
直接人工小時 15,700
直接人工工資率 $43
直接材料成本 $200,000
變動製造費用率 每直接人工小時 $24
其它製造費用 直接人工成本之10%
補充資料︰
⑴90%累積平均學習模式之學習指數 b =-0.152004
⑵2-0.152004=0.9﹔3-0.152004=0.8465﹔4-0.152004=0.81﹔5-0.152004=0.7825﹔
6-0.152004=0.76125﹔7-0.152004=0.74295 ﹔8-0.152004=0.72875
試作︰（20分）
該公司決定保留第一艘遊艇作為展示之用。假定該公司採全部製造成
本加成訂價法，且加價率為 20%，請求算該訂單6 艘之預估總售價為
多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00528', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'single_choice', '某公司生產聯合產品甲與乙，聯合成本為$200,800，二產品於分離點後均可再進一步加工後 出售。聯合生產過程資訊如下： 甲產品 乙產品 分離點生產單位數 21,000 15,000 分離點每單位售價 $8.4 $3.6 進一步加工後每單位售價 $18.0 $8.4 進一步加工成本 $83,280 $30,000 進一步加工後銷售單位數 20,000 14,000 甲、乙二產品均無期初存貨，進一步加工後此二產品之期末存貨均為 1,000 單位，下列何種 分攤聯合成本方法將使甲產品分攤到最多聯合成本？', '["產量法（Physicalunitsmethod）", "分離點售價法（Salesvalueatsplitoffpointmethod）", "淨變現價值法（Netrealizablevaluemethod）", "固定毛利率淨變現價值法（Constantgross-marginpercentageNRVmethod）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": "18bfd041b04c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00529', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'single_choice', '關於雙重費率法，下列敘述何者正確？', '["雙重費率法可解決生產部門產能未充分利用的問題及效率問題", "雙重費率法可解決服務部門分攤給某一生產部門的成本，不受其他部門使用的服務量影響", "雙重費率法使用預計的服務量計算固定成本，實際的服務量計算變動成本", "雙重費率法會分出預計成本庫及實際成本庫"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": "18bfd041b04c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00530', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'single_choice', '有關服務部門成本的分攤，下列敘述何者正確？', '["階梯法服務部門的分攤順序必須先從服務部門原始成本較大的先分攤", "分攤給營業部門的金額很可能因為使用的分攤方法而有所不同", "分攤給營業部門的總金額會因為使用的分攤方法而有所不同", "相互分攤法通常是概念上最精確的方法，因為它考慮了所有服務部門之間相互的服務 ⑤相對於相互分攤法，直接法對於管理者來說較容易計算"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": "18bfd041b04c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00531', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'single_choice', '有關「期間成本」的定義，下列敘述何者正確？', '["買賣業非資本化成本應列為期間成本", "可對未來期間產生效益的成本", "發生於某一會計期間，即認列為當期費用的成本", "僅"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": "18bfd041b04c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00532', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'single_choice', '關於各式成本制度，下列敘述何者錯誤？', '["分批成本制採用分批成本單累算成本", "分步成本制採用生產部門報告表累算成本", "作業成本制係混合分批成本制與分步成本制的成本制度", "分批成本制度強調作業層級，以及分攤基礎與間接製造費用之因果關係"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": "18bfd041b04c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00533', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-194ec0d9', 'sub-locality-d0d1b9a2-06', NULL, 'single_choice', '甲公司採用分步成本制度之加權平均法，公司製造一種需要通過兩道加工程序的高品質材料， 第一個加工部門本月份期初存貨200單位，期初存貨相關資料如下： 成本 完工百分比 材料成本 $3,000 75% 加工成本 $2,700 40% 本月份開始加工7,000單位，6,700單位在本月份轉入第二個部門，本月份第一個部門發生的 材料成本為$132,000，加工成本為$219,100。期末存貨材料已投入90%，加工成本完工程度為 45%。試問第一個部門本月份轉出下一個部門的材料成本最接近下列何者？', '["$119,539", "$126,503", "$129,214", "$135,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "5600a718a2d5", "answer_pdf_sha1": "18bfd041b04c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1505", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
