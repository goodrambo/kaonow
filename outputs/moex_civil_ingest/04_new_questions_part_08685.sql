-- W1.6 questions batch 8685/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-a677e516-moex-00025', 'pukao-a677e516', 'pukao-a677e516-moex-112-f5bf720e', 'sub-pukao-a677e516-03', NULL, 'essay', '假設A地至B地需經過國道路段和市區道路路段，國道路段和市區道路路
段之旅行時間為常態分布。國道路段所需平均時間是60分鐘，標準差是10
分鐘。市區道路路段所需平均時間是30分鐘，標準差是5分鐘。某甲將從
A地至B地，試求可於80分鐘內從A地抵達B地的機率，以及超過110分鐘
從A地抵達B地的機率。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "2d9e212d3ed1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1423", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00026', 'pukao-a677e516', 'pukao-a677e516-moex-112-f5bf720e', 'sub-pukao-a677e516-03', NULL, 'essay', '某路段實作車道寬度縮減工程，為評估縮減車道寬度對車速之影響，主管
單位以車牌辨識方法隨機找到10部於此設施設置前一個月和設置後一個
月均有通過該路段的車輛，這10部車輛的車速資料如下表所示。在=0.05
之顯著水準下，試分析於該路段實作車道寬度縮減對駕駛車速之影響。
（25分）
駕駛人編號
調查期間
1 2 3 4 5 6 7 8 9 10
縮減車道寬度前一
54 55 42 62 55 65 42 52 54 48
個月之車速（km/hr）
縮減車道寬度後一
52 42 48 50 47 48 45 48 48 48
個月之車速（km/hr）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "2d9e212d3ed1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1423", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00027', 'pukao-a677e516', 'pukao-a677e516-moex-112-f5bf720e', 'sub-pukao-a677e516-03', NULL, 'essay', '為了解國小學生和學生家長騎乘機車到學校之佩戴安全帽情形，某研究
至甲國小調查騎乘機車到校的學生和家長佩戴安全帽情形，其結果如下
表所示。在=0.05之顯著水準下，試檢定分析家長佩戴安全帽比例與學生
戴安全帽比例是否相等，並說明其應用意義。（25分）
安全帽佩戴情形
身分別
有 無
家長 450 50
學生 380 120', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "2d9e212d3ed1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1423", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00028', 'pukao-a677e516', 'pukao-a677e516-moex-112-f5bf720e', 'sub-pukao-a677e516-03', NULL, 'essay', '為了解新設計的兩種訓練課程學習成效，某部門從報名參訓的20人中，隨
機指派各10人參加這兩種訓練課程。下表為訓練成績資料的基本統計量。
在=0.05之顯著水準下，試檢定這兩種訓練課程的學習成效是否有差異？
（25分）
方法別 訓練人數 樣本平均數 樣本變異數
訓練課程A 10 81.8 19.96
訓練課程B 10 85.3 19.79
附表一：標準化常態分配機率表
Area
z
z 0
z c
c
z
-zc z=0 zc
附表二：t分配表
t
-t t
t
-t
t
t
t
-t t
附表三：卡方分配表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "2d9e212d3ed1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1423", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00029', 'pukao-a677e516', 'pukao-a677e516-moex-112-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '需求預測分析是運輸規劃重要一環。試依據旅運需求理論與需求函數的
應用，說明旅運需求模式（TravelDemand Models）的分類架構。另外，
以總體循序性旅運需求模式（AggregateSequentialTravelDemandModels）
為例，說明其意涵與假設。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "6b693e4129b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00030', 'pukao-a677e516', 'pukao-a677e516-moex-112-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '試說明影響旅運行為（Travel Behavior）之因素。以個體運具選擇模式
（Disaggregate Mode Choice Models）為例，可以考慮那些解釋變數？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "6b693e4129b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00031', 'pukao-a677e516', 'pukao-a677e516-moex-112-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '彈性分析為運輸改善策略分析的重要工具。某市捷運系統之運量需求函
數如下所示：
Q=aFbTc
其中，Q為需求，F為運價，T為旅行時間，a、b、c為參數。
試求：
運價之需求彈性。（10分）
旅行時間之需求彈性。（10分）
假設需求僅受運價與旅行時間影響，市府若欲提升1%之捷運運量，運
價需調整若干？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "6b693e4129b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00032', 'pukao-a677e516', 'pukao-a677e516-moex-112-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '何謂成本效能分析（Cost-Effectiveness Analysis）？試以公路建設為例，
列舉五個績效衡量指標（Measures）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "6b693e4129b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "439", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00033', 'pukao-a677e516', 'pukao-a677e516-moex-111-d4755da2', 'sub-pukao-a677e516-01', NULL, 'essay', '許多高齡者使用電動代步車外出活動，試以用路人因素、運具因素、道路
因素和環境因素等面向說明其交通安全問題，並提出改善策略。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "ba9687c4f747", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "439", "s": "1324", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00034', 'pukao-a677e516', 'pukao-a677e516-moex-111-d4755da2', 'sub-pukao-a677e516-01', NULL, 'essay', '駕駛人視覺特性（visualcharacteristics）的視覺因素（visualfactors）會影
響駕駛安全，請列舉 5個視覺因素，並說明其意義以及其對交通安全的
影響。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "ba9687c4f747", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "439", "s": "1324", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
