-- W1.6 questions batch 953/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aviation-f9fdcd58-moex-00072', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-112-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '下圖分別為 4-PSK、8-PSK 以及 8-QAM 的訊號星座點（Signal
constellation）圖，請回答下列問題：（每小題10分，共 30分）
A
d
b A
a A
c
4-PSK 8-PSK 8-QAM
假設在 8-QAM 訊號星座點圖中，訊號間的最短距離（Minimum
Distance）為 A，請以 A表示 c以及 d 的計算式。
接續，假設經由 AWGN通道，利用 4-PSK、8-PSK與 8-QAM 星座
點圖調變後的三種數位訊號達到相同的錯誤機率，請以 A表示 b以及
a 的計算式。
接續，請計算三種不同數位調變系統的平均傳送器功率（Average
transmitterpower），並比較三種不同的調變系統。假設在每一星座點圖
中，每一個訊號點的機率都均等。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "3cb7492e6251", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "402", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00073', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-112-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '請考慮以下四個訊號S1(t)、S2(t)、S3(t)、S4(t)，並回答下列問題：
（每小題10 分，共 20 分）
S1(t) S2(t)
2
1
0 t 0 t
1 4 1 2 3 4
-1 -1
S3(t) S4(t)
2
1 1
0 t 0 t
1 3 1 3 4
-1
-2 -2
請決定該組訊號{S1(t),S2(t),S3(t),S4(t)}的維度（Dimension）n，並利
用一組基底函數（BasisFunctions）(t)，1in，來表示該組訊號，
i
n
也就是Sm(t) s  (t)，m1,2,3,4。
i1 mi i
接續，利用一組基底函數我們可利用向量 s =（s , s , …, s ）來
m m1 m2 mn
表示訊號Sm(t)，m1,2,3,4。請計算該組向量{s、s 、s 、s }間的最短
1 2 3 4
距離（Minimum Distance）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "3cb7492e6251", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "402", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00074', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-112-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '假設 m(t) 為輸入訊號， x (t)m(t)cos(2f t) 為調幅（Amplitude
r c 0
Modulation, AM）調變器的輸出訊號，其中為常數。由下圖所示，將
0
x (t)通過一調幅解調變器可得解調變訊號y (t)：
r D
該解調變器所使用的載波為2cos(2f t)，其中 t為相位誤差，
c 0 0 0
請求該調幅解調變器輸出訊號的均方誤差（Mean-Square Error, MSE）。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "3cb7492e6251", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "402", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00075', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '請說明「民用航空法」第 1條所敘的立法精神，並申論其意義。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "5355e06f0960", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00076', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '一般在空運領域中多將航空站的範圍分為空側與陸側兩部分，請依據民
用航空法中對於航空站的定義，說明前述的劃分標準。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "5355e06f0960", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00077', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '請依據各種航權（trafficright）的意義，說明我國籍航空公司（譬如長榮
航空或中華航空）經營臺北（桃園國際機場）-香港航線，是依據臺灣與
香港簽訂的何種航權？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "5355e06f0960", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00078', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '請依據「民用航空法」的規範，說明航空器失事致人死傷或毀損他人財
物時，失事原因與損害賠償責任之間的關係。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "5355e06f0960", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00079', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '請回答下列問題：
在正整數系統中，5 位數的十進制可以表示的最大數為何？5 位數的
八進制可以表示的最大數為何？（6 分）
十進制數17.1875轉為二進制數是多少？十進制數49.40625轉為二進
制數是多少？（6 分）
十六進制數 99 與十六進制數 99 進行 OR 運算結果是多少？十六進制
數 99 與十六進制數 FF進行 OR 運算結果是多少？（6 分）
因為 I/O 設備的執行速度比 CPU 慢得多，所以 CPU 的執行必須採取
可程式（Programmed）I/O來同步外，還有那兩種同步方法？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "0379b55f291c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00080', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '請回答下列問題：
一台主機使用TCP/IP協定套件（protocolsuite）與另一台主機通信，
在應用層（application layer），其發送或接收的資料單位是訊息
（message），請問在網路層（networklayer）和資料鍵結層（data-link
layer）的發送或接收的資料單位各是什麼？（6分）
有一多程式（multiprogramming）作業系統使用分配方案並劃分100 MB
可用記憶體分為10MB、12MB、18MB、20MB和40MB五個分區。
第一個執行的程式需要 17 MB 並占用第三個分區。第二個程式需
要 8MB 並占用第一個分區。第三個程式需要 11MB 並占用第二個
分區，第四個程式需要 20 MB 並占用第四個分區，最後，第五個程式
需要39MB並占用第五個分區，則使用的總記憶體是多少？總共浪費了
多少記憶體？浪費了多少記憶體百分比？（9分）
死鎖（Deadlock）並不總是發生，死鎖有四個必要條件，其中何謂
「Mutualexclusion」？ 何謂「Resourceholding」？（6 分）
假設您要為某個單位長官設定 Windows 個人電腦網路，與網路有關
的設定參數有--電腦名稱： Chairman, 工作群組： Admin, IP：
192.168.110.26, DNS：168.95.1.1, 請問還要設定 Netmask 和 Gateway
為何？電腦才能正確上網？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "0379b55f291c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00081', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '請回答下列問題：
以下程式執行後，輸出顯示什麼？（6分）
在 C程式設計中，儲存類別指示器（storage-classspecifiers）除了auto
外，還有那三個？（6分）
以下程式執行時，輸入兩個正整數為87 和 6，則輸出顯示什麼？（6分）
以下程式執行後，輸出顯示什麼？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "0379b55f291c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
