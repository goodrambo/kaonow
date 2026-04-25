-- W1.6 questions batch 8148/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00048', 'pukao-0f640084', 'pukao-0f640084-moex-111-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '電力公司 A透過傳輸線 Z將電力輸送到公司 B，兩家公司的連接方式如
下圖。
Z
S -S
12 21
Z=185p.u.
V
V  2 2
1 1  = - =10
12 1 2
公司A 公司B
計算在下列條件下，由公司 A 傳送給公司 B 的複功率（S ）及公司 B
12
自公司 A接收到的複功率（-S ）。（每小題 10分，共 20分）
21
|V |=|V |=1 p.u.。
1 2
|V |=1.1 p.u.，|V |=0.9 p.u.。
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "5ef0585deb19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00049', 'pukao-0f640084', 'pukao-0f640084-moex-111-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '一電力系統單線圖如下所示：
jQ
G2
V=10° V
1 Z=j0.5 2
S -S
S =1+j0 12 21 S =1+j0
D1 D2
若 Q =0，計算以相量表示的 V 。（20分）
G2 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "5ef0585deb19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00050', 'pukao-0f640084', 'pukao-0f640084-moex-111-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '一三相導線配置如下圖所示，導體直徑為1.108英吋。
（每小題 10分，共 30 分）
1.108"
12'' 12''
a c''
15''
15'' 15''
b b''
15''
12'' 12''
c a''
計算該導線的幾何平均距離（GMD）（以英呎表示）。
計算該導體的幾何平均半徑（GMR）（以英呎表示）。
計算導線在頻率 60 Hz下，每英哩電抗（/mile）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "5ef0585deb19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00051', 'pukao-0f640084', 'pukao-0f640084-moex-111-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '說明集膚效應對高壓直流（HVDC）與高壓交流（HVAC）系統導線阻抗
的影響。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "5ef0585deb19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00052', 'pukao-0f640084', 'pukao-0f640084-moex-111-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '一三相 60 Hz，220 kV傳輸線，長度為 40 km。導線的電阻為0.15 /km，
電感為 1.3262 mH/km。計算導線的電壓調整率及傳輸效率，當接收端的
負載參數為：（每小題 10分，共 20 分）
381 MVA，功率因數 0.8 落後，220 kV。
381 MVA，功率因數 0.8 領先，220 kV。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "5ef0585deb19", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00053', 'pukao-0f640084', 'pukao-0f640084-moex-111-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '圖一(a)中放大器A、B與加法器均為線性電路，輸入阻抗=，輸出阻抗=0。
A與 B之輸入電壓弦波 v ，輸出分別為 v 與 v，相加得振幅 3 2之 v 。
in a b out
求算 B之放大倍率 G 以及 v 相對於 v 訊號之相位角。（20 分）
B b in', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00054', 'pukao-0f640084', 'pukao-0f640084-moex-111-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '二極體 I-V特性曲線如圖二(a)，求算圖二(b)電路消耗於二極體 D與電阻
R的時平均功率，V =5 sin t V，V =1.8 V，R=20 。（20 分）
S a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00055', 'pukao-0f640084', 'pukao-0f640084-moex-111-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '矽晶的原子密度為 51022/cm3，電子本質濃度 n =1.51010/cm3，此矽
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
44550', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00056', 'pukao-0f640084', 'pukao-0f640084-moex-111-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '圖三運算放大器的輸入電阻 R =100 k，輸出電阻R =50 ，低頻開路
i o
電壓增益 A =103 V/V，頻率響應有一個極點 f =50 Hz。畫出此運算放
o p
大器的等效電路並標出所有元件數值，再求算圖三電路的低頻電壓增益
A =v /v 與其 3-dB頻寬。（20分）
v o i
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00057', 'pukao-0f640084', 'pukao-0f640084-moex-111-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '圖四 v 與 v 分別是放大器輸入與輸出的小訊號電壓，I 是偏壓電流源，
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
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "e62c0bc6329c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "443", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
