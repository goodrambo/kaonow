-- W1.6 questions batch 7001/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-b0f95c3f-moex-00003', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '泰勒刀具壽命公式可表示為VTn C，試說明切削加工時，該刀具壽命
公式中的 n 值高或低，何者有利於加工？而 C 值高或低，何者有利於
加工？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fcf82f8da990", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00004', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '試列舉並說明切削溫度過高會對於加工後產品造成那些不良的影響。
（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fcf82f8da990", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00005', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '試分別說明珠擊（shotpeening）及雷射噴擊（lasershotpeening）的作法
以及原理。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fcf82f8da990", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00006', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '一輪轂藉方形鍵固定安裝於傳動軸上，已知該傳動軸在操作轉速
600rpm下傳送 30 kW 的功率，假設軸的降伏強度S 560MPa，安全
y
係數取 2.5，試根據最大剪應力失效理論求該軸不會降伏失效的最小直
徑 D（無條件進位取整數 mm）。假設方形鍵的寬度w D/4，剪力降伏
強度S 250MPa，安全係數亦取 2.5，試依據最大剪應力失效準則，求
sy
該鍵抵抗剪力失效所需的最小長度 L。（25分）
w
鍵
輪轂
軸
D', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "8bf040f38e86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00007', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '已知一承受變動軸向應力作用的鋼製桿件，該軸向應力在最小應力
50MPa與最大應力 250MPa之間週期性變動。已知該桿件
min max
材料的修正疲勞限（modified endurance limit）S 250MPa，假設該桿
e
件抵抗疲勞失效的安全係數n2。試求作用在桿件的中值（或平均）應
力σ 及交變應力 ，並使用 ASME-橢圓（elliptic）疲勞失效準則公式
m a
(n /S )2 (nσ /S )2 1，求避免疲勞失效下該桿件所需的最小降伏強
a e m y
度S 。（25分）
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "8bf040f38e86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00008', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '已知具有角度110雙環狀襯墊的碟式剎車（diskbrake），該襯墊的內
外半徑分別為r 50mm及ro 110mm。假設襯墊與剎車轉盤間的摩擦
i
係數 f 0.35，設計時要求剎車扭矩容量T 550N-m，試依據均勻壓力
（uniformpressure）及均勻磨耗（uniformwear）的條件，分別求作用在
襯墊所需的致動力 F。（25分）
轉盤
襯墊
F F', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "8bf040f38e86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00009', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '已知一用於鎖緊螺栓的套筒鈑手，其係由施力桿 CD 及桿 OC 組成。各
桿的幾何尺寸分別為a 50mm、b300mm、c50mm及d 300mm；
桿 OC的 AB段直徑25mm。施力桿 CD視為剛體，桿 OC的材質為降伏
強度S 600MPa的合金鋼。若強度設計僅考慮桿 OC 的降伏破壞，並
y
假設該鈑手結構最弱處在 OC桿AB段的 A點處。已知施加於施力桿 CD
之 D端的力F 1200 N，試根據畸變能失效理論（Distortionenergyfailure
theory），且不考慮應力集中效應下，求該鈑手不會降伏失效的安全係數。
（25分）
y
a
O
A
b
40mm直徑
z
c
B
25mm直徑 C
d
F
x
40mm直徑
D', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "8bf040f38e86", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00010', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如下圖所示，一截面積A2m2之水桶側壁上、水深h 6.5m處有一直
1
徑d 0.025m、垂直部分長度h 1.8m之噴嘴，使水從其出口（圖中O
2
處）流出。假設黏性及暫態效應可以忽略，並令水之密度1000kg/m3、
重力加速度g 9.8m/s2，試求：
噴嘴中水流之質量流率（massflowrate）；（10 分）
從噴嘴流出水柱之頂點與桶內水面之高度差。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a452dc5956c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00011', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '在一直徑d 0.4m之水平圓管中，水以截面平均速度V 10cm/s流動。
假設此管之內壁光滑，故粗糙度（equivalentroughness）0，試求每單
位管長之壓力降（pressure drop per unit pipe length）。設水之密度
1000kg/m3、運動黏滯係數1.1210-6m2/s。提示：管流摩擦因子
（friction factor）f可利用下式計算：
1.11
1 /d  6.9
1.8log  ，
f  3.7  Re
式中 Re為雷諾數（Reynoldsnumber）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a452dc5956c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00012', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如圖所示一惰輪之截面，其中材質橡膠密度1250kg/m3、鋁密度
2770kg/m3、青銅密度8580kg/m3，求此惰輪對轉動軸之質量慣性矩及迴
轉半徑（radiusofgyration）。（15分）
16
橡膠
鋁
8 2 6 8
2 1
青銅
單位：mm
20', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a452dc5956c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
