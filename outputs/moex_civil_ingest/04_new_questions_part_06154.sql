-- W1.6 questions batch 6154/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('judicial-ae9cc487-moex-00144', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', 'TCP/IP（v4）網路中，主要的傳輸層協定為 UDP 跟 TCP。這兩個通訊
協定主要的異同在那裡？其在封包的格式上，有什麼不一樣？應用層的
服務，是否只能使用其中的一種協定？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:59+00:00", "source_pdf_sha1": "d487aa913124", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00145', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '網路通訊協定中，ARP協定的功用為何？如何運作？使用 ProxyARP的
作用為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:59+00:00", "source_pdf_sha1": "d487aa913124", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00146', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '一般電腦網路層次設計的通訊架構中，各層次間皆有其特定的協定資料
單元（protocoldataunit）。請以 TCP/IP網路為例，說明在各層資料辨識
上的用法及其特性（或優點）。例如，解釋在各層次上位址的辨識方式及
其傳送或接收的處理，並說明在各層次資料單元的主要內容及其作用。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:59+00:00", "source_pdf_sha1": "d487aa913124", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00147', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '網路通訊協定中，以 SNMP協定作為管理的機制，請描述，此管理機制
的主要組成單元與其功能。請以該機制的系統架構，描述其在處理管理
功能上的運作。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:59+00:00", "source_pdf_sha1": "d487aa913124", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00148', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '資訊安全管理中緊急應變計畫是重要項目，緊急應變計畫中包含「訂定
復原策略」，請說明「復原策略」的目的。復原策略內容包含資料備份與
主機房異地備援，請說明「資料備份」的重要性。主機房異地備援分冷
備援站（cold sites）、暖備援站（warm sites）、熱備援站（hot sites）、全
備援站（mirroredsites），請條列逐一說明，內容需包含這四種備援站的
成本與復原速度的比較。（24分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4b08ce9e3c02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00149', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '洛克希德馬丁公司發表網路攻擊鏈（Cyber Kill Chain）白皮書，透過軍
事行動上常見的攻擊鏈來分析網路安全威脅，被視為解析駭客攻擊方法
重要參考，其把駭客攻擊拆解成如後七個步驟：偵查（Reconnaissance）、
武裝（Weaponization）、遞送（Delivery）、開採（Exploitation）、安裝
（Installation）、發令&控制（Command & Control）和行動（Actions on
Objectives）。請針對駭客此七個攻擊步驟逐一提出受害者可以降低攻擊
風險或威脅的作為或行動。（28分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4b08ce9e3c02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00150', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '2021年OWASP公布新版網站安全十大安全威脅（OWASPTOP102021），
其中前四名分別為：權限控制失效（Broken Access Control）、加密機制
失效（Cryptographic Failures）、注入式攻擊（Injection）、不安全設計
（InsecureDesign）。請說明針對此四項威脅各自的預防措施。（24分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4b08ce9e3c02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00151', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', 'ISO27001 是廣為國內公務機關或私人企業所遵循資訊安全應用與稽核
的國際標準。ISO27001推行以 PDCA循環持續地推動 ISMS活動落實控
制措施。請說明何謂 PDCA 循環並繪製一圖簡述此循環推動 ISMS。
ISO27001 將組織文件分成四個階層，亦即所謂四階文件，請說明四階文
件各階的特質。（24 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4b08ce9e3c02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00152', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如圖所示為理想運算放大器（OPA）電路，若輸入電壓 V =0.2V，試求
i
輸出電壓 V 為何？（15 分）
o
Vi
Vo', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "c0389c43b10e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00153', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-111-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如圖所示電路，若經由小信號分析得知 Z =2 MΩ，試求其電流增益
1
A= i /i 為何？（15 分）
i o i
ii
Z1
io
41340', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "c0389c43b10e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "110", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
