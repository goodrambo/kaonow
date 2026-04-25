-- W1.6 questions batch 2416/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-0f640084-moex-00136', 'disabled-0f640084', 'disabled-0f640084-moex-111-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '一個電力系統具三匯流排，如圖四所示。在基值容量爲 1000MVA時，各
機組/負載的參數如下表所示：
機組/負載 發電量/用電量 頻率特性
機組 1 400 MW 速率調整率 R =6%
1
機組 2 600 MW 速率調整率 R =4%
2
負載 1 300 MW 頻率增加1%，負載增加 1.5%
負載 2 300 MW 頻率增加1%，負載增加 1.2%
負載 3 400 MW 頻率增加1%，負載增加 0.8%
所有機組並聯運轉在標稱頻率 60 Hz，若負載 3 突然增加 100 MW，且兩
部機組均有能力進行調整，試求：
系統穩態工作頻率。（8 分）
P 新的傳送功率。（6分）
13
P 新的傳送功率。（6分）
23
機組1 機組2
負載1 負載2
P P
13 23
負載3
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00137', 'disabled-0f640084', 'disabled-0f640084-moex-111-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '試繪接線圖，並說明工作原理：
試繪零相比流器（ZCT）之接線圖，並說明其工作原理。（10分）
試繪接地比壓器（GPT）之接線圖，並說明其工作原理。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "9bf895872e7c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "107", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00138', 'disabled-0f640084', 'disabled-0f640084-moex-110-d87dd49a', 'sub-disabled-0f640084-04', NULL, 'essay', '給定一個IEEE754單精確度浮點數b b b …b b …b 為一個32位元表
31 30 29 23 22 0
示，其中 S = b 表示符號位元（sign bit），E = b b …b 表示偏移指數
31 30 29 23
（biased exponent），F=b …b 表示尾數（或稱小數部分，mantissa）。
22 0
給予 2 個 IEEE754 單精確度浮點數表示的數值如下：
A=0100 0010 1101 1110 0000 0000 0000 0000
B=0100 0010 0100 0100 0000 0000 0000 0000
請將 A兩個數值轉換成 2進制數值。（7 分）
請將 B兩個數值轉換成 2進制數值。（7 分）
請計算 A-B 並以 2 進制數值表示。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "0eb3e4d056bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00139', 'disabled-0f640084', 'disabled-0f640084-moex-110-d87dd49a', 'sub-disabled-0f640084-04', NULL, 'essay', '對於 IPv4 位址，假設一個子網路的位址區段定義為 140.113.235.0/25，則：
其子網路遮罩為何？請解釋。（10分）
請列出這個子網路的 IP位址範圍。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "0eb3e4d056bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00140', 'disabled-0f640084', 'disabled-0f640084-moex-110-d87dd49a', 'sub-disabled-0f640084-04', NULL, 'essay', '下圖為一個尺寸（即節點數）為 7 的二元搜尋樹（binary search tree）。
依序插入 16、10、21 三個值，使得每次插入結果仍為二元搜尋樹，並
保持原來在二元搜尋樹裡的數值位置不變。請畫出三次插入結果，尺寸
分別為 8、9、10的二元搜尋樹。（15分）
請將原來的二元搜尋樹（下圖）改變成為另外三個不同結構但包含一樣
的數值之二元搜尋樹，且這三個二元搜尋樹的高度分別為2、3、4。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "0eb3e4d056bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00141', 'disabled-0f640084', 'disabled-0f640084-moex-110-d87dd49a', 'sub-disabled-0f640084-04', NULL, 'essay', '假設甲和乙兩人要以「非對稱性加密法」（或稱公開金鑰密碼系統）互相
傳送"加密"文件。
請問收到密文的一方，可否確認送件者是誰？為什麼？（5分）
若是改用「對稱性加密法」互相傳送"加密"文件，請問收到密文的一方，
可否確認送件者是誰？為什麼？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "0eb3e4d056bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00142', 'disabled-0f640084', 'disabled-0f640084-moex-110-d87dd49a', 'sub-disabled-0f640084-04', NULL, 'essay', '下列為一個 C++程式，請問：
其目的為何？（6 分）
詳述執行流程。（7分）
寫出程式的輸出。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "0eb3e4d056bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00143', 'disabled-0f640084', 'disabled-0f640084-moex-110-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '一部三相、Y 連接、440 V、60 Hz 之感應電動機連接至一個三相平衡電
源，已知該感應電動機的線電流大小為 40A。當一個連接之理想電容器
組與該感應電動機並聯連接後，三相電源之總線電流大小降低為34.1A，
三相電源之總功率因數則升高至0.9 落後（lagging）。試求：感應電動機
的輸入實功率與輸入虛功率、理想電容器組之每相電容值與每相電流值、
合併感應馬達與理想電容器組之連接每相等效阻抗值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00144', 'disabled-0f640084', 'disabled-0f640084-moex-110-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '一部三相、Y連接、額定2GVA、24kV、60Hz、同步電抗 1.0標么之大
型同步發電機，經輸電線傳送 1 GVA、功率因數 0.85 落後的功率到一個
電壓大小為 23 kV的無限匯流排（infinite bus）。假設忽略輸電線的阻抗
及該同步發電機的電樞電阻，並以該同步發電機之端電壓相角為 0做參
考。當同時調整該同步發電機之場電流（fieldcurrent）下降 20%且調整其
蒸氣渦輪機輸入機械功率後，致使該發電機之輸出虛功為零。試求：該調
整工作的前、後，同步發電機的內電勢電壓大小（kV）、功率角（power
angle）以及傳送至無限匯流排的實功（MW）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00145', 'disabled-0f640084', 'disabled-0f640084-moex-110-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '三部三相、60 Hz 的同步馬達分別具有 0.5 標么、0.25 標么、0.15 標么的
次暫態電抗（以2MVA、440V為基準值），同時並聯至電力系統的匯流
排 A，該匯流排 A 再經由三條具有相同 0.05 電抗的輸電線連接至該電
力系統的匯流排B，匯流排 B所具有的短路容量為三相、20MVA（以三
相、440 V為標稱值）。若匯流排 A故障前的電壓為 430 V，忽略兩部馬
達故障前的負載電流，試求匯流排 A 發生三相短路故障的初始對稱均方
根值電流（initialsymmetrical rms current）的標么值與實際值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
