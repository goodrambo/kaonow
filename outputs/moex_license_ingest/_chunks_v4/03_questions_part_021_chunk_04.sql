INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-01041', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'essay', '請依所列之「交易查核目標」，填入與其相關之下列「關鍵內部控制」，並就
該「關鍵內部控制」選擇一個對應之「控制測試程序」。（18分，每空格1分）
交易查核目標：
A. 已記錄之銷貨交易確實發生而非虛構客戶
B. 已發生之銷貨交易皆已入帳
C. 銷貨交易適當記錄於應收帳款主檔並正確過帳
關鍵內部控制：
㉑出貨單預先編號
㉒系統自動比對顧客已被授權之信用額度
㉓定期比對出貨單批次總數至銷貨發票批次總數
㉔每月與顧客對帳
㉕應收帳款主檔每月調節至總分類帳
㉖系統自動檢查顧客編號是否有效
㉗系統自動將銷貨交易過帳至應收帳款主檔及總分類帳
㉘記錄的銷貨有足以支持記錄之顧客訂單、銷貨單及出貨單
㉙定期比對銷貨發票批次總數至出貨單批次總數
控制測試程序：
(甲)檢查因顧客編號無效而被系統拒絕之交易
(乙)觀察對帳單是否寄出
(丙)檢查出貨單號碼是否連續
(丁)檢查批次總數檔案是否經資料管制人員比對並簽名
(戊)檢查系統自動過帳紀錄
(己)檢查顧客之訂單業經信用核准
(庚)檢查是否有證據顯示應收帳款主檔經調節至總分類帳
(辛)檢查銷貨傳票是否有佐證之出貨單、銷貨單及顧客訂單
請依以下格式回答，否則不予計分：
關鍵內部控制（請以編 控制測試程序（請以編號
交易查核目標
號㉑至㉙作答）  (甲)至(辛)作答）
A已記錄之銷貨交易確實
發生而非虛構客戶
B已發生之銷貨交易皆已
入帳
C銷貨交易適當記錄於應
收帳款主檔並正確過帳', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01042', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '以下有關會計師查核報告內容之描述，何者為正確？', '["針對財務報表之聲明，其意見以積極確信之文字表達", "針對財務報表之聲明，其意見以消極確信之文字表達", "僅陳述所執行之程序及所發現之事實", "僅陳述所執行之程序，不須陳述所發現之事實"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01043', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員須蒐集足夠與適切之證據，俾作為對所查核之財務報表表示意見之合理依據。下列關於查 核證據之敘述，何者最正確？', '["證據是否足夠與適切，係由受查者判斷", "證據是否適切，主要在於證據之可靠性及相關性", "足夠與適切是兩個不同判斷的層面，不具任何關聯性", "查核人員對於重要事項如不能獲得足夠且適切之證據，則應提出否定意見之查核報告"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01044', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '會計師在查核財務報表時，發現受查公司可能有違反廢棄物清理法之情事，則會計師最可能採取的 查核程序為：', '["以專業上懷疑的態度，嚇阻受查公司，並防範該公司進行違法行為", "用會計師具備的專業知識以判斷受查公司是否確實違反廢棄物清理法", "與公司的管理階層討論，並將討論的內容及過程做成書面紀錄，列入工作底稿內", "向行政院環境保護署、經濟部及司法等有關單位報告，並通知利害關係人，以保障資訊之公開透明"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01045', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '依據我國職業道德規範，會計師為受查客戶執行下列那一項工作，不會違反獨立性？', '["為公開發行股票之受查客戶提供記帳之服務", "同時查核某一公司之財務報表及所得稅結算申報書", "替客戶決定要聘僱誰擔任高階管理人員", "提供內部稽核服務"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01046', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '甲事務所已卸任之共同執業會計師之一受聘於查核客戶時，以下何項因素不影響該事務所之獨立 性？', '["於查核客戶所擔任的職務", "自事務所離職後至受聘於查核客戶之期間長短", "過去於事務所任職時間之長短", "過去於事務所擔任職務之重要性"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01047', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '會計師在規劃查核工作時，最不可能執行下列那一項程序？', '["取得當年度期中財務報表", "瞭解受查者之事業及其環境", "由當年度核准之銷貨單中抽樣，並追查至出貨相關文件", "與會計師事務所內承辦受查者非審計工作的同仁討論可能影響查核工作的事項"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01048', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '會計師若接受委任查核客戶之財務報表卻未具備查核該客戶所應有的行業知識時，應採行何種措 施？', '["分包給具備該行業知識之財務專家協同查核", "設法取得並瞭解該客戶所處行業之知識", "將主要部分之查核工作分包給具有該行業專門知識之其他會計師事務所並由其擔任主查會計師的 角色", "事先告訴客戶可能無法出具無保留意見"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01049', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '執行審計規劃之際，下列何者是了解續任案件受查者事業之最佳方法？', '["執行細項測試", "覆核以前年度所查核之工作底稿及客戶之永久性檔案", "詢問前任會計師", "覆核受查者內部控制環境"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 8, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01050', 'cpa', 'cpa-moex-105-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '一般公認審計準則總綱之外勤準則要求，查核工作應妥為規劃。下列何者敘述係屬於妥善之查核規 劃？', '["針對已盤點之有價證券觀察其實體流動，以避免調包而混入未實際存在之其他有價證券", "使用消極式應收帳款函證而避免使用積極式函證，因後者較為耗時且須做期後收款查核", "選擇一特定日期比較現金及銀行存款金額以避免執行複雜之截止測試", "安排進行全面存貨盤點，以避免後續需推估存貨總數量"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "7b805ed6802f", "answer_pdf_sha1": "5d45e8b94190", "source_family": "moex-gov-tw", "moex": {"exam_code": "105130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "105", "exam_name": "105年會計師不動產估價師專利師民間之公證人考試", "original_question_number": 9, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
