-- W1.4 new questions batch 4048/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00234', 'structural-eng', 'structural-eng-moex-104-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一支撐開挖，其開挖深度為 8  m，其支撐之地層上方為厚度 3  m 之砂土層，
土壤單位重 γ  = 16.5 kN/m3，土壤摩擦角φ = 32°，下方為黏土層，土壤單位重
s s
γ  = 17.5 kN/m3，不排水剪力強度為C  = 30 kN/m2，計算並繪出支撐牆背之設計視
c u
土壓力分布情形。此時如開挖面寬度為 6 m，長度為 15 m，則其底部之抗隆起安全
係數為何？（25分）
（請接背面）
104年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "8313a2e4175e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00235', 'structural-eng', 'structural-eng-moex-104-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '一地層如下圖所示，該處地層之孔隙水壓呈靜水壓分布，地下水位面位於地表下 3 m
處。該正常壓密黏土，γ  = 17.5 kN/m3，LL = 50，e =0.9，k = 10-7 m/sec，如因長期
sat
使用需求將黏土層上方砂土層之水頭抽降 5  m，則對該黏土層之滲流及壓密狀況將
造成何種影響？分別計算黏土層單位面積最大滲流量及壓密沉陷量。（25分）
Sand
3m  9m
γ = 16 kN/m3
dry
γ  = 18 kN/m3
sat
Clay
8m  e = 0.9， LL = 50
γ = 17.5 kN/m3
sat
γ  = 18 kN/m3
sat', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "8313a2e4175e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00236', 'structural-eng', 'structural-eng-moex-104-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '下圖之桁架由A‐36合金鋼材組成，其彈性係數（modulus of elasticity）與降伏應力
（yielding stress）分別為 E = 200 GPa，σ  = 250 MPa。所有桿件之斷面積A均為
y
2.5 × 103 mm2，AB 和 BG 長各為 4  m，BC 和 CD 長各為 2 m。若受兩外力 P 作用
（如圖示），在所有桿件均無永久變形（permanent deformation）條件下，
試求最大作用力 P（kN）之值。（10分）
試求出儲存於桁架之總應變能（strain energy）U（kJ）。（15分）
P
D
C
E
45∘
B  45∘
P F
45∘
45∘ 45∘
A            G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "e0d11fc788e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00237', 'structural-eng', 'structural-eng-moex-104-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '組合梁AE係由AD梁與DE梁以鉸接（hinge）連接而成。其斷面為30 mm寬、100 mm高。
試繪出其剪力及彎矩圖（shear‐force and bending‐moment diagrams）並標示相關極值。
（10分）
±σε = ε1
此梁之應力應變函數為： ( ) 100( 4)MPa。若其最大彎矩處之斷面上的最大
拉、壓應變ε =0.02  mm/mm，試求外力 P之值。（15分）
max
2P
M =2P  P
1 1 m
B       C    D
100 mm
A                                      E
2 m  2 m  2m 2 m
30 mm
單位: P ( kN)，M  ( kN.m)
1
（請接背面）
104年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "e0d11fc788e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00238', 'structural-eng', 'structural-eng-moex-104-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一長寬為 150 mm × 100 mm 之矩形彈性板 ABCD，其在 xy平面之變形如下圖之虛線
所示。此板之剪彈性係數（Shear  modulus  of  elasticity）G  =30  GPa，波松比
（Poisson’s ratio）ν = 0.33。
試求相對應的應力 σ 、σ 、σ  及 τ 。（10分）
x y z xy
試求D點之主應變（principal strains, ε ），並繪出其對應的應變元素圖。（10分）
1,2
試求D點最大剪應變（maximum shear strain, γ ），並繪出其對應的應力元素圖。
max
（5分）
0.045
0.040
0.030
A                  B  0.040 y, v
100
x, u
D                 C
0.016
0.014
150
0.030 0.042
單位: mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "e0d11fc788e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00239', 'structural-eng', 'structural-eng-moex-104-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '下圖所示，分布載重 q =625 kN/m作用於 CD剛性梁上。AB為一長 3 m之矩形斷面
0
（a × a）柱，其彈性係數 E = 72 GPa，容許壓應力 σ  = 36 MPa，且其兩端均為鉸
all
接（hinge）。若考慮柱 AB 之挫屈（buckling）行為時之安全係數為 3，試求出 AB
柱能安全支撐之最小長（寬）a（mm）。（25分）
(cid:1876)
(cid:1869)(cid:4666)(cid:1876)(cid:4667)=(cid:4678)(cid:3495) (cid:4679)(cid:1869)
(cid:1838) (cid:2868)
q
0
C                         D
B
2.0 m  1.0 m
h=3m
a mm
A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "e0d11fc788e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00240', 'structural-eng', 'structural-eng-moex-104-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一單自由度系統如圖一，其運動方程式為mv(t)+cv(t)+kv(t)= P sinωt。只考慮
&& & 0
穩態振動（Steady state），忽略暫態振動（Transient state）。試求其解。（25分）
v
c
p(t)
m
k
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "1a7aab9a497f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00241', 'structural-eng', 'structural-eng-moex-104-050f1447', 'sub-structural-eng-03', NULL, 'essay', '二 層 結 構 如 圖 二 ， 令 梁 為 剛 體 （ Rigid  beam ） ， 柱 之 剛 度 （ Stiffness ）
k =k =50 kN cm，求此結構之頻率（Frequencies）及振態（Modal  shapes）。
1 2
（25分）
m=50t
2
v
2
k
2
m=50t
1
v
1
k
1
圖二
（請接背面）
104年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "1a7aab9a497f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00242', 'structural-eng', 'structural-eng-moex-104-050f1447', 'sub-structural-eng-03', NULL, 'essay', '構架（Frame）如圖三，有 N 個自由度，且質量集中在樓層上。若分析時，只考慮
第一振態（1st Mode）φ
1
L2
證明此構架之基底剪力（Base Shear）U (t)= 1 ωV (t)式中
0 1 1
M
1
t −ξω −τ {}
V (t)=− v (τ)e (t )sinω(t −τ)dτ，M =φTmφ，L =φTm1 ，m 為 N×N 質
∫ && 1 1
1 0 g 1 1 1 1 1 1
{} [ ]
T =
量矩陣， 1 1,1,......,1 為 N×1 向量，ω 、ξ 分別為第一模態之頻率及阻尼比
1 1
（Damping ratio）。並假設 ξ 很小。（15分）
1
⎡h h h ⎤
令φT = 1 ...... i ...... n ，證明最大基底剪力U (t) 之豎向分配至各樓層之
1 ⎢ , , , , ⎥ 0 max
⎣H H H⎦
m h
水平力 f = i i U (t) （10分）
si N 0 max
∑m h
j j
j=1
x
m
N
s
ix
a
e
c vt(t) m
n i i
e H
r
e
f
e
R
v(t) h
i i
m
3
m
2
m
1
v(t) U(t)
g 0
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "1a7aab9a497f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00243', 'structural-eng', 'structural-eng-moex-104-050f1447', 'sub-structural-eng-03', NULL, 'essay', '構架如圖四，以簡易懸臂梁法（Approximation of cantilever method）計算每一梁與
柱之端點彎矩。令柱之斷面積皆 1 m2。（25分）
20tf  1  2  3
4m
4  5  6
7m  10m
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "1a7aab9a497f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
