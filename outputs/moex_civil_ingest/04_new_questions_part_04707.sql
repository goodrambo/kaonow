-- W1.6 questions batch 4707/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00045', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '分散式資料庫為一個分散在電腦網路的許多在邏輯上相關資料庫的集
合，請畫出分散式資料庫系統三層主從伺服器架構（Three-tierClient-server
Architecture），並論述其運作原理，分散資料的管理具有不同層次（Levels）
的透明度（Transparency），請論述三種透明度及相關技術。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "ca1a7801fd3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2910", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00046', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '某一公司有下圖所示的8個優先順序分別為高或低的待執行工作，且將依
順序自A至H每間隔一天的時間放入對應的高優先執行佇列（Queue）或低
優先執行佇列（Queue），例如A（低）表示A工作將於第一天放入低優先
執行佇列，而C（高）表示C工作將於第三天放入高優先執行佇列。此外，
執行每個工作所需完成的時間均於工作名稱下顯示，例如執行A工作需要
2天時間完成，而執行B工作需要1天時間完成。最後，各個工作的執行規
則為，當高優先執行佇列內有工作待完成時，須優先執行該佇列內的工作
（由第一個開始執行），直到高優先執行佇列內沒有任何待完成工作時，
方可執行低優先執行佇列內的工作（由第一個開始執行）。
自A至H每間隔一天的時間放入對應的高優先佇列或低優先佇列
H（低） G（高） F（高） E（低） D（高） C（高） B（低） A（低）
1 2 1 1 2 2 1 2
試計算執行此8個工作需要多少天方可完成。（10分）
試計算此8個工作自放入佇列至開始執行的平均等待時間。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "072ad5162d21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2908", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00047', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '某一物流公司有下圖所示的8個地點要運送，每條方向性連線及其數字代
表兩個地點的運送順序及運送成本。
試使用拓樸排序法，找出此8個地點的運送順序以及總共運送成本。（15分）
若將上圖的地點2與地點4之間以及地點6與地點7之間的連線方向顛
倒，則運用拓樸排序法後，此8個地點的運送順序以及總共運送成本
為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "072ad5162d21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2908", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00048', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '在電腦網路中，透過IP位址以查詢對應的裝置是常見的動作。今某電腦網
路有以下表格所示的IP位址以及對應裝置（假設每個IP位址有8個位元），
當輸入某一IP位址以查詢對應的裝置時，最壞情況為此表格中的每個IP位
址的每個位元皆需要搜尋一次，以確認此輸入的IP位址是否有對應的裝
置。由於這樣的IP位址儲存方式，將造成查詢時的高複雜度（例如，若表
內有m個IP時，查詢的複雜度為m*8），因此運用適當的資料結構以減低查
詢複雜度，已成為電腦網路的重要課題。
IP位元0 IP位元1 IP位元2 IP位元3 IP位元4 IP位元5 IP位元6 IP位元7 裝置
0 0 1 1 1 1 0 0 A
0 0 1 1 0 0 1 1 B
1 1 0 0 0 0 1 1 C
1 1 0 0 1 1 0 0 D
1 1 0 1 1 1 0 0 E
… … … … … … … … …
試建立並驗證一個樹狀資料結構，不僅可以儲存以上表格方式的IP位址以
及對應裝置資訊，並可使得查詢IP位址所對應的裝置的最壞情況複雜度維
持在常數8（也就是IP位址位元數）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "072ad5162d21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2908", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00049', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '某一系統有下表所示的使用者帳號與密碼資料，今為了保密需要欲將使
用者密碼透過雜湊函數加以加密，並將雜湊後的密碼連同使用者帳號儲
存於一個2-3樹（2-3 tree）（依使用者帳號英文字母順序儲存），而雜湊函
數h(x)=密碼之英文及數字加總，其中英文a-z相當於1-26。
使用者帳號 使用者密碼
AA 234abc
BB 123bcd
CD aa012
AC 555be
BD 45fdd
CA 712ccc
試計算出雜湊後的密碼資料。（10分）
試建立此2-3樹，以儲存系統的使用者帳號與（雜湊後）密碼資料。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "072ad5162d21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2908", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00050', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '關於資訊倫理相關議題，請回答下列問題：
請定義責任（responsibility）、問責／責任歸屬（accountability）、法律責
任（liability）及正當程序（dueprocess）。（15分）
假設你是一個政府單位的資訊系統主管，該單位的系統最近遭遇了一
次駭客攻擊，導致大量敏感資料外洩。請闡述政府單位在駭客攻擊事件
中的責任歸屬和法律責任。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "25fadf2ac243", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00051', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '關於資訊正確性及政府資訊政策相關議題，請回答下列問題：
請定義假新聞（fake news）、錯誤訊息（misinformation）、假消息
（disinformation）。（15分）
請說明假新聞、錯誤訊息及散布假消息對於民主制度和公眾信任的影
響，並提出政府應該如何與媒體、社交媒體平台和公民社會組織合作，
共同應對這一挑戰。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "25fadf2ac243", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00052', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '請說明商業智慧流程的三個主要活動。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "25fadf2ac243", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00053', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '關於ChatGPT作為破壞式科技（disruptivetechnology）的可能性和爭議之
相關議題，ChatGPT是否具有破壞性潛力？請闡述至少兩個支持觀點和兩
個反對觀點，並提供理由或相關案例來支持所述觀點。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "25fadf2ac243", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00054', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '網路揪團、個性化訂製、反向拍賣（reverseauction）三種不同類型的由消
費者主導的交易模式－C2B電子商務，其使用者的目的與需求各為何？平
台如何提供滿足需求的服務？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "25fadf2ac243", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
