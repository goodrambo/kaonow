-- W1.4 new questions batch 4056/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00314', 'structural-eng', 'structural-eng-moex-101-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列有關耐震設計規範中的相關問題：
若結構依「避免中小度地震降伏之設計地震力V*」設計時，依規範原意，結構於
中小度地震作用下應可維持在線彈性狀態，但何以規範規定需再作「層間相對側
向位移角之檢核」？請說明之。（10分）
何謂扭轉不規則性結構？若以靜力分析來進行其耐震設計時，可能會有那些缺點？
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "262e0e9161c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00315', 'structural-eng', 'structural-eng-moex-101-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列有關「隔震建築物設計」之相關問題：
隔震建築物設計時所計算得之設計位移D 及最大總位移D 分別所代表的意義
D TM
為何？請說明之。（10分）
D 為隔震系統之設計位移，請說明何以此一設計位移D 在進行動力分析時必須修
D D
正為 ′ ？此時 ′ ( )2 ，其中 為沿考慮方向上隔震結構於設計
D D = D 1+ T T T
D D D eD eD
位移下之有效振動週期，T為考慮固定基礎時上部結構之基本振動週期。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "262e0e9161c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00316', 'structural-eng', 'structural-eng-moex-101-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖一所示梁，a 點為固接，c 點為內鉸接，d 點為滾支承。梁 ac 段之彈性模數與
慣性矩乘積為 2EI，ce 段之彈性模數與慣性矩乘積為 EI：（每小題 5 分，共 25 分）
繪彎矩圖；
試求e點之垂直位移；
試求e點之轉角；
試求c點之垂直位移；
繪變形曲線，並須標示反曲點之約略位置（若有反曲點）。
40 kN
40 kN
d
a  b  e
c
2EI  EI
4 m  4 m  4 m  4 m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "eec420557285", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00317', 'structural-eng', 'structural-eng-moex-101-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖二所示桁架，a點為鉸接，c點為滾支承，b點有軸向線彈性彈簧。若每根桿件的
EA值皆為 10,000 kN，線彈性彈簧之勁度K 為 2,500  kN/m。試以最小功法計算各桿
s
件內力（若以其他方法計算，不予以計分）。（25分）
40 kN
20 kN
d
m
4
a  b  c
K
s
4 m  4 m
圖二
（請接背面）
101年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "eec420557285", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00318', 'structural-eng', 'structural-eng-moex-101-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖三所示剛架，b 點為鉸接，c 點為滾支承，若每根桿件有相同的彈性模數 E 與
慣性矩 I，EI 為常數：試計算各桿件之彎矩，並繪彎矩圖；（20 分）繪變形曲
線，並須標示反曲點之約略位置（若有反曲點）。（5分）
L  2L L
P  P
h
e
f  g
L
2
b  c
a
d
L  2L L
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "eec420557285", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00319', 'structural-eng', 'structural-eng-moex-101-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖四所示剛架有二個自由度，a點為固接，d點為鉸接。R 與R 為作用於結點彎矩
1 2
，r 與r 為對應於R 與R 之變位。若ab與bc桿件有相同的彈性模數E與慣性矩I，EI為
1 2 1 2
⎧R ⎫ ⎡K K ⎤⎧r ⎫ ⎡K K ⎤
常數； 桿件 值為無限大。 1 11 12 1 。試求勁度矩陣 11 12 。
cd EI ⎨ ⎬= ⎨ ⎬
⎢ ⎥ ⎢ ⎥
⎩R ⎣K K ⎦⎩r ⎣K K ⎦
2⎭ 21 22 2⎭ 21 22
（25分）
R, r R, r
1 1 2 2
c
b  d
EI=∞
EI
L
a
L/2  L/2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "eec420557285", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00320', 'structural-eng', 'structural-eng-moex-101-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '30 cm寬×90  cm深之矩形斷面懸臂式純預力梁，懸臂長 610  cm，設置一排 3 根有黏
裹（bonded）之 12.7  mm直徑七線絞預力鋼鍵，且鋼鍵中心離斷面中心之偏心距e
= 30 cm（整個懸臂長之鋼鍵e為定值）。在混凝土達 7 天強度時開始拉預力，是為
初始階段（initial stage），其中有效預應力f = 0.75 f ，所受載重為混凝土本身自重
pi  pu
。請檢核初拉預力之初始階段，其混凝土應力是否超出設計規範之規定？若有檢核
未通過者，應再說明如何補救。（30分）
注意：應自行判斷預力鋼鍵是往上或往下偏心 30 cm 後，再進行應力檢核。計算斷
面性質，請忽略鋼鍵與套管所占有面積。有關材料性質與相關規定，詳下列
所示。
混凝土性質：
f′= 350 kgf /cm2，混凝土7天強度 f′=0.7  f′，E =15000 f′，
c ci c c c
混凝土單位重w =2.3 tf/m3，混凝土開裂模數 f =2.0 f′。
c r c
12.7 mm直徑七線絞預力鋼鍵性質：
抗拉強度f  = 19000 kgf /cm2，降伏強度f  = 0.9 f ，E  = 2.04×106 kgf /cm2，
pu py pu p
一根 12.7 mm直徑七線絞預力鋼鍵斷面積A  = 98.71 mm2。
ps
初始階段混凝土應力容許值：壓應力為0.60f′，拉應力為0.80 f′ 。
ci ci
第二題至第四題請依試題背面敘述及附圖作答：', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "41861295ed88", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00321', 'structural-eng', 'structural-eng-moex-101-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '詳附圖構架，試計算梁構件所受地震引致之最大彎矩強度為何？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "41861295ed88", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00322', 'structural-eng', 'structural-eng-moex-101-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '承第二題與附圖，若柱使用4股（4 legs）#4橫箍筋，以梁端產生塑鉸方式（強柱弱梁
情形）計算因地震引入柱剪力作為柱最大設計剪力，試設計柱塑鉸區箍筋。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "41861295ed88", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00323', 'structural-eng', 'structural-eng-moex-101-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '承第三題，接頭區箍筋配筋同柱箍筋之配置，附圖中之柱是屬於結構角隅邊柱，試
檢核此梁柱外接頭剪力是否足夠？若不足夠，應說明如何改善。（20分）
（請接背面）
101年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師
所設計之某一單跨多層 RC建築抗彎構架（moment-resisting frame），取其中2樓與
3樓結構外圍之梁柱配置如下圖所示。所提供之設計參數與公式如下：
所有樓層柱淨高為3 m，單跨之梁淨跨距為7 m。
梁與柱混凝土 f′= 280 kgf /cm2，所有號數鋼筋f  = 4200 kgf /cm2。
c y
柱設計極限軸力為N = 50 tf，梁設計垂直極限載重為w  = 6.1 tf/m，設計時不考慮樓
u  u
版貢獻。
梁箍筋使用#3（面積為 0.71 cm2），柱箍筋使用#4（面積為 1.27 cm2），梁與柱主
筋使用#7（面積為 3.87 cm2）與#8（面積為5.07 cm2）。
部分相關規範公式與規定節錄如下：
f′ ⎡ A ⎤ f′
柱閉合箍筋面積公式： c g 或 c
A =0.3×s×b −1 A =0.09×s×b ×
sh1 c ⎢ ⎥ sh2 c
f ⎣A ⎦ f
yt ch yt
⎛35−h ⎞
柱橫向箍筋間距公式：s =10+⎜ x ⎟
0
⎝ 3 ⎠
⎛ N ⎞
混凝土抗剪強度（有軸壓力）：V =0.53⎜1+ u ⎟ f′b d
c ⎜ ⎟ c w
140A
⎝ g ⎠
梁柱接頭剪力強度規定：5.3 f′A （接頭四面接受圍束）或3.9 f′A （三面或一雙
c j c j
對面受圍束）或3.2 f′A （其他），A為接頭有效斷面積
c j j
附圖：2樓與 3樓外圍結構 E-W（東西）向剖面之梁、柱與接頭配置情形', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "41861295ed88", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
