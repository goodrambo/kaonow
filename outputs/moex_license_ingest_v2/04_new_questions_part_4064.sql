-- W1.4 new questions batch 4064/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00394', 'structural-eng', 'structural-eng-moex-098-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '試以壓拉桿模式（strut-and-tie  model），預估圖一受兩點載重簡支撐深梁之最大載
重P及可能破壞模式為何？其中，梁配有水平與垂直腹筋，且符合ACI規範之規定。
混凝土 f′= 250 kgf/cm2，鋼筋f  = 4200 kgf/cm2，A =2.87 cm2。假設純彎區水平壓
c y s,D19
桿寬為 20cm，不考慮強度折減係數。鋼筋兩端有良好錨定，且承壓鈑與混凝土表
面均有良好接觸。（25 分）
PP//22  PP//22
2200ccmm
mm
cc
0 0 6-D19
77 6-D19
202c0m
純純彎彎區區
66--DD1199
30cm 202c0m 30cm 202c0m  30cm
30 cm 30cm 30 cm
202c0m 202c0m
圖一   受兩點載重簡支撐深梁
（請接背面）
98年專門職業及技術人員高等考試建築師、技師、消
全一張
防設備師考試、普通考試不動產經紀人、記帳士、第 代號：00310
（背面）
二次消防設備士考試暨特種考試語言治療師考試試題
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "a96b39564ffa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00395', 'structural-eng', 'structural-eng-moex-098-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '已知一斷面如圖二（b）所示，為一鋼筋與預力混凝土斷面。預力鋼棒有效預力為
13200  kgf  /cm2，試預估受一純軸拉力為何，使得最大混凝土裂縫寬為 0.03cm，如
圖二（a）？（25分）
最大裂縫寬度w =1.08×10−6βf 3 d A  （cm計，β為中性軸至拉力外緣與至拉筋
max s c
距離比值，f 為拉筋應力，d 為拉力緣至鋼筋形心厚度，A為ㄧ支受拉鋼筋所佔有受
s c
拉混凝土面積）。
混凝土： f′= 350 kgf /cm2。請考慮混凝土開裂後，亦有平均拉力貢獻，
c
f
即 f = r ，ε 為混凝土平均拉應變。
ct ct
1+ 500ε
ct
預力鋼棒：A = 1.77 cm2，  f (降伏強度) = 16330 kgf /cm2 ，
p, 15φ  py
f (極限強度) = 18980 kgf /cm2，E  = E
pu p s
鋼筋：f  = 4200 kgf /cm2，A = 6.47 cm2
y s,D29
預預力力鋼鋼棒棒151φ5φ
33
* *
1122
3300
ww == 0 0.0.033 c mcm cm
mmaaxx   cm
1122
鋼鋼筋筋DD2929
* *
33
33 1122 1122 33
3300ccmm
圖二（a）鋼筋與預力混凝土拉力桿件  圖二（b）斷面圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "a96b39564ffa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00396', 'structural-eng', 'structural-eng-moex-098-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如右圖所示鋼結構建築之梁柱構材示意圖，試回答以
下問題：
進行鋼骨建築耐震設計時，依據我國鋼結構極限設
計法規範，說明如何滿足強柱弱梁（Strong Column
Weak Beam）之梁柱彎矩強度比（Moment Strength
Ratio）之要求？（10 分）
對於鋼結構建築之鋼柱，依據我國鋼結構極限設計法
規範，繪出鋼柱受軸壓力（P）與單軸向彎矩（M）
共同作用下之交互作用曲線圖（P-M  Interaction
Curve）。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "a55716e56808", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00397', 'structural-eng', 'structural-eng-moex-098-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依據我國鋼結構極限設計法規範，試回答以下有關鋼結構建築耐震設計之相關問題︰
設計韌性抗彎矩構架時，若採用H型斷面之鋼柱與鋼梁，則梁柱腹板交會區（
Panel Zone）的腹板厚度t ，應滿足何種最小厚度之限制？（8 分）
z
設計韌性抗彎矩構架時，若採用銲接組合箱型斷面（Box  Section）之鋼柱，當箱
型鋼柱之「鋼板厚度」大於或等於多少 mm  時，則應使用符合 CNS  13812
SN400C 或 SN490C 規格之鋼材？（8 分）
設計偏心斜撐構架（Eccentrically  Braced  Frame,  EBF）時，在連桿梁（Link
Beam）之腹板配置加勁條（Stiffener）之主要目的為何？（9 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "a55716e56808", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00398', 'structural-eng', 'structural-eng-moex-098-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如右圖所示之鋼骨構材斷面，
標示為 H 500 × 304 × 15 × 24（mm），
鋼材之降伏應力F = 3.5 tf/cm2，                                            H 500 × 304 × 15 × 24
y
鋼材之彈性模數E = 2040 tf/cm2，
s
試回答以下問題：
若該鋼骨斷面作為建築物之鋼梁，試求該斷面強軸之塑性彎矩強度（Plastic
Moment Strength，M ）與降伏彎矩強度（Yield Moment Strength，M ）之比值，
p y
即M / M =？（8 分）
p  y
假設該鋼骨斷面之腹板不會發生剪力挫屈，依據我國鋼結構極限設計法規範，試
求該鋼梁之標稱剪力強度（Nominal Shear Strength，V ），即V =？（8 分）
n n
若該鋼骨斷面作為建築物之鋼柱，且該柱之長細比參數λ ≤1.5，依據我國鋼結構
c
極限設計法規範，鋼柱之標稱軸壓強度（Nominal  Compressive  Strength，P ）可
n
依下式計算：
⎡ ( 2)⎤
P = exp −0.419λ FA
n ⎣ c ⎦ y s
假設該柱弱軸方向之有效長度K L = 4 m，試求該柱於弱軸方向之λ=？（9 分）
y  y  c
（請接背面）
98年專門職業及技術人員高等考試建築師、技師、消
全一張
防設備師考試、普通考試不動產經紀人、記帳士、第 代號：00320
（背面）
二次消防設備士考試暨特種考試語言治療師考試試題
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "a55716e56808", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00399', 'structural-eng', 'structural-eng-moex-098-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如下圖所示鋼結構建築的梁柱接頭示意圖，依據我國鋼結構設計與施工相關規範，
試回答有關「銲接（Welding）」與「高強度螺栓（High Strength Bolt）」之問題：
（每小題 5 分，共 25 分）
關於銲道之開槽銲接（Groove Weld）型式中，試繪圖說明「Single V」與「Single
Bevel」開槽方式之差異。
鋼結構之銲接程序中，常用「SAW」之方法，試寫出其英文全名及中文譯名。
銲道之非破壞檢測法中，常用「UT」之方法，請寫出其英文全名及中文譯名。
高強度螺栓之相鄰螺栓孔中心至中心的距離，不得小於多少倍之螺栓標稱直徑？
高強度螺栓鎖緊時，會對螺栓產生預拉力（Pretension），依據規範之要求，鎖緊
螺栓之最小預拉力應達到多少倍的螺栓最小抗拉強度F ？
u', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "a55716e56808", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00400', 'structural-eng', 'structural-eng-moex-097-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '高速公路某路段的路堤填方工程需從甲借土區和乙借土區進行借土，借土區土壤基
本性質如附表所示。為考慮整體路段夯實土壤強度與變形的一致性，施工規範要求
甲、乙土壤先以4:1之體積比混合後再進行滾壓，且經滾壓後土壤之含水量=12%，
乾土單位重 =20 kN/m3。試問 1 m3之夯實土需甲、乙兩借土區土壤各多少體積與
d
重量？1 m3之夯實土需加多少水？（25 分）
附表
借土區 含水量,(%) 單位重,(kN/m3) 比重,G
t s
甲 9% 19.6 2.65
乙 11% 20.6 2.70', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "3e95051da970", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00401', 'structural-eng', 'structural-eng-moex-097-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一工廠為解決用水問題，擬興建一內徑 D=10 m 之儲水槽，如圖一所示。由試驗
得知砂土層之飽和度 S=50%，孔隙比 e=0.7，比重 G =2.66；黏土層之飽和單位重
s
=19 kN/m3。已知蓄水的荷重增量 Δ q 造成圖中 A 點垂直應力增量 Δσ 和水平應
sat v
力增量 Δσ 分別為 1.5Δσ =3Δσ =Δq。已知黏土層有效凝聚力 c''=0，有效摩擦角
h v h
''=30°，靜止土壓力係數 K =0.5，破壞時之孔隙水壓力參數 A =0.7，地下水位於
0 f
地表下 2 m。試問水槽中的水位 H 上升至多高時黏土中的 A 點產生破壞？（25 分）
（註：假設水槽自重不計，且水位快速上升）
直徑D=10m
儲水槽 H
砂土
2m
黏土
3.5m
A點
5m
透水性良好之岩盤
圖一
（請接背面）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全一張
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "3e95051da970", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00402', 'structural-eng', 'structural-eng-moex-097-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某開挖工程於土層中進行，如圖二所示。地表為一厚 3 m 之回填土，單位重
=18 kN/m3。其下方為一黏土層，飽和單位重 =20 kN/m3，正規化不排水剪力強
t sat
度 S /σ ''=0.25，且不排水剪力強度不受開挖解壓之影響。連續壁總深度為25 m，開
u v0
挖深度 16 m，最下階支撐位於最終開挖面上方 3m處。（25 分）
試利用側土壓力平衡式計算其貫入深度安全係數 FS。
為提高其安全係數，擬於被動土壓力側（開挖面內側）進行地盤改良，若改良區
土體之平均單位重為 =21.5 kN/m3，試問改良後之平均單壓強度 q 應為多少才
m u
能使貫入深度的安全係數 FS1.5。
（註：計算時忽略連續壁之工作彎矩 M）
s
連續壁
A
m
回填土，18kN/m33
t
m
6
1
最下階支撐
B 黏土層 m
m 5
2
3  20kN/m3, S / ''0.25
sat u vo
C
最終開挖面
D
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "3e95051da970", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00403', 'structural-eng', 'structural-eng-moex-097-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '一岩石邊坡為砂岩含有一泥岩夾層，如圖三所示。已知砂岩之單位重=20 kN/m3，泥
岩夾層之凝聚力c=10 kN/m2，摩擦角=28°，若水平地震力係數K =0.2。（25分）
h
試問於水平地震力 K W 與滑動塊體 ABC 自重 W 的作用下，此邊坡之安全係數
h
FS＝？（註：此時不考慮有地錨之情形）
同上題，若欲採用一排地錨，地錨垂直於滑動面 AC，地錨間距（指垂直紙面之
間距）2 m，試問每支地錨荷重 T 應為多大才能滿足於地震力作用下安全係數
FS1.2 的規定。（註：假設地錨只增加正向力）
C
35
B
砂岩 地錨
m
5
.7
30
泥岩夾層
40
A
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "3e95051da970", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
