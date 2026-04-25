-- W1.6 questions batch 6459/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00109', 'locality-0f640084', 'locality-0f640084-moex-112-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '請說明在電力系統穩定度分析時：（每小題 10分，共 20分）
等面積法則如何應用於計算臨界清除角？
說明若可恢復穩定時，如何計算搖擺之最大及最小角度？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "e8b9e3dfc0d2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00110', 'locality-0f640084', 'locality-0f640084-moex-112-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個雙載子接面電晶體（BJT）差動放大器電路如圖一所示，假設電路
在作直流分析時，所有電晶體的基極電流等於 0(I =0)，且所有的
B
V =0.7 V。電晶體 Q 與 Q 完全匹配，電晶體 Q 的射極-基極接面
BE 1 2 3
（E-Bjunction）面積是電晶體 Q 的 2 倍。電路中：熱電壓 V =25 mV、
4 T
V =V =5 V。（每小題 10分，共 20 分）
CC EE
當 v =v =0，如果 Q 與 Q 的直流偏壓電流 I =I =0.15 mA 且
1 2 1 2 C1 C2
V =V =2 V，此時 R 、R 與 R 的值分別為何？
C1 C2 1 2 b
當 v =v /2、v =v /2，若 V =，根據所計算出的 R 與 R 與直
1 id 2 id A 1 2
流偏壓，請計算出差動小信號電壓增益 v /v =(v v )/(v v )。如
od id c2 c1 1 2
果 = = = =120，請計算出差動放大器 Q -Q 的輸入阻抗。
1 2 3 4 1 2
V
CC
R R
1 2
-v +
od
R v Q Q v
b 1 1 2 2
Q Q
4 3
-V
EE
圖一
34560', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00111', 'locality-0f640084', 'locality-0f640084-moex-112-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '圖二為一個使用2 個運算放大器（operational amplifier, op amp）的權重
加法器（weightedsummer）電路。在此電路中，R =100 kΩ、R =100 kΩ、
1 2
R =400 kΩ、R =150 kΩ、R =300 kΩ。（每小題 10 分，共 20分）
a b c
如果這 2個運算放大器均為理想放大器，請計算 v 。
o
如果這 2 個運算放大器的增益 A 均為 500，且輸入阻抗均為無限大，
請計算 v 。
o
R
c
R
1
v -
1 R v
a A o
+
R
2
v R
2 - b
A
+
V’
2
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00112', 'locality-0f640084', 'locality-0f640084-moex-112-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個邏輯真值表如圖三所示，A、B、C為輸入變數，X與 Y為輸出函
數，請將之化簡。（每小題 10分，共 20分）
X邏輯函數為何？請繪出此邏輯函數的 staticCMOS電路圖。
Y邏輯函數為何？請繪出此邏輯函數的pseudoNMOS電路圖。
A B C X Y
0 0 0 0 1
0 0 1 1 0
0 1 0 1 1
0 1 1 1 1
1 0 0 1 0
1 0 1 0 1
1 1 0 0 1
1 1 1 0 0
圖三
34560', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00113', 'locality-0f640084', 'locality-0f640084-moex-112-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個共源極（common-source）的 MOSFET 放大器如圖四所示，已知
此 MOSFET的 g =5 mA/V、r =80 k、C =5 pF、C =0.4 pF、輸出
m o gs gd
端總電容 C =20 pF。電路中的元件：R =100 k、R =3 M、
L sig G1
R =1 M、R =20 k、R =5 k、R =80 k、C =0.1 F、C =1 F、
G2 D S L C1 C2
C =5 F。（每小題 10 分，共20分）
S
請使用短路時間常數法（short-circuittimeconstant），計算出低3 db 頻
率（lower-3db frequency）f 。
L
請使用開路時間常數法（open-circuittimeconstant），計算出上 3 db 頻
率（upper3dbfrequency）f 。
H
V
DD
R R
G1 D
C
C2
V
o
R C
sig C1
M
1
R
L
V
sig R
G2 R C
S S
R
in
圖四
34560', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00114', 'locality-0f640084', 'locality-0f640084-moex-112-61c13555', 'sub-locality-0f640084-03', NULL, 'essay', '有一個串並（series-shunt）回授放大器如圖五所示，在此我們使用一個
差動放大器，此差動放大器的增益=103，輸入電阻 R =200 k，輸出
id
電阻 r =2 k。在此電路中，R =20 k、R =2 k。
o S L
請說明為何此電路為一個負回授電路？（6分）
假設理想的回授放大器增益 A =V /V =20 V/V，其所需的回授因數
f o s
（feedback factor）為何？如果 R =2 k，R 應該為何？（6 分）
1 2
請畫出完整的 A 電路，其中 R 與 R 為中所計算出之結果帶入，使
1 2
用此電路計算 A、R 與 R ，並計算出此回授放大器之實際 A、R 與
i o f in
R 。（8 分）
out
R
S
+
V
O
μ
-
V
S R
2
R R
1 L
R
R out
in
圖五', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "6c75b7c1f203", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00115', 'locality-0f640084', 'locality-0f640084-moex-112-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '一個鐵芯磁路如圖一所示，磁路各段的寬度數值（單位 cm）示於圖中，
此磁路深度（進入紙面）為10cm，磁路上繞有 200 匝線圈，通入電流
I 1A，鐵芯的比導磁係數 2,500。（每小題 10 分，共 20分）
r
計算此磁路的總磁阻。
計算此磁路的磁通量，與磁路的儲能。
15cm 30cm 10cm
15cm
I
N=200 30cm
2
1 15cm
15cm 30cm 10cm
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "3755d34ab609", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00116', 'locality-0f640084', 'locality-0f640084-moex-112-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '圖二為一個單相交流供電系統，其中供電變壓器的電壓比為4,400 V/220 V，
負載的滿載額定容量500kVA、功率因數（pf）為0.8 落後，系統電路參
數值示於下，變壓器的激磁等效電抗與鐵損等效電阻不計。此時負載在
滿載額定容量操作、負載電壓 220 V。（每小題 10分，共 20分）
R 0, jX  j2, jX , R , jX  j1.
eq eq M C S
計算電源V 的電壓大小，與負載側的電壓調整率（V.R.%）？
S
計算負載等效串聯阻抗Z 大小？
eq
I
L
jX + R jX +
S eq eq
V V R jX V S 500kVA
S 1 C M L
L 落後
pf 0.8
- -
4,400V/220V Z
eq
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "3755d34ab609", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00117', 'locality-0f640084', 'locality-0f640084-moex-112-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '一部三相感應電動機，線電壓 460 V、60Hz、6極、Y接線、額定轉差
率3%，等效到定子側的單相等效電路與參數值示於圖三，圖中S為滑差。
感應電動機的機械與鐵芯等損失不計，激磁電抗X 忽略。
M
（每小題10分，共20分）
計算額定運轉時輸出轉矩（N-m），與轉速（rpm）。
計算啟動電流，與啟動轉矩（N-m）。
+ 0.2 j1.5 j1.5
0.2
V jX  j
S M S
-
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "3755d34ab609", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00118', 'locality-0f640084', 'locality-0f640084-moex-112-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '一部 50 馬力（hp）、250 V、1,200rpm，具補償繞組的直流並激電動機
示於圖四。圖中電樞電阻為0.06，磁場繞組總電阻設定在50。直流
並激電動機在此時空載運轉，電樞電流為0A、轉速1,200rpm、電動機
端電壓 250 V。（每小題 10分，共 20 分）
若輸入電流增加為100A，計算此時輸出轉速（rpm）。
同輸入電流增加為100A，計算此時感應轉矩（N-m）。
R
A I I
A T
0.06
n  R
m 50
F
E V 250V
A T
負載  I L
F F
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "3755d34ab609", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
