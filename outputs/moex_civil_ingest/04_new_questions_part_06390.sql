-- W1.6 questions batch 6390/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-014e6a52-moex-00023', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f6ef802', 'sub-locality-014e6a52-01', NULL, 'essay', '請說明「地籍圖重測」與「圖解數化地籍圖整合建置及都市計畫地形圖
套疊作業」的不同點有那些？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "8ead4ef244dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地籍測量", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00024', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f6ef802', 'sub-locality-014e6a52-01', NULL, 'essay', '假設圖解區某一筆宗地之土地登記面積為256m2，若該土地市價每坪 20
萬元，請問此土地價值多少？（10 分）今以數值法辦理土地分割三筆宗
地，計算後面積分別為 76m2、92m2、82m2，請問土地登記面積應各別
為多少？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "8ead4ef244dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地籍測量", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00025', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f6ef802', 'sub-locality-014e6a52-01', NULL, 'essay', '某 TWD67 坐標的數值地籍區須辦理土地鑑界作業，該測區附近已知
有 A(E ,N ) 、B(E ,N ) 、C(E ,N ) 三點 TWD67 坐標，今以 e-GNSS
a a 67 b b 67 c c 67
補測設加密控制 5 點之 TWD97 坐標，另測得三點之 TWD97 坐標為
A(E ,N ) 、B(E ,N ) 、C(E ,N ) ，請列出共同點之四參數坐標轉換的
a a 97 b b 97 c c 97
數學方程式，並請說明轉換參數涵義為何？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "8ead4ef244dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地籍測量", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00026', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f6ef802', 'sub-locality-014e6a52-01', NULL, 'essay', '在地籍管理上，請舉出宗地間的經界線種類有那些？（10分）習慣上，
同時期建築的連棟別墅房子，請問宗地的經界線在那？此外，相隔 25 年
分別蓋好的兩棟建築物，兩宗地的經界線又在何處？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "8ead4ef244dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地籍測量", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00027', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f6ef802', 'sub-locality-014e6a52-01', NULL, 'essay', '假設有二筆宗地（如下圖，各點之橫、縱坐標為A(10,10)、B(70,10)、
C(70,60)、D(12,50)、E(41,55)、F(40,30)、G(45,10)；單位：m），請以
計算 BCEFG宗地面積為多少？（10 分）今欲通過 E點調整經界線 EH，
使調整後的面積保持相同，請計算 H點之橫、縱坐標為何？（10分）
C
E
D
F
A H G B', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "8ead4ef244dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "地籍測量", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00028', 'locality-014e6a52', 'locality-014e6a52-moex-111-9983aba7', 'sub-locality-014e6a52-02', NULL, 'essay', '說明水準高程測量以及三角高程測量施測方法與各自的誤差來源。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "d9975acf690f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00029', 'locality-014e6a52', 'locality-014e6a52-moex-111-9983aba7', 'sub-locality-014e6a52-02', NULL, 'essay', '如圖1，A到B之方位角 為330304515，BAC 145203520，
AB
假設所有觀測量不相關，請計算 A 到 C 方位角 以及標準差 。
AC AC
（25 分）
B
A
C
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "d9975acf690f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00030', 'locality-014e6a52', 'locality-014e6a52-moex-111-9983aba7', 'sub-locality-014e6a52-02', NULL, 'essay', '針對衛星虛擬距離定位測量，請說明：
定位原理及定位方法。（15分）
何謂位置精度因子（Position Dilution of Precision,PDOP）？此數值受
到那些因素影響？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "d9975acf690f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00031', 'locality-014e6a52', 'locality-014e6a52-moex-111-9983aba7', 'sub-locality-014e6a52-02', NULL, 'essay', '某電子測距儀加常數誤差為2mm，乘常數誤差為5ppm，請具體分析
此兩種誤差對距離測量所造成之誤差量大小關係。（本題分析前者大於
後者，或者後者大於前者，抑或在不同的距離會有不同的表現。必須有
明確的數值說明，才予以計分，25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "d9975acf690f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00032', 'locality-014e6a52', 'locality-014e6a52-moex-111-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '標準偏差（Standard Deviation, STD）及均方根誤差（Root-Mean-Square
Error,RMSE）是兩種常被用來分析測量結果的指標，請利用公式說明兩
者之差異。並說明標準偏差和均方根誤差與精確度（Precision）和準確度
（Accuracy）之關係。（例如：標準偏差大，則精確度或準確度高還是低）
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "47ba2bbacf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "339", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
