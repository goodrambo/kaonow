-- W1.6 questions batch 7003/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-b0f95c3f-moex-00023', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '請列出鑄造前會考慮的鑄件設計原則。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "7b0524925f64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00024', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '如下圖所示，請完成車刀刀角各個位置之名稱（A～F），並說明其主要
功用。（20 分）
車刀各刀角位置', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "7b0524925f64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00025', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '如圖一所示有一圓棒固定在牆上，圓棒長度為3L(m)、半徑為 R(m)，材
料具有降伏強度S(N/m2)，在Z2L處受到一朝負 Y方向的外力 F(N)，
並在Z3L處受到一扭矩 T(Nm)。試求元素 A受到的 vonMises應力為
何？此外，根據最大畸變能模型（MaximumDistortion Energy Model），
則元素 A的安全係數是多少？作答時需要標註單位。（20分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "6b2a6c53f7ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00026', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '有一材料的極限拉伸強度為 750 MPa、疲勞耐久限為 340 MPa、降伏強
度為510MPa，此材料在一特定方向上受到動態正向應力（平均為100MPa、
振幅為 120 Mpa），請根據 Modified Goodman 模型（由 Yield Line 及
Goodman 兩個模型組成）評估此材料的疲勞安全係數。作答時需要標
註單位。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "6b2a6c53f7ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00027', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '有一截面為圓形的螺旋彈簧，其兩端受到軸向外力F(N)，彈簧外徑為D(m)，
圓形彈簧線直徑為 d(m)，試求彈簧在截面上受到的剪應力（請忽略曲率
及應力集中所需要的修正，僅需要計算橫向剪應力及扭轉剪應力的和）。
作答時需要標註單位。（35 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "6b2a6c53f7ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00028', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '有一皮帶輪系統（包含一扁型皮帶、兩個皮帶輪），相關幾何尺寸如圖二
所示，皮帶具有0.5kg/m的單位質量，且有F 190 N的初始張力。有一
i
10 kW馬達以2000 RPM 驅動左邊的小皮帶輪，假設馬達扭力100%施在
皮帶輪的帶動上，試求皮帶輪中心到中心的距離 C、小皮帶輪的皮帶接
觸角度 θ 、小皮帶輪上皮帶內的離心力 F 、皮帶張力 F 及 F （需考慮
d C 1 2
初始張力、離心力及馬達扭力）。作答時需要標註單位。（25 分）
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "6b2a6c53f7ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00029', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '密度為 、比重為9.81kN/m3 之流體以平均速度U 流入一截面為圓
0
形的Y型短管，其幾何配置與尺寸標註於下方的側視圖（圖一），經過分
叉口後以相同的平均流速U 與U 離開上下兩分叉管；入口與兩出口截面
1 2
上的壓力各為p 、p 與p 。若過程中無外界作功、也無熱交換，在假設
0 1 2
摩擦損失與重力位能可忽略的狀況下，可利用伯努力（Bernoulli）定理
推論出p  p 。
1 2
cm/s
cm
cm
cm
cm/s
（圖一）
試求U 。（3分）
0
若進一步化簡設p  p 0，計算需花多少力維持Y型管的水平與垂
1 2
直位置？（計算時請四捨五入到小數第三位）（17 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fa2bbce1ae00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00030', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '今考慮另一個長型Y流道內之穩定流動，其幾何配置與尺寸之側視圖如
圖二所示，三段圓型管道雖內徑不同，但內壁之平均表面粗糙度均為
103m。密度為 、比重為9.81kN/m3、黏滯係數為103 Pas
之流體以平均速度U 1m/s由左方水平管流入，流體經過Y型分叉後由
0
上下兩等長分管排出至大氣壓力，兩出口截面上的壓力各為p 與p ，而
1 2
平均流速則各為U 與U ，兩者不一定相同。
1 2
cm
cm
cm
（圖二）
流道上側裝設的三根靜壓管顯示內部液體高度由上游到下游遞減
(H  H  H )，代表此穩態管內流存有壓力損失P ，而此物理量在
A B C loss
長直管中隨流況的變化，可由下方圖三 MoodyDiagram統一描述。請回
答下述各問題。
（圖三）
試問第一段水平管內為層流或紊流？（3 分）
列出所有造成H  H 的原因。（3分）
C B
從 Moody diamgram可知 Friction factor f的定義，其中 U為特徵平均
流速。針對水平段兩靜壓管間的流體，以控制體積的分析概念來闡述
f的物理意義。（9 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fa2bbce1ae00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00031', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如圖四所示，如果 A處的靜摩擦係數為 0.4，B處的套環是光滑的，
s
因此它只對管子施加水平力，試決定最小距離x，使支架能夠支撐任何
質量的圓柱體而不打滑。忽略支架的重量。（20分）
（圖四）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fa2bbce1ae00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00032', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如圖五所示，使用三個相同的圓柱體作為滾輪將一重型板條箱移動一小
段距離。已知在所示的瞬間，板條箱的速度為200mm/s，加速度為
400mm/s2，均指向右側，試求：（每小題 10 分，共 20分）
中心圓柱體的角加速度。
中心圓柱體上A點的角加速度。
（圖五）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fa2bbce1ae00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
