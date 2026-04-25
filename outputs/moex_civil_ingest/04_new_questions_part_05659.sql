-- W1.6 questions batch 5659/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-a6b1e630-moex-00080', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', '圖形（Graph）是一種抽象資料型態（Abstract Data Type），請回答下列
問題：
請定義何謂圖形（Graph）？（4 分）
請簡要說明有向圖形（DirectedGraph）與無向圖形（UndirectedGraph）
的不同？（3分）
在電腦中，城市與城市間的道路若要以圖形來表示會使用有向圖形還
是無向圖形？城市名稱如何在圖形中表示？城市之間的距離如何在
圖形中表示？（3 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "845c8f1c6431", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00081', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-d87dd49a', 'sub-investigation-a6b1e630-03', NULL, 'essay', '有 3 個數 X，Y，Z，分別以不同進位的方式來表示：X以 8進位表示其
值為 24.4，Y以 16 進位表示其值為 14.2，Z以 10進位表示其值為20.8，
請比較這 3個數X，Y，Z的大小關係為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "845c8f1c6431", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00082', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '有一個系統（system），我們稱之 T()；我們以 x(t)代表它的輸入訊號、
以 y(t)代表它的輸出訊號。（每小題 5 分，共 15分）
∙
假設輸入訊號x (t)所對應的輸出為 T(x (t))=y (t)、輸入訊號x (t)所對
1 1 1 2
應的輸出為 T(x (t)) = y (t)。請描述在合乎什麼條件之下，T()便是一
2 2
個線性（linear）系統。
∙
請描述在合乎什麼條件之下，T()便是一個非時變（time-invariant）系
統。（你的答案中應該會用到類似這樣的符號：如果給定一個訊號 s(t)，
∙
那麼 s(t- )就是 s(t)延遲了 時間之後的訊號）。
請描述在合乎什麼條件之下，T()便是一個線性非時變（linear time-
τ τ
invariant）系統。
∙', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "5a70b29a16a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00083', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '有一個線性非時變（linear time-invariant）系統，其脈衝響應（impulse
response）為
et, t 0；
h(t)
0, t 0
．
當輸入訊號為
e2t, t 0；
x(t)
0 , t 0
．
時，此系統產生的輸出訊號為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "5a70b29a16a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00084', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '在本問題中，我們考慮某一種振幅調變（amplitude modulation, 簡稱
AM）。假設訊息訊號（messagesignal）為 m(t)，而且 m(t) M。在傳送
端傳送出去的 AM訊號為s(t)A(Mm(t))cos(t)，其中M，A及
0 0
均為實數。
請問本調變方式是屬於單邊頻帶（single-sideband）還是雙邊頻帶
（double-sideband）的調變方式？（5 分）
與其他的 AM調變方式相比，本 AM調變方式的優缺點為何？（5分）
在接收端收到的訊號可以用封包檢測器（envelopedetector）來做解調
（demodulation）。請畫出封包檢測器的電路圖。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "5a70b29a16a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00085', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '在本問題中，我們探討數位調變（digital modulation）之中的移頻鍵控
（frequency-shiftkeying, 簡稱 FSK）技術。
使用 FSK調變技術的時候，傳送端如何傳送訊號來分別代表 0和 1？
請將你的答案以數學式的方式表示，而且在式中應該會帶有訊息以及
載波的部分。（5分）
針對 FSK訊號做解調（demodulation）的時候，有兩種方式可以選擇，
分別是同調解調（coherentdemodulation）以及非同調解調（non-coherent
demodulation）。請指出這兩種方式，在做法上面主要的不同是在那
裡？及各自的優缺點是什麼？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "5a70b29a16a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00086', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '假設在做數位調變（digitalmodulation）時我們將四個訊符（symbol）分
別對應到訊號空間（signalspace, 亦稱為星座圖（constellationdiagram））
的四個位置，分別是：( A, A)、( A, A)、( A, A)、( A, A)。這
種調變方式，其實便是所謂的 QPSK（quadraturephase-shiftkeying）。
+ + − + − − + −
（每小題 5分，共 15 分）
請在星座圖上面針對四個訊符做格雷編碼（Graycoding），其中每個訊
符都是包含了兩個位元。
QPSK與 BPSK（binaryphase-shiftkeying）比較起來，優點為何？
在假設載波同步（carriersynchronization）可以完美達成的條件之下，
在同樣的訊雜比（signal-to-noiseratio）之下，QPSK的錯誤率比起BPSK
的錯誤率何者較大？或者是兩者相等？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "5a70b29a16a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00087', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '在本題目中，我們考慮以漢明碼（Hammingcode）來做錯誤更正碼（error
correcting code）。如下所示為(7, 4)漢明碼的校對檢測矩陣（parity check
matrix）：
1 0 0 1 1 0 1
H= 0 1 0 1 0 1 1
0 0 1 0 1 1 1
請找出與 對應的生成矩陣（generator matrix）。（ 10 分）
請列出所有的碼字（codewords）。（5 分）
H
本(7,4)漢明碼的最小距離（minimumdistance）為何？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "5a70b29a16a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00088', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '一顆 12V的積納二極體（zenerdiode），係在測試電流（testcurrent）為
30 mA的條件下展示其標稱電壓（nominalvoltage），在該測試電流下的
增量電阻（incremental resistance）設定為 7 。試求該積納二極體模型
之電壓 V ，並求出該二極體在測試電流分別為 10mA、100 mA之積納
z0
二極體電壓。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "41ec71831ab9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00089', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-113-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '如下圖所示的惠斯登電橋電路（Wheatstonebridgecircuit）應用於測量應
變計（straingauge）的電阻值，已知圖中的固定電阻器 R =4k、固定
1
電阻器 R = 8 k、可調電阻器 R 為最大值100 的線性電位計（linear
2 3
taper）。如果發現應變計的電阻值R 為 34.5 ，當電橋平衡時，可調電
x
阻器 R 線性電位計之滑塊占整個滑塊行程多少百分比？（25分）
3
R
s
v G
s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:43+00:00", "source_pdf_sha1": "41ec71831ab9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "414", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
