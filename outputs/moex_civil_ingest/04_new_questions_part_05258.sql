-- W1.6 questions batch 5258/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00218', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '圖四電路使用理想運算放大器，R=1 k，C=0.1 F，R =aR =3 k，
2 1
其 3-dB 頻寬為 104 rad/sec，利用所標示之 v 與 v 推導其轉移函數
1 2
H(s)=v (s)/v(s)，s=j，並求算|H(j)|之極大值與 a 之值。（20分）
o i', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00219', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '圖五為一數位電路的狀態圖（state diagram），圖中箭頭表示狀態改變的
方向，並以①②③④編號。先依編號順序畫出此電路的輸入 A、B 與輸
出 Q對應的狀態改變時序圖（timingdiagram），再以 NAND邏輯閘設計
此電路，以真值表說明工作原理。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00220', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '考慮一半徑為 R的圓球，其球心置於原點，其外部電荷為零，內部電荷
分布為(r)(r /R)，為一常數。（每小題10分，共 20分）
0 0
計算在r  R處的電場。
計算在r  R處的電場。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00221', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '考慮一條沿 z 軸擺放的細導線，其半徑為零，從z 延伸到z ，
沿著細導線流通電流 I(amp) ，從 z  流向 z  。計算在
(x,y,z)(x ,0,0)處的磁場。（10分）
0
考慮一條細導線，其半徑為零，將該細導線繞成封閉環狀，環的半徑
為 a，並將該環擺放在 xy平面上，其圓心位在原點。沿著環流通電流
I(amp)，若以右手大拇指平行 z軸方向，則電流繞右手其餘四指方向
流通。計算在 z軸上的磁場。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00222', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '在 xy平面下方(z0)為介質一，介電係數及導磁係數為( ,)。在 xy平
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
從在z0的邊界條件推出反射係數R和折射係數T的表達式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00223', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '將兩片無限大的金屬平板平行於yz平面擺放，使該兩片金屬板的x坐標
分別為x0及xa。當 TE（transverseelectric）波模態在兩片金屬板間
傳播時，令其電場為E  yˆE sin(k x)ejk z。
z
0 x
從邊界條件推論k 的可能解。（5分）
x
推導對應的磁場表達式。（10分）
推導對應的複數（complex）Poynting 向量 z分量的表達式。（10 分）
推導使複數（complex）Poynting向量z分量為實數時的頻率條件。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "9c151bec99e5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2612", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00224', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '某電路圖(a)及其等效電路圖(b)，如下圖所示，試計算：
該電路中圓形及菱形符號各是屬於那一種電源？（5分）
電路圖(a)中 v 、i 、i 及 i 之值？（8分）
1 2 a b
等效電路圖(b)中 R 、R 及 v 、i 之值？（7分）
a b a 1
5 Ω
i i
8Ω 2Ω 2 R 1
a
v
1
v
a
20Ω
2i 2i R
6V a 12Ω 24Ω 6V a b
i i
a b
(a) (b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00225', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '某開關電路如下圖所示，此開關在時間 t=0 前已經關閉很長一段時間，
試計算：（hint：ν(t)=V +(ν(0)V )et/(RC)）
oc oc
該電路中電容器兩端之初始電壓 v(0)、儲存於電容器之初始能量 W(0)
及開關打開後之穩態電壓 V 值？（10分）
oc
該電路在時間t>0 後之時間常數（timeconstant）值？（5 分）
該電路在時間t>0 後電容器之響應函數 ν(t)？（10 分）
該電路中電容器之能量釋放至原初始能量之25%所需要的時間？（5分）
t>0
20kΩ
7.5mA 80kΩ 0.2mF (t) 50kΩ
ν
37140', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00226', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '某具有弦波輸入之電路圖如下圖所示，此開關在時間 t=0 前已經關閉很
長一段時間，試計算該電路中之流經電容器之電流 i 值。（20分）（hint：
x
可將電路之元件轉換至頻域）
10Ω 1H
i
x
0.1F 5H
20cos4tV 2i
x', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00227', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '下列所示(a)、(b)及(c)三個電路為運算放大器（OPA）加上 RC選頻網路
所組合而成之主動濾波器電路，請分別計算三個電路之輸入 V 與輸出 V
i o
之轉移函數及截止頻率，並說明其為何種濾波器電路及其原因？（30 分）
R
C R
V 1
i V
i
A V A V
o o
R
R 1
C V
i
R R A
1 1 V
R o
R R
2 2 C
(a) (b) (c)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
