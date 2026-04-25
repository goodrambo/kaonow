-- W1.6 questions batch 2502/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-4ece01bd-moex-00042', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-92e63a65', 'sub-disabled-4ece01bd-01', NULL, 'essay', '請說明一般所謂「8 號鋼筋」，其直徑（mm）、斷面積（cm2）、單位重
（kg/m）與單位重誤差分別為何？另外，工程常見「SD280W」之規格，
其中「SD」、「280」、「W」等符號分別代表什麼意義？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "dbb113e9244d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1708", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00043', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-4c00feca', 'sub-disabled-4ece01bd-03', NULL, 'essay', '將全測站儀設置於 P 點，進行三角高程測量，分別對 A、B 兩點觀測角
度及距離（圖 1），但因條件限制，僅可測得部分數據如表 1-1 所示，
且為解決無法觀測 B 點之垂直角，難以求得 A 點高程之問題，採以全
測站儀望遠鏡水平觀測水準尺方式取代之，所得之觀測紀錄如表 1-2 所
示。請依所觀測之相關數據計算出 P 點高程（H ）及 A 點之坐標及高程
P
（E ,N ,H ）。（25分）
A A A
表 1-1 全測站儀觀測紀錄
視 鏡 垂直角或 傾斜距離
測站 水平角讀數
點 位 天頂距讀數 （m）
正 6951''54"
B 無法觀測 無法觀測
倒 24952''00"
P
正 14553''00" 10220''20"
A 367.089
倒 32553''04" 25739''50"
已知條件：
(E ,N ,H )=(210.428m,319.945m,132.510m)
B B B
(E ,N ,H )=(630.828m,930.345m, 未知高程) 圖 1 點位示意圖
P P P
儀器高(i)：i =1.650m；i =1.780m；i =1.800m
P B A
表 1-2 水準尺觀測紀錄
測站 視點 水準尺觀測讀數（m）
P B 1.990
B P 1.450', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "0f03c189892d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00044', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-4c00feca', 'sub-disabled-4ece01bd-03', NULL, 'essay', '在某路線中心樁A、B、C、D四個點位進行水準測量，現場已知A、D兩
點之高程及各點位樁號，施測後計算所得之高程差如表 2 所示。請先依觀
測結果計算出 B、C兩點平差後的高程。依照路線設計之計畫路面，須將
A 點先挖土 5 公尺，並以+0.2%為計畫路面坡度，按計畫需求，請問原始
地面 B、C、D點之高程，應挖土或填土多少公尺？（25 分）
表 2 點位高程紀錄表
點位 高程差h（m） 點位樁號 已知高程（m）
A 2K+100 71.629
B +4.838 3K+600
C -2.913 5K+600
D +3.272 8K+100 76.838', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "0f03c189892d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00045', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-4c00feca', 'sub-disabled-4ece01bd-03', NULL, 'essay', '一段平坦地距離以鋼捲尺重複施測 n 次，所施測之觀測量及其權重分別以
L、P表示（i1,2,3,,n），假設此段距離為等權觀測，請計算其最或是
i i
值（L）、剩餘誤差（v ）、平均誤差（t）、觀測值中誤差（m）及最或
i
是值中誤差（M ）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "0f03c189892d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00046', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-4c00feca', 'sub-disabled-4ece01bd-03', NULL, 'essay', '有一附合導線折角觀測紀錄如圖2 所示（未依比例繪製），已知該導線起
始方位角 16515''18"，終邊方位角為 12853''45"。請依各夾角觀
AB CD
測之結果，先檢核該導線之角度不符值（ f ），並在不浪費時間和成本考
w
量的前提下，提出如何改正計算之作法。（25 分）
A
1
C
B
2 D
圖 2 附合導線折角觀測紀錄', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "0f03c189892d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00047', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-a777794d', 'sub-disabled-4ece01bd-04', NULL, 'essay', '兩端懸空梁如圖一所示，試求各支承反力與 c點垂直位移，並繪製此梁之
剪力圖與彎矩圖。假設楊氏模數 E 值為 20,000 kN/cm2，面積二次矩 I 值
為 12,000 cm4。（25分）
圖一 （圖未依比例繪製）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "9e62b3e69e89", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00048', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-a777794d', 'sub-disabled-4ece01bd-04', NULL, 'essay', '由 a, b, c, d 節點組成之桁架如圖二所示，桿件 ab 和 bc等長，a點安裝於
一鉸支承上，c點安裝於一滾支承上，試求各支承反力、各桿件內力以及
d 點水平位移。假設所有桿件之楊氏模數 E值為 20,000kN/cm2，截面積 A
值為 200 cm2。（25 分）
×
圖二 （圖未依比例繪製）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "9e62b3e69e89", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00049', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-a777794d', 'sub-disabled-4ece01bd-04', NULL, 'essay', '矩形斷面之鋼筋混凝土單筋梁，寬度b37 cm，有效深度d58 cm，下緣
拉力端配置 4 根 D25 鋼筋，每根面積 5.067 cm2，假設混凝土抗壓強度
f280 kgf/cm2，鋼筋降伏強度 f 4,200kgf/cm2 ，鋼筋楊氏模數
c y
E 2.04106 kgf/cm2，請計算其標稱撓曲強度 M 。（25 分）
s n', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "9e62b3e69e89", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00050', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-113-a777794d', 'sub-disabled-4ece01bd-04', NULL, 'essay', '一有肋筋之矩形斷面鋼筋混凝土單筋梁，其肋筋為 D10 鋼筋，截面積
0.7133 cm2，單排主筋為 4 支 D32 鋼筋，每支面積 8.143 cm2，梁之寬度
b32 cm，有效深度d53cm，假設混凝土抗壓強度 f280kgf/cm2，鋼
c
筋降伏強度 f 4,200kgf/cm2，若此斷面承受一設計剪力V 35t，其肋
y u
筋之間距為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "9e62b3e69e89", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "411", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學概要與鋼筋混凝土學概要", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL),
  ('disabled-4ece01bd-moex-00051', 'disabled-4ece01bd', 'disabled-4ece01bd-moex-112-92e63a65', 'sub-disabled-4ece01bd-01', NULL, 'essay', '國內邊坡常見擋土牆，請詳述一般之混凝土擋土牆之施工步驟與施工時應
注意那些事項。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:24+00:00", "source_pdf_sha1": "574dae83bf6b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "408", "s": "1708", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土木施工學概要", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
