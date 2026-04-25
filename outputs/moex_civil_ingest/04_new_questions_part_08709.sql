-- W1.6 questions batch 8709/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-acfc4025-moex-00205', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '如圖二所示電路，若二極體順向導通壓降可忽略，當未接電容 C（開關
S OFF）時，以三用電表 ACV 檔測得 a、b 兩端電壓為 V ，接上電容 C
1
V
（SON）時，以三用電表DCV檔測得a、b兩端電壓為V，求 2 為多少？
2
V
1
（20 分）
a
10：1
C
100µF
V sinwt
m
S
b
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b65c17c8edf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00206', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '如圖三所示之電橋電路，當開關 S 投於位置 1 時，若 R =4 k、
M
R =1.5 k、R =100 k、C =0.1 F，正弦波電源 E的頻率為 1 kHz。
2 3 M
（每小題 10分，共 20 分）
當電橋平衡時，求待測線圈之R 和 L 值各為多少？
x x
若有另一待測線圈的品質因數為第小題線圈的 10 倍，為減少測量
誤差而將 S投到位置 2，若 R 、R 的值未改變、而 C =1 nF，當電橋
2 3 H
平衡時，求 R 為多少？
H
E
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b65c17c8edf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00207', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-602f6e5f', 'sub-pukao-acfc4025-02', NULL, 'essay', '圖四所示為用於信號產生器可產生正弦波之振盪器電路，運算放大器工
作於線性（放大）區，若選擇 R =R =R=20 k、R =1 k、C =C =C。
1 2 4 1 2
（每小題 10分，共 20 分）
要使電路可維持等振幅振盪，則 VR 須為多少？
3
要使輸出正弦波電壓（v ）的頻率為 795 Hz，則 C應為多少？
o
VR3
+V
cc
R4
vv
oo
C
2
-V
cc
C R1
1
R
2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b65c17c8edf2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00208', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '圖一(a)中放大器A、B與加法器均為線性電路，輸入阻抗=，輸出阻抗=0。
A與 B之輸入電壓弦波 v ，輸出分別為 v 與 v，相加得振幅 3 2之 v 。
in a b out
求算 B之放大倍率 G 以及 v 相對於 v 訊號之相位角。（20 分）
B b in', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00209', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '二極體 I-V特性曲線如圖二(a)，求算圖二(b)電路消耗於二極體 D與電阻
R的時平均功率，V =5 sin t V，V =1.8 V，R=20 。（20 分）
S a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00210', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '矽晶的原子密度為 51022/cm3，電子本質濃度 n =1.51010/cm3，此矽
i
晶摻雜硼（三價元素），濃度為1/108。圓柱體矽晶樣本長度 L，截面積為
A=1 cm2，兩端施加電壓 V，則其內部電場為 E=V/L。樣本中之電洞與
電子受此電場作用而獲得移動速度分別為 v =E 與 v =–E，其中
p p n n p
與 稱為遷移率（cm2/Vs）。純質矽晶 =475與 =1400，摻雜質之矽
n p n
晶 =375 與 =1000。電量為 Q 的帶電粒子在t 時間移動距離x，其
p n
速度為 v=x/t，電流量 I=Q/t。單一電子帶電量 q=1.610–19庫侖。
求算此純質矽晶與摻雜硼之矽晶每單位長度電阻值，註明單位。（20 分）
|
44550', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00211', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '圖三運算放大器的輸入電阻 R =100 k，輸出電阻R =50 ，低頻開路
i o
電壓增益 A =103 V/V，頻率響應有一個極點 f =50 Hz。畫出此運算放
o p
大器的等效電路並標出所有元件數值，再求算圖三電路的低頻電壓增益
A =v /v 與其 3-dB頻寬。（20分）
v o i
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00212', 'pukao-acfc4025', 'pukao-acfc4025-moex-111-2c1c51c4', 'sub-pukao-acfc4025-03', NULL, 'essay', '圖四 v 與 v 分別是放大器輸入與輸出的小訊號電壓，I 是偏壓電流源，
i o S
R =R =1 k；Q 與 Q 操作於飽和區，g =0.8 mA/V，g =0.5 mA/V，
S D 1 2 m1 m2
r =r =3 k，k ’(W/L) =2k ’(W/L) =1 mA/V2，忽略 bodyeffect。
o1 o2 n 1 p 2
（每小題 10分，共 20 分）
當 I 含有雜訊電流i，求算 R =v /i，註明單位。
S m o
I 為理想電流源，求算電壓增益 A =v /v 與 A =v /v 。
S v1 x i v2 o x
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "444", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00213', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '電路如圖一所示：（每小題 5 分，共 20 分）
請計算穩態電壓V （V）。
bc
請計算穩態電流I （A）。
c
請計算穩態網目電流I （A）。
1
電路中三個電阻R 、R 及R ，皆為 3 Ω，假設其散熱面積皆相同，
ab bc ca
請列出穩態溫度最高之電阻。
3H
I
c c
2V 1A
3
3
I
1
b a
3
2H
2H
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b12a72c40952", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00214', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '電路如圖二所示：（每小題 5 分，共 20 分）
請計算電壓V （V）。
PN
請計算2V電源的供應功率（W）。
請計算 P、N兩端點之戴維寧等效電阻（Ω）。
於 P、N兩端點接上一可變電阻（VR），並調整其電阻值，使該可變電
阻（VR）穩態溫度最高。請計算該可變電阻（VR）的電阻值（Ω）。
3
P
3V
3 1
1V  2V
N
圖二
|
45020', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b12a72c40952", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
