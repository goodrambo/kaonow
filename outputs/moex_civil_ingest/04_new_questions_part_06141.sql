-- W1.6 questions batch 6141/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('judicial-ae9cc487-moex-00014', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '考量以下網路架構，並假設子網路之間使用的是可提供實體至網路層服
務的路由器 R1與 R2 進行資料交換。
若從主機 E傳送 IP封包給主機F，主機 E是否會要求路由器 R1協助
轉送該封包，請說明其原因。（10 分）
假設主機 E想要傳送 IP封包給主機 B，若 E的ARP表格中沒有B的
MAC位址，則 E是否執行 ARP查詢以尋找 B的 MAC位址，請說明
其原因。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "4a7532b14845", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00015', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '在 計 算 機 網 路 中 ， 錯 誤 偵 測 技 術 一 般 運 用 循 環 冗 餘 檢 查
（cyclicredundancycheck, CRC）編碼技術。
假設有待傳送資料 D：101110、位元產生器 G：1001 以及位元數 r：3，
請說明 CRC編碼的計算過程，並計算此待傳送資料 D的 CRC編碼。
（15分）
請說明 CRC編碼可以檢測出那些資料錯誤。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "4a7532b14845", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00016', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '資安風險管理是一項系統性的管理流程，其核心目標是識別、衡量、評
估資訊安全風險，並制定相應的因應策略。風險管理框架旨在協助組織
將風險管理有效整合至所有業務活動與功能中。請說明資安風險管理框
架包含的主要構成要素，以及資安風險管理的實施流程。（35分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "2d5973cb1781", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00017', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '請說明何謂跨站腳本攻擊（Cross-SiteScripting,XSS）？另請列舉其三種
攻擊類型並說明之。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "2d5973cb1781", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00018', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-2545cb74', 'sub-judicial-ae9cc487-05', NULL, 'essay', '封包側錄監控是偵測異常網路流量的常用技術之一。請說明兩種常見的封
包側錄監控方式，並說明在執行封包側錄監控時，針對監控持續時間、監
聽範圍、隱私保護以及資料量管理等面向，應注意那些重要事項？（35分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "2d5973cb1781", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通安全", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00019', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如下為理想運算放大器電路圖，試求：（每小題 10 分，共 20分）
輸出電壓V ？
o
電流I ？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00020', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如下所示為 MOSFET 電路圖，若 MOSFET 之臨界電壓V 1V、汲-源
t
極電壓V 4.5V，且R 13MΩ、R 7MΩ、R 5kΩ、R 0.5kΩ、
DS 1 2 D S
V 10V。試求：（每小題 10 分，共20分）
DD
電晶體之汲-源極電流I 及轉導值g 分別為何？
DS m
電壓增益A v /v ？（可忽略電容阻抗，亦即C C ）
V o i G， S
41440', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00021', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如下電路圖，試以節點電壓法（NodalAnalysis）計算：
（每小題10 分，共 20 分）
電流I ？
X
電壓V ？
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00022', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如下電路圖，在t 0期間，開關位於 A 位置、且電路已達穩態
（steady state）。在t 0瞬間，開關由 A 位置切換至 B位置；且在t 0
期間，開關維持於 B 位置。試求 RLC 並聯電路之電感電流i(t 0)表示
式？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00023', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-114-fbd33e91', 'sub-judicial-ae9cc487-06', NULL, 'essay', '如下為雙埠網路電路圖，混合參數（hybridparameters）之數值如圖所示，
試求電壓增益V /V ？（20分）
o S', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:58+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "110", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
