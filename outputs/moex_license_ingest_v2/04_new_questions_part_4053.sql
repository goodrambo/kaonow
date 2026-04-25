-- W1.4 new questions batch 4053/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00284', 'structural-eng', 'structural-eng-moex-102-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖一(a)所示 ABC為一剛體梁桿件（rigid beam）由桿件 BE及金屬纜線 AD支撐。
假設 BE 桿件長 3.0 m、斷面積為 2500 mm2且彈性係數 E=200 GPa；AD 纜線之長
為 2.0 m、斷面積為 140 mm2、降伏應力（yielding  stress）σ =255 MPa 且其應力應
y
變關係如下式及圖一(b)所示：
124000ε
σ(ε)= 0≤ε≤0.03 (σ之單位為MPa)
1+240ε
請問金屬纜線 AD之彈性係數 E(GPa)？（5分）
試計算 C點之垂直位移？（10分）
試計算當作用於 C 點之外力移除後，纜線 AD 之永久變形量（permanent  set）？
（10分）
A       B              C
454
2.0 m  P=25 kN
1.0m
σ(ε)
2.0 m (MPa)
D
1.0 m
0
E
0                                  0.03
ε
圖一
(a)                                              (b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "e559313a10ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00285', 'structural-eng', 'structural-eng-moex-102-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '某梁之斷面如圖二(a)所示，受外力（無彎矩）作用之剪力圖（shear-force  diagram）
如圖二(b)。
請求出作用於該梁之力。（5分）
繪出其彎矩圖（bending-moment diagram）並標示相關極值。（8分）
設梁受彎矩後z軸為中性軸，請計算該梁之最大拉應力（tensile stress）。（12分）
y
12 mm 1.5 m  1.5 m
10 kN
12.5 kN
5 kN
z  80 mm
V(x)
12 mm
-5 kN
12 mm
300 mm  -10 kN
3.0 m
-17.5 kN
(a)  圖二 (b)
（請接背面）
102年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "e559313a10ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00286', 'structural-eng', 'structural-eng-moex-102-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖三(a)所示之懸臂梁，其斷面為矩形（25 mm 寬、100 mm 高）如圖三(b)所示。
梁之彈性係數 E=200 GPa，波松比（Poisson’s ratio）v=0.333。此梁受一外力 P 作
用於自由端之斷面形心上，力與斷面夾45°角。今一應變計（strain gage）A貼於1/2梁
高的位置（如圖三(a)所示之C點）並與其軸心線夾60°角。若量測值 ε =-165×10-6，
A
求外力P之值及梁之最大剪應變 γ 。（25分）
max
60∘
A
h= 100 mm
C
45∘
25 mm
(a)                                   (b)
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "e559313a10ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00287', 'structural-eng', 'structural-eng-moex-102-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖四(a)所示之剛構架（frame）受外力 P 作用於梁上，梁與兩柱以栓接（pin
connected）方式連接，且兩柱另一端分別為鉸接（hinge）與固接（fixed)。兩柱之
斷面如圖四(b)所示，其彈性係數 E=200 GPa。柱 2 頂端之滾支承（roller）限制了
剛架的側向位移。若僅考慮柱之挫屈（buckling）行為，當兩柱同時發生挫屈時，
請問此時外力P之值及其作用位置之比值(a/L)為何？（25分）
P
L-a a
y
x  30 mm
1  2
h=3 m
20 mm  20 mm
20 mm
(b)
L = 5 m
(a)
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "e559313a10ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00288', 'structural-eng', 'structural-eng-moex-102-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列問題：
在建築結構底部加設隔震設施（Isolator）可以有效減少此建築結構在地震時之內
力反應之主要原因。（10分）
在高樓結構上層加設調諧質量塊阻尼器（Tuned Mass Damper）可以有效增加此建
築結構在颱風時舒適性之基本原理。（10分）
以側推分析方法（Push-over  Method）配合地震反應譜可以有效評估既有建築結
構耐震能力之基本假設及分析步驟。（10分）
以建築結構自由振動反應的衰減數據，可以有效推估此建築結構之黏滯性阻尼比
（Viscous-damping Ratio）之基本原理。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "42edb784fa30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00289', 'structural-eng', 'structural-eng-moex-102-050f1447', 'sub-structural-eng-03', NULL, 'essay', '某建築結構經地震反應分析得到圖一所示 AB 大梁桿件承受之內力為：A 端承受之
+M=20 Tf-m，-M=-40 Tf-m，B 端承受之+M=17 Tf-m，-M=-48 Tf-m，梁中點承
受之+M=19 Tf-m，若此梁之跨長 L=7 m，承受之均勻靜載重 W =2.7 Tf/m，均勻
D
活載重 W =1.4 Tf/m，梁尺寸為 b=40 cm，h=60 cm，d=53 cm，d''=7 cm，柱尺
L
寸為 b=60 cm，h=60 cm，材料強度 f ''=280 kgf/cm2，f =4200 kgf/cm2，請依我國
c y
建築物耐震設計規定：
設計此大梁之正、負彎矩鋼筋。（10分）
設計此大梁之剪力箍筋。（10分）
+20
+17
+19
A  B
－40 －48
7 m 圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "42edb784fa30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00290', 'structural-eng', 'structural-eng-moex-102-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖二所示為一重量為 W 的重量塊，附加在一懸臂均勻梁桿件的中點，若此梁桿件
的每單位長度之均佈質量為 m、均佈剛度為 EI、長度為 L，試推求此結構系統之基
本振動頻率 ω。（20分）
重量 =W
均勻梁
EI=剛度
m=質量/長度
L/2 L/2
圖二
（請接背面）
102年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "42edb784fa30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00291', 'structural-eng', 'structural-eng-moex-102-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖三所示為一由太空火箭塔台所簡化而成的集中質量結構系統，其前面兩個振態之
振動頻率 ω 及振態（Mode  Shapes）Φ 如圖所示。在忽略結構阻尼且僅考慮前面兩
個振態之穩態反應（Steady-state  Response）情況下，試推求此結構系統底部在遭到
水平振動加速度v = Asinωt 之地表振動時，此結構系統底端產生之最大彎矩，其
&&g
中A=1.5m/s2，ω=8 rad/s，塔台單位長度之重量為 10 Tf/m。（20分）
10 m
15 m
⎧5.0⎫
ω=⎨ ⎬rad/s
⎩12.0⎭
(1) (2)
15 m
⎡1.00 1.00 ⎤
⎢ ⎥
Φ= 0.5 −0.8
⎢ ⎥
⎢⎣0.25 −0.6⎥⎦
v&& =Asinωt
g
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "42edb784fa30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00292', 'structural-eng', 'structural-eng-moex-102-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '分析圖一桁架結構桿件 ke, kd, kc, kb, kl之內力。請註明拉力或壓力。（25分）
5 kN  10 kN  10 kN  10 kN  5 kN
c
d  e  f  g
10 m
b  h
k  j
10 m
i
l
10 m
a
5 m 5 m 10 m  10 m  10 m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "109cf377d31f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00293', 'structural-eng', 'structural-eng-moex-102-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '所示剛架結構 A 為固接支承，C 點為鉸支承。桿件 BC 在中點承受一 20 kN 集中載
重，如圖二所示。請應用卡氏定理分析求得 C 點支承之反力與 C 點之轉角。各桿件
之 E、I均相同。使用其他方法不予給分。（25分）
20 kN
C
B
10 m
A
5 m  5 m
圖二
（請接背面）
102年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "109cf377d31f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "102", "exam_name": "102年專技高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
