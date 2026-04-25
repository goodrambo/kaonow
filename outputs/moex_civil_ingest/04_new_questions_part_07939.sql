-- W1.6 questions batch 7939/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-acfc4025-moex-00040', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-d87dd49a', 'sub-promotion-acfc4025-01', NULL, 'essay', '請將 16進位的(86E) 轉換成 8進位。（10 分）
16
假設某台電腦用二補數的方式將 10 進位的-35 儲存在 8 個 bits 的暫
存器裡頭，請寫出該暫存器裡頭，每個 bit的內容。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "6b1d64d6369b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00041', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-d87dd49a', 'sub-promotion-acfc4025-01', NULL, 'essay', '給定二個大於 2 的正整數 x 和 y，請用程式語言 C 或 pseudo code 寫出
gcd 函式（function），能以 x和 y為參數，回傳 x和 y的最大公因數。
限定用 recursive函式的方式寫出 gcd 函式。（10 分）
限定用「for迴圈」的方式寫出gcd 函式。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "6b1d64d6369b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00042', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-d87dd49a', 'sub-promotion-acfc4025-01', NULL, 'essay', '如圖 2所示，我們假設當行動台（mobilestation）X正傳輸資料給 access
point（AP）時，行動台 Y也想傳輸資料給 AP。由於 Y偵測不到 X的訊
號，誤以為沒有其它設備在傳送資料，便傳送資料給 AP，如此將導致
AP 無法正常接收 X 和 Y 所傳送的資料。此一現象稱為 hidden terminal
problem。請問 WiFi 的國際標準 IEEE 802.11 如何避免 hidden terminal
problem的發生？（15分）
圖2：X正傳輸資料給AP（虛線表示無線設備的訊號傳輸與偵測範圍）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "6b1d64d6369b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00043', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-d87dd49a', 'sub-promotion-acfc4025-01', NULL, 'essay', '圖 3 為 AVL tree。畫出在圖 3 裡頭增加 key 值為 90 的 node 之後的
AVLtree。（註：此時 AVLtree裡頭共有 9 個 nodes）（10分）
圖 3 為 AVL tree。畫出在圖 3 裡頭刪除 key 值為 40 的 node 之後的
AVLtree。（註：此時 AVLtree裡頭共有 7 個 nodes）（10分）
圖3：AVLtree', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "6b1d64d6369b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00044', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-d87dd49a', 'sub-promotion-acfc4025-01', NULL, 'essay', '解釋下列有關電腦及網路安全的名詞：（每小題 5分，共 15分）
巨集病毒（macro virus）
特洛伊木馬（Trojan horse）
字典攻擊（dictionaryattack）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "6b1d64d6369b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00045', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-61c13555', 'sub-promotion-acfc4025-02', NULL, 'essay', '如圖一所示為二極體之應用電路。假設二極體 於順向偏壓之電壓降為
。請以二極體之定電壓模型分析此電路之輸出電壓 和輸入電壓

的轉移關係，將轉移特性曲線繪出，並請於適當處標示斜率和轉折點
, 
座標。（20 分）

D V
1 out
V V
in out
R V
2 in
R
1
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00046', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-61c13555', 'sub-promotion-acfc4025-02', NULL, 'essay', '如圖二所示為運算放大器之應用電路。假設運算放大器為理想運算放大器
且皆操作於線性區。請推導並以 、 表示電路之輸出電壓 。（15分）
10k   
15k
V 5k
1
10k
15k
V
out
12k
V 20k
2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00047', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-61c13555', 'sub-promotion-acfc4025-02', NULL, 'essay', '如圖三所示為雙載子接面電晶體（BipolarJunctionTransistor,BJT）之應
用電路。假設電容器 之電容相當大，並忽略電晶體之 Early effect。請
求出電路之小訊號電壓增益 （5 分）、小訊號輸入電阻 （5 分）

和小訊號輸出電阻 。（5 分）
/ 
V
 CC
 R
R out
C
v
R out
B
v R
in 1
R
R 2
in C
1
I
1
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00048', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-61c13555', 'sub-promotion-acfc4025-02', NULL, 'essay', '如圖四所示為左半部電路和右半部電路完全對稱之差動放大器電路。假
設電晶體 之轉移電導分別為 ，並忽略電晶體之通道長度
調變效應。請求出電路之小訊號電壓增益 。（15分）
~ ~

V
DD
I
D I
D
v
out
M M
1 2
v M M v
in1 3 4 in2
I I
SS1 SS2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL),
  ('promotion-acfc4025-moex-00049', 'promotion-acfc4025', 'promotion-acfc4025-moex-110-61c13555', 'sub-promotion-acfc4025-02', NULL, 'essay', '請合理說明圖五所示電路之回授機制的極性為正回授或負回授。（10 分）
V
DD
M M
3 4
v
out
R
1
v M M X
in 1 2
R
2
I
SS
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:05+00:00", "source_pdf_sha1": "318f58151a04", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "179", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
