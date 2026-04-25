-- W1.6 questions batch 5687/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-b89e2ba5-moex-00092', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '假設有如下外籍移工聘任契約的表格資料，請以符合BCNF（Boyce-Codd
NormalForm）的RDB（RelationalDatabase）資料表來表示。經BCNF正
規化後的資料表，需同時註明 primary/foreign keys，並將正規化後的資料
表分別以xml檔案格式來描述。（30 分）
註：答案需包括BCNF正規化後的資料表（含內容、主鍵、外來鍵）、
及正規化後資料表對應的xml檔案格式內容。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "d9cef9494acb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00093', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '請以 Log-BasedRecovery資料復原模式為例，就如下的交易紀錄進行程
序，以表格說明 Deferred Update 及 Immediate Update（包括 undo/redo
及 undo/no-redo 兩種更新模式），在 t5ort9 時間點，發生非毀滅性系統
故障（兩個時間的系統故障屬獨立事件），T1~T6 交易紀錄應採取那種動
作，來進行資料的復原？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "d9cef9494acb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00094', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請條列並說明「數位證據保全標準作業程序」中，進行「電腦設備或儲
存媒體蒐集」之作法。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "bb18d65130e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00095', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請條列說明三項 IDPS（Intrusion Detection and Prevention System）偵測
技術，並就精準度、已知攻擊、未知攻擊、計算能力與策略調整方式等
五個面向做比較。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "bb18d65130e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00096', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請條列說明零信任（ZeroTrust）的核心機制與六項組織應考量的零信任
原則。（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "bb18d65130e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00097', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '以下是張三和李四以 Diffie-Hellman key exchange 之技術為基礎欲產生
共同密鑰，但未做取模運算（Modulus），所以也沒有選定 Diffie-Hellman
keyexchange模數運算的質數，他們所選用的公開基礎參數（底數）g 為
3。請從他們交換的參數破解出張三的秘密參數 X 、李四的秘密參數 X
A B
以及他們產生的共同密鑰 Key。（需有推演計算的過程才給分）（20 分）
張三：選定秘密參數 X ，後計算出公開參數 Y =27 傳給李四。
A A
李四：選定秘密參數 X ，後計算出公開參數 Y =243 傳給張三。
B B
張三、李四：各自計算出二人的共同密鑰 Key。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "bb18d65130e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00098', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-c178e015', 'sub-investigation-b89e2ba5-05', NULL, 'essay', '假設鮑率（baud）一樣的情況下，使用 16-QAM（正交振幅調變，
Quadrature Amplitude Modulation）的調變技術的資料速率會是 QPSK
（四相位偏移調變，QuadraturePhaseShiftKeying）的幾倍？請說明你
的理由，否則不予計分。（10分）
理論上，對於調變技術，若提升每個符號（symbol）負載的資訊量，
可以提升資料速率，例如256-QAM、1024-QAM…，為什麼在實務上
無法無限的增大這個符號負載的資訊量呢？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "4838d7a58e19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00099', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-c178e015', 'sub-investigation-b89e2ba5-05', NULL, 'essay', '一個路由器的路由表，其有下列的無類別區間路由（CIDR： Classless
Inter-Domain Routing）條目（entry）：
位址（address）/遮罩（mask）下一跳（nexthop）或
介面（Interface）
162.53.40.0/23 Router1
136.45.56.0/22 Interface0
136.45.60.0/22 Interface1
default Router2
則如果此路由器收到的封包其目的地位址是
（i）136.45.57.14
（ii）136.45.52.2
（iii）162.53.56.7
那麼此路由器會分別如何轉發此封包？（需要詳細說明你的計算過
程）（15分）
有一個路由器，剛收到下列的新 IP 位址區塊：57.6.96.0/21，
57.6.104.0/21，57.6.112.0/21，及 57.6.120.0/21。如果它們對外出去的
網路線是同一條線路，那麼它們路由器的路由表條目可以聚合
（aggregated）嗎？如果可以聚合，那聚合後的位址為何？（需要詳細
說明你的計算過程）（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "4838d7a58e19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00100', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-c178e015', 'sub-investigation-b89e2ba5-05', NULL, 'essay', '請詳細說明網路上的流量控制（flowcontrol）與壅塞控制（congestion
control）有何差異。（10分）
有一個 TCP 的連線，其目前的壅塞視窗 cwnd 值是 3000，接收視窗
rwnd 值是 5000。若此傳送的主機已經傳送出 2000 bytes 而尚未得到
確認回應（ACK），請問此傳送主機還可以再傳送多少的 bytes出去？
請詳細說明你的計算過程。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "4838d7a58e19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00101', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-112-c178e015', 'sub-investigation-b89e2ba5-05', NULL, 'essay', '根據 TCP 協定，錯誤控制（error control）會在那兩層協定（protocol
layer）處理？請說明這兩層在處理錯誤控制主要的不同點。（10分）
錯誤控制的機制之一，是採取自動重送機制，例如，STOP-AND-WAIT
協定，是屬於這一類的機制。請說明自動重送機制的基本方法為何？
（請分別針對傳送方、接收方的機制說明）（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "4838d7a58e19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112130", "c": "414", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "112", "exam_name": "112年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
