-- W1.4 new questions batch 4045/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00204', 'structural-eng', 'structural-eng-moex-106-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '002 0.003
混凝土應力應變關係
15 cm  40 cm  15 cm
圖1                                       圖2
二、承上題，為確保該柱新舊混凝土可充分結合，以發揮複合作用，請問新舊混凝土介
面在彎矩最大時需承受多少剪力，如何設計植筋以確保介面不致分離，新舊混凝土
間已經過表面粗糙處理。（植筋使用 D19，f = 4,200 kgf/cm2，A =3.871cm2）（25 分）
y b
三、一獨立基腳 4.0m×4.0m，於中央處有一柱，45cm×45cm，（該柱承受使用靜載重 180 tf，
使用活載重 120 tf， f=350 kgf/cm2）。已知基腳之厚度為 80cm， f=210 kgf/cm2，土
c c
壤承載力為 3 kgf/cm2，基腳上方有覆土 1m，土壤密度為 1,900 kg/m3，試求所需之彎
矩鋼筋量為何，並檢核剪力強度是否足夠。（25分）
四、試說明施加預力之目的，及先拉法與後拉法預力梁預力損失原因及計算公式（需考慮時
間因素），一設計良好之預力梁，規範建議之最終預力損失總量大約多少（lump-sum）？
（25分）
（請接背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "d42ccaf9f9f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00205', 'structural-eng', 'structural-eng-moex-106-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請就下列四種鋼材中選擇一種最適合於上部結構採用全斷面銲接之鋼結構跨海大
橋，並舉出四項理由說明選擇該鋼種之原因，多於四項，第五項起不予計分。（25分）
鋼種  Fy（MPa）  C（%）  C （%）  CVN  預熱溫度
eq
0℃、27J
A.  > 325  0.18~0.20  < 0.36  66℃
軋延方向取樣
21℃、34J
B.  > 345  < 0.23  無規定  21℃
軋延方向取樣
-25℃、200J
C.  > 485  < 0.11  無規定  21℃
軋延方向取樣
-25℃、200J
D.  > 500  < 0.11  0.44~0.47  不需預熱
垂直軋延方向取樣', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "f0fb84b8997b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00206', 'structural-eng', 'structural-eng-moex-106-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請敘述高強度螺栓接合中摩阻型（Slip-critical）螺栓接合承受剪力時之傳遞機制及如
何定義其極限狀態。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "f0fb84b8997b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00207', 'structural-eng', 'structural-eng-moex-106-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '某工程師依據容許應力設計法設計一長 6m 承受純軸壓之銲接組合 H 型鋼
H700×300×25×50，應力檢核時得容許應力（F ）為 0.34F ，請問計算所得之值容許
a y
應力（F ）是否合理？請敘述原因。（30分）（假設 K =0.8、K =2.1，C =128）
a x y c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "f0fb84b8997b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00208', 'structural-eng', 'structural-eng-moex-106-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '一銲接於鋼柱托架承受 P 之集中載重，採用 E70XX 銲條，填角銲之有效喉厚為
10 mm，銲道長度如下圖，上、下水平銲道長度相同。請依極限設計法檢核該銲道可
承受之最大集中載重 P 。（30分）（0.6F ，0.75，不須考慮載重係數）
u EXX
P
m
c
0
8
40 cm 50 cm
（請接背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "f0fb84b8997b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00209', 'structural-eng', 'structural-eng-moex-105-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '圖一為某覆土加載施工剖面圖，施工前於地下 4.0 m（點B處）取回粘土執行壓密試
− σ′
驗；圖二為壓密試驗結果推算之原始e log 曲線，圖三為T 及z/H 與壓密度 U之
v dr
− σ′
對應圖，表一表列原始e log 曲線主要加壓與解壓應力對應之孔隙比。
請分析此粘土試樣於σ′時對應之孔隙比 及其過壓密比值（ ）。（ 分）
e OCR 8
c
請分析於此粘土層上加載 6.0 m砂質覆土3年後壓密沉陷量為何？（5分）
請分析此粘土層上加載6.0 m砂質覆土 3年後，點 A、B及 C點之超額孔隙水壓為
何？（12分）
砂質覆土   γ =16kN/m3
6.0 m  m
原地表面
砂土   γ =16kN/m3 e
2.0 m  m
A  1.0m
γ =17.81kN/m3
粘土   1.0m sat
4.0 m  B
C  1.0m c =1.5m2/yr
v
不透水岩盤  σ′ σ′ σ′ σ′
0 2 c 1
σ′
圖一 覆土施工剖面圖  (kPa/對數)
− σ′
圖二  原始e log 曲線圖
表一 壓密應力與孔隙比對應表
壓密應力σ′(kPa)  孔隙比(e)
z
σ′ =48  H
0.900  dr
0
σ′ =150  待求
c
σ′=1536  0.650
1
′
σ =96  0.710
2
壓密度
z
圖三   T 及 與壓密度U之對應圖
v H
dr
（請接第二頁）
105年專門職業及技術人員高等考試建築師、
全四頁
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代號：00350
第二頁
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "7dccf244c6d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00210', 'structural-eng', 'structural-eng-moex-105-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某土方工程採用另一疏濬工程之土方執行填土工程，取土處為砂礫石土壤，經大型
現地密度試驗，挖孔體積為0.25 m3，於孔洞內取出土重 450 kgf，以四分法取土密封
送回實驗室。於實驗室取適量土樣放入1,000 cm3容器內，秤重為 1,720 g，土壤經烘
乾測得土樣重 1,620 g，並測得該容器內土壤孔隙比 e 為 0.70；經實驗室夯實試驗測
得γ =19.50 kN/m3，最佳含水量 OMC≈8%。（假設水的密度ρ =1.0g/cm3）
dmax w
請分析土樣之比重G 。（5分）
s
取土處土壤之乾單位重（kN/m3）與濕單位重（kN/m3）為何？（8分）
如以最佳含水量（OMC）方式夯實後之填土體積為 10,000 m3，請分析此工程需取
疏濬處多少土方（m3）？（6分）
承上，以 OMC含水量夯實施工需再添加多少水量（m3）？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "7dccf244c6d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00211', 'structural-eng', 'structural-eng-moex-105-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '下圖所示為直立 6.0 m高加勁擋土牆，加勁材埋入深度為4.5 m，假設加勁土壤視為
一剛體，單位重γ = 20 kN/m3，背填土壤為砂質土壤，單位重為 18 kN/m3，背填土
m
有效剪力強度參數φ′= °、 ′= ；此背填土及加勁土體座落於某粘土質沉泥基礎土
32 c 0
壤上，其與加勁土體間界面的剪力強度參數c =12  kPa、δ=15°，基礎土壤之有效
a
剪力強度參數φ′= °、 ′=   kPa，單位重γ =18 kN/m3，加勁土與背填土上方承
32 c 20
m
受q =60 kPa均佈荷載。
s
試分析此加勁擋土牆之抗傾倒、抗滑安全係數為何與是否適宜？如不適宜，建議
補救措施為何？（12分）
請分析此加勁土體基礎承載力安全係數為何與是否適宜？如不適宜，建議補救措
施為何？（8分）
請說明加勁擋土牆系統設計與施工注意事項。（5分）
=
q 60kPa
s
背填土
γ =20kN/m3
m γ = 3
18kN/m
m
6.0m
c′=0
φ′=32°
4.5m
基礎土壤
= δ= °
c 12kPa, 15
a
φ′=32°,c′=20kPa,γ =18kN/m3
m
N =35.49,N =23.18,N =30.22
c q γ
（請接第三頁）
105年專門職業及技術人員高等考試建築師、
全四頁
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代號：00350
第三頁
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題
α=', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "7dccf244c6d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00212', 'structural-eng', 'structural-eng-moex-105-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '下圖所示為 8.0 m 垂直高混凝土重力式擋土牆，水平背填土壤（ 0）為砂
3 φ′= ° ′=
質土壤，其單位重為 18 kN/m ，排水剪力強度參數 30 、c 0，背填土與
混凝土擋土牆界面摩擦角δ =15°，此擋土牆座落於某粘土質沉泥基礎土壤
B
上，基礎土壤與混凝土擋土牆界面的剪力強度參數c =15kPa、δ =18°，基
a F
φ′= ° ′= γ = 3
礎土壤之剪力強度參數 30 、c 20kPa，單位重 18kN/m ，混凝土單
m
位重γ = 23.5kN/m3：
c
試以庫倫主動土壓力係數分析此重力擋土牆之抗傾倒、抗滑安全係數是否適宜？
如不適宜，建議補救措施為何？（10分）
請分析此擋土牆基礎承載力的安全係數是否適宜？如不適宜，建議補救措施為
何？（10分）
請以 Mononobe–Okabe 動態土壓力理論，分析此擋土牆承受水平及垂直方向的地
震加速度分別為 0.15 g 及 0.05 g的狀態下（K =0.15及K =0.05），主動土壓力P
h v ae
的大小、方向與位置為何？（5分）
3.0m
α=0
背填土
γ =18kN/m3
m
8.0m 混凝土  c′=0
擋土牆  φ′=30°
β δ =15°
B
基礎土壤
5.0m
c =15kPa,δ =18°
a F
φ′=30°,c′=20kPa,γ =18kN/m3
m
N =30.14,N =18.4,N =22.4
c q γ
（請接第四頁）
105年專門職業及技術人員高等考試建築師、
全四頁
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代號：00350
第四頁
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題
參考資料：
形狀、深度與傾斜修正因數關係式
項目  凝聚力(c)  超載(q)  土重(γ)
⎛B⎞⎛N ⎞ B ⎛B⎞
+ q ⎛ ⎞ ′  −
形狀(s)  1 ⎜ ⎟⎜ ⎟ 1+ tanφ 1 0.4
⎜ ⎟ ⎜ ⎟ ⎜ ⎟
⎝L⎠⎝N ⎠ ⎝L⎠ ⎝L⎠
c
⎛D ⎞ D
深度(d)  1+0.4⎜ f ⎟ + φ′ − φ′ 2 f
1 2tan (1 sin )   1.0
⎜ ⎟
⎝ B ⎠ B
θ 2 θ 2 θ 2
⎛ ⎞ ⎛ ⎞ ⎛ ⎞
傾斜(i)  1−   1−   ⎜1− ⎟
⎜ ⎟ ⎜ ⎟
90° 90° φ′
⎝ ⎠ ⎝ ⎠ ⎝ ⎠
備註：θ=基礎荷載對垂直面之傾斜 角。
註：
庫倫主動土壓力係數：
2 β+φ′
sin ( )
K =
a 2
⎡ φ′+δ ⋅ φ′−α ⎤
sin( ) sin( )
sin2β⋅sin(β−δ ) 1+ B
B ⎢ ⎥
sin(β−δ )⋅sin(α+β)
⎣ B ⎦
Mononobe–Okabe主動土壓力係數：
2 φ′+β−θ′
sin ( )
K =
ae 2
⎡ φ′+δ ⋅ φ′−α−θ′ ⎤
sin( ) sin( )
θ′⋅ 2β⋅ β−δ −θ′ + B
cos sin sin( )⎢1 ⎥
B β−δ −θ′ ⋅ α+β
sin( ) sin( )
⎣ B ⎦
K
θ′= −1 h
tan
1−K
v', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "7dccf244c6d5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00213', 'structural-eng', 'structural-eng-moex-105-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一簡支梁於B點及C點各受一集中彎矩如下圖左所示，梁之橫斷面如下圖右所示。
假設M =20 N−m，試求梁內正向應力（normal  stress）絕對值之最大值及剪應力
o
（shear stress）絕對值之最大值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "e3a7433fd842", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
