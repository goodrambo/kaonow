-- W1.6 questions batch 5677/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-a6b1e630-moex-00260', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '假設一線性非時變（LinearTime-Invariant,LTI）系統之頻率響應H(f)的
振幅（Magnitude）與相位（Phase）圖如下所示：
|H(f)|
2
1
f (Hz)
-20 -10 10 20
H(f)
2
15
-15 f (Hz)
2
根據以下不同輸入訊號x(t)，請求出x(t)經過該LTI系統的輸出訊號y(t)。
i i i
x (t)cos(10t)cos(26t)（10 分）
1
x (t)cos(12t)cos(34t)（10 分）
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a033f1a30140", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00261', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '調變（Modulation）是一種將一個或多個載波（Carrier）混入想傳送訊號
的技術。透過調變技術，我們可將訊號的頻譜移到所預想的位置，不僅
有利訊號的傳送，同時可使頻譜資源得到充分的利用。一種常見之雙邊
頻帶（Double-Sideband, DSB）調變之調變器（Modulator）與解調器
（Demodulator）架構圖如下所示：
m(t) x(t) x(t) d(t) y (t)
c r Lowpass D
filter
Acos t 2cos t
c c c
Modulator ω Demodulatoωr
其中 m(t)為傳送訊號、A cost  A cos(2f t)為載波、x (t)為傳送訊號；
c c c c c
另一方面，x (t)為接收訊號、d(t)與 y (t)分別為低通濾波器（Lowpassfilter）
r D
的輸入與輸出訊號。假設輸入訊號 m(t)的頻譜 M(f)如下圖所示：
M(f)
f
W W
其中 W為輸入訊號的頻寬（Bandwidth），且W f 。假設在完全沒有損
c
− 0
失與干擾的環境下，亦即 x (t)=x (t)，
r c
請描繪出 x (t)的頻譜圖。（5 分）
c
請描繪出 d(t)的頻譜圖。（5 分）
請設計一合適之低通濾波器規格，使得 y (t)= m(t)。（10 分）
D', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a033f1a30140", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00262', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '請說明何謂匹配濾波器（MatchedFilter）？（5分）
一基本矩形脈波（UnitRectangularPulse）(t)的定義如下：
1
1, t
(t) 。
2
0, otherwise
考慮以下兩個矩形脈波 g (t)以及g (t)，其中
1 2
tt 2(tt ) tt
g (t) A( 0) 以及g (t) Bcos 0 ( 0) 。
1 T 2 T T
觀察 g (t)以及 g (t)之匹配濾波器的輸出。假設兩個匹配濾波器的輸出
1 2
有相同的訊號雜訊比（Signal-to-NoiseRatio,SNR），若B5 2，請問
A=？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a033f1a30140", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00263', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '一 M 階（M-ary）數位通訊系統每秒可傳送 30000 符元（Symbols）。
假設 M=16，請問該數位通訊系統的位元速率（bps）為何？（5 分）
假設有一多路徑衰退通道（MultipathFadingChannel），在該多路徑通
道中傳送500kbps數據其延遲擴展（DelaySpread）為 5s。請設計一
多載波調變（MultipleCarrierModulation,MCM）系統，假設每個子載
波使用 QPSK 調變。為了避免多路徑通道造成的符元間干擾（Inter-
symbolinterference,ISI）問題，假設該 MCM系統的符元週期（symbol
period）最少必須為延遲擴展的 10 倍。如果我們使用 Radix-2 Inverse
FastFourierTransform（IFFT）來實現該 MCM系統，請問所需的 IFFT
點數最少為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a033f1a30140", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00264', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-0d6c2263', 'sub-investigation-a6b1e630-04', NULL, 'essay', '假設有兩個二元對稱通道（BinarySymmetricChannel,BSC），如下圖所示：
0.9 0.75
x y z
1 1 1
0.1 0.25
0.1 0.25
x y z
2 2 0.75 2
0.9
Channel1 Channel2
請計算 Channel 1 以及 Channel 2 的通道容量（Channel Capacity）為
何？（5分）
將 Channel1 以及 Channel2 串接（Cascade），請計算串接後該通道的
容量為何？（5分）
比較與的結果，請說明兩個二元對稱通道串接後的通道容量是否
等於個別之通道容量的總和？請做合理的解釋。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:44+00:00", "source_pdf_sha1": "a033f1a30140", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00265', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '圖一所示為一個轉導電路放大器（Trans Conductance Amplifier）模型，
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:45+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00266', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '圖二所示為一共射級放大電路，電路已經有適當的偏壓了。電路的參數
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
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:45+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00267', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '圖三所示為一放大器電路，其中之運算放大器為理想的。請回答下列各
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
41340', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:45+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00268', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-110-fbd33e91', 'sub-investigation-a6b1e630-05', NULL, 'essay', '圖四為一個二極體電路，假設V 0.7 V，A、B、C為邏輯輸入，Logic1=
D
5V，Logic0 =0V，邏輯判斷截止電壓為V 2.5 V，回答以下問題。
TH
若 A、B、C分別為 1、0、1，輸出 Y為邏輯 0或 1？（5分）
請畫出 Y的真值表，ABC由 000 到 111。（5分）
請畫出 Y的卡諾圖（KarnaughMap），X軸為 A，Y軸為 BC。（5 分）
以布林函數表示 Y，其中 ABC為變數。（5分）
若 A、B、C為類比信號，其電壓分別為2.5V、3.5V、4.5V，輸出電
壓 Y=？（5分）
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:45+00:00", "source_pdf_sha1": "da38458995a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "413", "s": "1103", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00001', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-114-77052518', 'sub-investigation-b89e2ba5-01', NULL, 'essay', '請就系統開發生命週期（目標需求分析→系統設計→系統建置→測試→
部署→維護），各階段需要處理的內容及相對應產出的文件作說明；並以
台灣高鐵訂票系統（假設只考慮訂票、查詢、取消三種功能）為例，說
明各階段的內容。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:40+00:00", "source_pdf_sha1": "43f46922be83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "415", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
