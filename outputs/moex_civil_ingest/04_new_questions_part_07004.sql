-- W1.6 questions batch 7004/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-b0f95c3f-moex-00033', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-56e3da6b', 'sub-locality-b0f95c3f-03', NULL, 'essay', '如圖六所示， A 點的應變為 140(106) ， 180(106) ，以及
ε ε
x y
125(106)。請利用繪製莫耳圓（Mohr’scircle）的方法，試求A點：
xy
在x-y平面中的主應變。（10 分）
在x-y平面中的最大剪切應變。（10 分）
絕對最大剪切應變。（5分）
註：採非指定方法求解者，不予計分。
（圖六）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "fa2bbce1ae00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00034', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '有一個汽缸活塞系統，汽缸內有空氣，其壓力恆為 150kPa，假設空氣的
質量為 0.05 kg，C 、C 分別為 1.004 kJ/kgK和 0.7176 kJ/kgK。當系統
p v
溫度由285K加熱至550K。試求這個等壓過程中：（每小題5分，共15分）
加入的熱是多少？
有多少功被完成？
焓的變化為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "42f07254fe81", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00035', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '若對一汽缸活塞系統內部的某種特殊氣體（R 2.1kJ/kgK）施以定壓
壓縮，並且過程中也有熱的交換，該特殊氣體行為遵守理想氣體定律。
內部氣體的質量為0.3 kg，起始溫度為280 K，整個施壓過程為等溫，起始
壓力為1大氣壓，最後壓力為原來的一倍。試求：（每小題5分，共20分）
過程中氣體內能變化為多少？
最後體積為多少？
過程中所完成的功有多少？
過程中熱的交換有多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "42f07254fe81", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00036', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '有一個渦輪機，其工作時通過的空氣（C 1.0047kJ/kgK，R0.287kJ/kgK）
p
質量流率為 5,000 kg/min。基本上當空氣通過這個渦輪機時等於完成一
個多變過程（polytropic process），其 n 值為 1.45。渦輪機入口的壓力
為 425 kPa，出口壓力為 101 kPa，同時入口溫度為1,400 K。試求：
（每小題 5分，共 25 分）
出入口的比容變化比例為何？
出口的溫度為何？
空氣經過這個渦輪機，其總焓的變化率為多少？
此渦輪機的功率為何？
此渦輪機跟環境的熱交換率是多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "42f07254fe81", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00037', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '有一個卡諾循環引擎，其工作物質為空氣，總質量為 0.1 kg。其循環包
括四個過程，第一個過程為等高溫加熱，第二個過程為等熵膨脹，第三
個過程為等低溫排熱，第四個過程為等熵壓縮。在此循環過程中，最大
的壓力為9×103kPa，發生在一開始。最高溫度為 900K，也是在一開始。
最低溫度為 300K。第一個過程中加入熱量為 5 kJ。試求：
（每小題 5分，共 20 分）
一開始空氣之體積為多少？
第一個加熱過程結束後，空氣體積變成多少？
此卡諾循環的效率是多少？
此循環最後會產生多少淨功？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "42f07254fe81", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00038', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-113-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '有一空氣（C 1.0047kJ/kgK）系統，其質量為0.3kg。此空氣系統經
p
過一個可逆加熱過程，加入的熱為 400 kJ，過程中壓力保持固定，起始
溫度為 500K。假設環境溫度為 300K，試求：加熱過程後溫度變成幾
度？（5分）加熱過程後，熵增加多少？（5分）此過程加入的熱，
可用能有多少？（5 分）不可用能有多少？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "42f07254fe81", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "346", "s": "1907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00039', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-112-3947af79', 'sub-locality-b0f95c3f-05', NULL, 'essay', '請分別說明何謂靜力學、動力學、運動學、材料力學。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a78bbdc60934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "442", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00040', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-112-3947af79', 'sub-locality-b0f95c3f-05', NULL, 'essay', '下圖顯示一質量1000 kg的吊車吊掛一 2400 kg重物，吊車鉸鏈支承 A、
弧狀支承 B、吊車重心所在位置G與重物相對位置如圖所示，請求出吊
車各支承所受的水平力與垂直力，並以重力單位N顯示。解題時，請先
畫出自由體圖，未畫者不予計分。（20分）
A
2400kg
G
1.5m
B
2m 4m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a78bbdc60934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "442", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00041', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-112-3947af79', 'sub-locality-b0f95c3f-05', NULL, 'essay', '一火車自靜止從某一車站以等加速度1 m/s2沿直線軌道出發，在2分鐘後：
請問該車車速為何？（5 分）
行走距離為何？（5分）
該車如在此時發現前方軌道有障礙物，而以 10 m/s2 之等減速度緊急
剎車，請問需多長距離才能將火車停住？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a78bbdc60934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "442", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00042', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-112-3947af79', 'sub-locality-b0f95c3f-05', NULL, 'essay', '一長度 300 mm、直徑 12 mm的塑膠圓桿，其彈性係數（楊氏係數）為
3.1 GPa。當該桿受到 3 kN 拉力時，請問其拉應力與變形量各為何？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:28+00:00", "source_pdf_sha1": "a78bbdc60934", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "442", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
