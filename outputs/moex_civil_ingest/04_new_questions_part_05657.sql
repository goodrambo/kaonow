-- W1.6 questions batch 5657/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-a6b1e630-moex-00060', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '請計算 16QAM傳輸系統在同調接收器（CoherentReceiver）下的平均位
元錯誤率（BitErrorRate,BER），假設在 AWGN通道下，符號‘1’與‘0’發
送機率相同，採用正交坐標 QAM星座圖。
請推導並寫出同調16QAM系統在AWGN通道下的位元錯誤率（BER）。
（10分）
請將位元錯誤率（BER）以 Q 函數形式與 E N 表示。E N 是每比
b 0 b 0
特（bit）能量與雜訊功率密度比
∕ ∕
1
t2/2
Q(x) e dt
2 x
16QAM廣泛應用於現代無線與有線通訊系統中，請列舉三個 16QAM
的通訊系統應用，並請詳述使用情境與選用原因。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "d7b86edbdc96", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00061', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '請計算下列函數 h(t)的傅立葉轉換？（5 分）
j
h(t)
t
這個形式是那種轉換（Transform）的核函數（kernel）？（5分）
h(t)具有非常特殊的意義，請列舉三種在信號處理和通訊理論中應用
價值？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "d7b86edbdc96", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00062', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', 'RAKE接收機的工作原理是什麼？（5分）
請詳細說明其在無線通訊中的作用與運作方式。（5分）
請畫出一個完整的 RAKE接收機系統方塊圖，請詳述並標註各個模組
的功能。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "d7b86edbdc96", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00063', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '請詳述說明 OFDM系統中 ISI（符號間干擾）與 ICI（子載波間干擾）產
生的原因及其解決方法。請畫出一個完整的 OFDM系統方塊圖（包含發
射器和接收器），請標註並詳述各個模組的功能。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "d7b86edbdc96", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00064', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '因應 5G通訊系統的高速與低延遲需求，3GPP在 Release15 中制定新的
通道編碼方案：控制通道使用 Turbo Code，數據通道使用 LDPCCode：
請詳述錯誤更正碼 LDPC（Lowdensityparitycheck）和 TurboCode之
優劣比較。（LDPC 碼的主要優勢與劣勢分別列兩項）（10分）
請詳述在適用大封包（>1000bits）場景中效能選用那一種碼（LDPC
orTurbo Code）並說明理由。（5分）
請詳述在適用短封包、低延遲、快速解碼場景中效能選用那一種碼
（LDPCorTurbo Code）並說明理由。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "d7b86edbdc96", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00065', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '請詳述HTTP/2和HTTP/3在資料流控制上的主要差異是什麼？（10分）
請詳述 HTTP/3 在那些場景之網路環境下（請列舉三種場景）展現出
顯著的效能優勢。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "d7b86edbdc96", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00066', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '如下為理想運算放大器電路圖，試求：（每小題 10 分，共 20分）
輸出電壓V ？
o
電流I ？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00067', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '如下所示為 MOSFET 電路圖，若 MOSFET 之臨界電壓V 1V、汲-源
t
極電壓V 4.5V，且R 13MΩ、R 7MΩ、R 5kΩ、R 0.5kΩ、
DS 1 2 D S
V 10V。試求：（每小題 10 分，共20分）
DD
電晶體之汲-源極電流I 及轉導值g 分別為何？
DS m
電壓增益A v /v ？（可忽略電容阻抗，亦即C C ）
V o i G， S
41440', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00068', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '如下電路圖，試以節點電壓法（NodalAnalysis）計算：
（每小題10 分，共 20 分）
電流I ？
X
電壓V ？
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00069', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '如下電路圖，在t 0期間，開關位於 A 位置、且電路已達穩態
（steady state）。在t 0瞬間，開關由 A 位置切換至 B位置；且在t 0
期間，開關維持於 B 位置。試求 RLC 並聯電路之電感電流i(t 0)表示
式？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "a6aae03619b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1012", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
