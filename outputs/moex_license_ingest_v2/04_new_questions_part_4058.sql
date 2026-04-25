-- W1.4 new questions batch 4058/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00334', 'structural-eng', 'structural-eng-moex-100-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一矩形截面b×h的簡支梁，如下圖所示。梁頂的溫度為t ，梁底為t ，已知t −t ＝
0 1 1 0
50oC ， 且 沿 梁 深 之 溫 度 成 線 性 變 化 。 梁 的 材 料 為 鋼 ， 其 線 膨 脹 係 數
α=12×10−6(oC)−1，試求由溫度場引起的曲率半徑ρ=?（25分）
ρ
t
0
h
t
1
b
（請接背面）
100年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3b6d5e8a7f6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00335', 'structural-eng', 'structural-eng-moex-100-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如下圖所示，兩根材料相同，斷面撓曲剛度均為EI的細長桿 AB 和 BC，鉸接成簡
單桁架，在結點 B 處承受角度θ可在0～π/2間變化的載荷 F。考慮桁架由於失穩而
破壞，試求載荷 F的臨界值為最大時的θ角及其最大臨界載荷。（25分）
F
θ
B
C
A  60° 30°
l', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3b6d5e8a7f6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00336', 'structural-eng', 'structural-eng-moex-100-050f1447', 'sub-structural-eng-03', NULL, 'essay', '考慮一單層樓隔震結構，其上部結構及基礎層之重量分別為 300 tf及 200 tf，經特徵
分析得到其結構動力特性如下：
； ； φ T 1.041, 1.000
T = 2.0sec  ξ =10%   =< >
1 1 1
； ； φ T 0.641, 1.000
T =0.25sec  ξ =5%   =<− >
2 2 2
已知工址之設計水平加速度反應譜係數S 如下：
aD
0.6
S = 0.2sec<T ≤1.0sec
aD
B
S
0.6
= 1.0sec<T ≤ 2.5sec
TB
1
其中，阻尼比修正係數B 與B 如下：
S 1
有效阻尼比ξ  (%)  B   B
S 1
5  1.00  1.00
10  1.33  1.25
20  1.60  1.50
試根據反應譜分析，以 SRSS 疊加法計算求解：
隔震系統之最大位移（10分）
最大層間位移（10分）
隔震系統之最大剪力（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b19d6046b6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00337', 'structural-eng', 'structural-eng-moex-100-050f1447', 'sub-structural-eng-03', NULL, 'essay', '將一輛汽車模擬成單自由度之彈簧-阻尼-質塊系統如下圖所示，若該汽車以v等速行
2πx
駛，道路鋪面的粗糙度為u (x)=u sin( )：
g g0
L
試建立其運動方程式（10分）
求共振車速。（5分）
若忽略阻尼，求在非共振車速時之穩態反應（10分）
t
u
v
k c
2πx
u (x) =u sin( )
g g0
x L
（請接背面）
100年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b19d6046b6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00338', 'structural-eng', 'structural-eng-moex-100-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一升降電梯系統可理想化為一懸吊彈簧質塊系統，電梯之質量為m，彈簧之彈性係
數為k。今彈簧之上端以等速度（v）上升，若以電梯之上升距離（u）為自由度：
試建立該動態系統之運動方程式（10分）
若該電梯之起始狀態為靜止，求u(t)（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b19d6046b6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00339', 'structural-eng', 'structural-eng-moex-100-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請依據我國建築物耐震設計規範第九章隔震建築物設計條文之規定，回答下列問題：
目前國內已完成之隔震建築物中，有部分案例是將隔震層設於中間樓層而非基底。
現行建築物耐震設計規範第九章隔震建築物設計條文是否適用於中間層隔震
（inter-story isolation）結構之設計？請說明理由。（5分）
建築物耐震設計規範第九章有關靜力分析方法之相關設計條文，是假設上部結構
為剛體時所建立的。若上部結構不規則或具有柔性，則應採動力分析方法。請說
明若採用多振態反應譜疊加法進行動力分析時，以複合阻尼比的概念計算等效阻
尼比的公式。（5分）
實務上經常發生隔震元件實體測試結果所得之等效阻尼比低於設計值，隔震系統
必須增加額外的消能元件以補足設計時所假設之條件。試問︰
⑴若採用之消能元件為位移型或黏彈性元件，則與原設計可能產生什麼牴觸與後
果？（3分）
⑵若採用之消能元件為液態黏滯性元件，則消能元件產生之貢獻能否由複合阻尼
比的計算反映到等效阻尼比？說明你的理由。（3分）
⑶規範有關隔震元件之實體測試並未規定測試頻率，鉛心橡膠支承、摩擦單擺支
承或高阻尼橡膠支承的力學特性是否都能由目前的測試方法中檢測出來？說明
你的理由。（3分）
請由隔震設計原理，以及結構分析與設計之觀點，說明高聳細長之建築物不宜採
用隔震設計的理由。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b19d6046b6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0215", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00340', 'structural-eng', 'structural-eng-moex-100-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之桁架結構，假設 AB 及 BE 桿件溫度增加 60℃，DE 及 EF 桿件施作時分
別短了 1.5 cm及1.0 cm，支承 A被建造於原定位置的左方 2.4 cm，且支承 F低於原
既定位置 1.2 cm。已知溫度膨脹係數α＝1.08×10-5/℃，假設各桿件之彈性模數E值
與斷面積A值皆為常數，且EA＝8×104 kN。試計算各支承之反力。（25分）
A                   B                  C
3 m
D                                          F
E
4 m  4 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "9eb03836e5d3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00341', 'structural-eng', 'structural-eng-moex-100-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之剛架，支承 A 為固定端（fixed）、D 與 E 為鉸接。各桿件之彈性模數與
慣性矩乘積（EI）如圖所示，且EI＝10000 kN-m2。當 B 點承受一 30 kN 垂直載重，
CD 桿件之中點亦承受一 16 kN 之垂直載重作用時，試以傾角變位法計算各端點彎矩，
並繪出彎矩圖。（若以其他方法計算不予計分）（25分）
30 kN 16 kN
A             B             C              D
2EI              EI           EI
3 m
EI 1.5 m
E
3 m  3 m  3 m
（請接背面）
100年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "9eb03836e5d3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00342', 'structural-eng', 'structural-eng-moex-100-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示梁結構：請使用穆勒法（Müller-Breslau method）繪出支承 A 點反力
(R )、支承 B 點反力(R )、支承 B 點負彎矩(M )、C 點彎矩(M )及其剪力(V )之影響
A B B- C C
線圖；假設該梁承受 2 kN/m 之均布載重可作用於全長或部分跨長，請計算 C 點之
最大彎矩(M )。（25分）
max,C
A           B C         D
30 m 15 m 15 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "9eb03836e5d3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00343', 'structural-eng', 'structural-eng-moex-100-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之桁架結構，若 AC 桿件在組裝前因製造瑕疵短了 0.02 m，試以矩陣直接
勁度法（direct stiffness method）計算A點之水平變位與垂直變位，並計算各桿件之
內力。假設各桿件之彈性模數 E 與斷面積 A 皆為常數，且 EA＝104 kN。x-y 為全域
座標系統（global coordinates），圖中帶有箭頭之數字代表節點全域自由度之編號。
（若以其他方法計算不予計分）（25分）
4
2
A
3
1
B
4 m
6 8
C 5 D  7
y
3 m 3 m
x', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "9eb03836e5d3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
