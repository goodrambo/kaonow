-- W1.6 questions batch 5237/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00008', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '在計算機（或稱電腦）系統或是計算機網路中，資訊傳輸的安全性倍受
重視。為此，許多不同的加密與解密技術（或稱演算法）廣泛的應用於
此等系統中，研究這些技術的專門學問則稱為密碼學（cryptography）。
然而這些技術可以歸納為兩大類：對稱式密碼學（symmetric
cryptography）與非對稱式密碼學（asymmetriccryptography）。請說明這
兩者的區別。又公鑰（publickey）與私鑰（privatekey）與上述兩種密碼
學有何關連？請說明之。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00009', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '欲將桌上型計算機（或稱電腦）連接到網際網路時，必須設定下列四個
TCP/IP 通訊協定的項目：IP（internet protocol）位址、子網路遮罩
（subnetworkmask）、預設閘道（defaultgateway）IP 位址、DNS（Domain
Name System或是 Domain Name Server）IP位址。請說明上述各項目的
功能。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00010', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '在計算機系統中，搜尋（search）資料為一個常用的演算法。今有一個 N
個元素的陣列。請先由計算機科學的觀點定義什麼是演算法，再說明循
序搜尋（sequentialsearch）與二元搜尋（binarysearch）的適用時機，並
使用運算的次數為時間單位，比較兩種搜尋方式在搜尋上述 N個元素的
陣列時的最小搜尋時間、平均搜尋時間與最大搜尋時間。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00011', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖一所示之運算放大器電路，若採用一個 10 k的可變電阻調整此電
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
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00012', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖二所示電路，v 為輸入的交流小信號，BJT 操作在作用區（active
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
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00013', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖三所示之回授放大電路，其中 g =g =4mA/V，r =，r =20k，
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
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00014', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖四所示之MOSFET電路，若Q、Q、Q 之參數分別如下：V =V =0.8V，
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
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "766f9c250934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00015', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '在自由空間中，有兩條無窮長且均勻的線電荷，其線電荷密度為。如圖
一(a)所示，兩根半徑為 a 的圓形截面、對稱且平行的導線，其軸心間距
為 d，兩導線上帶有大小相等、方向相反的電荷。假設導線的半徑 a 遠
小於導線軸心的距離 d（即d a）。請計算：（每小題 8 分，共 16分）
此兩條導線的單位長度電容值（capacitanceper unitlength）。
≫
根據上述結果，請求出圖一(b)所示結構的單位長度電容值。該結構為
一根半徑為 a的細導線，平行放置於一塊接地的導體平板。介質為空
氣，導線軸心與導體平板的垂直距離為 h（且 h a）。
≫
圖一(a) 圖一(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "fbf8b2f0e55a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00016', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '在三維直角座標軸 x, y, z中，一根導電率為 σ 的金屬棒，其被彎成一個
平坦的 90°圓形，其內半徑為 a、外半徑為 b，厚度為 t，如圖二所示。
請計算此金屬棒在內半徑為a與外半徑為b處的兩個垂直表面之間的電
阻值。（16 分）
z
t
a y
b
x
圖二
27670', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "fbf8b2f0e55a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00017', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '一個電流迴路呈現為三角形，其型狀為邊長 a的正方形的一半，如圖三
所示。該迴路中有穩定的電流 I 流動，周圍介質為空氣。請計算在正方
形第四個頂點處（點 P）的磁通密度向量 ，包含大小與方向（流出紙面
或進入紙面）。（20 分）
⃗
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "fbf8b2f0e55a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
