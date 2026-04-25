-- W1.4 new questions batch 4038/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00134', 'structural-eng', 'structural-eng-moex-109-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '6tf/m2（含自重），版之全深h40 cm，平均有效深度d 35 cm。設
版與柱之間無彎矩之傳遞。混凝土抗壓強度 f280 kgf/cm2，鋼筋降
c
伏強度 f  4200 kgf/cm2。
y
若版中無剪力鋼筋，檢核版於柱 A 之混凝土穿孔剪力強度是否足
夠？（10 分）
若穿孔剪力強度不足，則由柱面往外，沿平面X與 Y方向配置雙肢剪
力鋼筋，計算所需剪力鋼筋間距s。剪力鋼筋採 D13 鋼筋，一支斷面
積為 1.267 cm2。（10 分）
根據規範，無剪力筋時，版混凝土穿孔剪力強度由下列三式決定：
4
⑴V  0.265 2 + fb d
c  c o
d
⑵V  0.265 2 + s fb d，式中 於內柱時為 40，於邊柱時為 30，
c b c o s
o
於角柱時為 20。
⑶V  1.06 fb d
c c o
有剪力筋時，版混凝土穿孔剪力強度V 0.53 fb d
c c o
800 800
s 100
900
100
無梁版
100 s
s s 40
柱A s 剪力筋 900
柱 剪力筋
Y
X 單位:cm
平面圖 斷面圖
一預力連續梁如下所示，受一均佈靜載（含自重）w1.6 tf/m，預力鋼
腱採拋物線型配置，鋼腱於支承B處之偏心為 35cm。
計算預力鋼腱於梁各跨度中點（D與 E點）之偏心值（e 與e ）以及
D E
有效預力值P ，使預力不產生二次彎矩效應，且在P 與題目給定的載
e e
重作用下，梁斷面受均勻軸壓應力。（15分）
設有效預力P 與初始預力P之比值為 0.8，求在初始預力P以及題目給
e i i
定的載重作用下，斷面 B上緣與下緣混凝土之應力。（10分）
A D B E C
單位:cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "5ca1c06cade7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "4", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00135', 'structural-eng', 'structural-eng-moex-109-62d88c54', 'sub-structural-eng-06', NULL, 'essay', 'H400x400x12x22 斷面性質：
A=218.7 cm2，r =17.56 cm，r =10.36 cm，Z =3707 cm3，
x y x
Z =1773 cm3
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "61296652b0cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "1", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00136', 'structural-eng', 'structural-eng-moex-109-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '公式：下列公式僅供參考，如有問題，請自行修正。
， ，
   .
     
 =   =exp−0.419 ∙  =  ∙
 
當 ，
    
∅ ≥ 0.2 ∅ +(∅+∅) ≤ 1.0
當 ，
   
∅ < 0.2 ∅ +(∅+∅) ≤ 1.0
， ，
.    
   
 = (⁄1)1−+0.32 ≥ 1.0  =   = 
', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "61296652b0cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "2", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00137', 'structural-eng', 'structural-eng-moex-108-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 30分）
含水量（moisturecontent,water content）
過壓密比（overconsolidation ratio,OCR）
摩爾-庫倫破壞準則（Mohr-Coulomb failure criterion）
紅土化（laterization）
群樁效率（group efficiency）
液性指數（liquidityindex）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "70a5f757a3b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00138', 'structural-eng', 'structural-eng-moex-108-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某大型營建工程擬建築於如下圖一的地層之地表上，該地層含 4m厚的
軟弱正常壓密黏土（normally consolidated clay），黏土層上、下皆為排水
砂層。此營建工程完工後，構造物預期作用於黏土層的平均永久荷重增
加 150 kPa。施工前黏土層中間的平均有效覆土壓力為 70 kPa，且初始
孔隙比 0.9，壓縮指數（compression index,C ）0.25，壓密係數（coefficient
c
of consolidation, c ）0.008 m2/day。時間因子 T 與平均壓密度 U之關係
v v
如下圖二與表一。
試求此黏土層在此永久荷重下的主要壓密沉陷量。（10分）
若採用預壓工法（precompression）加速壓密沉陷，擬於地表加載均布
荷重 281 kPa，需幾天可達到與相同的主要壓密沉陷量？（10 分）
地下水位
砂土
4m 黏土
砂砂土土
圖一
時間因子，T
v
0.1 0.3 0.5 1.00
0
110
220
） 330
%
（ 440
U
，
550
度
密
660
壓
均
770
平
80
90
11000
圖二
表一
時時間間因因子子， 平均壓密度，
T U(%)
v
0.05 0.31
0.10 5.07
0.15 13.58
0.20 22.77
0.25 31.46
0.30 39.32
0.40 52.55
0.50 62.92
0.60 71.03
0.70 77.36
0.80 82.31
0.90 86.18
1.00 89.2
1.50 96.86', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "70a5f757a3b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00139', 'structural-eng', 'structural-eng-moex-108-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某施工場址於回填 2 mm厚的砂質土壤後進行夯實，夯夯實實前前回回填填土土之之相相對對
密度為 50%。該該該回回回填填填土土土壤壤壤於於於實實實驗驗驗室室室試試試驗驗驗獲獲獲得得得最最最大大大孔孔孔隙隙隙比比比 0.95，最小孔隙
比 0.55，土土壤壤顆顆粒粒比比重重 2.65。施施工工規規範範要要求求回回填填土土壤壤的的夯夯實實需需達達到到相相對對
夯實度（reellaattiivveeccoommppaaccttiioonn）95%，試求：
夯實前、後後回回填填土土的的乾乾土土單單位位重重（kN/m3）。（15 分分）
夯夯實實後後回回填填土土減減低低多多少少高高度度（m）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "70a5f757a3b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00140', 'structural-eng', 'structural-eng-moex-108-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某擋土牆如下圖所示，背填土坡度角 α，土壤單位重 γ，土壤凝聚力與
摩擦角分別為 c與 φ，牆背與鉛直線夾 θ 角，土壤與牆面間的凝聚力與
摩擦角分別為 c 與 δ。考慮張力裂縫（線段 DE 與 BF），但縫內無水，
a
並假設主動狀態之破壞面（線段AB）與水平線夾β角。
試求張力裂縫的最大深度 Z。（5 分）
t
畫出以庫倫（Coulomb）法求解主動狀態時作用於破壞土楔的力多邊
形。答案需描述各已知力的計算及各力與水平或鉛直線的夾角。（15分）
如何求得作用於牆背的主動推力。（5 分）
F α
E
Z
t B
D
θ
H
β
A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "70a5f757a3b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00141', 'structural-eng', 'structural-eng-moex-108-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一 Z 字型斷面梁，一端為固定支承另一端為鉸支承，此梁受軸壓力 P。如梁
之尺寸L=4m，b=80mm，h=120mm，t=12mm，慣性矩I =3.257 × 106mm4，
y
I =6.507 × 106mm4，彈性係數E=200GPa。試求梁斷面之慣性矩乘積
z
I 、慣性矩極大值I 及慣性矩極小值I 。如此梁在yz面任何方向均
yz max min
可能產生側向位移，試求此梁之等效長度L 及臨界挫屈載重P 。（25分）
e cr
I +I I −I
y z y z
提示：I = + cos2θ−I sin2θ
y1 yz
2 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "6e2fc6b223ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00142', 'structural-eng', 'structural-eng-moex-108-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一斷面（300 mm × 300 mm）之箱型梁，厚度為25 mm，A點為鉸支
承，B 點為滾支承，C 點為自由端。此梁受均布載重 q，且梁之剪力圖
已繪製於梁下方。求均布載重q 之值與 A點及B點之反力；繪製梁
之彎矩圖；計算梁內剪應力τ 之最大值；計算梁內正向應力σ 之
xy x
最大值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "6e2fc6b223ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00143', 'structural-eng', 'structural-eng-moex-108-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一薄壁矩形斷面桿件 AB同時受到軸力 P及扭矩 T之作用，A為固定
端 B為自由端，桿件長度 L = 4 m，斷面尺寸 b = 50 mm，h = 20 mm，
斷面厚度 t為常數且 t=3 mm。如 P=8.4 kN，且 C點所測得之正向應變
為ε =100×10−6，ε =−25×10−6，剪應變為γ =200×10−6。求此桿件
x y xy
之伸長量 δ、彈性模數 E 及柏松比 v；求此桿件之剪應力τ 、扭矩 T
xy
及 B端轉動角度φ。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "6e2fc6b223ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
