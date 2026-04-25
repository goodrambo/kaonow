-- W1.6 questions batch 8721/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-b0f95c3f-moex-00056', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '如下圖所示，請分別詳細說明兩個圖中幾何公差標註所代表之意義，並
繪示意圖解釋標註所指零件上該幾何型態的公差容許變化範圍。
（每小題 10分，共 20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "cb7b6420bb70", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00057', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '如下圖所示，有一樑結構承受均佈負荷 w=175kN/m，樑之斷面為尺寸
b2b之長方形，容許之正應力σ =140MPa：（每小題 10 分，共 20分）
all
求 A、B處的支承反力，並沿樑之長度繪剪力分佈圖與彎矩分佈圖。
假設無應力集中，設計斷面尺寸所需之最小 b值。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "cb7b6420bb70", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00058', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '如下圖所示之圓盤離合器，其正要嚙合前兩軸之轉速分別為 和 ，兩
1 2
軸轉動之慣性矩分別為I 和I 。若 大於 ，則離合器嚙合開始時右方
1 2 1 2
的轉軸開始加速。假設離合器嚙合過程發生滑動並產生固定的扭矩 T，
試推導離合器自嚙合開始至使兩軸達到相同轉速為止所需的時間為
(  )I I
t  1 2 1 2 。（20分）
T(I I )
1 2
（請詳列推導過程）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "cb7b6420bb70", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00059', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '尺寸380380mm 之均勻薄鋼板，楊氏模數 E 207GPa ，普松比
（Poisson’sratio）v0.3，降伏強度S 400MPa，鋼板的四個邊緣承受
y
均勻之正應力並處於平衡，在法線為x方向的邊緣受拉應力 ，而法線為
x
y方向之邊緣受壓應力 。若受應力後鋼板的y方向長度減小了0.2mm，
y
依據最大剪應力破壞準則下之安全係數n2.0，求 和 。（20 分）
x y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "cb7b6420bb70", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00060', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '一馬達帶動一個皮帶輪傳輸動力至另一個皮帶輪，兩個皮帶輪的直徑皆
為 700mm，傳輸的功率為10kW。已知皮帶的緊邊張力與鬆邊張力分別
為 720 N與 280 N，求：（每小題10 分，共 20分）
主動輪轉數 n（以 rpm表示）與傳輸之扭矩 T。
皮帶與皮帶輪之間的摩擦係數μ。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "cb7b6420bb70", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00061', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖所示，一支均勻瘦長的簡支梁（simply supported beam）AB於端點
A、B 承受彎矩荷載。梁的長度為 L，楊氏係數為 E，斷面慣性矩為 I。
請繪製梁 AB的剪力分布圖及彎矩分布圖。（13 分）
請推導該梁的撓度曲線（deflection curve）表示式v(x)。（12分）
v(x)
2M M
0 A B 0
x
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edb13fbd902f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00062', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖所示，一支彈性薄壁錐形圓管 AB 的末端 A 固定於剛性牆面，施加
集中扭矩 T 於另一端 B。錐形圓管全長 L、薄壁厚 h，A 與 B 端的平均
0
半徑分別為2r 及r ，其間各截面的半徑呈線性分布。已知剪應變 γ與扭
0 0
轉角 φ 的關係式為d dx，其中 ρ 及 x 為截面的半徑及軸心坐
標。
請推導出錐形圓管各截面 x的剪應力分布表示式(x)。（10分）
請推導出錐形圓管各截面 x的扭轉角分布表示式(x)。（15分）
2r
0
r
0
A xB T
x 0
h
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edb13fbd902f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00063', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖所示，一根均質的瘦長桿件靜置於平滑的水平面，承受一水平施加的
集中力P作用。桿件全長2L，施力點距離最近的末端L 3。已知桿件旋轉
中心的絕對速度為零，試求旋轉中心R至質量中心G的距離。（25分）
y
L L
x R G
x
L 3
P', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edb13fbd902f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00064', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖所示，一根懸掛於天花板固定點 C 的單擺長度為 L，擺錘質量為 m。
擺錘的初始位置 A 與固定端同高。單擺下方 B 點有一個掛勾，BC 的直
線距離為 a。重力加速度以符號 g 表示。單擺的繩子碰到掛勾後，會改
變路徑。若單擺的動能要能支持其以掛勾為圓心，作圓周運動，試問所
需最短的距離 a。（25分）
L
A
C
a
B', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edb13fbd902f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00065', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-7e79a2d7', 'sub-pukao-b0f95c3f-04', NULL, 'essay', '西班牙滑車是由一個定滑輪及一個動滑輪組成，若使用兩組西班牙滑
車，就成為所謂帆滑車，請問：
若只使用一組西班牙滑車時，如下方左圖所示，請畫出施力分析圖，
說明機械利益為多少（不考慮纜繩間的夾角，當作都平行）？（10 分）
當使用下方右側圖的帆滑車，若施力端最大可提供 F=150 公斤力
（kgf），那最多可舉起重物多少公斤？若希望舉起重物 4公尺，那施力
端至少要拉多少公尺？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "24b28b4d6385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械原理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
