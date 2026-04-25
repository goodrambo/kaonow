-- W1.4 new questions batch 4041/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00164', 'structural-eng', 'structural-eng-moex-107-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某一懸臂式擋土牆如下圖所示，牆高 H = 7.5 m，背填土傾角 α= 12°。土
壤性質：單位重γ = 17.8 kN/m3、有效內摩擦角φ = 32°、有效凝聚力c = 0 kN/m2、
1 1 1
單位重γ  = 16.6 kN/m3、有效內摩擦角φ  = 28°、有效凝聚力c  = 30 kN/m2。
2 2 2
假設混凝土單位重γ = 23.55 kN/m3，被動土壓合力P  = 0 kN/m，基礎底面
c p
之介面有效內摩擦角及有效凝聚力折減係數 k   =  k   =  2/3。依據藍金
1 2
（Rankine）土壓力理論，請計算此擋土牆的：
抗傾覆安全係數。（13分）
抗滑移安全係數。（12分）
0.4 m α=12°
懸臂式  γ
1
擋土牆  φ
1
c
1
H=7.5 m
1.75 m
0.96m
γ φ c
1.5 m 3.5 m 2,  2,  2
0.6m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f32ab0f8e3de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0317", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00165', 'structural-eng', 'structural-eng-moex-107-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖一所示之結構，剛性梁是由兩根混凝土柱及彈簧所支撐。未加均布載
重q=100kN /m於剛性梁之前，每根混凝土柱的長度L = 2m，每根混凝
土柱的截面積 = 2，混凝土柱之楊氏模數E =10GPa；未加載重
A 500mm
之前，彈簧的原來長度為2.03m，彈簧的彈力常數k = 2MN /m。略去混
凝土柱及剛性梁的自重，求：施加q =100kN /m之均布載重後，混凝土
柱的內力 F 及彈簧的縮短量 δ 。（25分）
c s
q=100kN/m
剛性梁  混 混 0.03m
剛性梁 混 混
凝 凝
凝 凝
土 土
土 土
柱 柱
柱 柱 2m
k
1m   1m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f8b0ea4a1be7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00166', 'structural-eng', 'structural-eng-moex-107-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '懸臂梁 AB 承受均布載重q =30kN /m，懸臂梁 AB 的 A 端為滑動支撑
（sliding  support），B 端靜置在簡支梁 CD 上，如圖二所示。設懸臂梁
AB及簡支梁 CD之撓曲勁度皆為EI = 25,000kN /m2，求 A點的撓度 δ ，
A
及 A點的反力。（25分）
q=30kN/m
A B
C D
2m 2m 2m
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f8b0ea4a1be7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00167', 'structural-eng', 'structural-eng-moex-107-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖三(a)之實心圓桿，長L = 2m，直徑d =0.06m，在自由端受扭矩 作
T
用。此實心圓桿為理想塑性材料，其剪應力 τ  ~剪應變 γ 關係如圖三(b)
所示。設 T 為圓桿剛產生塑性變形之降伏扭矩（yield  torque），若施加
y
之扭矩 T = 1.2T 時，再卸載，求卸載後之殘留扭轉角φ（residual twisting
y r
angle）。（25分）
= τ
d 0.06m
T 180MPa
γ
L=2m 0.003
圖三(a)  圖三(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f8b0ea4a1be7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00168', 'structural-eng', 'structural-eng-moex-107-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '矩形截面簡支梁，長度為L，截面寬為 b，截面高為 h，此簡支梁受均布
載重q作用。設最大應力處之應變能密度稱為最大應變能密度，以U
0,max
U =U/V
表之；而簡支梁之平均應變能密度 ，其中，U為梁之總應變能，
0
V為梁之體積。求U /U 。（25分）
0,max 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "f8b0ea4a1be7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00169', 'structural-eng', 'structural-eng-moex-107-050f1447', 'sub-structural-eng-03', NULL, 'essay', '下圖為一單層剪力屋（shear building），已知樓層總重 W = 70 kN，樓高
H = 3 m，跨距 L = 6 m，柱斷面之撓曲剛度EI = 5000 kN-m2。此剪力屋
架以對角斜稱方式裝設一線性黏性阻尼器，阻尼係數為C（kN-sec/m）。
假設此系統之阻尼完全由阻尼器提供（亦即忽略結構之固有阻尼）。
假設線性黏性阻尼器所提供之系統阻尼比為 5%，試求C值。（15分）
依之假設，若此剪力屋受地震激發，其5%阻尼比加速度彈性反應譜
S 表為
a
0.15g
S = ≤0.3g
a T
上式中 為結構週期（sec），g = 9.8 m/sec2。試求單層剪力屋相對於地
T
表之最大水平位移與阻尼器之最大出力。（10分）
WW
HH
CC
EIE I EIEI
L
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "3fbfa8847d93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00170', 'structural-eng', 'structural-eng-moex-107-050f1447', 'sub-structural-eng-03', NULL, 'essay', 'Newmark  S −S −S −T三軸向地震設計反應譜（Tripartite Spectrum），
pa pv d
如圖之a−b−c−d −e− f 所示；其中S 、S 、S 及 T 均為對數尺度（log
pa pv d
scale）。該設計反應譜型式至今仍被世界各國耐震設計規範奉為圭臬。
試由S =T⋅S 2π及S =2π⋅S T 推導及說明S −S −S −T三軸座標系
pv pa pv d pa pv d
統的建置原理。（15分）
試詳細說明交通部「公路橋梁耐震設計規範」設計地震反應譜（如表）之型
式與Newmark三軸向地震設計反應譜a−b−c−d −e− f 的關聯性。（10分）
S
pv
S  S
S   d
pa
d  e
c  f
b
a
T
零週期  較短週期  短週期  中長週期
T = 0  0≤ T ≤ 0.2TD  0.2TD≤ T ≤TD TD< T
0 0 0 0
S  = 0.4S S  = S (0.4+3T/TD) S  = S   S  = S /T
aD DS aD DS  0 aD DS aD D1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "3fbfa8847d93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00171', 'structural-eng', 'structural-eng-moex-107-050f1447', 'sub-structural-eng-03', NULL, 'essay', '試由內政部「建築物耐震設計規範及解說」之地震力豎向分配與結構動
力學之地震力豎向分配的比較，詳細說明為何「建築物耐震設計規範及
解說」中規定：建築物具勁度立面不規則性（軟層）或質量不規則性時，
須進行動力分析。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "3fbfa8847d93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00172', 'structural-eng', 'structural-eng-moex-107-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一隔震結構其上部結構假設為剛體，而設計水平譜加速度係數表示為：
「S =0.48/T , S ≤0.8 ，T = 結構週期」。隔震系統之設計目標訂為：設
a a
計位移D = 25 cm，傳遞設計水平加速度 A = 0.08 g，g = 980 cm/sec2。若
隔震系統採用摩擦單擺支承（friction pendulum bearing），試求隔震支承
之曲率半徑 R及摩擦係數 μ。（25分）
提示：
⎡ g ⎤
D= ST2/B
⎢ π2⎥ a e
⎣4 ⎦ ξ(%)  B
e
≤2  0.80
1
T =2π
e 1 μ 5  1.00
( + )g
R D
10  1.25
2 μ 20  1.50
ξ=
e πD 30  1.63
+μ
R 40  1.70
≥50  1.75', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:06+00:00", "source_pdf_sha1": "3fbfa8847d93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00173', 'structural-eng', 'structural-eng-moex-107-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如下圖8層樓平面構架以貫通全樓高的剪力牆加勁，假設剪力牆提供的
樓層水平勁度為構架的 5倍，且構架與剪力牆之間使用只能承受軸力的
連桿連接。若各樓層承受相等的水平力 F作用，如下圖。不需經過精
確分析，請分別繪出構架與剪力牆所受的樓層水平力分布示意圖，圖中
請以虛線畫上外力 F，並依此比例標畫水平力大小，以資比較。請解
釋題中水平力分布圖的理由。（25分）
剪力牆
連桿
F
F
F
F
F
F
F
F', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "62f1f23ee119", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
