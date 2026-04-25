-- W1.6 questions batch 6391/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-014e6a52-moex-00033', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '今利用一水準儀測量兩水準點之往返高程差，重複十次往返測量，往返
高程差之合（閉合差）分別為-0.8 mm、-0.1 mm、1.4 mm、-0.6 mm、
0.1 mm、0.4 mm、-1.6 mm、0.2 mm、-0.9 mm、0.3 mm。
假設往返高程差之合服從常態分布，在母體變異數2未知，請問在顯著
水準0.05之下，請問往返高程差之合的母體期望值是否為零？
（t =1.812、t =2.228、t =1.833、t =2.262、Z =1.645、
10,0.05 10,0.025 9,0.05 9,0.025 0.05
Z =1.96）（25分）
0.025', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "47ba2bbacf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00034', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '一經緯儀觀測角度的中誤差為6。在相同觀測條件，今以此經緯儀觀測
一個五邊形內角，請計算該五邊形內角和之中誤差？若重複觀測某一內
角角度 5 次，請計算此角平均值之中誤差？今欲使此角平均值之中誤差
低於1.5，請問該內角至少需要重複觀測幾次？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "47ba2bbacf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00035', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '一水準網如下圖所示，水準點 A、B 為已知水準點，高程分別為
H 5.000 m和H 7.000 m，水準點 C、D為高程未知點，水準觀測數
A B
據（箭頭為觀測方向）如下表所示：
高程差觀測值（m） 水準路線長（km）
h =1.000 m 2
1
h =1.050 m 4
2
h =1.000 m 2
3
h =0.950 m 4
4
h =1.050 m 4
5
假設直接水準測量之誤差與路線長度之平方根成正比，試計算平差水準
點 C和 D之高程及其中誤差。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "47ba2bbacf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00036', 'locality-014e6a52', 'locality-014e6a52-moex-111-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '請回答下列各題，計算題需列出計算程序：（每小題 6 分，共 60分）
有一顆飛行高度為 600 km 之遙測衛星垂直掃描地表，若其觀測角之
偏差為10，則造成地面點位的偏差為若干？
一部空照相機之像幅為100mm57mm，焦距為 92mm，若就像幅之
長邊與短邊分別進行 60%重疊之垂直攝影，則其基線航高比（Baseto
HeightRatio）各為若干？
一部焦距為 100 mm 的空照相機於高程為 1,000 m 處，以垂直地平面
方式攝影，若地表上兩點的高程分別為 10m及 100m，則該兩點之像
比例尺分別為若干？
一部空照相機於高程 1,000 m 處以垂直地平面進行攝影，若在影像上
距像底點（與像主點重合）30 mm 處有一高程為 60 m 之目標物，則
該目標物之高差移位為若干？
由 6張空照影像所構成重疊區之方位參數已知，現擬計算前方交會，
若無遮蔽，則其自由度（多餘觀測數）為若干？
使用中心投影的影像進行空間後方交會計算，至少需要幾個地面控制
點？
使用 2 維投影轉換（2D ProjectiveTransformation）以校正空照影像的
傾斜移位，至少需要幾個地面控制點？
使用有理函數模型（RationalFunctionModel）進行衛星影像幾何計算，
在有理多項式係數（RationalPolynomialCoefficients）已知之條件下，
至少需要幾個地面控制點？
2張相片所組成立體模型之相對方位參數求解，至少需要幾對共軛點？
說明空中三角測量之目的。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "55456e5cbc58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00037', 'locality-014e6a52', 'locality-014e6a52-moex-111-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '擬採用量測型（Metric）相機以垂直攝影方式測製 1/1,000 比例尺地形圖，
回答下列各題：（每小題 10分，共 20 分）
需完成的工作項目有那些？
請提出工作程序。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "55456e5cbc58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00038', 'locality-014e6a52', 'locality-014e6a52-moex-111-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '使用具有紅外線、紅、綠及藍等四波段的多時期人造衛星影像，據以偵
測地表在不同時期的植生變遷，請提出：（每小題 10 分，共20分）
變遷偵測的關鍵指標。
作業流程圖。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "55456e5cbc58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00039', 'locality-014e6a52', 'locality-014e6a52-moex-110-c3240116', 'sub-locality-014e6a52-05', NULL, 'essay', '試說明地理資訊系統（GIS）所處理的資料（Data）之類別（Category）
與特性。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "ad4537b3c053", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與數值製圖", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00040', 'locality-014e6a52', 'locality-014e6a52-moex-110-c3240116', 'sub-locality-014e6a52-05', NULL, 'essay', '在以不規則三角形網（Triangulated Irregular Network; TIN）建構之數值
地形模型中，試繪圖並列出公式說明如何計算三角形IJK【頂點座標為
(X,Y,Z)、(X,Y,Z)、(X ,Y ,Z )】地表之坡度（Slope）及坡向（Aspect）。
i i i j j j k k k
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "ad4537b3c053", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與數值製圖", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00041', 'locality-014e6a52', 'locality-014e6a52-moex-110-c3240116', 'sub-locality-014e6a52-05', NULL, 'essay', '試說明地圖投影（Map Projection）之基本要素，並據以說明臺灣地區
TWD97 座標系統之地圖投影分類屬性。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "ad4537b3c053", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與數值製圖", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00042', 'locality-014e6a52', 'locality-014e6a52-moex-110-c3240116', 'sub-locality-014e6a52-05', NULL, 'essay', '真實世界的特徵物具備兩個基本要素：位置（Location）與屬性
（Attributes），試說明數值地圖（DigitalMaps）如何表現任意位置與屬性
的關係。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "ad4537b3c053", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地理資訊系統與數值製圖", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
