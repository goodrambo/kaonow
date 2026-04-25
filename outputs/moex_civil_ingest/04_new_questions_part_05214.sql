-- W1.6 questions batch 5214/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-988e0de1-moex-00109', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-111-ac2adf20', 'sub-heelevel3-988e0de1-02', NULL, 'single_choice', '依內地稅徵課會計制度之規定，其原始憑證不包括下列何者？', '["預算分配表", "付款憑單", "代收稅款日報表", "稅款退還清單"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "3858b88698af", "answer_pdf_sha1": "8a38ea7bc544", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "324", "s": "1009", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "政府會計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00110', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-111-ac2adf20', 'sub-heelevel3-988e0de1-02', NULL, 'single_choice', '依中央政府普通公務單位會計制度之一致規定，下列關於土地交易之敘述，何者正確？', '["甲機關管有土地1筆，已無須公用，移由財政部國有財產署接管，其分錄為按帳面金額借記財 產交易損失及貸記土地", "乙機關管有土地1筆，帳列金額為最近一次公告地價600萬元，因地方政府需用土地而遭徵收， 徵收價款係按公告現值加4成，因此乙機關應先按公告現值辦理重估增值，再計算土地處分利益", "丙機關管有土地1筆，因土地重劃之故變更為學校用地，經協調後，以帳面金額作價移轉予某 國立大學，丙機關須減少資產負債淨額", "丁機關以土地1筆作價投資一上市之民間企業，並取得該企業10%股權，丁機關直接以土地之 帳面金額認列為取得投資之成本，其取得成本與按投資比例計算被投資企業業主權益金額間之 差額，應認列為投資權益調整"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "3858b88698af", "answer_pdf_sha1": "8a38ea7bc544", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "324", "s": "1009", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "政府會計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00111', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'essay', '請依我國審計準則公報之相關規範，回答下列問題：
使受查者繼續經營之能力可能產生重大疑慮的事件或情況如經辨
認，查核人員應執行額外查核程序（包括考量管理階層之因應計
畫），俾取得足夠及適切之查核證據，以判斷使受查者是否存在重
大不確定性。請問該額外之查核程序為何？（15分）
若擬採用依管理階層專家（Management''s expert）工作所編製之資
訊作為查核證據，應考量專家工作就查核目的而言之重要性，並評
估採用該專家工作以作為攸關聲明之查核證據是否適切。請問評估
時應考量之因素為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00112', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'essay', '請依序回答下列問題：
查核人員應評估其於執行其他審計準則公報所規定之風險評估程
序及相關作業時所取得之資訊，是否顯示存有一項或多項舞弊風險
因子。風險因子通常可依下列三種影響舞弊發生之狀況分類：1.有
誘因或壓力從事舞弊，2.有機會從事舞弊，3.有態度或能力合理化
舞弊行為；而查核攸關之舞弊又可分成財務報導及挪用資產兩種類
型。下列有 15個查核人員通常遭遇之情況（或例子）：
1.資產之紀錄不全。
2.容忍挪用小額公款。
3.利用第三地紙上公司為交易中介者。
4.高度競爭或市場飽和導致毛利下滑。
5.管理階層過度關心股價或獲利趨勢。
6.高階主管士氣普遍低落，不願積極任事。
7.忽視監督或降低挪用資產風險之必要性。
8.聘用經管易被挪用資產之員工時，未作適當審查。
9.對高階主管支出（例如差旅費及其他報支）之監管不足。
10.受查者高階主管、法務人員或治理單位成員之流動率高。
11.產業或整體景氣衰退，導致客戶需求大幅縮減或廠商倒閉者增
加。
12.於不同商業環境及文化之國家或地區，從事重大營運活動或跨
國之重大交易。
13.為維持競爭力須額外借款或增資，包括對重要研究與發展支出
或資本支出之籌資。
14.經管現金或其他易被挪用資產之管理階層或員工，可能因個人
之債務壓力而挪用該等資產。
15.對查核人員作不合理之要求，例如對查核工作之完成或查核報
告之出具，提出不合理之時間限制。
請依下列格式將上述之情況（或例子）作適當的分類，請勿重複分
類，填入其代碼即可。【未依格式作答，不予計分】（15分）
回答格式如下：
財務報導舞弊 挪用資產舞弊
誘因或 機會 態度或 誘因或 機會 態度或
壓力 能力合 壓力 能力合
理化 理化
情況
1，… 7，… 3，4，… 8，… 9，… 10，14，…
（或例子）
銀行函證回函為查核人員驗證銀行存款等科目餘額及相關揭露事
項之重要查核證據，金融主管機關曾發函指稱：「……鑒於近年國
內外與銀行存款金額不實相關之財務報表舞弊案件，多涉及函證疏
失，未確實執行函證程序以及評估回函可靠性，爰參酌國外審計監
理機構發布之實務指引及案例，編製銀行函證查核實務指引，以提
醒查核人員除依我國審計準則公報第六十九號『外部函證』規定，
設計及執行外部函證程序外，應參酌本指引臚列之不可靠回函跡象
及可採行之查核程序，……針對上述可能存在回函不可靠之跡象
時，查核人員應加強採取相關查核程序以取得足夠及適切之查核證
據，並評估是否存在管理階層或員工舞弊行為，可採行的強化措施
如下……」。請問：查核人員如遇有「銀行存款過度集中於地區性
金融機構」可能存在回函不可靠之跡象時，可採行的強化措施為
何？請列舉三項說明之。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00113', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '會計師認為有必要且符合下列條件者，得於查核報告中納入強調事項段：①會計師不因該事', '["該事項未被決定為須於查核報告中溝通之關鍵查核事項", "提醒使 用者注意已於財務報表表達或揭露之事項中，對使用者了解財務報表係屬重要", "對使用者 了解查核工作係屬攸關者", "僅"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00114', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '下列那一種情況，會計師較可能簽發否定意見之查核報告？', '["會計師不具獨立性", "存在多項重大不確定事項", "受查者雖採用繼續經營會計基礎但不適當", "嚴重之查核範圍受限制，加上高度查核風險"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00115', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', 'A公司財務報表係委由甲會計師查核，其子公司B的財務報表由乙會計師查核並出具無保留 意見之查核報告。由於甲會計師擔任集團主辦會計師並負責對集團財務報表表示意見，經評 估B公司對A公司財務報表之表達具有重大影響，且甲會計師決定採用組成個體查核人員乙 會計師之工作，惟欲作責任之區分，則下列敘述何者最佳？', '["不於集團查核報告之「查核意見」段中提及組成個體查核人員之查核", "不於集團查核報告之「查核意見之基礎」段中提及組成個體查核人員之查核", "於「強調事項」段中敘明該組成個體之財務報表未經集團查核團隊查核，而係由組成個體 查核人員查核，暨集團財務報表由組成個體查核人員查核之百分比", "於「其他事項」段中敘明該組成個體之財務報表未經集團查核團隊查核，而係由組成個體 查核人員查核，暨集團財務報表由組成個體查核人員查核之百分比"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00116', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '下列關於會計師提供專業服務時應遵循職業道德規範，其基本遵循原則的敘述，何者正確？', '["正直、公正客觀、專業能力及專業上應有之注意、保密、專業態度", "事務所領導階層對品質管制之責任、職業道德規範、案件之承接與續任、人力資源、案件 之執行、追蹤考核", "正直、公正客觀及獨立性", "對自我利益的了解、進行自我評估、為客戶辯護之審視、與審計客戶熟悉度的評估及了解 有無受審計客戶脅迫"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00117', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '查核人員執行查核工作，應持續評估所獲得之證據，是否存有舞弊之跡象。當查核人員察覺 舞弊的存在時，下列敘述何者錯誤？', '["若導因於該舞弊之不實表達可能非屬重大，可以不必與管理階層討論，但須將察覺舞弊情 況記載於工作底稿中", "查核人員如果察覺高階管理階層可能參與舞弊，應直接告知治理單位", "查核人員不應該對管理階層及治理單位以外之人員，揭露舞弊發生的可能性", "若舞弊的情況存在重大不實表達風險，查核人員應考量管理階層及治理單位對調查潛在舞 弊風險，以及執行因應措施的誠信、能力與合作程度，以評估是否繼續接受查核委任"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00118', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-110-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '我國審計準則有關查核人員對所評估風險之因應，下列敘述何者正確？', '["查核人員判斷某一個別項目聲明之重大不實表達風險係屬顯著風險時，不必執行因應此風 險之證實程序", "當對某一顯著風險之因應方式僅為證實程序時，該等程序至少應包括證實分析性程序", "查核人員所評估之重大不實表達風險不論為何，均應對每一重大交易類別、科目餘額及揭 露事項，設計及執行證實程序", "查核人員如於期中執行證實程序，應對剩餘期間執行控制測試即可，以提供延伸期中查核 結論至期末之合理基礎"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:26+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
