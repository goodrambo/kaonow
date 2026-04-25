-- W1.6 questions batch 5669/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-a6b1e630-moex-00180', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-44c4f898', 'sub-investigation-a6b1e630-02', NULL, 'single_choice', 'Insteadofconcentratingonincentivizingshort-termtransactivebehaviors,today’sfirmsfocusonbuildingauthentic and relationshipswithcustomers.', '["transitional", "topical", "sustainable", "transparent"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "0abddb913603", "answer_pdf_sha1": "5fc37c6ea5d1", "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "0316", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00181', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', '當一系統存在一安全序列（safesequence）時才處於安全狀態；若一個系
統中有四個程序（process）分別為 P0、P1、P2及 P3，與五個可被分配
資源 A、B、C、D及 E，下表包含目前資源分配狀況（已分配資源與可
用資源）與最大資源需求；為保證系統處於安全狀態（safestate），表中
x 之最小值應為多少？（20分）
已分配資源 最大資源需求 可用資源
程序 ABCD E ABCD E ABCD E
P0 1 0 2 1 1 2 1 2 1 1 0 0 x 1 2
P1 2 0 1 1 0 2 2 2 1 0
P2 1 1 0 1 0 2 1 3 1 0
P3 1 1 0 1 0 1 1 2 2 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "c64b21394615", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00182', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', 'IP位址 140.123.0.0 之地址屬於 B類地址，若要切割成 10個子網，且全
部都要連上電腦網路，請問所有子網路掩碼（subnetmask）應設為多少？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "c64b21394615", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00183', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', '最大堆積（Max Heap）是一個完整二元樹（complete binary tree），將以
下數列 12,15,13,26 依序插入最大堆積中，其時間複雜度為何？（20 分）
10
8 3
5 2 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "c64b21394615", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00184', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', '使用氣泡排序法（bubblesort）將陣列 array[7]={7,12,6,4,2,77,1}由左至右
排序成由小至大之陣列 array[7]={1,2,4,6,7,12,77}，請問在排序過程中總
共發生幾次陣列元素之交換？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "c64b21394615", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00185', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', '愛麗絲與鮑伯藉由非對稱式加密 RSA 進行資料加密傳輸，加密選擇之
兩質數分別為 p=3 及 q=11，愛麗絲利用鮑伯提供之公鑰（e=7, n）將訊
息進行加密，鮑伯收到訊息後，使用私鑰（d,n）進行解密，請計算私鑰
可能 d值。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "c64b21394615", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00186', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '數位通訊的每一符元（Symbol）傳送時，基本上均需要載在相對單位時
間長度的脈波形塑函數 PSF（Pulseshaping function）上傳出。
（每小題 10分，共 20 分）
清楚說明 PSF的功能及其設計上的考量。
清楚比較與說明如下四種 PSF 的差異與優缺點：Sinc 函數、矩形
（rectangular）函數、餘弦（Cosine）及高斯（Gaussian）函數。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a78c49cf8015", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00187', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '為了兼顧資料傳輸率及功率放大器所引起的問題，衛星通信中有用到
「振幅與相位偏移鍵控調變」APSK（AmplitudePhaseShiftKeying）技術，
其結合了多相位偏移鍵控 PSK（Phase Shift Keying）調變和振幅偏移鍵
控 ASK（AmplitudeShiftKeying）調變技術。（每小題 10 分，共20分）
清楚說明最佳APSK信號座標點擺放方式、其原則與考量因素。
清楚闡明 APSK與 PSK、ASK 相較之優缺點為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a78c49cf8015", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00188', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '詳細說明如下三種不同線性等化器之設計概念及其各適用何種通道狀
況及其優缺點：匹配濾波器（MatchedFilter）等化器、趨零（Zero-forcing）
等化器及最小均方差（MMSE）等化器。清楚說明何者具有最佳效能。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a78c49cf8015", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00189', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-111-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '車用雷達主要功能之一為偵測前方車輛的距離及速度，方法為雷達傳送
一線性頻率調變波 LFM（Linear Frequency Modulation），其基本形式為
at2
s (t) Acos(2(f t ))，其中 f 為載波頻率，a為常數。此傳送出之
tx c 2 c
信號打到前車後反射回到雷達接收為s (t)，並與當下雷達發射波混波後
rx
得到拍擊（beat）信號，即s (t)s (t)s (t)。
beat tx rx
假設雷達與前車相對速度為零，且傳送信號是經過t 延遲時間才收到，
d
則前車與雷達距離為何？（5分）
詳細推導與說明如何由s (t)進行後處理得到t ，所需的假設條件為
beat d
何？（15分）
P', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a78c49cf8015", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "111", "exam_name": "111年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
