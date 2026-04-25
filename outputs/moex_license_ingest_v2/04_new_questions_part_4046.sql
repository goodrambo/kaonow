-- W1.4 new questions batch 4046/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00214', 'structural-eng', 'structural-eng-moex-105-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有 5 根梁柱受力如下圖所示，每根梁柱之彎矩勁度皆為 EI，Q 為固定值之微小側向
載重，e 為偏心距。針對每根梁柱，試繪其挫屈模態圖（buckling mode），求其等效
長度（effective length）L ，並試算其挫屈載重 P 。（25分）
e cr', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "e3a7433fd842", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00215', 'structural-eng', 'structural-eng-moex-105-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有二薄管壁梁之斷面如下圖(a)及(b)所示，試計算各梁斷面剪力中心 S之 e 及 e 值。
y z
（25分）
（請接背面）
105年專門職業及技術人員高等考試建築師、
全一張
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代  號：00340
（背面）
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "e3a7433fd842", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00216', 'structural-eng', 'structural-eng-moex-105-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '有一均勻厚度之正方形板受到三軸應力σ =40  MPa，σ =−20  MPa，σ =0  MPa，
x y z
= × −5 =− × −5
所產生之應變為ε 23 10 ，ε 16 10 。試求此材料之彈性係數 E、柏松比
x y
（Poisson’s ratio）v、xy 面之最大剪應力(τ ) 、yz 面之最大剪應力(τ ) 及 xz
xy max yz max
面之最大剪應力(τ ) 。（25分）
xz max', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "e3a7433fd842", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00217', 'structural-eng', 'structural-eng-moex-105-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一兩層樓剪力屋架如下圖所示，已知m=2×103 kg及k =105 N/m，自由度之編號
請由底層增加至頂層，如圖中之v 和v 所示，試回答以下問題：
1 2
求出運動方程組。（3分）
求出振動頻率及所對應之振態。（6分）
利用振態疊加法分解完成後之兩個未耦合單自由度系統（uncoupled single degree of
freedom system）之運動方程式。（4分）
假設此建築物原本靜止，隨後受外力作用，所受外力之大小如圖所示，試求位移
反應，近似解即可，但需說明可以使用近似解的原因。（12分）
v
m 2
p(t)
p(t) N
k
2.4×105
v
1
2 m
2 k t (sec)
0.1 0.2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "3eeb15f39283", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00218', 'structural-eng', 'structural-eng-moex-105-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖中之梁皆為質量均勻之剛性梁，且每支剛性梁的總質量皆為 m，試回答以下問題：
質量矩陣。（6分）
勁度矩陣。（6分）
結構系統的自然振動頻率（直接以符號表示）。（8分）
l/2 k l/2 k
total mass = m k l/2 k l/2
total mass = m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "3eeb15f39283", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00219', 'structural-eng', 'structural-eng-moex-105-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟三層樓建築物，其三個振態的示意圖如圖所示，已知頂層的質量為
m =103 kg，試求第一層和第二層的質量為何，亦即α=？及β=？（ 分）並請說
10
明計算原理。（5分）
3 2 1
1000 kg
−1 −1
2
β
1 −
α 1 1
第一振態 第二振態 第三振態
（請接背面）
105年專門職業及技術人員高等考試建築師、
全一張
技 師 、 第 二 次 食 品 技 師 考 試 暨 普 通 代號：00330
（背面）
考 試 不 動 產 經 紀 人、記 帳 士 考 試 試 題', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "3eeb15f39283", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00220', 'structural-eng', 'structural-eng-moex-105-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟三層樓剪力屋架，如下左圖所示，其中k =1.15×106 N/m用來代表各樓層的總
勁度，而質量m=5×103 kg。已知在某一地震力作用下，其加速度反應譜可簡化如下
右圖所示。自由度之編號請由底層增加至頂層，如圖中之v ，v 和v 所示，試回答以
1 2 3
下問題：
求出振動頻率及所對應之振態。（6分）
計算各樓層的側向位移，可採用 SRSS（Square Root of the Sum of the Squares）疊
加法。（14分）
計算各樓層的層剪力，可採用SRSS疊加法。（5分）
v
3
m/2
k
v
2
m  )
k g
(
Sa
v
m 1
k
地表加速度
（ground acceleration）
T (sec)
線彈性反應譜', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "3eeb15f39283", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00221', 'structural-eng', 'structural-eng-moex-105-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答以下問題：
請說明一般基礎隔震（base isolation）的基本概念為何？（3分）
摩擦型隔震系統（sliding isolation system）的主要原理為何？（3分）
當球面摩擦型隔震系統（spherical sliding isolation system）或稱摩擦單擺隔震系統
（friction pendulum system）的滑動球面所對應的半徑為 r時，試推導其振動週期。
（忽略摩擦力影響）（6分）
當此隔震系統之上部結構系統的總重量為 W時，其側向勁度為何？（3分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "3eeb15f39283", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00222', 'structural-eng', 'structural-eng-moex-105-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖一剛架使用材料之彈性模數為 E，斷面慣性矩為 I，EI =常數。試分析圖一之剛架，
並繪彎矩圖。（25分）
B C D
50 kN
2 m
E
A
2 m 2 m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "15b0832d3c13", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00223', 'structural-eng', 'structural-eng-moex-105-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖二剛架 ABC使用材料之彈性模數為 E，斷面慣性矩為I，EI =常數。已知移動載重
在 B點及 C點之間，不考慮桿件之軸向變形，試繪C點反力的影響線（influence line），
並列出其方程式。（25分）
B C
L
A
L
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "15b0832d3c13", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "105170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "105", "exam_name": "105年建築師技師第二次食品技師不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
