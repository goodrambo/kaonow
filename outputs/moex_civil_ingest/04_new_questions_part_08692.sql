-- W1.6 questions batch 8692/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-acfc4025-moex-00035', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '當你在YouTube上觀看影片時，主要使用下列何種網際網路技術？', '["雲端硬碟（CloudStorage）", "串流技術（Streaming）", "加密技術（DataEncryption）", "點對點傳輸（Peer-to-PeerCommunication）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 35, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00036', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '有關「多個電腦系統同時發送請求淹沒目標伺服器」屬於下列何種攻擊手法？', '["間諜軟體（spyware）", "阻斷服務（denialofservice,DoS）", "分散式阻斷服務（distributeddenialofservice,DDoS）", "釣魚軟體（phishing）"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 36, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00037', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '小花想要發送一封重要文件，並確保接收者能夠驗證文件的來源，他應該使用何種技術？', '["對稱式加密（SymmetricEncryption）", "非對稱式加密（AsymmetricEncryption）", "哈希加密（HashEncryption）", "數位簽章（DigitalSignature）"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 37, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00038', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '有關「數據最小化原則」（DataMinimizationPrinciple）的核心理念，下列何者正確？', '["盡可能減少數據儲存成本", "只收集和保留必要的數據，限制處理範圍和保留時間", "將所有數據壓縮至最小文件大小", "集中儲存所有數據以簡化管理"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 38, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00039', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '臺灣聯大教育聯盟現在要開發一套學生系統來記載聯盟中的學生資料，假設資料庫設計師給了一個如附圖 的初稿，我們是否能根據這樣的設計查詢到學生是屬於那個大學的學生？', '["不管學生是那個系所都不行", "不管學生是那個系所都可以", "只有特殊的系（其他大學沒有的系）才可以", "只有特殊的系（所有大學都有的系）才不行"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 39, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00040', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', 'classA { friendclassB; private： staticintdata; public： A(){data++;} }; classB { public： voidf(Avar){', '["data+=1; cnt<<A.data; } }; intA::data=1; 針對以上類別定義，且在main()中執行以下指令，則將產生的輸出為何？ Av1,v2,v3; Bv4; v4.f(v1);", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 40, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00041', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '圖表的解析度意指其最小刻度的顯示值，在不同的顯示範圍，每一刻度
代表的值也不同。圖一為音頻放大器的量測頻率響應，請問此圖在增益
軸與頻率軸所提供的解析度各為何？各以dB與 Hz表示。（20分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "89d4e4e4dc56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00042', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '圖二為 4-bit 數位－類比轉換電路，由左至右分別為輸入 D -D 與時脈
0 3
Ck、上升緣觸發 D-FF（正反器）、電壓源+5 V 之 CMOS 反相器、以及
電阻網路與輸出電壓 v 。輸入 Ck 由 01 時，D D D D =0100，A 、
o 0 1 2 3 0
A 、…、A 各節點電壓為何？須列式計算。（20分）
1 7
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "89d4e4e4dc56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00043', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '圖三有多個電路方塊：輸入電壓 v(t)與電流 i(t)、數位顯示電路、低通濾
波器、低雜訊放大器、負載 Z、電流感測器、數位加法器、數位乘法器、
L
類比－數位轉換A/D、數位－類比轉換 D/A等。負載端電壓與流入負載
電流分別為 v (t)與 i (t)。組合上述必要方塊成為數位顯示的直流功率量
L L
測系統，可數位顯示負載 Z 所消耗的直流功率 P(t)，試繪圖說明之。圖
L
三中各方塊可以重複使用，亦可不用。（20 分）
電流檢
數 低 低 測信號
加法器
位 通 雜
顯 濾 訊
示 波 放
器 大 乘法器
器
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "89d4e4e4dc56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00044', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '利用圖四電橋量測電阻 R 之值，圖中 R =3 kΩ、R =12 kΩ、R 為可變電
3 1 2 4
阻，D為電流檢測計，兩端電壓為V 與V ，驅動電壓V 為理想電壓源，
a b s
內阻為零；電橋平衡時R =3 kΩ。R 最小變化量為0.2 Ω時，本電橋可
4 4
測得R 的最小變化量為何？（10分）檢流計最小變化量為0.1mA時，
3
V=7.5V，本電橋可測得R 的最小變化量為何？（10分）
s 3
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "89d4e4e4dc56", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
