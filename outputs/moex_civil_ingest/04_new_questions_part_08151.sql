-- W1.6 questions batch 8151/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00078', 'pukao-0f640084', 'pukao-0f640084-moex-110-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '圖三為一部 100 hp、380 V、1,800 rpm直流並激電動機的等效電路，其
中電樞等效電阻R 為0.04 ，磁場繞組電阻與調整電阻（R R ）的
A F Adj
總電阻值為76 ，所有機械損失忽略不計。此電動機在輸入電壓 380V、
無載時，忽略電樞電流，轉速為1,800rpm。若此電動機輸入電流為200A，
試計算：
轉速多少 rpm。（15分）
輸出轉矩多少牛頓-米（N-m）。（10 分）
R
A
m R
R Adj
F V
E T
A
L
F
m
圖三、直流並激電動機等效電路', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "9781d9187c5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00079', 'pukao-0f640084', 'pukao-0f640084-moex-110-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '一部三相、20 MVA、12 kV、4 極、60 Hz、Y 接線圓柱式轉子（round
rotor）同步發電機的同步電抗為5 /每相，電樞電阻忽略不計。此發電
機運轉在額定容量、額定電壓、功率因數（power factor）為 0.95 落後
（lagging），所有損失均不計。
繪出單相等效電路，計算電樞感應電壓（inducedarmaturevoltage, E ）
A
與功率角（powerangle, ）。（15 分）
繪出運轉相量圖（phasordiagram），並標示相關數值。（5分）
計算輸入轉矩為多少牛頓-米（N-m）。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "9781d9187c5a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "448", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00001', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-da0126a2', 'sub-pukao-10ced7e2-01', NULL, 'essay', '請從時間序、關注點及管理方法上，比較「人事管理」（personnel
management,PM）、「人力資源管理」（humanresourcemanagement,HRM）
與「策略性人力資源管理」（strategichumanresourcemanagement,SHRM）
三者的差別。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "5b4f57966e43", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00002', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-da0126a2', 'sub-pukao-10ced7e2-01', NULL, 'essay', '目前我國政府人力運用主要以政務、常務和契約人力三類人員所組成，
請問：他們之間的區分、管理法制，與各自扮演的角色為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "5b4f57966e43", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00003', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-da0126a2', 'sub-pukao-10ced7e2-01', NULL, 'essay', '公務人力系統的價值觀，因不同時期而演變，從「功績原則」、「中立能
力」、「公平性」，到「政治回應性」，它代表每一時期對「公務人員組成
應該是什麼樣子？」的不同期待和認知。請說明每一項價值的內容及重
要性？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "5b4f57966e43", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00004', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-da0126a2', 'sub-pukao-10ced7e2-01', NULL, 'essay', '人力資源管理具有「員工配置」、「培訓與發展」、「激勵」及「維護」四
大基本功能。就這些功能而言，政府機關的人力資源管理範圍和關鍵活
動，分別有那些？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "5b4f57966e43", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00005', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-4dccc0e6', 'sub-pukao-10ced7e2-02', NULL, 'single_choice', '下列何者不是公部門管理與私部門管理之差異？', '["公部門管理具有獨占特質，而企業管理強調競爭", "公部門管理較可能會有金魚缸效應（goldfish-bowleffect）", "公部門的決策權力較為集中，而企業的決策程序較為分散與繁複", "企業的組織目標較明確，績效較容易衡量"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "c09432b9175f", "answer_pdf_sha1": "dc420f888dc7", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "行政學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00006', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-4dccc0e6', 'sub-pukao-10ced7e2-02', NULL, 'single_choice', '行政學有關政治與行政關係之敘述，下列何者正確？', '["威爾遜（W.Wilson）認為行政是政府行動的廣泛計畫，而政治是廣泛計畫的詳細執行", "行政學在美國總統羅斯福推行新政時期，脫離政治學成為一門獨立的學科", "行政學真正成為一門獨立學科，主要在於新公共管理的提倡之後", "學者古德諾（F.Goodnow）提倡政治與行政二分"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "c09432b9175f", "answer_pdf_sha1": "dc420f888dc7", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "行政學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00007', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-4dccc0e6', 'sub-pukao-10ced7e2-02', NULL, 'single_choice', '賽蒙（H.Simon）所著《行政行為》一書的觀點，使其獲得諾貝爾經濟學獎。下列何者不是此書的主張？', '["行政執行本身就是一種決策活動", "組織中從基層到高層，每一個人的決策理性程度決定了行政效率", "決策時可以完全理性地做出最佳的決策", "決策活動包括情報、設計以及抉擇，其中花在抉擇活動的時間最少"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "c09432b9175f", "answer_pdf_sha1": "dc420f888dc7", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "行政學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL),
  ('pukao-10ced7e2-moex-00008', 'pukao-10ced7e2', 'pukao-10ced7e2-moex-114-4dccc0e6', 'sub-pukao-10ced7e2-02', NULL, 'single_choice', '下列各公共行政學派內涵之敘述，何者錯誤？', '["新公共行政強調行政學者應價值中立", "新公共管理強調政府應以績效及結果為導向", "新公共管理主張政府應領航而不操槳", "新公共服務主張政府應服務而非領航"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:24+00:00", "source_pdf_sha1": "c09432b9175f", "answer_pdf_sha1": "dc420f888dc7", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "412", "s": "0304", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "行政學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "人事行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
