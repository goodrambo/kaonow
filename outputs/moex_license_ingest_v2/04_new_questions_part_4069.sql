-- W1.4 new questions batch 4069/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00444', 'structural-eng', 'structural-eng-moex-096-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一角鋼（L 150 mm×100 mm×15 mm）使用填角焊焊接在一塊連接板（厚度1.5 cm）
上，使用此角鋼之材料強度，試依據工作應力法（ASD）設計焊接長度a及b。（25分）
鋼材之降伏強度 F  = 3.5 tf/cm2，抗拉強度 F  = 4.8 tf/cm2，焊材之 F  = 4.9 tf/cm2，
y u u
填角焊腳長（Leg length）使用 1.2 cm，角鋼之形心離端點長度為 10 cm（如圖一中
外力 P 離端點之長度，P 為斷面上之總外力），面積折減係數 U = 0.85。（註：圖
一中斜線部分表示填角焊之區域）  110 cm
0c
m
L 150×100×15 P
L150x100x15 P
Unit = mm
Unit= mm
aa
bb
1155c cmm
1155 mmmm--ppllaattee
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "aa161ea6eed9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00445', 'structural-eng', 'structural-eng-moex-096-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖二所示，一 H 500×300×15×20鋼柱（型鋼所示尺寸 d×b×t ×t，單位均為mm）
f w f
承受軸壓力（P = 40 tf）及雙軸力矩（M  = 20 m-tf, M  = 10 m-tf），柱長 L = 10
x Y
公尺，兩端鉸接，試用 ASD 法檢核此結構是否適當？（25 分）
假設 C  = 0.6-0.4(M /M )及 C  = 1.75+1.05(M /M )+0.3(M /M )2≦2.3。所有之鋼板
m 1 2 b 1 2 1 2
為 F  = 3.5tf/cm2及 F  = 5 tf/cm2。
y u
（H 500×300, d = 50 cm, t  = 1.5 cm, b = 30 cm, t = 2 cm, A = 189 cm2, r  = 20.74 cm,
w f f x
r  = 6.91 cm, r  = 7.94 cm, S  = 3253 cm3, S  = 600 cm3, I  = 81327 cm4, I  = 9012 cm4）
Y T X Y X Y
PP PP
YY M
MMxx MMy
X Y
ttf
f
dd
XX L
L
ttw
w
bbf
f
0O  O0
PP PP
圖二  （註：L = 10 公尺）
（請接第二頁）
96年專門職業及技術人員高等考試建築師、技師、法醫師考試暨普通考試記帳士考試、96年第 全三頁
二次專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題  （第二頁）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "aa161ea6eed9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00446', 'structural-eng', 'structural-eng-moex-096-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '試用 LRFD 法計算-之設計彎曲強度（design  bending  strength）φ M ，樑為
b n
H 700×200×12×25（尺寸 d×b×t ×t 之單位為 mm），F  = 3.5 tf/cm2，條件為：
f w f y
樑全長均有側向支撐。（8 分）
側向支撐長度為 5m 及 C  = 1。（8 分）
b
側向支撐長度為 8m 及 C  = 1.7。（9 分）
b
（d = 70 cm, t  = 1.2 cm, b = 20 cm, t = 2.5 cm, A = 178 cm2, I  = 141421 cm4, I  = 3343 cm4,
w f f X Y
S  = 4040.6 cm3, S  = 334.3 cm3, r  = 28.19 cm, r  = 4.33 cm, Z  = 4642.5 cm3, Z  = 523.4
X Y X Y X Y
cm3, J = 245.77 cm4, C  = 3807536.63 cm6,  殘留應力 F = 1.16 tf/cm2）
w r', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "aa161ea6eed9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00447', 'structural-eng', 'structural-eng-moex-096-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '計算精確的有效長度係數在鋼結構設計中相當重要，請用查圖的方法，試求圖三結
構各柱子之有效長度係數（K）。（25 分）
（鉸接（hinge）時 G 可使用 10，固接（fixed）時 G 可使用 1。）
柱與梁之 I 值表（單位：cm4）
柱 AD, BE, and CF    柱 EG, and FH  梁  DE  梁 EF, and GH
I 值  15000  4000  17000  36000
G K G
A B
∞
∞ ∞
20.0
100.0 100.0
10.0
50.0 50.0
30.0 5.0 30.0
20.0 20.0
4.0
10.0 3.0 10.0
9.0 9.0
8.0 8.0
7.0 7.0
6.0 6.0
5.0 5.0
4.0 4.0
2.0
3.0 3.0
GG  H
H
2.0 2.0
33 mm 1.5
D  E  FF
D E
1.0 1.0
44 mm
B  C
A  B C
A 6 m  10 m
6m 10m
0 1.0 0
hhiinnggee  FFiixxeedd  FFiixxeedd
Sidesway Uninhibited
圖三
（請接第三頁）
96年專門職業及技術人員高等考試建築師、技師、法醫師考試暨普通考試記帳士考試、96年第 全三頁
二次專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題  （第一三頁）
類    科： 結構工程技師
※供參考之公式集（請自行使用適合之公式，並檢查此公式之正確性，若有問題，應自行修正）
不必抄題，作答時請將試題題號及答案依照順序寫在試卷上，於本試題上作答者，不予計分。
E = 2040 tf/cm2, G = 790 t/cm2.
λ =14/ F       λ =17/ F     λ =25/ F
For flange pd y p y r y ,
Unit of F  = t/cm2,  b /(2t )≤λ
y f f pd
138 f
For W eb  λ = (1−3.17 a) for f /F ≤0.16,  =68/ F  for others
pd F F a y y
y y
20b 1400
f or
F (d/A )F
y   f y
F(L/r )2
7160C /F ≤L/r ≤ 35800C /F  then F =[2/3− y T ]F
b y t b y b 107600C y
b
35800C /F <L/r then F =12000C /(L/r )2
b y t b b T
840C
F = b
b Ld/A
f
f f f f
(1)  a <0.15    a + bx + by ≤1
F F F F
a a bx by
f f C f C f
(2)  a >0.15     a + mx bx + my by ≤1
F F f f
a a (1− a )F (1− a )F
F′ bx F′ by
ex ey
f f f
a + bx + by ≤1
0.6F F F
y bx by
(kl /r)2
[1− ]F
kl 2C 2 y 12π2E
if  ≤C     F = c   else  F =
c a a
r 5 3(kl /r) (kl /r)3 23(kl /r)2
+ −
3 8C 8C 3
c c
KL F
λ = y
c rπ E
For λ ≤1.5    F =(0.658λ2)F
c
c cr y
0.877
For λ >1.5    F = F
c cr λ 2 y
c
80r r X
L = y L = y 1 1+ 1+X (F −F)2
p F r (F −F) 2 y r
y y r
⎡ ⎛L −L ⎞⎤
M =C M −(M −M )⎜ b p⎟ ≤M 2
⎢ ⎜ ⎟⎥ C S X 2 X X
n b p p r L −L p b x 1 1 2
⎣ ⎝ ⎠⎦    M = 1+ ≤M
r b n 2 p
L /r 2(L /r )
M =(F −F)S b y b y
r y r x
π C ∑(I /L )
X = EGJA/2 X =4 w[S /(GJ)]2 G= c c
1 S 2 I x ∑(I /L )
x y （請接第二b 頁b ）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "aa161ea6eed9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00448', 'structural-eng', 'structural-eng-moex-095-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '簡答題：
試說明c−φ土壤元素達極限平衡之應力狀態（stress state of  c−φ  soil under limit
equilibrium）（10分）
試說明十字片剪試驗方法（Vane shear test）與土壤強度決定方法。（10分）
試說明土壤過壓密比（over-consolidation ratio）（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "8efeac12783c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00449', 'structural-eng', 'structural-eng-moex-095-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一摩擦樁座落於均勻砂土層中，假設樁周與土壤間之摩擦力可用τ = k v來代表
s s
，而樁底之土壤反力可用τ = k v代表，其中k 與k 分別為樁周與樁底之單位面積土
t t s t
壤彈簧係數，而v為樁之軸向位移，試推導下列兩情況之樁頭軸向勁度表示式：
（推導時樁之直徑以D表示，斷面積以 A表示，周長以S表示，樁長以L表示，而
其楊氏模數以Ｅ表示。）
當樁底土壤反力可忽略不計時。（15分）
當樁長增長至趨近於半無限長時。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "8efeac12783c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00450', 'structural-eng', 'structural-eng-moex-095-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一地下室工程擬採島式開挖施工，其邊坡採 V：H=1：2 之邊坡開挖如下圖所示
，邊坡主要為砂質土層，其單位體積總重在常時與飽和狀態時均為γ＝20  kN/m3，
且c′=10  kN/m2，φ′=30∘。今假設開挖面下夾有一薄層軟弱黏土（如圖中之斜線區
所示），厚度約 10 cm，其不排水剪力強度為s =12 kN/m2：
u
假設常時地下水位位於軟弱黏土層表面，當邊坡開挖深度達 10m 時（即下圖所示
情況），試以合理方法估計其產生側向滑動之安全係數。（15分）
若遇豪雨使地下水位分別上升至沿原地表面、沿邊坡面以及沿開挖面分布時，其
產生側向滑動之安全係數變為如何？（10分）
2200m m
原原地地表表面面
砂砂質質土土層層
33   12 m
γ＝20kN/m
開開挖挖面面     ′ 2 ′ 12m
c =10 kN/m φ=30°
22 mm
GGWWLL
黏黏土土層層 s  =12 kN/m2
u
砂質土層 γ＝20kN/m33
砂質土層
c′=10 kN/m2φ′=30°', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "8efeac12783c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00451', 'structural-eng', 'structural-eng-moex-095-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一土方回填工程，若欲採用夯實方法使回填之土方具有最佳之工程性質，試回答
下列問題：
在試驗室應作那些試驗以決定土壤性質？（11分）
如何控制回填與夯實作業？（7分）
夯實完成後應如何檢驗回填土方之性質？（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "8efeac12783c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00452', 'structural-eng', 'structural-eng-moex-095-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '考慮一根長度為 L 之受扭構材，構材兩端受純扭矩 T 之作用，材料之剪力模數為 G
。今考慮圖示材料用量相同之箱形與 H形兩種薄壁斷面，試回答下列問題。
當斷面為箱形時，求構材兩端之相對扭轉角及斷面上之最大剪應力。（12分）
當斷面為 H形時，求構材兩端之相對扭轉角及斷面上之最大剪應力。（13分）
15t 15t
t t
15t
15t
t
0.5t 0.5t
t t', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a355d0173276", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00453', 'structural-eng', 'structural-eng-moex-095-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖示之懸臂梁，梁長 4m、梁寬 40cm、梁深 60cm。梁端受一偏心軸壓 100  kN，
作用點在座標 y=16cm、z=20cm 位置；此外還受一向下之力 28 kN，作用點在斷面
形心（O點）位置。
試求梁長中點 B斷面（X=2m）處中性軸方程式。（12分）
試求梁長中點 B 斷面（X=2m）處之最大軸拉應力與軸壓應力σ 各為何值？分別
x
發生於何處（標示位置之 y、z座標）？（8分）
z
z
y
100 kN
60cm
A O y
B C
28 kN
4m
X=0 X=2m X=4m 40cm
（請接背面）
高等考試建築師、技師考試暨 全一張
95年專門職業及技術人員 考試試題  代號：00340
普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a355d0173276", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
