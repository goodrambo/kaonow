-- W1.6 questions batch 5175/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00009', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '傳統振幅調變（amplitude modulation,AM）訊號可由以下方程式表示：
x (t) A[1am (t)]cos(2f t)，
c c n c
其中A cos(2f t)為載波、m (t)為欲傳送的訊息、參數 a 為調變指數
c c n
（modulationindex）。傳統振幅調變系統的效率E 可定義為：該 AM訊
eff
號的邊帶功率（sideband power）與調變訊號的總功率的比值，也就是
sideband power
E  。考慮以下的 AM訊號：
eff totalpower
x (t) Acos(400t)Bcos(360t)Bcos(440t)，A、B為常數，
c
請求該 AM調變系統的載波、載波功率 P 、欲傳送的信息、調變指數、
0
以及調變效率E 。（10 分）
eff', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00010', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '超外差接收器（Superheterodynereceiver），如下圖所示，是一種射頻（radio
frequency,RF）接收器。
Mixer
RFInput IFOutput
RFAmplifier IFAmplifier
LO
它是利用一可調之振盪器，通常稱為本地振盪器（localoscillator,LO），
將 LO所產生之訊號與接收的 RF高頻訊號經由混合器（Mixer）混合，
產生一固定頻率的中頻（intermedia frequency, IF）訊號。這個固定且較
低的 IF訊號可以被後端的解調器（demodulator）解調出來。將高頻的 RF
訊號轉成較低頻的 IF訊號的優點，在於可解決高頻放大器增益不足的問
題。假設一超外差接收器的固定 IF訊號頻率為 f 455 kHz。若我們想
IF
利用該超外差接收器來接收 f 1120kHz 的高頻 RF 訊號，請設計兩
RF
個可能的本地振盪器（LO）的頻率 f 。（10分）
LO', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00011', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '線路碼（linecode）是利用傳輸通道（如光纖）特性而進行數位訊號傳輸
的編碼方式。以二進位元（binary bit）為例，一般線路碼會使用不歸零
（nonreturn-to-zero, NRZ）編碼或歸零（return-to-zero, RZ）編碼等兩種
方式（或其變形），來表示二進位元資料流（binary stream）。NRZ 編碼
會以高電位（如A或是 1 伏特）來表示”1”；以低電位（如A或是1 伏
特）來表示”0”。RZ 編碼則不同，顧名思義，歸零編碼的二進位元的脈
波，在該位元結束時會回到 0伏特或中間值。除了 NRZ碼以及 RZ碼之
外，常見的線路碼還包括：分相（splitphase,SP）碼、單極歸零（unipolar
RZ,URZ）碼、以及極歸零（polarRZ,PRZ）碼等。不同的線路碼會有不
同的二進位脈波格式，因此也會有不同的功率譜密度（powerspectra）。
下圖是 NRZ、SP、URZ、以及 PRZ 等 4 種不同線路碼的 power spectra
圖形：
請回答以下的問題：（每小題 5分，共 15分）
如果傳輸通道的頻寬為 4 kHz，請決定上述四種不同線路碼的傳輸資
料速率（datarate）。
如果傳輸通道的頻率響應在 f =0 Hz 有一個零點（zero），請問我們該
選用那一種線路碼？為什麼？
假設 NRZ碼的平均傳輸功率 P 為1W，請問上述四種不同線路碼，
NRZ
那一種線路碼的平均傳輸功率最低？為什麼？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00012', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '相位偏移（phase-shift keying, PSK）調變是一種利用相位差異的訊號來
傳送資料的數位調變方式，其中二進制相位偏移（binary phase-shift
keying, BPSK）是 PSK 調變系列中最簡單的一種。BPSK 調變使用兩個
相位差 180o且正交的訊號來表示”0”以及”1”。另一方面，四位元相位偏
移（quadrature phase-shift keying, QPSK）調變，則是利用四個相位差、
各別相差90o的訊號，一次傳送兩個位元： “00”、”01”、”10”、”11”。為
了比較 BPSK 以及 QPSK 調變系統，我們使用以下的訊號星座圖
（constellation diagram）來描述兩個不同的調變系統：
（每小題 5分，共 10 分）
在加成性高斯白雜訊（additivewhiteGaussiannoise,AWGN）通道下，
分別使用 BPSK以及 QPSK進行數位訊號調變，假設兩個調變系統的
資料傳輸率（transmissionrate）相同，在使用相同的傳輸能量條件下，
請比較 BPSK與 QPSK系統的位元錯誤率（biterrorrate,BER），那一
種調變技術表現較好？為什麼？
在加成性高斯白雜訊通道下，分別使用 BPSK以及 QPSK進行數位訊
號調變，假設兩個調變系統的傳輸頻寬（transmissionbandwidth）相同，
在相同的訊雜比（signal-to-noiseratio,SNR）條件下，請比較 BPSK與
QPSK系統的位元錯誤率，那一種調變技術表現較好？為什麼？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "七", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00013', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '霍夫曼訊源編碼（Huffman source coding）是一種無失真資料壓縮的熵
（entropy）編碼演算法。考慮一個包含 12個不同輸出、每一個出現機會
均等（equallylikely）的訊號源，請利用霍夫曼編碼對該訊號源進行編碼，
並求編碼後的平均碼長（averageword-length）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "八", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00014', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '如圖一所示之運算放大器電路，若採用一個 10 k的可變電阻調整此電
路的電壓增益，且0 x1。試求：
請推導出電壓增益 A =v /v 與x的關係式。（10分）
v o s
說明如何在 10 k的可變電阻旁加入一固定電阻 R，使得電路的電壓
增益 A 的範圍在1 至 11 之間，並計算此電阻值 R=？（15 分）
v
10kW
x (1-x)
v
o
v
s
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00015', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '如圖二所示電路，v 為輸入的交流小信號，BJT 操作在作用區（active
s
region），若=199，V =25mV，請計算下列各項參數：集極直流電位
T
V ， g ， r ， R ， v /v，其中 g 與 r 為電晶體小信號參數。
C m  in o s m
（25分）
+1.5V +5V
10mA
10kW
1kW
R
s v
v o
s
100W
R R
in ib
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00016', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '如圖三所示之回授放大電路，其中 g =g =4mA/V，r =，r =20k，
m1 m2 o1 o2
R =20k，R =1k，R =100，請計算下列各項參數：開路增益（open-
D L F
V
loop gain）A=I /v，回授因子（feedback factor）= f ，閉路增益
o i
I
o
（closed-loop gain）A， R ，R 。（25 分）
f o of
V
DD
R
D
Q
2
I
o
Q
1 R
L
V
s V
i
V R
f F
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00017', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '如圖四所示之MOSFET電路，若Q、Q、Q 之參數分別如下：V =V =0.8V，
1 2 3 T1 T2
W W W
V =-2V，( ) ( ) 4，( ) 1。試求：
T3 1 2 3
L L L
說明此數位電路之邏輯函數名稱。（5 分）
當 A=5V，B=0V，V =？（10分）
o
當 A=B=5V，V =？（10分）
o
V =5V
DD
Q
3
V
o
A Q B Q
1 2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00018', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '在自由空間中，有兩條無窮長且均勻的線電荷，其線電荷密度為。如圖
一(a)所示，兩根半徑為 a 的圓形截面、對稱且平行的導線，其軸心間距
為 d，兩導線上帶有大小相等、方向相反的電荷。假設導線的半徑 a 遠
小於導線軸心的距離 d（即d a）。請計算：（每小題 8 分，共 16分）
此兩條導線的單位長度電容值（capacitanceper unitlength）。
≫
根據上述結果，請求出圖一(b)所示結構的單位長度電容值。該結構為
一根半徑為 a的細導線，平行放置於一塊接地的導體平板。介質為空
氣，導線軸心與導體平板的垂直距離為 h（且 h a）。
≫
圖一(a) 圖一(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "fbf8b2f0e55a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
