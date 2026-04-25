-- W1.4 new questions batch 4063/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00384', 'structural-eng', 'structural-eng-moex-098-050f1447', 'sub-structural-eng-03', NULL, 'essay', '右圖的柱可視為單自由度系統，且其變位形狀函數被定義為
v(x , t) x 3 x
Ψ(x)= =( )2 ( − )
Z(t) L 2 2L x
Z(t)
設每單位長度的均佈質量為m，均佈剛性為 EI
及均佈荷重為p(t)，請算出廣義物理性質m∗，k∗
v(x,t)=ψ(x)Z(t)
及廣義荷重p∗(t)。（25 分）  均佈柱
重 度  質量
m =
荷長
L  長度
= EI= 抗彎勁度
p', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "3c0254674734", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00385', 'structural-eng', 'structural-eng-moex-098-050f1447', 'sub-structural-eng-03', NULL, 'essay', '重 6,500 1b 的篩分析機在全面操作時，會使其支承承受一幅度為 700 1b，頻率為 12
Hz 的諧和力。當此機安裝於彈簧型隔振器上後，支承所受到的諧和力之幅度減為
50 1b。請定出隔振系統的彈簧勁度 k。（25 分）
假設：ξ= 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "3c0254674734", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00386', 'structural-eng', 'structural-eng-moex-098-050f1447', 'sub-structural-eng-03', NULL, 'essay', '說明現行建築耐震設計規範考量的三種地震水準及耐震設計目標為何？
說明規範耐震設計基本原則之條文。（12 分）
解說規範考量的三種地震水準及耐震設計目標。（13 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "3c0254674734", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00387', 'structural-eng', 'structural-eng-moex-098-050f1447', 'sub-structural-eng-03', NULL, 'essay', '依結構混凝土設計規範，螺箍筋之體積比ρ不得小於下式之值：
s
A f′
g c
ρ =0.45（ −1）
s 4 cm Clear
A f
c y (Typ.)
式中 f 為螺箍筋設計所用之規定降伏強度，  9-D25
y
f′= 350 kgf/cm2，f  = 4,200 kgf/cm2。
c y D13s@7.5 cm
檢核右方配置之箍筋圖是否符合結構混凝土  （螺箍筋）
設計規範。（25 分）
55 cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "3c0254674734", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00388', 'structural-eng', 'structural-eng-moex-098-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之桁架（truss）結構，其支承點 a 與 d 為滾支承（roller），支承點 c 則為
鉸支承（hinge）。若已知支承點a向下沈陷0.1 m，試計算各支承點之反力。假設各
構件之E值（彈性模數）與A值（斷面積）皆為常數，且AE =104kN。（25 分）
c
b
3m
a
e  d
4 m  4 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0e34e91570e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00389', 'structural-eng', 'structural-eng-moex-098-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之結構受一 1  kN/m  之均佈力作用，其中ac為梁（beam）構件，ad為連桿
（linkage），c點為固定端（fixed  end），請計算b點之水平位移Δ 。假設ac梁之EI
b
= 1000 kN-m2，ad連桿之AE = 1000 kN，其中E為構件之彈性模數，I為斷面慣性矩，
A為斷面積。（25  分）
100 m
a
d
b
m
mm
/N
00
11 k
1 mm
66
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0e34e91570e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00390', 'structural-eng', 'structural-eng-moex-098-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '下圖中之π型構架（frame）受一水平力 P 之作用，並產生一水平位移Δ。假設全
部構件之 E 值（彈性模數）與 I 值（慣性矩）均相同，且不計構件之軸向變形。試
以傾角變位法（slope-deflection  method）計算以下問題：若令P= K ∆，其中
H
K 稱為構架之總體水平勁度（horizontal stiffness），請計算K 。若令P = 100 kN，
H H
L = 10m，請計算構架各結點處之彎矩，並繪製彎矩圖。（25 分）
LL LL LL
Δ∆
PPP
bb cc
aa
dd
LL
f
ee f
（請接背面）
98年專門職業及技術人員高等考試建築師、技師、消
全一張
防設備師考試、普通考試不動產經紀人、記帳士、第 代號：00360
（背面）
二次消防設備士考試暨特種考試語言治療師考試試題
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0e34e91570e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00391', 'structural-eng', 'structural-eng-moex-098-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖示三支構件之桁架（truss）系統，受向下 100  kN之作用力。試以矩陣直接勁度
法（direct stiffness method）分析a點之水平變位d 與垂直變位d ，並計算各構件之內
1 2
力。假設各構件之E值（彈性模數）與A值（斷面積）皆為常數，且AE =1000kN。
圖中帶有箭頭之數字為結點位移編號，x-y為總體座標系統（global  coordinates）。
（25 分）
y
6 4
b  3
x c 5
3 m
8
2
7
1
d  a
4 m  4 m
100 kN', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "0e34e91570e1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00392', 'structural-eng', 'structural-eng-moex-098-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '試以說明 RC 柱耐震設計中，如何配置柱之橫向鋼筋？假設地震效應之設計軸壓力
小於0.05A f′（A 為柱總斷面積），必要時請繪圖說明之。（25 分）
g c g', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "a96b39564ffa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00393', 'structural-eng', 'structural-eng-moex-098-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一35cm寬×60cm深單筋矩形斷面懸臂梁，自由端受ㄧ單點荷重，懸臂長度為4m，拉力
筋面積為10.13cm2，鋼筋有效深度為50cm， f′= 210 kgf /cm2， f =2800 kgf /cm2。當
c y
荷重加載使固定端受一降伏彎矩，即讓拉力筋應變恰達降伏點，不考慮剪力影響下
，求該梁自由端點即時撓度？（25 分）
E =15000 f′  kgf /cm2；E =2.04×106 kgf /cm2；混凝土開裂模數f =2.0 f′  kgf /cm2
c c s r c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "a96b39564ffa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
