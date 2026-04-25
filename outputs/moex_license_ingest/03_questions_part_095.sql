-- moex_license_ingest questions batch 95/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00941', 'cpa', 'cpa-moex-106-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '下列何者未依商業會計法規定如期辦理決算，卻非商業會計法所處罰之對象？', '["代表商業之負責人", "經理人", "未依法取得代他人處理會計事務之資格而擅自代他人處理商業會計事務者", "依法受託代他人處理會計事務之會計師"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "21d00306ef40", "answer_pdf_sha1": "dd265de3c045", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00942', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'essay', '請回答下列有關顯著風險之問題：
何謂顯著風險？（3分）
請就風險性質、風險發生可能性以及風險影響程度三個層面，分析以下兩個
情況，何者較可能屬顯著風險？（12分）
⑴甲公司所屬產業均定期替換或新購廠房之設備。本年度甲公司為擴大熱銷
商品之產能，進行數筆重大固定設備增添交易（總金額大於財務報表整體
重大性水準）。上述新設備的主要供應商為非關係人之外部第三人，個別
之固定資產增添交易金額均小於財務報表整體重大性水準。
⑵同產業乙公司本年度停產部分商品，並預計於二年內生產新商品，此決策
導致其A工廠產量降低，管理階層預期當年度可能發生固定資產減損。
請依下列格式作答。
公司  是否為顯著風險？  風險性質  風險發生可能性  風險影響
甲
乙', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00943', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'essay', '甲公司係一上市公司，主要從事各國品牌服裝、飾品進口、銷售業務。其銷售
管道包括於各百貨公司、機場免稅店等設櫃銷售，銷售人員之報酬大多由其銷
售業績決定，因此銷貨截止點是否正確，於公司財務報表而言，係重要之考量
點。又甲公司進口之服裝、飾品受季節、天候影響，且具高度時尚性及流行性，
過時存貨需折價銷售方能出清。甲公司存貨評價係以成本與淨變現價值孰低為
會計政策。會計師於執行105年度財務報表查核時，經判斷、評估，並與甲公
司管理階層及治理單位溝通後，確認「銷貨收入認列時點」及「存貨價值評估」
係關鍵查核事項。
請就審計準則公報57號「財務報表查核報告」之規定，試述會計師出具無保
留查核意見時，查核報告至少應包括那些段落？（5分）
依審計準則公報第57號及58號「查核報告中關鍵查核事項之溝通」，試撰
寫甲公司會計師查核報告之關鍵查核事項段。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00944', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'essay', '甲企業之總公司位於臺北，另於高雄設有分公司以利南部地區業務之進行。高
雄分公司於高雄銀行設有獨立的帳戶，並定期將此帳戶中之現金，開立支票寄
給總公司存入其臺北銀行之帳戶。乙會計師事務所受託查核甲企業民國Xl年度
之財務報表，下表係其查核人員列出甲企業於財務報表結束日（12/31/X1）前
後數日，臺北總公司與高雄分公司間銀行帳戶現金移轉及會計帳冊紀錄的相關
資料，共計4筆如下：
臺北總公司入帳日期  高雄分公司入帳日期
支票
金額
編號
帳冊  銀行帳戶  帳冊  銀行帳戶
103  $100,000  12/28/X1  01/02/X2  12/28/X1  01/03/X2
104  $200,500  12/30/X1  12/30/X1  01/02/X2  01/03/X2
108  $305,000  01/02/X2  01/02/X2  12/30/X1  01/03/X2
110  $404,000  01/03/X2  12/31/X1  01/03/X2  01/05/X2
試逐筆分析表中4筆現金移轉資料，說明是否可能存有現金舞弊或錯誤的疑慮？
並試述其理由。試依下列格式回答，否則不予計分。（15分）
支票編號  是否可能存有現金舞弊或錯誤疑慮（是或否）  理由
103
104
108
110', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00945', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '有關審計準則公報第57號「財務報表查核報告」及第58號「查核報告中關鍵查核事項之溝通」， 下列敘述何者錯誤？', '["修正式意見包括保留意見、否定意見及無法表示意見", "上市（櫃）公司財務報表的查核報告中，一定要包含關鍵查核事項段", "查核報告中不一定要包含繼續經營有關之重大不確定性段", "每一個別關鍵查核事項皆須於關鍵查核事項段中說明"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": "19aa8285bb8e", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00946', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核報告中強調事項及其他事項之適用情形存有差異，下列何者適用於強調事項而非其他事項？', '["前期財務報表由其他會計師查核", "對具重大影響之新會計準則之提前適用", "集團查核報告提及組成個體查核人員之查核", "查核報告分送或使用之限制"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": "19aa8285bb8e", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00947', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '甲公司為一上市公司，於105年3月10日經董事會通過104年12月31日之合併財務報表，查核報 告日亦為105年3月10日，並預計於105年3月14日上傳至公開資訊觀測站。甲公司於東南亞某 國之重要子公司因105年3月13日當地發生排華事件，致該子公司工廠遭到嚴重破壞，此項損失對 甲公司合併財務報表係屬重大。下列所述何者正確？', '["於財務報告日後查核團隊獲悉該事件，惟該事件發生於報告日後，故無須更新查核報告", "雖然事件發生於報告日後，查核團隊無執行查核程序之義務，惟必須揭露該事實於財務報表之期 後事項", "公司管理階層出具之合併客戶聲明書應包括此事件", "應評估該損失之可能金額，調整財務報表，故查核團隊可能得更新查核報告"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": "19aa8285bb8e", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00948', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '甲公司財務報表採曆年制，其X5年度財務報表於X6年2月1日編製完成，簽證會計師於X6年3月 15日認為已取得足夠而適切的查核證據，並出具查核報告。甲公司於X6年3月25日正式發布財務 報表。下列何日最可能為甲公司財務報表之客戶聲明書日期？', '["X5年12月31日", "X6年2月l日", "X6年3月15日", "X6年3月25日"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": "19aa8285bb8e", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00949', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '依我國審計準則公報第34號「財務資訊協議程序之執行」規定，會計師受託執行協議程序時出具之 報告內容應包括下列何項？', '["協議程序係由會計師依專業判斷決定", "會計師係依一般公認審計準則執行協議程序", "協議程序執行報告中之財務資訊係與財務報表整體有關", "若會計師不具超然獨立，協議程序執行報告應作適當說明"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": "19aa8285bb8e", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00950', 'cpa', 'cpa-moex-106-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列何項程序與銀行融資之查核較不相關？', '["檢查董事會有關銀行融資之會議紀錄", "分析利息支出之合理性", "複核銀行調節表", "檢查銀行借款合約"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "1491f6c398c7", "answer_pdf_sha1": "19aa8285bb8e", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
