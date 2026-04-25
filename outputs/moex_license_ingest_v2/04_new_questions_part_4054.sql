-- W1.4 new questions batch 4054/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00294', 'structural-eng', 'structural-eng-moex-102-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '所示剛架結構 A、D 為固接支承，B 點為鉸接。桿件 BC 承受垂直均佈載重 w，如
圖三所示。各桿件之 E 均相同。桿件 AB、CD 面積慣性矩為 I，桿件 BC 則為 2I。
請以傾角變位法分析各桿件端點彎矩，並繪桿件 BC 剪力圖與彎矩圖。使用其他方
法不予給分。（25分）
w
B  2EI  C
EI  EI
L
A
D
L  L
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "109cf377d31f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00295', 'structural-eng', 'structural-eng-moex-102-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖四所示桁架結構，請應用直接勁度法組成對應位移(d 、d 、d )之勁度矩陣。若
1 2 3
所得位移(d 、d 、d )為(0.1277，0.1743，0.7055)mm，求所對應施加外力(P 、P 、
1 2 3 1 2
P )值，並求桿件 AD、CD 之內力。所有桿件 E=200 GPa，A=10×103 mm2。使用
3
其他方法不予給分。（25分）
P,d
3 3
C P,d
2 2
D
6 m
A B P,d
1 1
6 m 8 m
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "109cf377d31f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00296', 'structural-eng', 'structural-eng-moex-102-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '已知一多跨連續的鋼筋混凝土單向版，梁支承中心跨度為 4.8 m（梁寬為 30 cm），
版須承受之活載重為 0.6 tf/m2，靜載重為 0.1 tf/m2（不含自重），試依規範規定設
計版厚與外支承處之撓曲鋼筋。（樓版採混凝土強度 f′=280 kgf/cm2，鋼筋降伏強
c
度 f =4200 kgf/cm2，鋼筋彈性模數 E =2.04×106 kgf/cm2）（25分）
y s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "bd8114477949", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00297', 'structural-eng', 'structural-eng-moex-102-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一方形柱配置 16 支 D32 主筋如圖一所示，請依耐震設計特別規定配置橫向鋼筋，
並繪圖說明。已知橫向鋼筋降伏強度 f =2800 kgf/cm2， f′=280 kgf/cm2，設保護層
y c
厚度為4 cm。（25分）
A f '' f''
參考公式： g c ； c
0.3sh ( −1) 0.09sh
c c
A f f
ch yh yh
50 cm
50 cm
圖一
（請接背面）
102年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "bd8114477949", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00298', 'structural-eng', 'structural-eng-moex-102-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一鋼筋混凝土構件承受扭矩 T =1.5 tf-m，閉合箍筋採用 D10，如圖二所示，試求箍筋
u
間距，並檢核斷面之鋼筋配置是否恰當。（已知 f′=280 kgf/cm2，f =2800 kgf/cm2）
c y
（30分）
20 c m
D13
50 cm
40 cm
D13
30  cm
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "bd8114477949", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00299', 'structural-eng', 'structural-eng-moex-102-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一先拉預力梁，斷面 b=30 cm，h=60cm，鋼腱偏心距 e=20 cm，有效預力
F =65 tf，混凝土強度 f′=350 kgf/cm2，f =17100 kgf/cm2，A =6.5 cm2，鋼腱彈性
e c pu ps
模數 E =2.04×106 kgf/cm2，試求開裂彎矩與鋼腱極限應變。（20分）
s
f
參考公式： pu
f = f (1−0.5ρ × )
ps pu p ′
f
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "bd8114477949", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00300', 'structural-eng', 'structural-eng-moex-102-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖 1 所示空心圓斷面，已知 d=0.6 D，試求該斷面之斷面模數（Section modulus）
S 、塑性斷面模數（Plastic section modulus）Z 及形狀因數（Shape factor）f=？
x x
（求解之 S 及Z 請以D表示）（25分）
x x
d
D
（圖 1）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ae4786a828c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00301', 'structural-eng', 'structural-eng-moex-102-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖 2 所示之剛架承受均佈載重 w，柱 CD 為靠桿。已知梁及柱之 E=2,040 tf/cm2，
梁及柱之長度 L=6 m，柱之 I =30,094 cm4，梁之 I =136,108 cm4。試使用 AISC
c b
Alignment Chart及萊梅厥公式（LeMessurier formula），求解剛架中柱 AB之有效長
度係數K′ 及挫屈載重 w (tf/m)=？今若僅於梁 BC 上配置單位重 ρ=240 tf/m2之均
AB cr
佈載重，試求該載重容許配置的厚度 d(m)=？（25分）
（柱邊界為固接（Fixed end）時 G使用 1、為鉸接（hinged end）時 G使用 10。）
ww
G   K G   G K G
B C A B A B
50.0   1.0 50.0  20.0
10.0 10.0  100.0 10.0 100.0
L   50.0
5.0 5.0  50.0
0.9 30.0 5.0  30.0
3.0   3.0
A D 20.0 4.0  20.0
2.0   2.0
10.0 3.0  10.0
0.8 9.0 9.0
L 8.0 8.0
1.0   1.0  7.0 7.0
0.8 0.8  6.0 6.0
（圖 2）  0.7 0.7  5.0 5.0
0.6 0.7 0.6  4.0
4.0 2.0
0.5   0.5
0.4 0.4  3.0 3.0
0.3 0.3  2.0 2.0
0.6 1.5
0.2 0.2
1.0 1.0
0.1 0.1
0 0.5 0  0 1.0  0
側位移束制 側位移不束制
P ΣP
萊梅厥公式（LeMessurier formula）：K′= e ×
P ΣP
I eK
P：欲求 K值之柱所受的垂直載重
I
Pe：柱之尤拉載重（Euler buckling load）
ΣP：整體結構承受的總垂直外載重
ΣPeK：整體結構所有非靠桿且考慮相應有效長度係數後之柱挫屈載重（Buckling load）
（請接背面）
102年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ae4786a828c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00302', 'structural-eng', 'structural-eng-moex-102-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖 3 所示之一受軸壓力 P 作用之鋼柱，已知鋼柱總長度為 16 m，柱底 A 點處及
柱頂 C 點處之邊界條件，如圖 3 所示；另於柱中 B 點處的 x-z 面上有一鉸接之側向
支撐。若此鋼柱採用 W14×61 型鋼，材料性質及相關斷面尺寸為：E=2,040 tf/cm2，
F =2.5 tf/cm2；A=116 cm2，d=35.3 cm，t =0.952 cm，b =25.4 cm，t =1.64 cm，
y w f f
I =26,700 cm4，I =4,480 cm4。
x y
試以容許應力設計法（ASD），求解該柱之容許壓力強度 P =？（15分）
a
試以極限設計法（LRFD），求解該柱之設計壓力強度φ P =？（10分）
c n
z
z
C   C
00..44LL
B
L
00..66LL
A   A
yy--zz面 xx--zz面
（圖 3）
條件  邊界無側位移  邊界有側位移*
端點型式  固接-固接  鉸接-固接  鉸接-鉸接  固接*-固接  固接*-鉸接 自由端*-固接
理論K值  0.5  0.7  1.0  1.0  2.0  2.0
設計K值  0.65  0.8  1.0  1.2  2.0  2.1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ae4786a828c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00303', 'structural-eng', 'structural-eng-moex-102-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖 4 所示一無側撐剛架，承受垂直軸壓力 P 及水平力 H。試使用 LRFD 求解柱
BC 之二階設計彎矩（Second-order design moment）M 及 B 、B 、M 、M 。（求
u 1 2 nt lt
解柱 BC之有效長度係數時，請參考題二之Alignment Chart。）（25分）
（柱邊界為固接（Fixed end）時 G使用 1、為鉸接（hinged end）時 G使用 10。）
PP
AA EEII  BB EEII DD
HH
LL
EEII
CC
11..55LLL   11..55LLL
（圖 4）
C
以下公式僅提供參考：B = m ≥1.0，C =0.6−0.4(M /M )，
1 m A B
1−P /P
u eK
π2EI P 1
P = = e ；B =
eK 2 2 2
(KL) (K) 1−ΣP /ΣP
u eK', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ae4786a828c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
