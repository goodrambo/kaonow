-- W1.4 new questions batch 4033/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00084', 'structural-eng', 'structural-eng-moex-111-050f1447', 'sub-structural-eng-03', NULL, 'essay', '進行靜力彈塑性分析方法（Pushover）分析時，需要分數步驟逐步增加作
用側力，而其側力的豎向分配之合理性對耐震評估結果的準確性有明顯
的影響。對於規則性可簡化為平面結構的建築結構進行水平地震力分
布，即水平地震力豎向分配時，建議採用的方法有：均勻分布、倒三角
分布、指數分布、經驗分布以及振態組合法（SRSS）。請詳細回答下列
問題：
說明各種水平側向力分布的計算方法，並給予一個3層平面結構計算例。
（20 分）
評論各種分配方法的應用局限性。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "af084a223abd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00085', 'structural-eng', 'structural-eng-moex-111-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖 1所示梁結構，d點為滾支承，b 點為鉸接，各桿件都有相同之彈性
模數E值與慣性矩I值，且EI 250000kN-m2，彈簧係數k 6000 kN m，
e 點有一向下的沉陷位移 ，當 b 點及 c 點各承受垂直集中載重72kN
e
時，梁結構的彎矩圖如圖 1所示。求彈簧內力、c點及 e點的垂直位移。
（25 分）
72kN 72kN
d c
a
b
k
e e
5m 5m 5m
120kN-m
a
c
d b
480kN-m
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8a0bb964da50", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00086', 'structural-eng', 'structural-eng-moex-111-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖 2 所示剛架結構，不考慮桿件的軸向變形，a 點及 e 點為鉸支承，
桿件有相同彈性模數 E 與慣性矩 I，且EI 40000kN-m2。求 cd 梁桿件
的彎矩圖、b點及 c點的水平位移。（25分）
e
2m
30kN
2m
c
d
2m
30kN
b
2m
a
4m
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8a0bb964da50", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00087', 'structural-eng', 'structural-eng-moex-111-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖 3所示桁架結構，a、b、c點為滾支承，e點為鉸支承，各桿件有相
同彈性模數 E與斷面積 A。當單位載重在桁架底弦移動，分別求a 點反
力、b點反力、c點反力、mn桿件軸力及 nk桿件軸力的影響線。（25分）
k
4m
a b c e
m n
d
10@3m30m
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8a0bb964da50", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00088', 'structural-eng', 'structural-eng-moex-111-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖 4所示三層樓構架，各樓層承受水平外力，構架梁柱桿件的彈性模
數都為 E，另構架之柱桿件斷面慣性矩都為 I，且EI 97200kN-m2，而
構架之梁桿件斷面慣性矩為無限大。不考慮構架梁柱桿件的軸向變形，
求 c點水平位移、b點水平位移、a 點及 m點固定端的水平反力與彎矩。
（25 分）
300kN d
3.6m
c
200kN
3.6m
100kN b
3.6m
a e m n
4m 4m 4m
圖 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8a0bb964da50", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00089', 'structural-eng', 'structural-eng-moex-111-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '下圖所示梁斷面之拉力筋為 3-D25 和 2-D22，壓力筋為 2-D19。混凝土
抗壓強度 f280kgf/cm2、鋼筋降伏強度 f 5600kgf/cm2，淨保護層
c y
c4cm，試求該斷面之設計彎矩強度M 。（25 分）
n
淨保護層
2-D19
D13
60cm
2-D22
2.5cm
淨保護層
30cm
3-D25
鋼筋混凝土梁斷面圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "823a24cc5a40", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00090', 'structural-eng', 'structural-eng-moex-111-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '混凝土斷面寬度30cm，深度50cm，承受設計彎矩M 19.5tf-m。假設
u
有效深度d 43.5cm，可選用之混凝土強度分別為 f210、280kgf/cm2；
c
鋼筋降伏強度分別為 f 4200、5600kgf/cm2。若拉力鋼筋限用 D25 鋼
y
筋，請設計所需最經濟之材料強度與拉力鋼筋支數，及對應之材料強度，
並請評論材料強度對拉力鋼筋用量之影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "823a24cc5a40", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00091', 'structural-eng', 'structural-eng-moex-111-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '如下圖所示之簡支預力混凝土梁跨徑L20m，鋼筋混凝土之單位重
2.4tf/m3 、 混 凝 土 強 度 f420kgf/cm2 ， 主 筋 降 伏 強 度
c
f 4200kgf/cm2 、 肋 筋 降 伏 強 度 f  2800kgf/cm2 ， 有 效 預 力
y yt
F 200tf。今於地震後發現距離梁端支承約水平距離為一倍有效深度
e
處出現腹剪裂縫，經查原設計階段所採用之垂直肋筋為 D10@15 cm，使
用載重包括：自重W 、均佈靜載重W 1.1tf/m、集中活載重P 25tf，
G D L
但未考慮垂直向地震力。今擬重新檢討，假設垂直向地震力為均佈載重，
其值為自重W 與均佈靜載重W 兩者相加後的 25%，且仍使用 D10 當作
G D
垂直肋筋，請問肋筋間距 s宜如何配置以避免產生腹剪破壞？（25 分）
1/3LL 1/3LL
、 、
 
    
  L 
45ccmm
20ccmm
17.5ccmm
90ccmm 50ccmm
20cm
12ccmm
預力簡支 PCI形梁之斷面圖與受力圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "823a24cc5a40", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00092', 'structural-eng', 'structural-eng-moex-111-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '某鋼筋混凝土柱之斷面尺寸8080cm、淨高度6.4m，混凝土強度
f280kgf/cm2、鋼筋降伏強度 f 4200kgf/cm2，縱向主筋使用 D32 鋼
c y
筋。已知該柱於軸壓力分別為P 180tf及P 360tf 作用時，柱底彎矩塑
鉸性質分別如表 3 所示，皆為雙線性曲線。該柱底今承受軸壓力
P 270tf ，彎矩M 232.5tf-m，假設其彎矩塑鉸性質可由表 3 數值作
線性內插，且反曲點位於淨高度一半位置。請根據民國 109 年 12 月交
通部頒「公路橋梁耐震評估與補強設計規範」所列公式如下，以撓曲變
形為主，評估反曲點下方柱視作單曲率柱時之曲率韌性需求、轉角韌
性需求 ，與位移韌性需求。（25分）
L2
y ，  y
y 3 y L
M
u ( )L (L0.5L ),  u
u M y u y P P u L
y
L 0.08L0.0022d f 0.0044d f
P b y b y
表3 彎矩塑鉸參數表
軸力P 180tf 軸力P 360tf
曲率 彎矩M 曲率 彎矩M
rad/m tf-m rad/m tf-m
原點 0 0 0 0
降伏點 0.004 200 0.006 240
極限點 0.03 230 0.01 260', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "823a24cc5a40", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00093', 'structural-eng', 'structural-eng-moex-111-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '已知鋼柱斷面為 BOX 800×800×32(mm)，受壓有效長細比(KL/r) 為
eff
30.54，且設計配置有充分的側向支撐與束制。使用的鋼板降伏強度
F =3.3 tf/cm2而楊氏係數E=2040 tf/cm2。載重組合後經分析的係數化載重
y
P =-1119 tf，M =-179 tf-m，M =-19.4 tf-m，V =-86.77 tf，V =-9.14 tf。
u1 u2 u3 u2 u3
試依極限強度設計（LRFD）法，分析與檢核鋼柱之設計強度是否適足。
（25 分）
[參考公式]全滲透銲組合箱形柱等厚度之翼板受彎曲或壓力
50 h k
; 50 v （腹板未加勁k 5）, V 0.6F A ;
p t F v n y w
F
y w y
KL F 0.877
0.4192
y ,  1.5, F  F ,  1.5, F e cF
c r E c cr 2 y c cr y
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "9d896e152606", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
