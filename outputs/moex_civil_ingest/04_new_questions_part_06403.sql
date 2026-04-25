-- W1.6 questions batch 6403/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0489de64-moex-00094', 'locality-0489de64', 'locality-0489de64-moex-110-918ea80c', 'sub-locality-0489de64-07', NULL, 'essay', '航空客運的經營型態目前大致可分為全服務航空公司（Full-Service
Carrier）及廉價航空公司（Low-CostCarrier），請問二者的競爭策略有何
差異？同時，在新冠肺炎（COVID-19）疫情日漸平穩之後的新日常（New
Normal）下，二者可能各需要如何調整其經營策略？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "7ee85cc4b30b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸管理學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00095', 'locality-0489de64', 'locality-0489de64-moex-110-918ea80c', 'sub-locality-0489de64-07', NULL, 'essay', '政府陸續推出偏鄉的公共運輸服務，試以運輸行銷的角度說明如何推廣
此類服務。另以地方政府的角度，說明持續提供該等服務的策略與考量。
（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "7ee85cc4b30b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸管理學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00096', 'locality-0489de64', 'locality-0489de64-moex-110-918ea80c', 'sub-locality-0489de64-07', NULL, 'essay', '配送業者通常用小型貨車進行區域貨物的收送，再用大型貨車做城際轉
運，請問在此運作模式下，場站設施（Facility）、車隊管理（Fleet
Management）、排程（Scheduling）、路線（Routing）等決策，應該考量
那些因素及限制？（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "7ee85cc4b30b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸管理學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00097', 'locality-0489de64', 'locality-0489de64-moex-110-5b10e36f', 'sub-locality-0489de64-03', NULL, 'essay', '由於在交通運輸業中，普遍具有共同成本（commoncost）之特質，試介
紹三種常見解決如何分配共同成本之「完全分配成本法（fullydistributed
cost）」，並且評論其優缺點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "9bf7b21ff602", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00098', 'locality-0489de64', 'locality-0489de64-moex-110-5b10e36f', 'sub-locality-0489de64-03', NULL, 'essay', '假設甲乙兩地有三種運輸方式（航空、公路、鐵路），其絕對績效水準
（absoluteperformancelevel）及相對績效水準（relativeperformancelevel）
分別如表一及表二所示：
表一 絕對績效水準
運具
航空 公路 鐵路
績效
旅行時間（小時） 1 2 3
旅行成本（$） 5 3 2
表二 相對績效水準
運具
航空 公路 鐵路
績效
旅行時間（T ）
rk
旅行成本（C ）
rk
若吾人已利用甲乙兩地（i,j）之實際資料而求得抽象運具模式如下：
T 1000100T 60C 60T 50C 50N
ijk b b rk rk
其中，T 及C 分別表示運具之最少時間及最小成本，而T 及C 分別表
b b rk rk
示相對績效之水準，而 N表示運具種類的數量。
試求：填入表二之空格。（8 分）
在現況下之各運具的旅運需求量為何？（8分）
若有高速汽艇預計在數年後加入營運，其甲乙兩地之旅行時間
為 1.5 小時，成本為$4，則未來各運輸方式之運量為何？（9分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "9bf7b21ff602", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00099', 'locality-0489de64', 'locality-0489de64-moex-110-5b10e36f', 'sub-locality-0489de64-03', NULL, 'essay', '假設有一家大成電子公司，貨物之運銷資料如下：
若採用空運：每單位運費$3.0，平均運輸時間5 天
陸運卡貨：每單位運費$0.8，平均運輸時間15 天
鐵路運輸：每單位運費$0.5，平均運輸時間20 天
此外，尚已知：
㉑每年貨物需求量（Q）（quantitydemanded）為 10,000 個單位
㉒每批貨物訂購成本（a）（ordering cost）為$10
㉓每單位貨物每年倉儲成本（w）（warehousecost）為$5
㉔每單位貨物每年之持有成本（u）（carrying cost）為$3
試根據上述資料，以1年365天計算，求出經濟訂購量（economicordering
quantity）及最低總成本的運輸方式？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "9bf7b21ff602", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00100', 'locality-0489de64', 'locality-0489de64-moex-110-5b10e36f', 'sub-locality-0489de64-03', NULL, 'essay', '運輸計畫評估中常用的成本效益分析（cost-benefitanalysis）有自償率分
析法（self-liquidation rate）、益本法（benefit-cost ratio）、淨現值法（net
present value）與內部報酬率法（internal rate of return）等，請說明其意
涵、列出公式，以及其判定優劣的準則。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "9bf7b21ff602", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00101', 'locality-0489de64', 'locality-0489de64-moex-110-5e00ff89', 'sub-locality-0489de64-04', NULL, 'essay', '大眾運輸資料是大眾運輸規劃的基礎。試列舉大眾運輸相關之資料項
目，並說明其蒐集技術與方式。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "5cee6b519d4e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00102', 'locality-0489de64', 'locality-0489de64-moex-110-5e00ff89', 'sub-locality-0489de64-04', NULL, 'essay', '站在運輸規劃與政策制訂的立場，下列三種處理都市交通問題的方法中
以何者較優？
㉑以政策方式鼓勵個人改變旅運行為。
㉒新建運輸設施，增加容量。
㉓介入土地使用與運輸系統之發展。
上述三種方法在運用時應注意那些課題和限制？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "5cee6b519d4e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0489de64-moex-00103', 'locality-0489de64', 'locality-0489de64-moex-110-5e00ff89', 'sub-locality-0489de64-04', NULL, 'essay', '若你是一位運輸規劃師，受命為一個中型城市是否新建外環道路的計
畫進行評估。試研提一作業流程，說明你的作法與建議。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "5cee6b519d4e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
