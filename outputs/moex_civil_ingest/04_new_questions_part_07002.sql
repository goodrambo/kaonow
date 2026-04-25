-- W1.6 questions batch 7002/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-b0f95c3f-moex-00013', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如圖所示之小朋友體重40kg、重心位於 G 點，若其來回擺盪之最大角
度60、過程中無能量損失，試求其擺盪至0之最低點時，其速
度大小及桿件 AB所受之反力（假設 AB、AC兩側都各僅有一支桿件）。
另外，若桿件為兩端銷接、外徑50mm、壁厚為3mm之鐵材（楊氏係數
210GPa），試檢查桿件是否會產生挫曲（buckling）。（30 分）
A
30o 30o
3m
G
C B', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a452dc5956c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00014', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如圖所示之油壓缸（cylinder）受活塞（piston）之推動而產生壓力p，假
設其可被視為薄壁壓力容器且壁面摩擦係數可不計，而活塞之直徑為
48mm、施加之外力 F 為16kN。當使用之缸壁材料之容許剪應力
allow
為42MPa，且缸壁在軸向可自由變形，試求缸壁材料所需之最薄厚度
t 。（20分）
min', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a452dc5956c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00015', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '考慮一個活塞-汽缸系統。一開始裡面裝有0.15kg的氮氣。汽缸內壓力為
110kPa，溫度為100℃。然後汽缸內的氮氣開始等溫膨脹至另一狀態。
新狀態的壓力為90kPa。
請問一開始的體積是多少？（5 分）
最後的體積是多少？（5 分）
這個膨脹過程產生的功是多少？（10 分）
（氮氣的氣體常數為0.2968kJ/kgK）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "c754d457d224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00016', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '如果有一個活塞-汽缸系統，內部有15kg的空氣。起始溫度為 25℃，汽
缸內部經過電阻加熱絲加熱，溫度升至 77℃。過程中為等壓。其壓力為
300kPa。系統與環境之間有熱損失為60kJ。請問：（每小題5分，共20分）
一開始體積是多少？
最後體積是多少？
整個系統的內能變化是多少？
加熱絲總共給了多少熱量？
（空氣的氣體常數為0.287kJ/kgK，C 0.718kJ/kg℃）
v', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "c754d457d224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00017', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '二氧化碳氣體進入一個絕熱的壓縮機。在入口的壓力為100kPa以及溫度
為300K 。同時入口的質量流率為0.5kg/s。而在出口端其壓力為
600kPa，溫度為450K。若忽略動能損失。請計算：
（每小題10分，共20分）
入口的體積流率是多少？
需要多少功輸入給這個壓縮機？
（二氧化碳的氣體常數為0.1889kJ/kgK，C 0.846kJ/kgK）
p', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "c754d457d224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00018', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '考慮一卡諾引擎（Carnotheatengine）從一個未知溫度的熱源接收650kJ
的熱。然後向一個溫度 24℃的熱源排出250kJ的熱。
（每小題10分，共20分）
請問未知溫度應該是多少？
這個卡諾引擎的熱效率是多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "c754d457d224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00019', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-114-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '考慮一個壓縮機，空氣穩定的流入。入口的溫度為 17℃，壓力為100kPa。
出口的溫度為 57℃，壓力為600kPa。其質量流率為1.6kg/min。
（每小題10 分，共 20 分）
請問空氣經過這個壓縮機的熵變化是多少？
空氣的總能量變化率是多少？
（空氣的氣體常數為0.287kJ/kgK，C 為1.005kJ/kgK）
p', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "c754d457d224", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00020', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '試說明軟銲（Softsoldering）及硬銲（Hardsoldering）之差異，及兩者的
優缺點與應用。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "7b0524925f64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00021', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '試描述何謂電腦輔助設計／電腦輔助製造（CAD/CAM）、彈性製造系統
（FMS）及電腦整合製造（CIM）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "7b0524925f64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00022', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3064b395', 'sub-locality-b0f95c3f-01', NULL, 'essay', '試說明粉末冶金過程中所需要的步驟及其各步驟目的。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "7b0524925f64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
