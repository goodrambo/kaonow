-- W1.6 questions batch 4593/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00206', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '假設我們使用多表置換密碼（polyalphabeticciphers）機制來加密資料。
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
請問原來的明文是什麼？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "b82e5ae0a666", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00207', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '如圖 1 所示，一個單相、480 伏電力系統供應三組單相負載，其中負載
1 吸收實功率 12 kW、虛功率 6.67 kVAr，負載 2吸收視在功率 4 kVA、
功率因數0.96 領前，負載 3吸收實功率 15 kW、功率因數1.0。
（每小題 10分，共 20 分）
計算電源提供的複數功率、功率因數與電流大小。
計算三組負載合成的等效串聯電抗Z 值。
eq
P  jQ
S S I
S 負 負 負
480V (rms) 載1 載2 載3
1 2 3
Z
eq
圖 1 一個單相、480 伏電力系統', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "f8001ce4cffc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00208', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '一個 60 Hz電力系統由三個區域電力系統互聯組成，各區域的速度下垂
（speeddroop）控制特性由各區域基準額定得到，各區域基準額定與實際
發電量如下表所示，三個區域負載的頻率敏感系數（D值）不計。
（每小題 10分，共 20 分）
區域 速度下垂控制特性 基準額定 實際發電量
A 0.02 pu 16,000MW 12,800MW
B 0.0125 pu 12,000MW 9,600MW
C 0.01 pu 6,400MW 5,120MW
請以方塊圖、特性曲線與公式等，說明同步發電機以速度下垂控制功
率的原理。
若此電力系統在區域 B有一部滿載 400 MW發電機因故跳機解聯，試
計算此電力系統僅使用速度下垂控制進入穩態時的頻率實際值（Hz），
與各區域的發電量變動實際值（MW）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "f8001ce4cffc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00209', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '圖 2 為一個三相電力系統單線圖，各設備的正、負、零相序電抗標么（pu）
值與基準（Base）值已標示於圖上。假設在匯流排 4 的 b-c 相發生完全
雙線短路接地（2LG）事故，事故前故障相的電壓為 1.0 pu，變壓器的
正、負、零相序電抗值假設相等，且變壓器相位移不予考慮。
（每小題 10分，共 20 分）
繪出圖 2系統的正、負、零序電路。
以圖2相序電路組合，計算此事故流入地面故障電流的標么值與實際值。
Bus1 Bus2 Bus3 Bus4
G1 G2
X X
n n
TransmissionLine
2LG
100MVA, Tr.1,100MVA, X 0.15pu Tr.2,100MVA 100MVA,
1
20kV 20kV/345kV X 0.15pu 345kV/20kV 20kV
2
X 0.2pu X 0.08pu X 0.5pu X 0.08pu X 0.2pu
1 Tr1 0 Tr2 1
X 0.2pu S 100MVA X 0.2pu
2 B 2
X 0.04pu V 345kV X 0.04pu
0 B 0
X 0.05pu X 0.05pu
n n
圖 2 一個三相電力系統單線圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "f8001ce4cffc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00210', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '圖 3 為一個以標么（pu）值表示的輻射型饋電系統。
若要維持負載匯流排電壓V 在1.0 pu，計算負載匯流排電壓相角，
2 2
與電容器組所需的虛功率補償量Q 。（15分）
G2
計算負載匯流的短路容量（short-circuitcapacity）標么值。（5 分）
S jQ
G1 G2
G
V 10o
1 V V
2 2 2
Z  j0.5
S 1 j0.2 S 1
D1 D2
圖 3 一個輻射型饋電系統', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "f8001ce4cffc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00211', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '在電力系統中，常用的過電流保護電驛有以下四種，請繪出此四種過電
流保護電驛的基本接線方塊圖與動作公式，並說明其過電流保護電驛的
典型保護應用：（每小題 5 分，共20 分）
瞬時／延時過電流電驛（ANSI保護代碼50/51）。
差動電驛（ANSI保護代碼87）。
方向性過電流電驛（ANSI保護代碼 67）。
測距電驛（ANSI保護代碼21）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "f8001ce4cffc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00212', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '圖一(a)電晶體 Q 之參數 k ’(W/L)=1 mA/V2，V =1 V，V =，
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
1 1 o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00213', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '圖二放大器中 R +R =3 k，所有晶體 V =5 V；Q 與 Q ：
1 2 A 1 2
C =200 A/V2，W/L=40，V =0.8 V；Q ~Q ：=100>>1，直流分
n ox t 3 5
析時忽略基極電流。求算 Q 之偏壓電流以及放大器輸出電阻 R。（20 分）
2 o
37160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00214', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '圖三 BJT 工作於主動區，=48>>1，r =1.2 k，r =0，r =，
x o
C =1.25 pF，C =0.3 pF；C =2.2 F，C =4 F，R =3 k，R =30 k，
C1 E S B1
R =20 k，R =0.8 k，I 為理想偏壓電流。以短路常數法與開路常數
B2 C E
法分別估算放大器電壓增益響應之高頻 3-dB 頻率 與低頻 3-dB 頻率
H
，必須列出過程計算式。（20分）
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00215', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '圖四電路使用理想運算放大器，R=1 k，C=0.1 F，R =aR =3 k，
2 1
其 3-dB 頻寬為 104 rad/sec，利用所標示之 v 與 v 推導其轉移函數
1 2
H(s)=v (s)/v(s)，s=j，並求算|H(j)|之極大值與 a 之值。（20分）
o i', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
