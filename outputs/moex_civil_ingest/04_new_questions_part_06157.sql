-- W1.6 questions batch 6157/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('judicial-ae9cc487-moex-00174', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '下圖為一個實體區域網路，連接了三個機構、兩台伺服器、一個路由
器（router）以及四個交換器（僅運作在連結層），試說明此網路架構
可能的缺點。（15 分）
試說明如何透過虛擬區域網路（VLAN）以改善上述的缺點。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4a8a4591d382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00175', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '因應政府開放資料（OpenData）的使用及符合相關的個人資料保護規範，
請詳述政府機關遂行個人資料去識別化（De-identification）過程應有的
具體作為。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "ea4783eafdba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00176', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '電子支付（Electronic Payment）是指電子交易的當事人，包括消費者、
廠商及金融機構，透過資通訊網路系統或平台進行貨幣支付或資金流
轉。請詳述金融機構遂行電子支付業務時必須考量的可能資安風險及因
應對策。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "ea4783eafdba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00177', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '請詳述裝設 Wi-Fi 無線網路路由器的應注意事項，以降低無線上網的資
安風險。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "ea4783eafdba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00178', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '電力分析（PowerAnalysis）是嘗試破解儲存於硬體密碼模組內的安全參
數（SecurityParameters）或密鑰（SecretKey）的常見攻擊手法之一。請
詳述電力分析攻擊的原理及防禦方式。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "ea4783eafdba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00179', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '圖一所示為一個轉導電路放大器（Trans Conductance Amplifier）模型，
請推導出以下四種不同類型的放大率。
I
G  o （10 分）
ms V
s
V
A  o （5 分）
VS V
s
I
A  o （5 分）
IS I
s
V
R  o （5 分）
ms I
s
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00180', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '圖二所示為一共射級放大電路，電路已經有適當的偏壓了。電路的參數
為V 25 mV、V 、I 5 mA、R 2 kΩ、R 200
T A C S L
V
當時，求g 、A  o 。（10 分）
m V V
s
V
當100時，求g 、r 、A  o 。（15分）
m  V V
s
41340
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00181', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '圖三所示為一放大器電路，其中之運算放大器為理想的。請回答下列各
小題：
推導此一電路極點 。（5分）
p
當 ，推導此電路的放大率。（5分）
p
當 ，推導此電路的放大率。（5分）
p
V (s) 1s/
推導此一電路正規化的轉換函數H(s) O  K z 。（10分）
V (s) 1s/
I p
圖三
41340', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00182', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '圖四為一個二極體電路，假設V 0.7 V，A、B、C為邏輯輸入，Logic1=
D
5V，Logic0 =0V，邏輯判斷截止電壓為V 2.5 V，回答以下問題。
TH
若 A、B、C分別為 1、0、1，輸出 Y為邏輯 0或 1？（5分）
請畫出 Y的真值表，ABC由 000 到 111。（5分）
請畫出 Y的卡諾圖（KarnaughMap），X軸為 A，Y軸為 BC。（5 分）
以布林函數表示 Y，其中 ABC為變數。（5分）
若 A、B、C為類比信號，其電壓分別為2.5V、3.5V、4.5V，輸出電
壓 Y=？（5分）
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-cbdcc9ff-moex-00001', 'judicial-cbdcc9ff', 'judicial-cbdcc9ff-moex-114-de0a21a2', 'sub-judicial-cbdcc9ff-01', NULL, 'essay', '甲長期將鞋子、燒金紙用的金桶等雜物，靠牆放置在其居住公寓的樓梯
間，造成鄰居很大的困擾。某日，鄰居乙邊下樓邊用手機回覆訊息，不
慎踩到甲靠牆擺放在樓梯間的鞋子而摔倒，造成身上多處挫傷。乙為了
避免再次發生意外，便在未告知甲的情況下，將甲放在樓梯間的鞋子、
金桶等物品全部丟棄。請問甲、乙之刑事責任如何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:55+00:00", "source_pdf_sha1": "cd02707c0d90", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "111", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-營繕工程組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
