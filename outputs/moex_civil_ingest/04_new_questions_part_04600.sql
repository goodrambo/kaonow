-- W1.6 questions batch 4600/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00276', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '一部 300MVA、20kV的三相發電機，其次暫態電抗為 20%。此發電機
經由 64 公里且二端皆有變壓器的輸電線路供電給數台同步電動機，如
圖 2 所示的單線圖。所有電動機的額定皆為 13.2kV，而且以二台等效電
動機來表示。電動機M 的中性點經由電抗接地，而第二台電動機M 的中
1 2
性點並未接地。電動機M 與M 的額定輸入分別為200MVA與100MVA。
1 2
二台電動機之次暫態電抗X" 20%，三相變壓器 T 的額定為350MVA，
d 1
20kV/230kV，其漏磁電抗為 10%；變壓器 T 由三個單相變壓器所組成，
2
每一個額定為 127 kV/13.2 kV，100 MVA，漏磁電抗為 10%，輸電線路
的串聯電抗為 0.5 Ω/km。假設發電機及電動機的零序電抗為0.05 標么，
發電機及電動機M 的中性點都有0.4 Ω的限流電抗器。輸電線路的零序
1
電抗為 1.5 Ω/km，試繪出此系統的零序網路，以標么表示。選擇發電機
的額定為此系統的基準值。（20分）
圖2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "11d5e9df6fb0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00277', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '當一台發電機經由兩條併聯的輸電線路提供電力至無限匯流排時，開啟
其中一條線路可能會造成發電機失去同步。在穩態情況下，負載可以經
由剩餘的線路供電。如果在兩條併聯線路連接的情形，故障是發生在一
條線路的一端，則可將此線路兩端的斷路器開啟，將故障從系統隔離，
並允許電力經由另一條併聯的線路流動。當一個三相接地故障發生在兩
條併聯的其中一條線路上的某一點時（發生在併聯的匯流排或在線路的
末端除外），則在併聯匯流排與故障點之間會有一些阻抗存在。因此，當
故障仍存在於系統上時，會有一部分電力被傳送。如果在故障發生前，
傳輸的實功率為P sinδ；在故障期間，可以傳輸的實功率為 r P sinδ，
max 1 max
而當故障在 δ=δ 瞬間由於開關動作而被清除後（即，開啟故障的線路），
cr
可以傳輸的實功率為r P sinδ。檢視圖3可發現在此情況下，δ 為臨界清
2 max cr
除角度。利用A 及A 等面積的程序步驟，試求臨界清除角度δ 。（20分）
1 2 cr
圖3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "11d5e9df6fb0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00278', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '考慮一個具有 N台火力發電機組的電力系統，如圖 4 所示。
圖 4
針對整個系統，假設所有機組的總燃料成本函數F（單位：$/hr）為：
N
F  f  f ... f  f
1 2 N i
i1
其中個別機組之燃料成本（$/hr）分別為 f ,f ,…,f 。所有發電機組輸入
1 2 N
至電網的功率（MW）總和為：
N
P P ...P P
g1 g2 gN gi
i1
其中 P ,P ,…,P 是個別機組注入電網的輸出功率（MW）。系統的總
g1 g2 gN
燃料成本 F是所有電廠輸出的函數，電力平衡方程式為：
N
P P P 0
L D gi
i1
其中P 為系統總負載需求，而P 為該系統的輸電損失且為各發電機輸出
D L
功率的二次函數。針對固定的系統負載需求P ，以電力平衡限制為條件。
D
試利用拉格朗日乘數法（The Method of Lagrange Multipliers）求得在
F有極小值（最低總燃料成本）時的系統遞增燃料成本函數（λ $/MWh）。
（10 分）
若圖 4 之電力系統由兩座（N=2）火力發電廠供電，全部以經濟調度
運轉。發電廠 1的遞增燃料成本為$11/MWh，發電廠 2的遞增燃料成
本為$13/MWh。那一座電廠有較高的懲罰因數（PenaltyFactor）及其
值為何？如果每小時增加 1 MW 的總負載供電燃料成本為$14，試求
電廠 2的懲罰因數。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "11d5e9df6fb0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00279', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '下圖電路V = V = 5 V，I = 1 mA，電晶體M 與M 具有相同的長度
DD SS D2 1 2
（L），但其寬度比W /W =5，電晶體參數：k ’(W/L) =1mA/V2，V =0.8V。
2 1 n 1 t
求算 R值。（10 分）
當 M 操作於飽和區時，求算 v 最小電壓。（10分）
2 D2
V
DD
R
I
D2
v
D2
M M
1 2
-V
SS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00280', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '下圖電路 R =0.5k，R =0.5 k，R =1 k。
1 2 L
假設運算放大器為理想，二極體 D 的電壓電流關係式為
1
v/V
i  I e T 1 ，V =25.3mV，且當 1mA流過 D 的跨壓為 0.8V。當
s T 1
v =2V，求算 v 。（10分）
I A
假設運算放大器增益為50，二極體跨壓為固定的 0.8V，當 v =3V，
I
求算 v 。（10分）
O
D
v v 1
I A
v
O
R
2
R
L
R
1
|
37860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00281', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '下圖電路R =125k，R =250k，R =250k，R =4k，R =2k，
sig G1 G2 D S
R =4 k，V =5V，電晶體參數：V =1V，V =50V。
L DD t A
當電晶體 I =0.5mA 及 V （overdrivevoltage）=0.5V，求算增益
D OV
G =v /v （僅直流分析時可忽略通道調變效應）。（8 分）
v O sig
假設 v 為弦波信號且電晶體操作於飽和區，求算 v 可允許的最大峰
sig sig
值與相對應的 v 。（12分）
D
V
DD
RD
R
G1 C
C2
v v
R C D o
sig C1
M1
CS R
L
v R
sig G2
RS', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00282', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '下圖電路 R =10k，R =1k，R =1M，R =2k，運算放大器參
S 1 2 L
數：開路增益A =1000，輸入差動阻抗R =100k，輸出阻抗R =1k。
v id o
求算閉迴路增益 V /V。（10 分）
o i
求算 R 。（10分）
in
R
S
V
i
V
o
R
in
R
2
R
L
R
1
|
37860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00283', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', 'CMOS邏輯包含上拉網路（pull-up network）與下拉網路（pull-down
network），試畫出 CMOS邏輯Y  D ABC之電路。（10 分）
下圖為一反相器電路的標準元件，若要求第小題 CMOS邏輯需與此
標準反相器有相似的傳遞時間，請標示第小題 CMOS邏輯電路中每
顆電晶體的寬長比（W/L）。（10分）
W 3 μm
L 1 μm
In OUT
W 1 μm
L 1 μm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ddb7e1e91707", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00284', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一個方型鐵芯磁路平均長度 60 cm，截面積 150 cm2，鐵芯上繞有一組
200 匝線圈，鐵芯激磁特性區線如圖一所示。（每小題 5分，共 20分）
計算線圈需多少安培電流才能在磁路產生 0.015 韋伯（Wb）磁通。
計算此時鐵芯的相對導磁係數（relativepermeability） 。
r
計算此時線圈電感量 L。
計算此時線圈儲能多少焦耳。
1.25
)
T 1.0
(B
y
ti
s 0.75
n
e
d
x
u
l 0.5
F
0.25
50 100 200300 500 1000 2000
Magnetizing intensityH(AT/m)
MagnetizingintensityH(A∙T/m)
圖一、鐵芯激磁特性區線', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "10a026b3cbd9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00285', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '對於直流串激電動機：（每小題 5分，共 10分）
試繪出直流串激電動機的等效電路。
試以公式說明此電動機為何具有高啟動轉矩特性。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "10a026b3cbd9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
