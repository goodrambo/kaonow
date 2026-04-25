-- W1.6 questions batch 6393/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-014e6a52-moex-00053', 'locality-014e6a52', 'locality-014e6a52-moex-110-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '已知水準測量標準差為3mm K（K為水準路線長，以公里數計）。若往
測的水準路線長為 2 公里，返測的水準路線長為 2.5 公里。假設往返測
獨立不相關，試求往返測高程差平均值的標準差。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59ce45bf365f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00054', 'locality-014e6a52', 'locality-014e6a52-moex-110-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '試論點位誤差橢圓的意義。又已知 A、B 兩點間的相對誤差橢圓的長軸
半徑為 5 cm，短軸半徑為 1 cm，示意圖如下所示，且這兩點的距離
為 250 公尺。試估計 A、B 兩點間連線方向的相對精度（請以分數形式
表示）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59ce45bf365f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00055', 'locality-014e6a52', 'locality-014e6a52-moex-110-2f9f6e2b', 'sub-locality-014e6a52-03', NULL, 'essay', '一水準網如下圖，水準測量高程差觀測值及水準路線長如下表。圖中，
A、B、C、D四點的高程值分別為 35.000公尺、30.600公尺、48.125 公
尺和 42.903公尺。假設所有觀測量獨立不相關，請以最小二乘法平差計
算該水準網，並估計後驗單位權標準差、E和 F點的高程值和其標準差。
（25 分）
水準路線 高程差觀測值（公尺） 水準路線長（公里）
AB -4.408 3
B  E 8.632 6
A E 4.267 4
E F -0.446 1
D F -4.081 2
D C 5.241 5
FC 9.342 8', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59ce45bf365f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量平差法", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00056', 'locality-014e6a52', 'locality-014e6a52-moex-110-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '試回答與非量測型相機（Non-MetricCamera）率定（Calibration）有關之
問題：
相機率定之項目以及目的分別為何？（15分）
試繪圖並說明，以立體像對為例，像片若未進行率定項目之改正，對
物空間資訊之獲取會如何影響（至少須列出兩項說明）？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59deee9e415a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00057', 'locality-014e6a52', 'locality-014e6a52-moex-110-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '若已知內、外方位元素（Interior,ExteriorOrientationParameters）之單張
像幅式數位航空影像，且已知該影像所涵蓋區域之數值地形模型，試詳
述如何求得影像上任一像點的地面三維坐標？（15 分）所求得之坐標精
度受那些因素影響？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59deee9e415a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00058', 'locality-014e6a52', 'locality-014e6a52-moex-110-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '若利用影像覆蓋範圍內，足夠數量之地面控制點的坐標與相應的影像
坐標，以獲取航攝影像的外方位元素，請詳述其數學模式、各參數的
意義及誤差來源；（15 分）除了前述方法外，獲取航攝影像外方位元素
可採取的方法還有那些？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59deee9e415a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-014e6a52-moex-00059', 'locality-014e6a52', 'locality-014e6a52-moex-110-557cde80', 'sub-locality-014e6a52-04', NULL, 'essay', '試回答下列有關影像分類（Image Classification）的問題：
何謂監督式（Supervised）影像分類？（10分）
假設混淆矩陣（ConfusionMatrix）如下表所示（類別分別為甲、乙兩
類），請說明下列精度指標的意義並列出計算式：⑴整體精度（Overall
Accuracy）；⑵生產者精度（Producer’sAccuracy）；⑶使用者精度（User’s
Accuracy）（15 分）
真實參考資料
分 類別 甲 乙
類
甲 A B
資
料 乙 C D', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:41+00:00", "source_pdf_sha1": "59deee9e415a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "333", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "航空測量學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "測量製圖"}'::jsonb, NULL),
  ('locality-0489de64-moex-00001', 'locality-0489de64', 'locality-0489de64-moex-114-341b1486', 'sub-locality-0489de64-01', NULL, 'essay', '外送服務日益普及，但外送員外送時之交通事故也隨之增加，試就主管
機關、外送平台及外送員自身之角度，提出改善之道，並說明何以能降
低相關事故之發生。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "6906cb7e8d2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "507", "s": "1512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00002', 'locality-0489de64', 'locality-0489de64-moex-114-341b1486', 'sub-locality-0489de64-01', NULL, 'essay', '公共運輸之公車路網路線會因為時空變遷而有所調整，試就縣市政府考
量其所轄公車路線重整過程所需要執行的步驟與執行內容。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "6906cb7e8d2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "507", "s": "1512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00003', 'locality-0489de64', 'locality-0489de64-moex-114-341b1486', 'sub-locality-0489de64-01', NULL, 'essay', '針對氣候變遷與極端氣候，交通部門因應之道包含了推動減碳與淨零排
放，及強化調適與韌性兩大方向，請論述其可採取之措施及具體內容。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "6906cb7e8d2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "507", "s": "1512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
