-- W1.4 new questions batch 4052/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00274', 'structural-eng', 'structural-eng-moex-103-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一簡支矩形梁，跨距5 m，混凝土斷面b = 30 cm、d = 60 cm及h = 70 cm，f=280 kgf/cm2，
c
承受均佈設計載重 5 tf。若不計梁自重，在無軸力；有設計軸壓力 25 tf；及有設計
軸拉力 25 tf條件下，求臨界斷面（距支承面距離d 之最大混凝土剪力計算強度，假
設設計斷面之受拉鋼筋為 3-D32（A =24.42 cm2）。（25 分）
s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "1eca5924a062", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00275', 'structural-eng', 'structural-eng-moex-103-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一簡支對稱 I 形、U 類型預力梁，跨距 12  m，I =4.69105 cm4，Ac=1100  cm2，
c
r2=426 cm2，S=15.63104 cm3，自重=0.264 tf/m，工作載重為 1.1 tf/m，偏心距固定
且e=19.8 cm，c =c =30 cm，施加預力P=70 tf，預力損失後P=60 tf，f=420 kgf/cm2，
1 2 i e c
施加預力時 f=300 kgf/cm2，試求在梁中點處於上述 2 階段之應力值並確認是否符
ci
合規範規定。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "1eca5924a062", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00276', 'structural-eng', 'structural-eng-moex-103-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '根據 AISC-LRFD 可得柱挫屈強度以下式表示：
F (0.658)2 F
c
cr y
0.877
F ( )F
cr 2 y
c
KL F
y
請推導   。（10 分）
c
r E
繪出 F /F 與之關係圖，及標示兩公式適用範圍；並說明當柱鋼板降伏強度由
cr y c
350 MPa 提升至 450 MPa 時，柱挫屈強度的變化。（10分）
繪出柱兩端同為鉸接及一端固接另一端為自由端的兩種挫屈變形及相對應的理論
K值。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ba25946b7ad2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00277', 'structural-eng', 'structural-eng-moex-103-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依據鋼結構極限設計法規範，請說明 SN490B 鋼材與 ASTM A572 （Grade 50）鋼
材之材料差異性及在梁柱接頭行為的可能影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ba25946b7ad2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00278', 'structural-eng', 'structural-eng-moex-103-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一 ASTM A572 Gr.50  之 W21×93 簡支鋼梁，梁長 4 m，在梁兩端（一端為鉸接支
承，另一端為滾支承）均有側向支撐，梁全長承受均佈的雙向彎矩 M =400  kN-m
ux
及 M =50  kN-m  （兩彎矩均已含載重係數且均作用在梁之剪力中心），利用極限
uy
設計法（LRFD）檢核此梁是否滿足設計要求。（25 分）
鋼材 F =350 MPa, F= 78 MPa
y r
W21×93 型鋼性質：S =3146316 mm3, S =362154 mm3, Z =3621541 mm3,
x y x
Z =568631 mm3, d=548.6 mm, b=214 mm, t=23.6 mm,
y f f
t =14.7 mm, λ =9.19, λ=22.3, L =2 m, L=5.8 m
w p r p r
公式：
12.5M
C  max
b
2.5M 3M 4M 3M
max A B c
（請接背面）
103年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ba25946b7ad2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00279', 'structural-eng', 'structural-eng-moex-103-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一鋼造斜撐構架系統，經過載重組合分析後得到下表鋼柱在強軸載重分析（含載
重係數效應）的結果如圖所示，請檢核 W14×90（滿足結實斷面，鋼材 ASTM A572
Grade  50）之鋼柱是否可滿足 AISC-LRFD 設計要求。此鋼柱長 3.75  m(<L )，
p
K =1.79，K =1.0，此柱上及下端均有側向支撐，所在樓層最大垂直載重（含載重係
x y
數效應）為 9000 kN，側力 600 kN，相對應的側位移角為 5/1000。（25分）
分析  P  （kN）  M （kN-m）  M  （kN-m）
u a b
Pu
垂直力分析  1600  110  70
Ma
（1.2D+0.5L）
側力（地震力）分析  450  200  200
（1.0E）
Mb
Pu
柱 W14×90 型鋼性質如下：
F =350 MPa, E=200 GPa, Z =2572769 mm3, I =415815194 mm4, A=17097 mm2
y x x ,
r =156 mm, r =94 mm
x y
公式：
P  M M
u  ux uy
,P 0.2P
u n
2P M M
n  nx ny
P 8 M M
u  ux uy
,P 0.2P
u n
P 9 M M
n  nx ny
C 1
B  m ，B
1 2
1(P /P ) 1(P /HL)
u e u', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "ba25946b7ad2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00280', 'structural-eng', 'structural-eng-moex-102-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '試回答下列各項：
在順向坡進行邊坡穩定分析時，需進行那些試驗以獲得所需之參數？（6分）
試說明利用波動方程式估計樁承載力之原理。（6分）
在分析側向土壓力理論有兩種方式，即藍金氏（Rankine）與庫倫氏（Coulomb），
試說明此兩種方式之差異性。（6分）
在加勁土壤結構物（Reinforced  Earth  Structure）穩定分析時，應進行那些檢核？
（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "4ffca0c39730", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00281', 'structural-eng', 'structural-eng-moex-102-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '甲乙兩種土壤之標準夯實曲線如圖一所示。一填方工程之回填土係取自某借土區中
甲、乙兩種土壤之混合物，吾人取其代表性混合物土樣測得標準夯實試驗之濕單位
重為 19.9 kN/m³，含水量為11%：
試估計此混合物之最大乾單位重。（8分）
若此混合土在滾壓後之現地乾單位重為15.8 kN/m³，試求其相對夯實度為何？（8分）
在以此方法決定相對夯實度時，應注意那兩項重點？（9分）
22.0
乾
零空氣孔隙曲線
單  21.0
位
20.0
重
γ
d
19.0
(kN/m3)
18.0
甲土壤
17.0
16.0
乙土壤
15.0
5 6 7 8 9 1011121314151617 18 19 20 2122232425
含水量，W%
圖一
（請接背面）
102年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "4ffca0c39730", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00282', 'structural-eng', 'structural-eng-moex-102-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一不擾動之黏土樣品，若進行 K 不等向壓密不排水軸向壓縮（axial compression，
0
AC）試驗，靜止土壓力係數 K =0.7，即初始條件為水平壓密應力 σ =280 kN/m2，
0 (cell)
垂直軸向壓密應力為 400 kN/m2，假設初始孔隙水壓為零。此 K 不等向壓密不排水
0
軸向壓縮（AC）試驗之應力對應變以及孔隙水壓（Δu）對應變之結果，如圖二所
示。茲再準備一完全相同之黏土樣品（即孔隙比、含水量…等皆保持相同），進行
側向伸張試驗（LE），即垂直軸向應力保持一定，而側向壓力減少至試體破壞為止。
試繪出 AC與 LE試驗之總應力與有效應力路徑？（8分）
試繪出 LE試驗中，孔隙水壓對應變圖？（8分）
試決定 AC 與 LE 試驗中之破壞時孔隙水壓參數 A，有效應力抗剪角φ′，總應力
f
抗剪角φ與破壞面角度？（9分）
300  180
孔
160
應  250  隙
140
力  200  水
120
，  壓
100
150
(σ-σ)    ，  80
1 3
，  100  Δu  60
kN/m2  ，  40
50
kN/m2 20
0  0
0  0.5  1  1.5 2  2.5 0  0.5  1  1.5 2  2.5 3
應變ε%  應變ε%
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "4ffca0c39730", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00283', 'structural-eng', 'structural-eng-moex-102-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '在九二一地震時，臺中港區曾發生嚴重之土壤液化破壞現象，試說明若在臺中港
區進行建築物之基礎型式選擇與評估時，應採用那種基礎型式及其設計應注意之
重點為何？（13分）
在臺中港液化潛勢區，若採用地層改良方法時，試說明三種適合之地層改良方法
及其原理。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "4ffca0c39730", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
