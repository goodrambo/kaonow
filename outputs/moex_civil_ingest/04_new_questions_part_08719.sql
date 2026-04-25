-- W1.6 questions batch 8719/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-b0f95c3f-moex-00036', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '試說明熱作加工與冷作加工之定義及判斷依據，並列舉二種熱作加工與
二種冷作加工的製造方法且敘述其製程。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edcf3d3d9ab0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00037', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '何種因素可能會影響塑膠射出成型的生產製造周期時間，請至少列舉四
個因素並簡要說明。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edcf3d3d9ab0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00038', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '在切削加工中，如果有不連續的切屑產生，請說明並列舉此種加工操作可
能帶來的至少四項缺點。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "edcf3d3d9ab0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00039', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '有一直徑d=25mm之實心圓桿，承受一穩定彎矩M=120N-m，已知該圓
桿材料之降伏強度S =170 MPa，試計算：
此圓桿在受彎矩下之「安全因子」為多少？（10分）
若此圓桿除承受彎矩外，同時也受到一穩定扭矩T=80N-m，則圓桿所
受之「最大主應力」為多少？此時安全因子為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "c170a1e7c178", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00040', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '有一徑向滑動軸承內孔與轉軸採「基孔制」H7/e7之配合，已知軸承內孔
直徑之基本尺寸為115 mm，試查詢表一及表二回答以下問題：
軸承內孔直徑與轉軸直徑之最大及最小實體尺寸分別為多少？（10分）
最大及最小之干涉（或餘隙）分別為多少？（10分）
配合方式是屬於「干涉配合」、「過渡配合」或「餘隙配合」？（5分）
表一 公差等級（單位：0.001 mm）
公差等級
IT5 IT6 IT7 IT8 IT9 IT10
基本尺寸
(mm)
50~80 13 19 30 46 74 120
80~120 15 22 35 54 87 140
120~180 18 25 40 63 100 160
180~250 20 29 46 72 115 185
表二 軸之標準上偏差
基本尺寸 上偏差（單位：0.001 mm）
（mm） c d e f g h
65~80 -150 -100 -60 -30 -10 0
80~100 -170 -120 -72 -36 -12 0
100~120 -180 -120 -72 -36 -12 0
120~140 -200 -145 -85 -43 -14 0
140~160 -210 -145 -85 -43 -14 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "c170a1e7c178", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00041', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '今欲選用某一型單列深溝滾珠軸承用以承載徑向負載F = 5000 N及軸向
r
負載F = 2500 N，已知軸承轉速n = 1500 rpm、基本額定動負載C = 105
a
kN、基本額定靜負載C =68kN，試求該軸承壽命L為多少小時？（25分）
0
補充公式及說明：
⑴滾珠軸承負載P與壽命L之關係為P3L常數；
P XF YF （X及Y由表三查詢）
r a
⑵基本額定動負載C對應106轉之軸承額定壽命。
表三 徑向負載係數X及軸向負載係數Y
F /F ≦e F /F > e
a r a r
F /C e
a 0
X Y X Y
0.014 0.19 2.30
0.028 0.22 1.99
0.056 0.26 1.71
0.084 0.28 1.55
0.11 0.30 1 0 0.56 1.45
0.17 0.34 1.31
0.28 0.38 1.15
0.42 0.42 1.04
0.56 0.44 1.00', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "c170a1e7c178", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00042', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-112-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '有一機械傳動系統之配置如下圖所示，動力由馬達輸出至皮帶傳動系統，
再經齒輪傳動系統輸送至工作機；已知馬達輸出轉速為n =1800rpm，工
m
作機需求轉速n =120rpm及功率P =10kW，大帶輪及小帶輪之直徑比為
w w
2.5、齒輪1齒數z =17、齒輪2齒數z =51、齒輪3齒數z =17，試計算：
1 2 3
若不考慮傳遞功率損失，則馬達轉矩T =？（7分）
m
齒輪4之齒數z 應設計為多少？（10分）
4
若已知齒輪1及齒輪2為標準正齒輪、且標準中心距C=119mm，則齒輪
模數m= ？基圓節距P = ？（8分）
b
小帶輪 齒輪4
工作機
馬達
軸承
齒輪3 齒輪2
大帶輪
齒輪1
機械傳動系統之配置簡圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "c170a1e7c178", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "447", "s": "3008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00043', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖所示之繩索接點 B，一側連接有一整段彈簧常數為 k = 800 N/m 之
彈性繩索 AB，此 AB 段之自由長度為 200 mm。試求在此平衡狀態下繩
索 BC、BD分別之拉力。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "af6531465110", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00044', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '有一車輛在如圖所示之蜿蜒平面道路行駛，車輛車速是以固定之減速度
從 A 處之 25 m/s 減速到 C 處之 15 m/s，試求當車輛行駛到 B 處時之合
加速度大小為多少？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "af6531465110", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00045', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-111-3947af79', 'sub-pukao-b0f95c3f-01', NULL, 'essay', '如圖所示，有一15kg 之包裹通過 A點處之速度為 1.5m/s，進入一平滑
無摩擦之滑道而沿著滑道滑降至 B 點處撞擊另一 40 kg 之包裹，若兩
包裹撞擊過程之恢復係數（coefficient of restitution）為 0.6，試求此一
40 kg 之包裹遭撞擊後瞬間之速度。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "af6531465110", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "447", "s": "2707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械力學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
