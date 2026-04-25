-- W1.6 questions batch 5257/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00208', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-bd2490ec', 'sub-heelevel3-acfc4025-06', NULL, 'single_choice', '設 X 和 Y 為連續隨機變數，其聯合機率密度函數（joint probability density function）', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "65c2a9ed37eb", "answer_pdf_sha1": "134b55afd6a1", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2601", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 20, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00209', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-bd2490ec', 'sub-heelevel3-acfc4025-06', NULL, 'single_choice', ',0yx1 f (x,y) ，令WY/X，期望值E(W)？ X,Y 0 ,其他', '["1/2", "1", "3/2", "2"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "65c2a9ed37eb", "answer_pdf_sha1": "134b55afd6a1", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2601", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00210', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '請將十進位的14.625轉換成二進位。（5分）
請將十進位的負整數-179轉成16-bit的二補數（2’scomplement）的二
進位整數。（5 分）
下列整數都是以十六進位方式表示的 16-bit 的二補數整數，請計算
(712A) +(9E00) 的結果，並以十六進位方式表示其結果。（5分）
16 16
下列整數是 8-bit 的二補數整數，那幾個式子計算結果是整數溢位
（overflow）？並請說明之。（5 分）
(i) 11000010 +00111111
(ii) 00000010 +00111111
(iii) 11000010 +11111111
(iV)10000010 +10000000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00211', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '寫一個演算法，輸入資料為有 k個整數值 N ,N ,…N 的陣列 N，以及一
1 2 k
個特別的值 SUM。這個演算法找出陣列 N 裡的一對整數，其加總的和剛
好等於 SUM，並把這一對整數列印出來，如果都沒有這樣的一對整數，
則列印出“抱歉，找不到”。（20分）
例如：陣列 N裡的數值為3、8、13、2、17、18、10。
且如果(i)SUM的值是 20，則你的演算法要印出：(2、18)或(3、17)。
但如果(ii)SUM的值是 29，則你的演算法要印出：抱歉，找不到。
37150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00212', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '假設在時間 0的時候，行程（process）P ，P ，P ，P ，P ，依序進來系
1 2 3 4 5
統。其需要的 CPU處理時間（bursttime）和優先權（priority）的資訊如
下表：
Process Bursttime priority
P 10 3
1
P 1 1
2
P 2 3
3
P 1 4
4
P 5 2
5
分別使用 FCFS、SJF、nonpreemptive priority（數字小代表優先權高）、
RR（quantum為1）的排程演算法，詳細畫出甘特圖（Ganttchart）表示執
行這些行程所需時間。每單位時間執行那個行程必須標示清楚。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00213', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '志銘跟春嬌是很好的朋友，有邀約的話一定會欣然赴約。現在志銘
想要跟春嬌約會，因為沒有網路，所以用傳統寫信的方式，寄給春
嬌跟她約定約會的時間與地點。但因為傳統寄信的方式，可能因為
某些因素，信件沒有送達或延遲很久時間才送達。那麼請問志銘如
果按照他定的時間地點準時赴約，春嬌一定會去嗎？會或不會，都
請解釋原因。（10 分）
那如果春嬌收到信後，回確認信給志銘說會準時赴約，那請問春嬌按
約定時間到達約會地點時，她能確定志銘一定會在那邊嗎？會或不
會，都請解釋原因。（5 分）
繼上述，那如果志銘有收到春嬌的確認信後，再回信說，讚，我一定
會去的。請問那這次，兩個人都會確定對方一定會準時到現場赴約
嗎？請分析各種可能性。（5分）
37150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00214', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '假設我們使用多表置換密碼（polyalphabeticciphers）機制來加密資料。
這個機制需有個密鑰串（key stream）K=(K ,K ,K ,…)，將我們的明文
1 2 3
（Plaintext）P=P P P …的每個字母，依序加上key值，轉換成新的字母，
1 2 3
變成密文（Ciphertext）C=C C C …。也就是：
1 2 3
加密機制為 C =(P +K) mod 26
i i i
解密機制為 P =(C – K) mod 26
i i i
其中，英文字母與數字的轉換如下表，並以 module26 來計算（除以 26
的餘數）。
假設我們使用的密鑰串為：12,00,19,19,00,02,10,08,18,19.
那麼收到的密文是 EUVVEUCNME
請問原來的明文是什麼？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00215', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '圖一(a)電晶體 Q 之參數 k ’(W/L)=1 mA/V2，V =1 V，V =，
n t A
C =C =0；V =+5 V，C =C =1 F，R =90 k，R =60 k，
gs gd DD 1 2 G1 G2
R =1 k，R =35 k。v (t=–)=0；t0，v (t)為–5 V 步級波如圖一
D L s s
(b)。t=0–時，電容 C 與 C 均無電流通過；t=0+時 Q 截止，且 t=t 時
1 2 1
Q導通進入三極區或飽和區。先分析 t=0–時之閘極、汲極電壓與 v ，再
o
求算 t 以及0<tt 之 v (t)，列出必要的過程計算式。（20分）
1 1 o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00216', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '圖二放大器中 R +R =3 k，所有晶體 V =5 V；Q 與 Q ：
1 2 A 1 2
C =200 A/V2，W/L=40，V =0.8 V；Q ~Q ：=100>>1，直流分
n ox t 3 5
析時忽略基極電流。求算 Q 之偏壓電流以及放大器輸出電阻 R。（20 分）
2 o
37160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00217', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '圖三 BJT 工作於主動區，=48>>1，r =1.2 k，r =0，r =，
x o
C =1.25 pF，C =0.3 pF；C =2.2 F，C =4 F，R =3 k，R =30 k，
C1 E S B1
R =20 k，R =0.8 k，I 為理想偏壓電流。以短路常數法與開路常數
B2 C E
法分別估算放大器電壓增益響應之高頻 3-dB 頻率 與低頻 3-dB 頻率
H
，必須列出過程計算式。（20分）
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
