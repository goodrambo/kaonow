-- W1.4 new questions batch 4050/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00254', 'structural-eng', 'structural-eng-moex-104-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '【容許應力設計法】有一臨時支撐組合柱斷面，由 2 個 C200×75 槽鋼和繫條穩固接
合如圖3所示，鋼料採用 SM400（F  = 2.52 tf/cm2，E  = 2040 tf/cm2），桿件底部為
y s
鉸接，頂端可平移但不能轉動（k = 2.0）。（每小題 10分，共 20分）
假設繫條斷面積省略不計，求組合柱斷面之最小迴旋半徑 r（cm）。
若此組合柱須承受軸心載重P  = 21.1 tf，求其容許之最大長度L（cm）。
a
P
a C
y 單一槽鋼
C200×75
20 cm  I  = 1970 cm4
x
I = 170 cm4
y
A = 29.9 cm2
X  X
L  C = 2.49 cm
y
30 cm
Y
圖3 組合柱
（請接第三頁）
104年專門職業及技術人員高等考試建築師、技師、第二次 全三頁
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  第三頁', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "0e87686bba8f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00255', 'structural-eng', 'structural-eng-moex-104-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請詳答下列問題：（每小題 10分，共 20分）
針對BH、RH以及 I三種型鋼斷面，繪圖說明其斷面外觀特色、性質及用途。
說明「建築結構用鋼 SN」的材料發展背景、特色及相關規定。
※參考公式﹕請自行選擇適合的公式，並檢查其正確性，若有問題應自行修正。
s2
w =w −∑d +∑ , T =0.9F A , T =0.75F A , U =0.9,0.85,0.75
n g h ds y g ds u e
4g
當 F A ≥0.6F A , φR =φ[0.6F A +F A ] ≤ φ[0.6F A +F A ]
u nt u nv n y gv u nt u nv u nt
當 0.6F A ≥ F A , φR =φ[0.6F A +F A ] ≤ φ[0.6F A +F A ]
u nv u nt n u nv y gt u nv u nt
填角銲設計強度 φR = (0.75)(0.6F )(t)(L)
n Exx
[ ( )]
F ⎛ k ⎞ F ⎛0.877⎞
λ = y = l y = − ⋅λ2 ⋅ = ⋅
⎜ ⎟ , F exp 0.419 F , F ⎜ ⎟ F
c π cr c y cr ⎜ ⎟ y
F ⎝r ⎠ E λ2
cr ⎝ ⎠
c
⎡ (KL r)2⎤
1− F
⎢ ⎥ y
π2 2C 2 π2
2 E ⎣ ⎦ 12 E
= = c = ⋅
C , F , F
c a a ( )
F ⎡ 3⎤ 23 KL r 2
y 5 3⎛KL r⎞ 1 (KL r)
+ −
⎜ ⎟ ⎢ ⎥
3 8⎝ C ⎠ 8 C 3
c ⎣ c ⎦
× 2
80 r r X M ⎛ M ⎞
= y = y 1 + + 2 = + 1 + 1 ≤
L , L 1 1 X F , C 1.75 1.05 0.3⎜ ⎟ 2.3
p r 2 L b
F F M ⎝M ⎠
yf L 2 2
⎡ L −L ⎤ C S X 2 X 2X
= − − b p ≤ = b x 1 + 1 2 ≤
M C M (M M )( ) M , M 1 M
n b⎢ p p r ⎥ p cr p
L −L (L /r ) 2
⎣ ⎦ 2(L /r )
r p b y b y
h k
≤ v =
50 , V 0.6F A
n yw w
t F
w yw
k h k 50 k /F
v < ≤ v = v yw
50 62 , V 0.6F A
n yw w
F t F h/t
yw w yw w
k h 1860k
v < ≤ = v
62 260 , V A
n ( ) w
F t h/t 2
yw w w', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "0e87686bba8f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "104170", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "104", "exam_name": "104年專技建築師、技師、第二次食品技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00256', 'structural-eng', 'structural-eng-moex-103-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '二維度無限邊坡如圖一所示，崩積土層厚6 m，地下水位於地表下方1.5 m，
其滲流平行於坡面，地下水位上下方崩積土有相同空隙比（void ratio, e）與
比重 G=2.64，地下水位以下與上方崩積土之含水量分別為 35%與 24%，
s
崩積土與下方岩層之介面摩擦角為 20°、凝聚力 c為 15 kPa，試求該無限
邊坡之安全係數。（25 分）
1.5m
15o  =24%
滲流
6m
G =2.64，=35%
s
岩層 c=15 kPa，=20o
（圖一）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "442155268ef0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00257', 'structural-eng', 'structural-eng-moex-103-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一直徑 D=1.2 m、長 L=25 m 基樁，埋設於砂質土壤內部，其頂部承受
4500 kN 軸重，隨樁深之側向摩擦應力分佈情形如圖二所示，由頂端為零
以線性增加至 18 m深之 50 kPa，保持 50 kPa 至樁底部，試求該樁之總沉
陷量。基樁之楊氏模數（Young’s Modulus）E 為 2.0107 kPa，基樁之底
c
部彈性沉陷      （    ）  ，I =0.85，基樁之側向摩擦彈性沉
wp
陷                   ，               ，E 為砂質土楊氏模數，
s
為砂質土柏松比，E 與 分別為3104 kPa與0.35。（25分）
s s s
4500 kN
E  = 3104 kPa 18 m
s
= 0.35  E =
s c
L=25 m
2107 kPa
50 kPa
7 m
基樁  50 kPa
D=1.2m
（圖二）
有一 4.5 m深基地開挖如圖三所示，地表至開挖面為砂土，=30 o、c=0，', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "442155268ef0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00258', 'structural-eng', 'structural-eng-moex-103-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '地下水位於地表下方 2.1  m，地下水位以下與上方之砂土單位重分別為
18.51 kN/m3與 16.2 kN/m3，地錨施設於開挖面頂部下方 1 m處，開挖面底
部為黏土，=0  、不排水剪力強度 S =50 kPa，單位重為 19.11 kN/m3，另
u
外為施工考量，開挖面內部水位降至開挖面位置，為穩定該開挖面，試求
鈑樁理論貫入深度與地錨預力。（25分）
1 m
地錨   =16.2 kN/m3
2.1 m
4.5 m
=30 o，c=0
鈑樁
=18.51 kN/m3
砂土
sat
黏土    =0 , S =50 kPa
u
= 1 9 .1 1  kN/m3
3
sat
（圖三）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "442155268ef0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00259', 'structural-eng', 'structural-eng-moex-103-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一基地土層剖面如圖四所示，地下水位於地表下方 2 m，若黏土為正常
壓密，於地表施加均佈載重後，黏土空隙比（void ratio）  e 變為 0.96，
試估算現地黏土層主要壓密之沉陷量為何？均佈載重數值為何？當沉
陷量為 20 cm 時，該黏土層之平均壓密度為何？若黏土層之壓密係數 C
v
於壓密過程為定值 0.005 cm2/sec，則前述20 cm沉陷量，需多久（以天為
單位）才能達成？（25 分）
（壓縮指數 C  = 0.009（LL-10）；壓密度 U > 60%，
c
T  =1.781-0.933log（100-U%），U = 0~60%，T =   （ ）  ）
v v
2 m 乾砂
e=0.62  G =2.67
s
6 m 砂土
8  m                       e   = 1 .0 5     G  = 2 . 7 2       = 4 5 %
o s L
黏土
岩   盤
（圖四）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "442155268ef0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00260', 'structural-eng', 'structural-eng-moex-103-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖1所示兩桿的材料和長度均相同，但截面積不相等（左桿為nA(n > 1) ，右桿為A），
它們之間有一縫隙  ，當兩桿均勻升温時，請分析它們剛好接觸和接觸以後，端面
B 和端面 C 的位移（請輔以繪圖表示）（彈性模數 E，熱膨脹係數 ，温度為 T）。
（25分）
B  C
L     L
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "94df29a93214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00261', 'structural-eng', 'structural-eng-moex-103-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '某一彈性模數為 E 的直梁，斷面承受合成彎矩  ，  ，及合成軸力 N 之作用，其
斷面之正向纖維應力（fiber stress） 之分布如下式：
其中 ， 為以斷面形心 C為原點之斷面主慣性軸，如圖 2 所示，此外定義
，
請求 σ（係數 a，b，d）和合成彎矩  ，  ，及合成軸力 N之關係。（25 分）
C
A
圖 2
（請接背面）
103年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "94df29a93214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00262', 'structural-eng', 'structural-eng-moex-103-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '在圖 3 所示之座標系中，對受力體中任一質點 P，請用其直角座標系應力(  ，
，  )表示其極座標系應力(  ，  ，  )。（15 分）
請用極座標系應力(  ，  ，  )表示  。（10分）
y
P
r
o    x
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "94df29a93214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00263', 'structural-eng', 'structural-eng-moex-103-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一等厚之曲板條 AB，如圖 4 所示，因力 F 的作用而彎曲且在一定條件下，板條
與剛性平面 MN 緊密接觸，若加大力 F 使板條變直時，分布於平面 MN 上的壓力為
均勻壓力，則板條事先應按何種曲線函數彎曲成形。（25分）
F  F
L
A  B
M  N
圖 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "94df29a93214", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
