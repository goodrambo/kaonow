-- W1.4 new questions batch 4044/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00194', 'structural-eng', 'structural-eng-moex-106-050f1447', 'sub-structural-eng-03', NULL, 'essay', '三自由度門形結構如圖二，試建立此結構之運動方程式（無阻尼）。（25分）
（不考慮 m對v ,v 自由度之轉動慣量）
2 3
EI,
2
EI  EI
1 1
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "2ba871870265", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00195', 'structural-eng', 'structural-eng-moex-106-050f1447', 'sub-structural-eng-03', NULL, 'essay', '結構如圖三，令牆及梁為剛性（Rigid），試求編號1、2、3、4柱子所受的剪力。（25分）
V
EI  EI  EI  EI
牆
牆
1  2  3  4
圖三
（請接背面）
106年 專 門 職 業 及 技 術 人 員 高 等 考 試
全一張
建築師、技師、第二次食品技師考試暨 代號： 00330
（背面）
普通考試不動產經紀人、記帳士考試試題
等 別 ：高  等考試
類 科 ：結  構工程技師
科 目 ：結  構動力分析與耐震設計
x2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "2ba871870265", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00196', 'structural-eng', 'structural-eng-moex-106-050f1447', 'sub-structural-eng-03', NULL, 'essay', '橋柱結構承受水平地震如圖四，令橋柱振動之振態（Modal shape）(x) ，試求：
L2
此振態對應之頻率（Frequency）為何？（20 分）
若此頻率與地動之頻率相同時，會有什麼現象？（5分）
M
EI,    L
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "2ba871870265", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00197', 'structural-eng', 'structural-eng-moex-106-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖一為平面桁架結構，尺寸和水平載重如圖所示，點 A 和點 E 為鉸支承，所有桿件
的彈性模數 E與斷面積 A皆為定值。試求：
15分）
C之水平位移（需註明方向）。（15分）
C
12 kN
4 m
D
9 kN
B
4 m
A  E
3 m  3 m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "24404c99339a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00198', 'structural-eng', 'structural-eng-moex-106-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖二為梁結構，尺寸和均佈載重如圖所示，點 c 為鉸接，所有桿件的彈性模數 E 與
斷面慣性矩 I皆為定值。試以最小功法求固定端彎矩（需註明方向，採用其它方法計
算不予計分）。（20 分）
w
a  c  b
m  n
L
圖二
（請接背面）
106年 專 門 職 業 及 技 術 人 員 高 等 考 試
全一張
建築師、技師、第二次食品技師考試暨 代號： 00360
（背面）
普通考試不動產經紀人、記帳士考試試題
等 別 ：高  等考試
類 科 ：結  構工程技師
科 目 ：結  構學', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "24404c99339a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00199', 'structural-eng', 'structural-eng-moex-106-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖三為剛架結構，尺寸和載重如圖所示，點 A和點 D為鉸支承，點 B和點 C為固接，
所有桿件的彈性模數 E與斷面慣性矩 I皆為定值。試以傾角變位法求各桿件端點之彎
矩，以及點 A和點 D之轉角（需註明方向，採用其它方法計算不予計分）。（30 分）
45 kN/m
B  C
60 kN
2 m
4 m  60 kN
2 m
A  D
6 m
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "24404c99339a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00200', 'structural-eng', 'structural-eng-moex-106-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖四分別為三棟建築結構之樓層平面示意圖，粗線部分為剪力牆配置，試分別說明
此三種平面配置規劃用以傳遞水平載重之優缺點。（20分）
（a）                              （b）                            （c）
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "24404c99339a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00201', 'structural-eng', 'structural-eng-moex-106-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '65( 0.002)(0.25/0.003) E 2.04106 kgf /cm2 E 15000 fkgf /cm2
t s c c
f280
V 0.53 fb d  0.850.05 c 且 0.65 0.85
c c w 1 1
70
一、柱斷面為40cm×40cm，配置 8 根 D25（#8）鋼筋（f = 4,200 kgf/cm2，A = 5.067cm2），
y b
如圖 1 所示。混凝土強度 f=  210  kgf/cm2，經耐震評估後，發現必須擴柱為
c
40cm×70cm，使用常重混凝土， f= 210 kgf/cm2，鋼筋為 8 根 D25（#8），分布於長
c
向之兩邊，保護層 6.5cm，試求偏心 e = 0 時的軸力強度與適當軸力下長邊所能承受
最大可能彎矩。混凝土之應力應變關係可簡化如圖 2。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "d42ccaf9f9f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00202', 'structural-eng', 'structural-eng-moex-106-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '0f
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "d42ccaf9f9f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "1", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00203', 'structural-eng', 'structural-eng-moex-106-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '8f
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "d42ccaf9f9f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
