-- W1.4 new questions batch 4027/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00024', 'structural-eng', 'structural-eng-moex-114-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請說明：㉑何謂塑性鉸？㉒常見塑性鉸的出現位置？㉓何謂崩塌機構？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "54fb14243d4a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "114", "exam_name": "114年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00025', 'structural-eng', 'structural-eng-moex-113-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某土壤經壓密排水三軸試驗，圍壓為 100 kPa、破壞時軸差應力為 240
kPa，假設此土壤凝聚力為25 kPa。
請繪圖出破壞時的莫爾圓，並計算該土壤的摩擦角。（5分）
請證明土壤試體破壞面與最大主應力面的夾角為45 。（5分）
2
破壞面上的正向應力（normalstress）與剪應力。（10分）
請問圍壓 200 kPa 時，土壤試體破壞時所需施加的軸差應力是多少
kPa？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "5821acd0d97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00026', 'structural-eng', 'structural-eng-moex-113-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '砂性土壤邊坡若以無限邊坡方式分析淺層滑動，邊坡傾斜角(β)42度，土
壤摩擦角()35 度，請依圖回答下列問題：
請計算圖 1乾砂邊坡之安全係數。（8 分）
邊坡若全浸於水面下，請計算如圖 2浸水邊坡之安全係數。（8分）
若邊坡中有滲流的自由水層自右至左（如圖 3）並與水平夾角=30 度
流動，請計算自由水層之水力波降 i。（9分）
乾砂邊坡
θ=30度', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "5821acd0d97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00027', 'structural-eng', 'structural-eng-moex-113-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '鑽探後簡化之土層如下圖，分為覆土層（ γ 19.68kN/m3 、
sat
γ 16.00kN/m3、飽和含水量 ω = 23%）、砂土層（γ 18.29kN/m3、飽
d sat
和含水量ω = 18%）、黏土層（γ 21.78kN/m3、飽和含水量 ω = 21%），
sat
黏土層下方為不透水層。初始地下水位在地表下2 公尺，請問：
若因施工降水使地下水位降至地表下 18 公尺，請問 C 點的有效應力
增加或減少多少？（5分）
若黏土層為正常壓密黏土（e ＝0.9、壓密指數 Cc = 0.15），請問黏土
0
層因為地下水位下降引致的壓密沉陷量是多少？（5 分）
請問如何在土壤壓密曲線上找出預壓密應力？（5 分）
若黏土層為過壓密黏土（e ＝0.9、Cc=0.15、回脹指數 Cs=0.02），其
0
預壓密應力為 300 kPa，請問黏土層因為地下水位下降引致的壓密沉
陷量是多少？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "5821acd0d97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00028', 'structural-eng', 'structural-eng-moex-113-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '直徑 1 公尺的混凝土樁需承受 2000 kN 垂直載重，若安全係數為 2.5 的
情況下，請計算在黏土層（飽和單位重 21kN/m3、平均不排水剪力強度
c =60kPa），與飽和砂土層（摩擦角為 38 度、濕土單位重 17.98kN/m3、
u
含水量 16%）中，需要的設計樁長分別是多少？並繪出樁身阻抗分布圖。
（FS=2.5，N * =20，N * =9）
q c
（黏土層樁長的計算占 10分，飽和砂土層樁長的計算占 15分，共 25 分）
註：
黏土層中：樁尖承載力 Q =A ×c ×N * ；樁身摩擦力Q =pLαc
P P u c s u
砂土層中：臨界深度L 15D（砂土）；Q =A ×q''×N *（砂土）；
c P P q
極限樁底阻抗q 0.5p N*tan（）（kPa）（砂土）
l a q
1
Q  pL K σ'' tan（0.8）；
s（10~15D） 2 c 0 0
Q pLK σ'' tan（0.8）
s2（15D） 0 0
其中 D：樁直徑；Ap：樁底面積；p：樁周長；p =大氣壓力≈ 100 kPa
a
（備註：請計算至小數點後兩位）
α值建議表
c
u
<=0.1 0.2 0.3 0.4 0.6 0.8 1
p
a
α  1 0.92 0.82 0.74 0.62 0.54 0.48
c
u
1.2 1.4 1.6 1.8 2 2.4 2.8
p
a
α  0.42 0.4 0.38 0.36 0.35 0.34 0.34', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "5821acd0d97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00029', 'structural-eng', 'structural-eng-moex-113-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一鋁試片如圖所示，其直徑d =25mm，標距長度L =250mm，若100kN
0 0
的力造成標距長度拉長 0.73 mm，試求其彈性模數。並求此力造成試片
直徑收縮量。假定 G =26 GPa， =440 MPa。（20分）
al', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "75c17bcefb66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00030', 'structural-eng', 'structural-eng-moex-113-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖所示為一個人撐竿跳的情形，經量測得竿子彎曲的最小半徑是
4.5 m。如果圓竿子直徑為45 mm，由 E =130 GPa的玻璃纖維製成，
g
試求竿子中最大的彎曲應力。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "75c17bcefb66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00031', 'structural-eng', 'structural-eng-moex-113-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖所示，由兩根剛性桿，用鉸接連結而成的柱，兩桿長度各為 L，柱
端有壓力 P 作用。A 端為鉸支承、B 端為滾支承、C 點有彈簧常數為 k
的線彈簧支撐。試求此柱的臨界載重為何？（答案請以 kL的形式表示）
（40 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "75c17bcefb66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00032', 'structural-eng', 'structural-eng-moex-113-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖所示，四條纜繩共同吊著一支水平梁，梁中點受一向下力 P作用，
已知四條纜繩具有相同之斷面積A與相同之降伏應力，假設纜繩之材
y
料為理想彈塑性，水平梁為剛性。試求該系統所能承受之最大外力
Pmax=？（以 A 表示）（20 分）
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "75c17bcefb66", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00033', 'structural-eng', 'structural-eng-moex-113-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟三層樓剪力屋架，如下圖所示，請回答下列問題：
請推導運動方程式，並以圖中的符號表示。（3分）
請求出對應三個模態之模態頻率。（3 分）
分別求出對 3F 正規化及對模態質量正規化之模態向量，並說明其差
異。（7 分）
請求出三個模態之模態參與質量，除了討論其參與百分比，並驗證其
總和與三個自由度的總質量一致。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "266007128c36", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
