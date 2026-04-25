-- W1.6 questions batch 5273/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00073', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '如圖所示之ㄇ形桿件於 A及 D點焊接於垂直牆面上，若已知靜態負載 P
Pl2 Pl
在 A 及 D 點分別產生之扭矩為T 1 、彎矩M  2 ，其中
l l 2
8E( 1  2 )
E G
P=1000 N、l =1 m、l =0.25 m、d=40 mm。設此桿件材料之抗拉強度為
1 2
500MPa、降伏強度為 400MPa、楊氏係數 E=210GPa、剪力模數 G=80.8
GPa，試分別以最大剪應力理論、畸變能理論（distortion energytheory）
計算此桿件在 A點之設計安全係數。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "960beee25a32", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00074', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '有一 SAE1040冷拉鋼之材料桿件，其材料抗拉強度為 550MPa、降伏強
度為 490 MPa，承受一軸向之拉伸疲勞變動負載：F = 3500 N、F =
max min
500N。若材料之耐久限（endurancelimit）為 210MPa，且桿件上無應力
集中，設計時之安全係數為 2.0，則當桿件設計壽命為 105 次負載循環
下，求其所需之桿件截面積大小。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "960beee25a32", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00075', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '有一螺旋壓縮彈簧，鋼絲直徑 4.0mm、平均螺旋半徑 14.0mm、總螺旋
圈數 8 圈，彈簧兩端為磨平（ground，總共無效圈數為 1.0），承受靜態
負載大小為 450 N。若鋼絲之抗拉強度 S = 1400 MPa 且拉伸降伏強度
u
S 、剪力降伏強度 S 與 S 比值：S /S =0.60、S /S =0.40，剪力模數為
y sy u y u sy u
79.5GPa，試求此彈簧使用下之安全係數及此彈簧之彈簧常數。（可能用
16PR 0.615 Gd4
到之公式提示： K 、K 1 、k= ）（20分）
S d3 S c 64R3N
C', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "960beee25a32", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00076', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '有一旋轉機械上每一圈迴轉軸之扭矩輸出如圖所示，軸之轉速為60rpm，
若軸之動力由一固定扭矩之馬達所帶動，且不計機械之其他動力損失，
試求以能量平衡之觀點所需選用馬達之功率。另外，若軸上欲控制轉速
變動係數（coefficient of fluctuation）低於 0.20，則所需之鐵製平板飛輪
的外徑應為多少？飛輪鐵材厚度為 200 mm，質量密度為 7680 kg/m3。
（20 分）
12
10
OutputTorque
)m 8
-N
k
( 6
e
uq
ro
T 4
2
0
0 60 120 180 240 300 360
CrankAngle(o)
°', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "960beee25a32", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00077', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '於一自由含水土體之地表面有穩定降雨強度 i(mm/hr)，若無地表逕流產
生，給定土壤之水力傳導度 K、上游水位h、下游水位 h、土體長度 L，
2 1
且土體內滲流符合達西定律（Darcy’s Law）。
推求土層中之地下水面線剖面h(x)。（15分）
推求土層中之寬流量 q(x)。（10分）
i(mm/hr)
y 自由含水土體
h
2 h(x)
x
h
1
L
不透水層', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00078', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '說明自由水面及底床邊界分別為流線之條件為何？（10分）
流場之流況為穩定流或均勻流之判別方程式為何？分別以管流舉例
說明穩定流而非均勻流，及均勻流而非穩定流之實際流況。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00079', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '二維尤拉方程式（Eulerequation）表示如下：
u u u (pz)
u w
t x z  x
w w w (pz)
u w
t x z  z
其中 u 與 w 分別為 x（水平方向，向右為正）與 z（垂直方向，向上為
正）二個方向的速度分量，t為時間，為流體密度，p 為壓力，（g）
為單位重，g 為重力加速度。一矩形（水平長 L，高 H）半滿油槽在固定
水平加速度為 a (>0)，及固定垂直加速度為 a (>0)作用下，並假定油槽內
x z
流體各位置之加速度皆相同。
由以上公式推求油槽內液面坡度為何？（15 分）
油槽內最大壓力位於何處？其值為何？（10 分）
38060', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00080', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '渠道中設置一寬頂堰（broad-crested weir），B 為堰之長度，已知其單寬
流量為 q(m2/s)，其下游邊緣為自由跌水（freeoverfall），即此處渠底與空
氣接觸。
試求寬頂堰均勻段之臨界水深（criticaldepth）y 。（10 分）
c
試求寬頂堰下游端之邊緣水深（brink depth）y 。（15分）
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00081', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '風力發電係將部分風能轉換為軸功，帶動發電機發電。
（每小題 10分，共 20 分）
說明氣溫、風速及風機轉子直徑如何影響輸出軸功之大小。
有一風力發電機其轉子直徑為20m，並將 40%之風能轉換為軸功。在
風速為 35 km/h，氣壓為 100 kPa，氣溫為 20°C 時，軸功及風機下游
風速為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "cab1b1b151c9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00082', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '有一四衝程汽油引擎，其壓縮比為 10，缸數為 4，總排氣量為 2300cc。
進氣條件為 280 K，70 kPa，轉速為 2100 rpm，燃料燃燒供應之熱量為
1800kJ/kg。在冷空氣及引擎以理想Otto循環運轉假設下，試求此引擎之：
平均有效壓力（5 分）
循環最高溫度（5 分）
輸出功率（10分）
參考數據：空氣比熱比=1.4，等容比熱=0.717 kJ/kgK。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "cab1b1b151c9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
