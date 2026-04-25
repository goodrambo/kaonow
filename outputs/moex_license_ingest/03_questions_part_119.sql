-- moex_license_ingest questions batch 119/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-01181', 'cpa', 'cpa-moex-104-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '依商業會計法之規定，會讓商業負責人、主辦及經辦會計人員（或代客記帳業者）被處五年以下有期徒', '["以明知為不實之事項 而填製會計憑證", "故意毀損應保存之會計憑證與帳簿、報表", "偽造或變造會計憑證、會計帳簿報表 內容或毀損其頁數", "故意遺漏會計事項不為記錄，使財務報表不實  ⑤利用不正當方法，使財務報表 發生不實之結果"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "db41a31dadd5", "answer_pdf_sha1": "804900634b63", "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01182', 'cpa', 'cpa-moex-104-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '誰有義務備置決算報表於本機構？', '["商業負責人", "代表商業之負責人", "主辦會計", "經理人"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "db41a31dadd5", "answer_pdf_sha1": "804900634b63", "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01183', 'cpa', 'cpa-moex-104-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '關於公司組織主辦會計人員之任免，下列敘述何者正確？', '["在股份有限公司，須由董事會特別決議行之", "在有限公司，須有全體股東過半數同意", "在無限公司，須有全體股東同意", "在兩合公司，須有全體股東過半數同意"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "db41a31dadd5", "answer_pdf_sha1": "804900634b63", "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01184', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'essay', '甲公司銷貨之交易方式，有目的地交貨及起運點交貨二種；運送方式，有陸運
及海運二種，海運另包括陸地運輸；交貨地點僅有臺灣、美國及英國三地。交
貨地點為臺灣者，均於出貨當日送達；交貨地點為美國者，均於出貨後45日送達；
交貨地點為英國者，均於出貨後50日送達。其資訊系統認列銷貨收入之時點，
係出貨單所載之出貨日期。查核人員擬採用電腦輔助查核技術測試該公司收入
之認列時點，評估有無重大不實表達。查核人員要求受查者依下列格式提供訂
單及出貨單之資料：
㉑訂單檔案部分：
訂單編號  商品品項  商品數量  商品名稱  交易方式  交貨地點
㉒出貨單檔案部分：
出貨單編號  出貨日期  訂單編號 商品品項 商品數量 出貨金額  運送方式  交貨地點
試問：
查核人員為評估受查者收入認列之時點有無重大不實，至少應取得資產負債
表日前多久之資料，請說明理由。（3分）
查核人員進行比較時，應以那個欄位當作關鍵索引？（1分）
查核人員欲採用下列表格，評估收入之認列有重大不實表達之可能性。試完
成下表。（6分）
交貨地點  交易方式  收入認列時點不實之可能性  調整方式（註）
註：㉑請說明應如何調整。
㉒僅認列時點不實之可能性高時，才須說明。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01185', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'essay', '外部函證程序是一種證實查核程序，查核人員是否必須執行？理由為何？（5分）
若查核人員決定要執行外部函證，在決定誰是受函公司的適當人員時，須考
量那些因素，是其能力、意願，或二者兼具？理由為何？（5分）
應收帳款函證主要可對那項財務報表之聲明提供查核證據？如查核人員對應
收帳款進行函證時，未收到回函，應採取什麼替代查核程序？（5分）
針對應付帳款係完整之聲明，那些查核程序較有效？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01186', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'essay', '請就會計師職業道德規範公報之規定回答下列問題：
為何要求會計師須獨立？會計師實質上之獨立及形式上之獨立有何不同？那
一種獨立較難做到？（9分）
請判斷會計師在下列情況下，是否違反職業道德規範公報之規定，並說明其
理由：（6分）
㉑會計師同時提供財務報表查核服務與該客戶退休金評價相關之退休金精算
報告。
㉒某公開發行公司之簽證會計師事務所同時亦為該公司提供記帳服務。該公
司管理階層已確認會計紀錄為其責任，會計師並未參與公司之管理營運決
策，並已執行必要之查核程序，蒐集證據，製成工作底稿。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01187', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'essay', '會計師可能因違反相關法令之規定而擔負行政責任，相關法令至少包括會計師
法。請就公開發行公司財務報表簽證業務，依下列格式填入正確資訊，比較二
者之異同，以及明述何者較嚴格。（5分）
項目  會計師法  證券交易法
事由（不當行為）
處分之方式
停止執業之期間  2月-2年  0月-2年
處分人
處分之速度（快慢）
處分之適用範圍', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01188', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '47.48 39.81 90.71', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": "3fb81a759858", "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 99, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01189', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '85.30 38.60 127.80', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": "3fb81a759858", "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 100, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01190', 'cpa', 'cpa-moex-104-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '54.10 21.07 103.93', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:13+00:00", "source_pdf_sha1": "97461eb67326", "answer_pdf_sha1": "3fb81a759858", "source_family": "moex-gov-tw", "moex": {"exam_code": "104130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "104", "exam_name": "104年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 101, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
