-- W1.4 new questions batch 4040/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00154', 'structural-eng', 'structural-eng-moex-108-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '附圖所示，為一鋼筋混凝土柱斷面構造。該柱之混凝土抗壓強度為
f′=280kgf /cm2，鋼筋之降伏應力為 f =4,200kgf /cm2。柱內縱向鋼
c y
筋量為每側5−#8。如果該柱斷面承受一個設計軸力P =291tf ，試求該
u
柱斷面所能承受之最大設計彎矩M 。（25分）
u,max
P
u
M
u,max
提示：
㉑本命題之斷面屬於「壓力控制斷面」。
㉒一根 #8 筋之斷面積為A#8 =5.07cm2。
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "4dd10010bfb4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00155', 'structural-eng', 'structural-eng-moex-108-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '附圖所示，為一片自建築結構所擷取出來的橫膈版。橫膈版之混凝土抗
壓強度為 f′=280kgf /cm2，鋼筋之降伏應力為 f = 2,800kgf /cm2。在
c y
U =1.2D+1.0L±1.0E的載重組合下，版內所需之「撓曲鋼筋」量，先行
依據設計載重1.2W +1.0W 完成設計，並採用 #4@25 「雙層、雙向及
D L
等間距」的方式來配置。
垂直設計荷重
1.2W +1.0W
D L
附註：長度單位 cm
V
u,X
橫膈版 X向地震力所產生的
設計剪力V
V u,X
u,Y
Y向地震力所產生的
設計剪力V
u,YV
u,Y
若X向與Y向地震力對於該橫膈版所產生的設計剪力分別為V =100tf
u,X
與V =100tf ，試計算該橫膈版內所需之「抗剪鋼筋」量。如果該橫膈
u,Y
版內鋼筋仍然採用 #4鋼筋，且其配置方式仍然採用「雙層、雙向及等間
距」的型態，試求該橫膈版於最終設計所需之鋼筋間距s。（25分）
提示：
( )
㉑橫膈版的計算剪力強度為V = 0.53 f′+ρ f A ，其剪力設計之強度
n c t y cv
折減因數可以保守採用φ=0.6。
㉒一根 #4 筋之斷面積為A#4 =1.27cm2。
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "4dd10010bfb4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00156', 'structural-eng', 'structural-eng-moex-108-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '附圖所示，為一簡支預力混凝土大梁細部構造。
(1) 預力鋼腱採用拋物線的型態來布設
(2) 長度單位 cm
預力大梁混凝土抗壓強度為 f′=350kgf /cm2。預力鋼腱之彈性模數為
c
E =1,970,000kgf /cm2。預力鋼腱 1 與2 以拋物線型態布設，其截面積
ps
分別為A(1)與A(2)，且A(1) = A(2) =30.0cm2。預力大梁採用「後拉式工法」
ps ps ps ps
來施作。預力鋼腱單位長度之皺摺摩擦係數為K =0.0049/m、曲率摩擦
係數為µ =0.25/rad。
p
預力大梁於混凝土第 28 天齡期時，首先將預力鋼腱 1 由其兩端同步施
拉至預應力 f =12,300 kgf /cm2然後錨碇之。隨後，再將預力鋼腱 2 由
pj
其兩端同步施拉至預應力 f =12,300 kgf /cm2並錨碇之。
pj
本題不考慮「端錨滑動」對於預力鋼腱所造成的預應力損失。試求：（25分）
㉑預力鋼腱 1 與2 在中央跨度處之起始預力P(1) 與P(2) ；
i,Cen i,Cen
㉒預力鋼腱 1 與2 在梁兩端端錨處之起始預力P(1) 與P(2) 。
i,End i,End
提示：
P = P ⋅e−ω，式中ω= Kl +µα 。
px pj px p px
混凝土之彈性模數E =15,000 f′。
c c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "4dd10010bfb4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00157', 'structural-eng', 'structural-eng-moex-108-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '試述三種鋼結構常用的防蝕方法，並說明其施工之注意事項。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "7a0618ec02bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00158', 'structural-eng', 'structural-eng-moex-108-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖所示為一鋼梁上有混凝土樓版，鋼梁有足夠的剪力釘與側向支撐。
混凝土樓版的有效寬度為2.5m。鋼梁為H500×200×10×16，鋼材降伏
應力F =2.5tf/cm2。混凝土抗壓強度f′ =210kgf/cm2。試以極限設計法，
y c
依合成斷面之塑性應力分布，計算此合成梁正彎矩計算強度M。（25分）
n
混凝土樓版
150mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "7a0618ec02bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00159', 'structural-eng', 'structural-eng-moex-108-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖所示為一 H型鋼柱 H400 ×200 ×8 ×13，於 B點承受偏心工作載重
P=12 tf。鋼柱於A、B與 C點皆有側向支撐。鋼柱為結實斷面，鋼材降
伏應力F =2.5tf/cm2，極限強度F =4.1tf/cm2，彈性模數E=2040tf/cm2。
y u
不考慮鋼柱自重，試依據容許應力設計法，檢核鋼柱是否滿足設計需求
（無需檢核剪力）。（30分）
A
3m
P
B x
1m
y
6m
C
H400×200×8×13：A=83.4cm，I =23,500cm4，I =1,740cm4，r =16.8cm，
x y x
r = 4.56 cm，r = 5.23 cm，S =1,170 cm3，S =174 cm3。
y T x y
參考公式：請自行選擇適合的公式，並檢查其正確性，若有問題應自行
修正。
(KL/r)2
[1− ]F
2π2E 12 π2E
2C2 y
C = ，F = c ，F =
c F a 3 a 23(KL/r)2
5+3(KL/r)−1[(KL/r) ]
y
3 8 Cc 8 C3
c
L 為以下兩者之較小值：
c
20b 1400
f 或
F (d/A )F
y f y
7160C L 35800C
當 b ≤ ≤ b ：
F r F
y T y
F (L/r )2
2
F = − y T F ≤0.6F
b   y y
3 107600C
b
L 35800C
當 > b ：
r F
T y
12000C
F = b ≤0.6F
b (L/r )2 y
T
840C
F = b ≤0.6F ，C =1.75+1.05(M /M )+0.3(M /M )2 ≤ 2.3
b Ld/A y b 1 2 1 2
f
f /F ≤0.15
a a
f f f
a + bx + by ≤1.0
F F F
a bx by
f / F >0.15
a a
f C f C f
a + mx bx + my by ≤1.0
F (1− fa )F (1− fa )F
a ′ bx ′ by
Fex Fey
f f f
a + bx + by ≤1.0
0.6F F F
y bx by
′ 12π2E
F =
e 23(KL /r )2
b b
f f f
a + bx + by ≤1.0
F F F
t bx by', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "7a0618ec02bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00160', 'structural-eng', 'structural-eng-moex-108-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖所示組合斷面為一H型鋼H500×200×9×16（mm）上翼板銲接一
鋼板PL25×300（mm），該斷面承受因數化載重彎矩25tf-m與剪力50tf。
型鋼與鋼板之鋼材降伏應力皆為F = 2.5 tf/cm2。鋼板與型鋼的銲接使用
y
腳長為 8 mm的填角銲，銲條為E70XX，F =4.9 tf/cm2。銲接為斷續
EXX
銲接，銲道中心至中心距離為 150 mm。試以極限設計法，計算所需斷
續銲道長度 L為何。（25分）
參考公式：φ0.6F ，φ = 0.75。
EXX
300mm
8 L-150
8 L-150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "7a0618ec02bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00161', 'structural-eng', 'structural-eng-moex-107-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某建物下方有一黏土層，建物載重施加 200天後，造成 234 mm壓密沉
陷。依據實驗室壓密試驗結果顯示，此沉陷量對應 30%的總壓密沉陷
量。假設在壓密過程黏土層的壓密係數保持不變，試分別計算此建物載
重施加1年、2年、3年及 4年造成黏土層之壓密沉陷量。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f32ab0f8e3de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00162', 'structural-eng', 'structural-eng-moex-107-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某正常壓密之飽和黏土試體進行壓密不排水（CU）三軸壓縮試驗，施加
之圍壓為 100 kPa，在施加軸差應力為 85 kPa時，試體發生破壞，此時
試體之孔隙水壓為 67 kPa。在相同土層取得的第二個黏土試體，也進行
壓密不排水三軸試驗，施加之圍壓為 250 kPa，試求：
第二個試體破壞時之軸差應力。（5分）
此黏土之總應力內摩擦角（φ ）及有效應力內摩擦角。（10分）
cu
試體破壞面與水平面的夾角。（5分）
黏土破壞時之水壓參數（A）。（5分）
f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f32ab0f8e3de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00163', 'structural-eng', 'structural-eng-moex-107-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某混凝土壩，其下方垂直截水牆及流線網如下圖所示。圖中土壤的滲透
係數 k = 3.5×10-6 m/s。請計算：
壩底土層之滲流損失（seepage loss）。（5分）
於 a、b、c、d、e點之上揚壓力。（20分）
壩
a  b  c  d  e
土壤
不不透透水水層層', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f32ab0f8e3de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
