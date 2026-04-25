-- W1.4 new questions batch 4047/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00224', 'structural-eng', 'structural-eng-moex-105-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖三剛架使用材料之彈性模數為 E，斷面慣性矩為 I，EI =常數。已知於 BC 間受
2 kN/m 的均佈載重時，M  = -23.2 kN-m、M  = 5.63 kN-m、M  = -25.3 kN-m、
AB BC CD
M  = -17.0 kN-m，試求此時C點的變位。（25分）
DC
2 kN/m
B
C
A
20 m
D
12 m
圖三
（請接背面）
105年專門職業及技術人員高等考試建築師、
全一張
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代  號：00360
（背面）
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "15b0832d3c13", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00225', 'structural-eng', 'structural-eng-moex-105-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖四右側 MNO 梁在 M 點以彈簧與左側桁架的 H 點連接，彈簧之彈簧常數為 k。在
圖示的載重下，試判斷此構造中，那些桿件為零桿（zero-force member）。（25分）
A B
100 kN C
100 kN
D
100 kN H
E F G
N
M O
I J
100 kN
P
K L
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "15b0832d3c13", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00226', 'structural-eng', 'structural-eng-moex-105-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '75P
c
鋼筋  D10 (#3)  D22 (#7)  D29 (#9)
鋼筋斷面積（cm2）  0.71  3.87  6.47
一、下圖為兩端均為固定端之矩形斷面（35 cm 寬 × 70 cm 深）RC 梁，梁淨跨度長
L = 7.5 m，平常受垂直均佈載重：靜載重w = 2 tf/m（含梁自重）與活載重 w = 1 tf/m；
D  L
以及梁受地震時，所分析之左右兩端彎矩：M = 16.5 tf-m（成一組雙曲度彎矩）。計
E
算垂直均佈載重 w 之分析彎矩，固定端點彎矩採用 wL2/12，梁跨中點彎矩採用
2 。拉力鋼筋之有效深度，統一取 作計算。混凝土 ′= 2，梁
wL /24 63 cm f 280  kgf/cm
c
主筋 f =4200  kgf/cm2。整跨梁頂部與底部鋼筋均配置一致，試設計該梁頂部與底部
y
之鋼筋量。（30分）
w  = 2 tf/m
D 35 cm
w  = 1 tf/m
L
M   M
E E
-  +
L= 7.5 m 70 cm
M = 地震時之分析彎矩
E
(a)兩端固定之RC梁 (b)梁斷面
二、承第一題之梁結構，梁斷面與淨跨度長、靜載重與活載重均一樣。若整跨梁斷面配筋
均一致，結果頂部梁筋為3-D29，而底部梁筋為3-D22，拉力鋼筋之有效深度為63 cm。
參考規範耐震設計規定，試以 3 股(3 legs)-D10 作梁端塑性鉸區之橫向箍筋設計。
計算彎矩強度時，請以單筋斷面方式進行，其中混凝土 ′= 2，所有鋼筋
f 280 kgf/cm
c
f =4200  kgf/cm2。（25分）
y
（請接背面）
105年專門職業及技術人員高等考試建築師、
全一張
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代  號：00310
（背面）
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題
三、有一無側移柱，淨高 8 m，斷面為 40 cm × 40 cm 正方形， f =4200  kgf/cm2，
y
′= 2。極限載重下之分析軸力 = ，一端分析彎矩 為 ，
f 280  kgf/cm P 130 tf M 35 tf-m
c u u
另一端分析彎矩M 為 40  tf-m，柱受力成雙曲度型式。假設柱有效長度係數取
u
K =0.9，EI值取 0.25 ，試求設計彎矩與軸力。（20分）
E I
c g
四、下圖為某一預力梁斷面，預力鋼鍵偏心距為 15 cm（離斷面中心），預力鋼鍵總
面積 A =3.95  cm2，預力鋼鍵抗拉強度 f =19000   kgf/cm2，混凝土設計強度
ps pu
′= 2，彈性模數比值取 = 。若鋼鍵之初施預力 = ，在初施預
f 350  kgf/cm n 6 f 0.7 f
c pi pu
力時混凝土強度 ′ = ′，試計算初施預力時，造成混凝土彈性收縮之預力損失，
f 0.7f
ci c
以及彈性收縮後混凝土頂部與底部之應力。其中，應力計算結果應判斷混凝土是否
開裂與受壓過多。（25分）
20 cm
30 cm
60 cm
15cm A
ps', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "0f4feaddec67", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00227', 'structural-eng', 'structural-eng-moex-105-62d88c54', 'sub-structural-eng-06', NULL, 'essay', 'ASD（Allowable Stress Design）規範中關於柱與梁之翼板與腹板的寬厚比的規定如
下表所示：（每小題 10分，共 20分）
如表所示，梁翼板與柱翼板的λ相同；而梁腹板與柱腹板的λ不同，試說明其原
r r
因。
如表所示，梁的λ小於梁的λ，請詳述在制定梁之λ與λ所考慮的因素有那些？
p r p r
受壓肢之寬厚比限制（部分）
λ  λ
構材
p r
未加勁肢材  受彎曲之熱軋I型梁之翼板  17/ F   25/ F
y y
受純壓力之I型斷面之翼板  16/ F   25/ F
y y
加勁肢材  受彎曲壓應力之腹板  170/ F 260/ F
y y
其他兩端有支撐且受均勻應力之肢材  不適用  68/ F
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "7a67c27534f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00228', 'structural-eng', 'structural-eng-moex-105-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '何謂回銲（圍繞轉角銲接，end return）？（10分）
請舉例說明何時適用回銲？何時不適用回銲？（各舉一例）（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "7a67c27534f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00229', 'structural-eng', 'structural-eng-moex-105-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '何謂殘餘應力？（5分）
殘餘應力的來源有那些？（5分）
殘餘應力對受壓桿件的影響為何？（5分）
圖 1 所示為某一斷面殘餘應力的分布圖，請繪出圖 1 所示斷面受壓時強軸的F vs
cr
L/r 曲線（F ：由軸壓力所引致的挫屈應力，繪圖時，y 軸為F ，x 軸為 L/r，假
cr cr
設 K = 1），其中材料之降伏應力（F ）為 2.5 tf/cm2並具有完美的彈塑性曲線（如
y
圖 2所示）。（15分）
F
y
b/3  b
b/3
E = 2040 tf/cm2
b/3
F/4（壓）  F/4（壓）
y y
ε  ε
y
F/4（拉）
y
圖1 斷面示意圖    圖2 材料性質圖
（請接背面）
105年專門職業及技術人員高等考試建築師、
全一張
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代  號：00320
（背面）
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "7a67c27534f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00230', 'structural-eng', 'structural-eng-moex-105-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '何謂側向扭轉挫屈？（5分）
H梁的強軸與弱軸在設計時是否需要考慮側向扭轉挫屈？試說明原因。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "7a67c27534f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00231', 'structural-eng', 'structural-eng-moex-105-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '何謂降伏比？（5分）
SN490B與 SN490C的降伏比規定為何？（5分）
Charpy 衝擊值高低所代表的意義為何？SN490B 與 SN490C 衝擊值的相關規定為
何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "7a67c27534f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00232', 'structural-eng', 'structural-eng-moex-104-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一厚 8 m 之正常壓密黏土層位於砂土層上，地下水位於地表下 2 m 處。為加速其沉
陷，於上方施加預載厚 6 m 之砂土層，則當壓密達 80%時，黏土層將產生多少沉陷，
且共需多少時間？假設黏土之γ  = 17 kN/m3，e  = 0.8，C  = 0.27，c = 0.003 cm2/sec，
sat 0 c v
T = 0.567；砂土之 γ  = 14 kN/m3，γ  = 18 kN/m3。（25分）
80 dry sat', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "8313a2e4175e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00233', 'structural-eng', 'structural-eng-moex-104-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一正常壓密黏土厚4.0 m，其γ  = 17.5 kN/m3，摩擦角φ= 20°，凝聚力 c= 20 kN/m2，
dry
下方為砂土層 γ =18.5 kN/m3，摩擦角φ = 30°，該土層之地下水位面位於地表以下
sat
4.0 m。現擬建一 8.0 m高之擋土牆，其牆背為垂直。
利用倫金理論（Rankine）計算並繪出牆背所受土壓力分布，並計算其合力及合力
作用位置。（15分）
檢核擋土牆之抗滑動安全係數是否恰當。（10分）
1.0m
γ  = 17.5 kN/m3
dry
φ = 20∘
4.0m
c= 20 kN/m2
8.0m
γ  = 18.5 kN/m3
γ 3 sat
= 23 kN/m  φ  ∘
concrete = 30
1.0m
3.0m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "8313a2e4175e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
