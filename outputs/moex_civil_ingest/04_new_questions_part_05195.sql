-- W1.6 questions batch 5195/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00209', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '假設我們使用多表置換密碼（polyalphabeticciphers）機制來加密資料。
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
請問原來的明文是什麼？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00210', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '圖一(a)電晶體 Q 之參數 k ’(W/L)=1 mA/V2，V =1 V，V =，
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
1 1 o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00211', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '圖二放大器中 R +R =3 k，所有晶體 V =5 V；Q 與 Q ：
1 2 A 1 2
C =200 A/V2，W/L=40，V =0.8 V；Q ~Q ：=100>>1，直流分
n ox t 3 5
析時忽略基極電流。求算 Q 之偏壓電流以及放大器輸出電阻 R。（20 分）
2 o
37160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00212', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '圖三 BJT 工作於主動區，=48>>1，r =1.2 k，r =0，r =，
x o
C =1.25 pF，C =0.3 pF；C =2.2 F，C =4 F，R =3 k，R =30 k，
C1 E S B1
R =20 k，R =0.8 k，I 為理想偏壓電流。以短路常數法與開路常數
B2 C E
法分別估算放大器電壓增益響應之高頻 3-dB 頻率 與低頻 3-dB 頻率
H
，必須列出過程計算式。（20分）
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00213', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '圖四電路使用理想運算放大器，R=1 k，C=0.1 F，R =aR =3 k，
2 1
其 3-dB 頻寬為 104 rad/sec，利用所標示之 v 與 v 推導其轉移函數
1 2
H(s)=v (s)/v(s)，s=j，並求算|H(j)|之極大值與 a 之值。（20分）
o i', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00214', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '圖五為一數位電路的狀態圖（state diagram），圖中箭頭表示狀態改變的
方向，並以①②③④編號。先依編號順序畫出此電路的輸入 A、B 與輸
出 Q對應的狀態改變時序圖（timingdiagram），再以 NAND邏輯閘設計
此電路，以真值表說明工作原理。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00215', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '考慮一半徑為 R的圓球，其球心置於原點，其外部電荷為零，內部電荷
分布為(r)(r /R)，為一常數。（每小題10分，共 20分）
0 0
計算在r  R處的電場。
計算在r  R處的電場。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00216', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '考慮一條沿 z 軸擺放的細導線，其半徑為零，從z 延伸到z ，
沿著細導線流通電流 I(amp) ，從 z  流向 z  。計算在
(x,y,z)(x ,0,0)處的磁場。（10分）
0
考慮一條細導線，其半徑為零，將該細導線繞成封閉環狀，環的半徑
為 a，並將該環擺放在 xy平面上，其圓心位在原點。沿著環流通電流
I(amp)，若以右手大拇指平行 z軸方向，則電流繞右手其餘四指方向
流通。計算在 z軸上的磁場。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00217', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '在 xy平面下方(z0)為介質一，介電係數及導磁係數為( ,)。在 xy平
ε
1 1
面上方(z 0)為介質二，介電係數及導磁係數為( ,)。一平面波自下
ε
2 2
方入射，其磁場表達式為Hi  yˆH ejk xjk z，在介質一產生一反射波，其
x z
0
磁場表達式為Hr  yˆ RH ejk xjk z，在介質二產生一折射波，其磁場表達
rx rz
0
式為Ht  yˆTH ejk xjk z。
tx tz
0
推導入射波、反射波、折射波的電場表達式。（10 分）
列出入射波、反射波、折射波的波數向量色散條件。（5分）
從在z0的邊界條件推論相位匹配條件，k k k 。（5分）
x rx tx
從在z0的邊界條件推出反射係數R和折射係數T的表達式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00218', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-111-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '將兩片無限大的金屬平板平行於yz平面擺放，使該兩片金屬板的x坐標
分別為x0及xa。當 TE（transverseelectric）波模態在兩片金屬板間
傳播時，令其電場為E  yˆE sin(k x)ejk z。
z
0 x
從邊界條件推論k 的可能解。（5分）
x
推導對應的磁場表達式。（10分）
推導對應的複數（complex）Poynting 向量 z分量的表達式。（10 分）
推導使複數（complex）Poynting向量z分量為實數時的頻率條件。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:02+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
