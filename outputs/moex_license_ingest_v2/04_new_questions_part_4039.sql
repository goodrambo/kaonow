-- W1.4 new questions batch 4039/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00144', 'structural-eng', 'structural-eng-moex-108-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一懸臂梁斷面彎矩勁度為 EI，此梁受到一彈簧之支撐，彈簧係數
k = EI/L3。求彈簧之反力 R及梁受集中載重 P處之位移，並請註明反力
及位移之方向。（25 分）
提示：
Px2
v(x)=− (3a−x), 0≤x ≤a,
6EI
Pa2
v(x)=− (3x−a), a ≤ x ≤L.
6EI', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "6e2fc6b223ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00145', 'structural-eng', 'structural-eng-moex-108-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一均質剛性梁，其一端為鉸接，另一端為自由端，在自由端以彈簧連接
一質量為m的圓球。分別考慮以下兩種不同狀況：
剛性梁總質量＝0。（10 分）剛性梁總質量＝ m。（15分）
針對每一狀況試回答以下問題：
㉑求出運動方程式。
㉒求出振動頻率及所對應之振態。
2k 2k
L L L L
k k
2m 2m
3 3
剛性梁總質量 =0 剛性梁總質量 =m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "a8ab96b2a450", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00146', 'structural-eng', 'structural-eng-moex-108-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟兩層樓剪力屋架，如下之左圖所示，試回答以下問題：
求出運動方程式。（3分）
求出振動頻率及所對應之振態。（6 分）
當此剪力屋架受到如下右圖所示之起始條件，其位移反應為何？請用
時間的函數表示。（16分）
u
2
u (0) 0.1
m =20kg
2 k =1000N/m 1
2  = m
u (0) 0.2
2
u
1
u (0) 0
m =40kg
1 k =2000N/m 1
1  = m/sec
u (0) 0
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "a8ab96b2a450", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00147', 'structural-eng', 'structural-eng-moex-108-050f1447', 'sub-structural-eng-03', NULL, 'essay', '兩層樓建築物如下左圖所示，自由度之編號如圖中之 u 和 u，經由線彈
1 2
性分析已得知其振動週期為 1 秒，第一振態為φ ={0.5,1.0}T。另外，已
1
知在極限狀態下（ultimate state）的彈性反應譜如下右圖所示。基於初步
設計的概估需求，請依據位移不變法則及僅考慮基本振態，試回答以下
問題：
當位移韌性達5 時，其基礎剪力為何？（15 分）
在此地震力作用下，分別求上下兩層的層間位移？（10分）
u
2
m=5×104kg
u )g
1 (
a
m=5×104kg S
0.5
φ=
1 1.0
TT((sseecc))
線線彈彈性性反反應應譜譜', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "a8ab96b2a450", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00148', 'structural-eng', 'structural-eng-moex-108-050f1447', 'sub-structural-eng-03', NULL, 'essay', '在地震侵襲過後，建築物的損壞調查報告發現有幾種特別的破壞模式，
例如軟弱層、混凝土強度不足、箍筋間距太大、柱內埋管以及街屋或教
室在長向的破壞等等。其中老舊建築物發現短柱破壞也是非常普遍的一
種模式，請回答以下問題（可利用示意圖來輔助回答或說明）：
請說明短柱破壞的原因？（10分）
老舊建築物容易出現短柱破壞的位置，請舉例說明兩個可能情形？
（6 分）
針對中的任一舉例提出避免短柱破壞的補強方法。（4分）
在新建的校舍建築物中，設計時應如何避免短柱破壞模式的發生？
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "a8ab96b2a450", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00149', 'structural-eng', 'structural-eng-moex-108-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖一所示之桁架，各桿件都有相同之楊氏模數 E 及斷面積 A。已知
對角桿件長 15 m，水平桿件長 12 m，垂直桿件長 9 m。若各桿件之軸
拉強度都為 1250 kN，而軸壓強度如下：對角桿件 144 kN、水平桿件
225 kN、垂直桿件 400 kN。今考慮 B 點受一向右之力 P，若 P 由 0 逐
漸加大，則 B 點之向右位移 U 也會逐漸加大，直至最後桁架會形成破
B
壞機構。試求出破壞機構形成時對應之極限外力，並且以 P 為縱軸 U
B
為橫軸，試繪出加載至破壞機構過程中 P 對 U 的定性（大致）關係圖。
B
假設各桿件強度達到之前都是線彈性，而強度達到後，張桿內力可以維
持其強度但壓桿內力變為零，此外不論張或壓桿，強度達到後勁度都為
零。（25 分）
D P
B
C
A
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "c6db5b729428", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00150', 'structural-eng', 'structural-eng-moex-108-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '范倫迪爾桁架（Vierendeel Truss）實際上受力行為像是構架，因為構件
彼此接合為剛接。考慮圖二之范倫迪爾桁架，其受力後各構件受彎矩之
變形為一雙曲率變形，採近似分析時可假設反曲點位於各構件之中點，
據此假設，分析該桁架，並繪出上下弦桿之彎矩圖、軸力圖及腹桿之彎
矩圖、軸力圖。（25 分）
G H I J
F
6 m
A E
4 m B 4 m C 4 m D 4 m
100 kN 100 kN 100 kN
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "c6db5b729428", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00151', 'structural-eng', 'structural-eng-moex-108-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖三所示受均布載重 w 之三跨連續梁，考慮支承 B 及支承 C 都向下
沉陷，且沉陷量相同。當沉陷量增加時，支承 A 及 D 垂直反力會增加，
而支承 B 及 C 垂直反力會減少。試問當沉陷量為多少時，支承 A 垂直
反力會增加 0.1 wL？試以傾角變位法求解。以其他方法作答者一律不予
以計分。（25分）
w
A C
B D
EI,L EI,L EI,L
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "c6db5b729428", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00152', 'structural-eng', 'structural-eng-moex-108-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '考慮圖四之構架，假設各構件之軸向變形很小可以忽略，各桿件之楊氏
模數都為 E、斷面二次矩都為 I 且長度都為 L；外力 P 及 Q 作用於柱之
中點。如圖四所示，梁 BD 接到柱 AB 採半剛性接頭，以旋轉彈簧模擬
之（可當作零長度），旋轉彈簧勁度假設為 10 EI/L（EI，L 為梁、柱構
件性質）。若以勁度法表示該構架平衡方程式，可寫為 [K]{D} = {P}，
其中{D}為位移向量，依序包括水平位移 d 、B 點左側旋轉角 d 、B 點
1 2
右側旋轉角 d 及D點旋轉角 d 共四個自由度；[K]為結構勁度矩陣；{P}
3 4
為外力向量。試求[K]及{P}；求[K]前，先寫出每個元素之勁度矩陣再組
合得[K]，旋轉彈簧視為一個元素。（25分）
w
3 d d
d 4 4 5
2 3 d
B R 1
D B D
E E
P Q
1 2
A C A C
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "c6db5b729428", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00153', 'structural-eng', 'structural-eng-moex-108-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '附圖所示，為一鋼筋混凝土單筋梁斷面構造。該梁之混凝土抗壓強度為
f′=210kgf /cm2，鋼筋之降伏應力為 f =4,200kgf /cm2。如果該斷面
c y
承受一設計彎矩M =85.72tf −m，試求所需之拉力鋼筋量 A 。（25 分）
u S
提示：本命題之強度折減因數φ界於 0.65 與 0.9之間。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "4dd10010bfb4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
