-- W1.4 new questions batch 4066/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00414', 'structural-eng', 'structural-eng-moex-097-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試以最小功法（least work）計算圖示剛架（frame）各桿件之彎矩，並繪彎矩圖。
圖中 A 點為滾支承（roller），C 點為固接（fixed）。已知各桿件之彈性模數 E 與
慣性矩 I為常數（25分）
2kN/m
A B
m
6
C
6m 4.5m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "58cb4a64cc0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00415', 'structural-eng', 'structural-eng-moex-097-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示剛架（frame），A 點為固接（fixed），C 點為鉸接（hinge）。若每根桿
件的彈性模數 E與慣性矩 I為常數，當 BC桿件有一垂直均佈載重 1 kN/m時，以矩
陣直接勁度法計算各桿件之彎矩，繪彎矩圖並標示最大與最小值。（25 分）
1kN/m
B C
m
4
A
6m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "58cb4a64cc0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00416', 'structural-eng', 'structural-eng-moex-097-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一懸臂梁及其斷面如圖一所示，A ＝50 cm2，A'' ＝20 cm2， f ''＝280 kgf/cm2，
s s c
f ＝4200 kgf/cm2，E ＝2.04×106 kgf/cm2，n＝8。若梁安裝後同時於B點施加一2tf
y s
之集中載重，試問該集中載重及梁自重持續作用一年後B點之撓度為何？（20分）
（梁端撓度公式： PL3 3EI， wL4 8EI ）
10cm
2tf A
s
50cm
A B
A''
s
10cm
5m
40cm
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "efb9298fd49d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00417', 'structural-eng', 'structural-eng-moex-097-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一短柱，其斷面如圖二所示， f ''＝350 kgf/cm2， f ＝4200 kgf/cm2，E ＝
c y s
2.04×106 kgf/cm2。壓力作用於 X 軸上之 A 點，右側為壓力側。若此柱斷面達到其
軸力計算強度P 時，拉力側鋼筋之應變剛好等於零，試求此時柱斷面所承受之彎矩
n
值為何？（25 分）
(#8 鋼筋之斷面積為 5.07 cm2)
8 20 20 8
cm cm cm cm
20
Y cm
A
8-#8 X
20
cm
圖二
（請接背面）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次
全一張
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題
（背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "efb9298fd49d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00418', 'structural-eng', 'structural-eng-moex-097-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一梁承受純扭矩作用，其斷面如圖三所示， f ''＝280 kgf/cm2， f ＝2800 kgf/cm2。
c y
閉合肋筋及縱向鋼筋均採#4 鋼筋，閉合肋筋間距為 15cm，淨保護層為 4cm。此梁
斷面為維持平衡須承受一設計扭矩T ＝3.0 tf-m。若強度折減因數採0.75，試證明：
u
此梁斷面之大小是否合適？（10 分）
此梁斷面扭力鋼筋之配置是否合適？（15分）
（#4鋼筋之直徑為 1.27cm，斷面積為 1.27cm2）
30 cm #4@15cm
60 cm
30 cm
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "efb9298fd49d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00419', 'structural-eng', 'structural-eng-moex-097-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一簡支預力梁，其跨度為15m，梁寬為30cm，梁全深為70cm，梁之f ''＝350kgf/cm2。
c
在此梁中，預力損失後預力鋼鍵之有效預力為 200 tf。此梁在預力損失後開始吊裝，
並在其上澆置 15 cm 厚樓版，澆置後跨度中央梁與樓版之斷面如圖四所示，樓版之
f ''= 280 kgf/cm2。當樓版硬化並與梁結合為一體後，再於樓版上施加均佈活載重。
c
若梁及樓版之混凝土壓應力均不得超過 0.45 f ''，亦不容許混凝土承受張應力，則樓
c
版上所能施加之最大均佈活載重為何？（30分）
90cm
15cm
70cm
c.g.s.
20cm
30cm
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "efb9298fd49d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00420', 'structural-eng', 'structural-eng-moex-097-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依據 ASD 設計概念，容許撓曲應力 F 在不同 L/r 值，必須分別使用公式（7.2-6）及
b T
（7.2-7），但二者還需要再與公式（7.2-8）比較後取較大者。一般保守設計比較後
取較小值，為何此處需要取較大值，請簡述其理由。（15分）
F (L/r )2
2 7160C L 35800C
y T b b
F (  )F 0.6F ；   (7.2-6)
b y y
3 107600C F r F
b y T y
12000C L 35800C
F  b 0.6F ；  b (7.2-7)
b 2 y
(L/r ) r F
T T y
840C
F  b 0.6F (7.2-8)
b y
(L /A )
d f
（提示：受均佈彎矩之簡支梁側向扭轉挫屈M  ( )2EI GJ ( )4EI EC ）
o,cr y y W
L L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "be59858d6f9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00421', 'structural-eng', 'structural-eng-moex-097-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依據 LRFD 所述，受壓鋼架結構頂層具有未束制邊界條件時，因受結構內部靠桿
（leaning column）影響，需要參考萊梅厥公式（LeMessurier formula）作有效長度
係數 K值的修正，此修正公式如下所示。
P P
K'' e
P P
I eK
P ：尤拉載重（Eulerbuckling load）
e
P：欲求 K值之支撐所受的垂直載重
I
P：整個結構所受之總外載重
P ：整個結構中所有非靠桿在考慮有效長度係數後之挫屈載重（buckling load）
eK
圖 1 中有一單根柱及一頂層邊界未束制之鋼架結構，已知單根柱之 K＝2.0，鋼架結
構中 CD 柱為靠桿，試以萊梅厥公式求解鋼架結構中 AB 柱之有效長度係數 K 。
AB
（10分）
P P
EI=
B C
L EI K=2 L EI K=? EI
A D
Lb
圖1
請簡要說明圖1 鋼架結構中，靠桿效應（leaning column effect）造成 AB柱之 K
AB
增大的原因。（15 分）
（請接第二頁）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全四頁
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 第二頁', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "be59858d6f9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00422', 'structural-eng', 'structural-eng-moex-097-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '圖 2 為一鋼梁，假設鋼梁在 A、B、C、D 四點側向均有側撐補強，且此梁兩側承受
均佈載重 w，如圖所示。採用 H 型鋼，鋼梁長度 L 為 18 m，鋼材特性如下所示，
試以極限設計法（LRFD），求解此鋼梁所能承受之容許標稱外載重w 。（25分）
n,cr
W型鋼斷面參數及材料特性如下：
d＝54.43 cm，b＝21.22 cm，t＝2.12 cm，t ＝1.31 cm，A＝156.77cm2
f f w
I ＝76170 cm4，r ＝22.02 cm，S ＝2802 cm3，Z ＝3212 cm3
x x x x
I ＝3388 cm4，r ＝4.65 cm
y y
r ＝5.46 cm，C ＝2317464 cm6，J＝181 cm4
T w
E＝2100 t/cm2，G＝840 t/cm2，F ＝3.5 t/cm2
y
w w
A z x
B C D
y L/3 L/3 L/3 y
A B C D
z
（側撐補強）
x
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "be59858d6f9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00423', 'structural-eng', 'structural-eng-moex-097-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '圖 3 為一型鋼梁柱構件，假設構件在 A、B、C 三點側向均有側撐補強，已知其承
受偏心 d 之軸壓力 P 及 y 方向力 H，構件尺寸及相關配置如圖 3 所示。若此構件
採用 A36 之鋼材，H 為 2.5 t，L 為 12 m，偏心 d 為 25 cm。試以容許應力設計法
（ASD），求此型鋼梁柱構件所能承受之最大容許軸壓力 P。（35 分）
W型鋼斷面參數及材料特性如下：
A＝76 cm2，d＝30.3 cm，b＝20.3 cm，t＝1.31 cm，t ＝0.749 cm
f f w
r ＝13 cm，S ＝851 cm3，r ＝4.91 cm，I ＝1830 cm4
x x y y
E＝2040 t/cm2，F ＝2.5 t/cm2
y
（已知：K ＝K ＝1.0；C ＝1.0）
x y m
P
H
d
A C P z
x
B
y L/2 L/2 y
A B C
P H P z
（側撐補強）
x
圖 3
（請接第三頁）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全四頁
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 第三頁
※參考公式：請自行選擇適合使用的公式，若有問題請自行修正。
I /2
y
r  , A (d 2t )t
T w f w
A  A /6
f w
20b 1400
f 2
or ; C 1.751.05(M /M )0.3(M /M ) 2.3
b A B A B
F (d / A )F
y f y
F (L/r )2
y T
7160C /F  L/r  35800C /F ,then F [2/3 ]F
b y T b y b y
107600C
b
35800C /F ＜ L/r , then F 12000C /(L/r )2
b y T b b T
840C
F  b ; C 0.60.4(M /M )(0.4)
b m A B
(L /A )
d f
f f f f
a a bx by
0.15,   1
F F F F
a a bx by
f f C f c f 122E
a a mx bx my by ''
＞0.15 ,   1 ; F
f f e 2
F F 23(KL /r )
a a (1 a )F (1 a )F b b
bx by
F'' F''
ex ey
f f f P ΣP
a bx by e
1 , K ,
i modified
0.6F F F P ΣP
y bx by i ek
(KL/r)2
1 F
2 y 2
KL  2C  KL 12 E
For C ; F  c ; For C F
c a 3 c a 2
r 5 3(KL/r) (KL/r) r 23(KL/r)
3 8C 3
8C
c c
KL F 2 0.877
y
; For  1.5 , F (0.658 c )F ; For  1.5, F  F
c c cr y c cr 2 y
r E
c
（請接第四頁）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全四頁
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 第四頁
80r r X
y y 1 2
L  , L  1 1 X (F F )
p r 2 y r
F (F F )
y y r
L L  2
C S X 2 X X
b p  b x 1 1 2
M C M (M M ) M , M  1  M
n b p p r   p n 2 p
L L L /r 2(L /r )
r p  b y
b y
C
w 2
M (F F )S ; X  EGJA/2 , X 4 S /(GJ)
r y r x 1 2 x
S I
x y
Forflange： 14/ F ,  17/ F ,  25/ F （Fy單位＝tf/cm2）
pd y p y r y
170 f
Forweb：  (13.74 a) for f /F 0.16; 68/ F for f /F 0.16
p a y y a y
F F
y y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "be59858d6f9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
