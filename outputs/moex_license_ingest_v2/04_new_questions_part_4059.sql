-- W1.4 new questions batch 4059/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00344', 'structural-eng', 'structural-eng-moex-100-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '請簡要說明鋼筋混凝土柱斷面之 P -M 關係曲線圖之求算步驟，其中 P 及 M 分別
u u u u
為柱斷面之設計軸力強度及設計彎矩強度。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0db3233a5d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00345', 'structural-eng', 'structural-eng-moex-100-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '請針對圖 1所示之 T型鋼筋混凝土梁斷面，回答下列問題：
若此 T 型梁斷面之 f ''＝350 kgf/cm2，f ＝4200 kgf/cm2，A ＝0.9A ，試求此梁斷
c y s sb
面之設計彎矩強度，其中 A 為此梁斷面之平衡鋼筋量。（15分）
sb
試求此梁斷面之斷面韌性容量 μ ，μ ＝φ /φ ，其中 φ 及 φ 分別為此梁斷面之極
φ φ u y u y
限曲率及降伏曲率。（10分）
圖 1：T型鋼筋混凝土梁斷面', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0db3233a5d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00346', 'structural-eng', 'structural-eng-moex-100-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '請針對圖 2所示之矩形鋼筋混凝土柱斷面，回答下列問題：
若此矩形柱斷面之 f ''＝350  kgf/cm2，f ＝4200  kgf/cm2，A ＝6-#10，P ＝0.9P ，
c y st u b
試求此柱斷面之設計彎矩強度，其中 P 為此柱斷面平衡偏心破壞時之標稱軸壓
b
強度，#10鋼筋之 A ＝8.143 cm2。（15分）
s
試求此柱斷面之斷面韌性容量 μ ，μ ＝φ /φ ，其中 φ 及 φ 分別為此柱斷面之極
φ φ u y u y
限曲率及降伏曲率（假設載重係數γ＝1.3）。（10分）
圖 2：矩形鋼筋混凝土柱斷面
（請接背面）
100年專門職業及技術人員高等考試建築師、技師、第2次
食品技師考試暨普通考試不動產經紀人、記帳士考試試題
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0db3233a5d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00347', 'structural-eng', 'structural-eng-moex-100-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一矩形鋼筋混凝土梁斷面b＝35 cm，d＝53 cm，h＝60 cm，材料之f ''＝280 kgf/cm2，
c
f ＝2800 kgf/cm2，梁斷面配置#4@8cm 之閉合箍筋，淨保護層 4 cm，且梁斷面承受之
y
扭矩 T ＝T ，試問此梁斷面尚可承受之極限剪力載重 V 值，其中 T 為此梁斷面之
u cr u cr
開裂扭矩，#4鋼筋之直徑 d ＝1.27 cm，A ＝1.267 cm2。（20分）
b s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0db3233a5d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00348', 'structural-eng', 'structural-eng-moex-100-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '若後拉法預力混凝土梁斷面承受之起始預力 F＝250  tf，有效預力 F ＝220  tf，梁
i 0
重產生之力矩 M ＝30  tf-m，版重產生之力矩 M ＝15  tf-m，活載重產生之力矩
G S
M ＝70 tf-m，梁斷面於淨斷面時之A ＝2500 cm2，Z ＝40000 cm3，Z ＝39000 cm3，
L c1 t1 b1
I ＝1800000  cm4，e ＝25 cm，於變換斷面時之 A ＝2800 cm2，Z ＝41000 cm3，
1 p1 c2 t2
Z ＝43000 cm3，I ＝1900000 cm4，e ＝24 cm，於合成斷面時之A ＝3900 cm2，
b2 2 p2 c3
Z ＝137000 cm3，Z ＝74000 cm3，I ＝4300000 cm4，e ＝39 cm，且材料之 n＝6，
t3 b3 3 p3
鋼腱面積 A ＝24 cm2，請分析此梁斷面在施預力時及全部載重作用時之鋼腱應力及
sp
上下緣混凝土應力。其中 A 為梁斷面積，Z、Z 為梁斷面上下緣之斷面模數，I 為
c t b
梁斷面慣性矩，e 為鋼腱之偏心距離。（20分）
p', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0db3233a5d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00349', 'structural-eng', 'structural-eng-moex-100-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '美國 AISC 2010 年版鋼結構設計規範第 C章（Chapter C: Design for Stability），針
對 AISC 2005 年版第 C章（Chapter C: Stability Analysis and Design）作大幅修改，
將 2005 年版原有第 C 章移至附錄而改用全新規範。AISC 2010 年版第 C 章中針對
鋼結構穩定問題，要求以直接分析法（Direct Analysis Method of Design）進行鋼結
構強度確認，此法對於巨蛋、機場大廳、模板支撐等整體細長比大的鋼結構設計尤
其重要。直接分析法需要考慮二階分析（Second-order  Analysis）、起始不完美
（Initial Imperfections）、勁度修正（Adjustments to Stiffness）等議題；也要求設計
載重使用 1.0倍 LRFD混合載重（LRFD load combinations），或 1.6倍 ASD混合載
重（1.6 times ASD load combinations）。
試簡要說明 AISC 2010 年規範第 C章中，二階分析與一階分析有何不同？二階
分析除直接設置結構起始不完美外，亦可使用何者來模擬此起始不完美？二階分
析為何要作勁度修正？什麼情況下需要作勁度修正？ 1.6 倍 ASD 載重中，如何得
出此係數 1.6？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "887a6a4e9b7d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00350', 'structural-eng', 'structural-eng-moex-100-62d88c54', 'sub-structural-eng-06', NULL, 'essay', 'AISC 規範針對承壓之鋼架結構系統，在其內部受靠桿效應（Leaning column effect）
影響時，建議宜參考萊梅厥公式（LeMessurier  formula）作有效長度係數 K 值的修
P ∑P
正，修正公式如右所示：K′＝ e ×
P ∑P
i eK
P   ：欲求K值之柱所受的垂直載重
i
P    ：柱之尤拉挫屈載重（Euler buckling load）
e
ΣP ：整體結構承受的總垂直外載重
ΣP  ：整體結構所有非靠桿且考慮相應有效長度係數後之挫屈載重（Buckling load）
eK
下圖中有兩個鋼架結構，已知鋼架（I）中柱 CD，鋼架（II）中柱 CD、柱 EF 及柱
GH 為靠桿。試以萊梅厥公式，分別求解鋼架（I）及鋼架（II）中柱 AB 之有效長
度係數 K 及 K ，並試求二鋼架結構系統總挫屈載重ΣP 及ΣP 之比
（I）AB （II）AB （I）cr （II）cr
值，即ΣP / ΣP ＝？（25分）
（I）cr  （II）cr
P P P   P P
EI=∞ P EI=∞
A C A G
C E
L  EI  K=?  EI=∞ L EI K=? EI=∞  EI=∞  EI=∞
F
B D B D H
L  L L  L
b b b b
(I)  (II)
（請接第二頁）
100年專門職業及技術人員高等考試建築師、技師、第2次 全三頁
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  第二頁
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "887a6a4e9b7d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00351', 'structural-eng', 'structural-eng-moex-100-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '圖示為一鋼梁，已知鋼梁在 A 端有一彎矩 M 作用，鋼梁長度 L 為 812.8  cm，梁鋼
材特性及斷面尺寸如下所示。試用 LRFD 規範求解此鋼梁所能承受之標稱彎矩 M ，並
n
確認此梁挫屈時是否在彈性範圍內。（25分）
M A B
z x
y L
y
A B
z
x
單位：cm
20.32
型鋼材料特性及斷面尺寸：
t＝1.27
f
E＝2100 tf/cm2，G＝840 tf/cm2
40.62  t ＝1.27
F ＝2.52 tf/cm2，F＝1.05 tf/cm2  w
y r
t＝1.27
f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "887a6a4e9b7d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00352', 'structural-eng', 'structural-eng-moex-100-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '圖示為一無側撐鋼架，且 G 點不可轉動、H 點可轉動。各梁與柱之 I 值如下表所示。
試依據 Alignment  Chart，並進行必要的修正，求取彈性範圍之柱 DE 及柱 EF 的有
效長度係數 K，並使用 ASD 規範求取非彈性範圍之柱 EF 的有效長度係數 K。（柱邊界
為鉸接（hinged end）時G可使用10，為固接（Fixed end）時G可使用1。）（25分）
柱AB、柱BC 柱DE、柱EF  梁AD  梁DG  梁BE  梁EH
I值（cm4）  10700  11400  24000  28000  30000  36000
柱 EF材料及斷面性質：F ＝2.52 tf/cm2，E＝2040 tf/cm2；r ＝10.5 cm，
y x
I ＝11400 cm4，A＝104 cm2
x
G   K  G
A B
D  G
A
4m
E  H
B
5m
C  F
6m  8m
(a) Sidesway not prevented
(Unbraced frame)
（請接第三頁）
100年專門職業及技術人員高等考試建築師、技師、第2次 全三頁
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  第三頁
類    科： 結構工程技師
※參考公式：請自行選擇適合的公式參考，並檢查其正確性，若有問題應自行修正。
20b 1400
f or  ;   C =1.75+1.05(M /M )+0.3(M /M )2≤2.3
F (d/A )F b A B A B
y f y
F (l/r )2
7160C /F ≤l/r ≤ 35800C /F  ,  then  F =[2/3− y T ]F
b y t b y b 107600C y
b
35800C /F <l/r ,  then  F =12000C /(l/r )2
b y t b b T
840C I /2
F = b  ;   C =0.6−0.4(M /M )(≥0.4) ;  r = y ; A =(d−2t )t
b (Ld/A ) m A B T A +A /6 w f w
f f w
f f f f
a ≤0.15 a + bx + by ≤1 12π2E n 3
（1）   ,   F′= J biti
F F F F = ∑
a a bx by e 23(KL /r)2 3
i=1
b b
f f f f
a >0.15 f C f C f a + bx + by ≤1
（2）   ,   a + mx bx + my by ≤1 ;
F 0.6F F F
a F f f y bx by
a (1− a )F (1− a )F
F'' bx F'' by
ex ey
⎡ 2⎤
(KL/r)
⎢1− ⎥F
2 y 12π2E
KL ⎣ 2C ⎦ KL
For  ≤C  ;   F = c  ;  For  >C    F =
c a 3 c a 2
r 5 3(KL/r) (KL/r) r 23(KL/r)
+ −
3 8C 3
c 8C
c
F 2
KL y λ 0.877
λ =  ;  For λ ≤1.5 ,  F =(0.658 c )F  ;  For λ >1.5 ,  F = F
c rπ E c cr y c cr 2 y
λ
c
π C [ ]2
M =(F −F )S  ;  X= EGJA/2 ,  X =4 w S /(GJ)
r y r x 1 S 2 I x
x y
80 I 2
r r X 2 f h
= y ,  L = y 1 1+ 1+X (F −F ) C =
L 2 y r W
p r (F −F ) 2
F y r   ;
y
⎡ ⎛L −L ⎞⎤ C S X 2 2
b p X X
M =C ⎢M −(M −M ) ⎥≤M  ,  M = b x 1 1+ 1 2 ≤M
n b p p r ⎜ ⎟ p n 2 p
⎣ ⎝L−L ⎠⎦ L /r 2(L /r )
r p b y b y
∑(EI/L) E F E F
G = col =G τ ; τ = t = cr,inelastic (LSD) ; τ = t = a (ASD)
inelastic ∑(EI/L) elastic a a E F a E F′
bbaeaemm  cr,elastic e
For flange: λ =14/ F  , λ =17/ F  , λ=25/ F   （F 單位= tf/cm2）
pd y p y r y y
170 f
For web: λ = (1−3.74 a) for  f /F ≤0.16;   68/ F  for  f /F >0.16
p F F a y y a y
y y
π π2ECw
Simply supported I-section under pure bending:  M = EI GJ 1+( )
o,cr L y
L GJ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "887a6a4e9b7d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00353', 'structural-eng', 'structural-eng-moex-099-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一黏土層其土壤單位重γ = 17.5 kN/m3，有效摩擦角φ = 28°，於現地土層深度12 m
sat
處取得土樣進行不排水三軸（UU）試驗，若現地地下水位面位於地表以下2 m，則
由不排水三軸試驗所測得之不排水剪力強度（S ）為何？如果在（UU）試驗過程對
u
於試體施加圍壓σ =  50  kPa，試體仍維持飽和狀態，則其內部產生之孔隙水壓力為
3
何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "2cf01a934a6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "500", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
