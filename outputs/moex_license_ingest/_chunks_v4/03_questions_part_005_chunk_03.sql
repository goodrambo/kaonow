INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00231', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '商業之決算報表，應如何處理？', '["商業負責人及主辦會計人員簽名或蓋章負責", "商業負責人、經理人、主辦及經辦會計人員簽名或蓋章負責", "代表商業之負責人、經理人及主辦會計人員簽名或蓋章負責", "商業負責人、經理人及主辦會計人員簽名或蓋章負責"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00232', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '依商業會計法及商業會計處理準則之規定，下列敘述何者錯誤？', '["原始憑證係用以證明會計事項之經過，而為造具記帳憑證所根據之憑證", "記帳憑證可由代表商業負責人授權經理人、主辦或經辦會計人員簽名或蓋章", "會計憑證分為原始憑證及記帳憑證", "經濟部對於記帳憑證之名稱及格式並無規定"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00233', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'essay', '甲會計師承接 A公司民國 X1年度財務報表查核案件，A公司主要營
業收入是提供數十款手機遊戲服務，每款遊戲由消費者自行於 A 公
司網站上註冊帳號及密碼，並以信用卡或其他電子支付方式購買遊戲
點數予以儲值，方能進行遊戲。A公司則每月底計算遊戲者消耗遊戲
點數加以攤銷預收款以認列收入，且每款遊戲消耗點數計算邏輯不同
且複雜，全數仰賴應用系統。再者，此交易流程所產生之資訊皆直接
串聯（interface）A 公司之資訊科技應用系統，以自動儲存相關佐證
資料與計算收入產生會計分錄。
查核人員依據審計準則 315號之規定辨認及評估重大不實表達風險，
請回答下列問題：
固有風險因子包括那些？（5分）
查核人員於判斷收入認列正確性之固有風險所處固有風險光譜之
位置時，除考量A公司之性質、規模及複雜性、所影響固有風險因
子外，尚需考量那兩項因素？（4 分）
就本案而言，查核人員亦決定此收入流程存有僅執行證實程序無法
取得足夠及適切查核證據之風險，其判斷之理由為何？（3 分）
依前述準則之規定，查核人員就本案應執行風險評估程序，對 A公
司控制作業組成要素取得瞭解，作此了解時，其應對那些事項進行
辨認及評估，並列出 2項應辨認之控制。（6分）
查核人員對本題所辨認之控制，應再執行那些程序？（2分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00234', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'essay', '觀察存貨盤點為財務報表查核之重要程序，查核人員依據審計準則
501 號應對存貨存在及狀況取得足夠及適切之查核證據：
請列出參與實體存貨盤點的四個主要程序。（8分）
如參與存貨盤點係實務上不可行時，請列出 1項查核人員可能執行
之替代查核程序。（2分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00235', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'essay', '依據我國職業道德規範公報第十號「正直、公正客觀及獨立性」之規定，
會計師的獨立性可能受到自我利益、自我評估、辯護、熟悉度、脅迫等
五項因素所影響。
甲會計師事務所受託查核乙公司之財務報表，並由Ａ會計師擔任查核
主辦會計師。下列各情況相互獨立，請分別判斷是否影響會計師之獨
立性，並簡述理由說明。若有影響，請敘明係受到那些因素之影響，
並請依照指定格式作答：
B 君原係甲會計師事務所之合夥會計師，於半年前辦理退休，與
甲會計師事務所已無任何形式與實質上之法律關係，目前受聘擔任
乙公司之執行董事。
乙公司為一家金融機構，A會計師的女兒因購置房屋而向乙公司申
辦 20 年期之抵押貸款新臺幣 2,000 萬元，目前已獲核貸。
乙公司為一家尚未上市（櫃）之公開發行公司，由甲會計師事務所
另行設立100%持股之丙管理顧問公司為乙公司提供理財服務，並
協助推銷乙公司發行之股票。
A 會計師因乙公司之財務報表存有重大未更正不實表達而擬出具
否定意見之查核報告，但乙公司要求 A 會計師出具無保留意見或
保留意見之查核報告，否則不再委任甲會計師事務所進行財務報表
之查核。
乙公司為一家上市公司，甲會計師事務所除查核乙公司財務報表
外，同時提供乙公司記帳服務。乙公司確認會計紀錄為其責任，甲
會計師事務所與共同執業會計師均未參與乙公司之管理營運決策，
A會計師查核乙公司財務報表時已執行必要之審計程序。
本題作答格式如下：
情況 是否影響獨立性 可能影響獨立性之因素 理由說明
註：考生如未依上開格式作答，本題將不予計分。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00236', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'essay', '依審計準則 250 號「查核財務報表對法律遵循之考量」，查核人員於
執行財務報表查核時，對財務報表之重大金額及揭露具直接影響之法
令及不具直接影響之其他法令，其責任為何？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00237', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列何者屬於公司財務報導舞弊？', '["會計經理誤將代第三方收取之款項認列為收入，對財務報表影響重大", "採購經理向潛在供應商收取顧問費，潛在供應商以交際費入帳", "會計經理為達獲利目標，延長機器設備之耐用年限", "財務經理以向客戶收取之貨款先支付個人帳單，於發薪日時再以薪水補回"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": "12b55ec2eaef", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00238', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員就查核財務報表時所辨認之內部控制缺失與治理單位或管理階層溝通時，下列那一 項作為是錯誤的？', '["查核人員應以書面及時與治理單位溝通內部控制顯著缺失", "管理階層及治理單位先前已知悉查核人員欲溝通之內部控制顯著缺失，惟因成本考量而未 予以改正，查核人員認為未改正之理由合理，查核人員即可不用以書面溝通該內部控制顯 著缺失", "查核人員於以往查核曾與治理單位及管理階層溝通之內部控制顯著缺失，惟該等缺失未經 改正，則查核人員應就仍然存在之顯著缺失持續溝通", "查核人員不得出具敘明其於查核過程中未辨認出內部控制其他缺失之書面溝通"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": "12b55ec2eaef", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00239', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員應經由對受查者及其環境、適用之財務報表架構及內部控制制度之瞭解，以辨認並 評估財務報表重大不實表達風險，若評估某一個別項目聲明之重大不實表達風險係屬顯著風 險時，下列那一項非為合適之因應方式？', '["僅執行證實分析性程序", "完全執行細項測試", "更著重向第三方取得證據", "於期末或接近期末執行證實程序"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": "12b55ec2eaef", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00240', 'cpa', 'cpa-moex-112-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '有關函證之敘述，下列何者正確？', '["只有評估受查者固有風險及控制風險很高時，才能採用消極式函證", "管理階層若拒絕查核人員寄發詢證函時，查核人員應即採用替代性查核程序，以取得攸關 且可靠之查核證據", "查核人員採用積極式函證時，在任何情況下，均須取得受函證者之函覆", "查核人員應查明所有積極式詢證函回函不符之原因，以判斷是否有不實表達"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:02+00:00", "source_pdf_sha1": "062554bc3cf7", "answer_pdf_sha1": "12b55ec2eaef", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
