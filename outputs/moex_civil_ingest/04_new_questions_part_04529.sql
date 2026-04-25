-- W1.6 questions batch 4529/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-086dd584-moex-00026', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '試利用牛頓系流體（Newtonianfluid）受剪應力與角變化率之線性關係分
析動力黏滯係數及運動黏滯係數v之因次。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00027', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '寫出（不必推導）雷諾傳輸定理（R.T.T.），並解釋各項之物理意義。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00028', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '一U型管加速器中，液體之比重為4.0。今將此加速器安裝於汽車內，其
底管（長度為30cm）之左右兩側垂直管如下圖所示。某次汽車測試試跑
時，觀測到兩垂直側管內液面高差為 8 cm，求此時汽車的加速度a 為若
干（m/s2）？U型管之內徑為1cm，重力加速度以9.81m/s2計。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00029', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '一 均 勻 薄 層 流 在 傾 角 為 θ 之 斜 坡 上 往 下 流 動 速 度 如 下 ：
g  y
uy y d  sin
2
式中，y表垂直坡面之座標，d 為水流斷面深度，u為沿著坡面流下之速
度，g表重力加速度，μ為流體之動力黏滯係數，ρ為流體密度。求：
（每小題 10分，共 20 分）
單位寬度之體積流率 q
V
平均速度（V）和最大速度（u ）之比值，即 ？
max
u
max
35260
37360', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00030', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '已 知 一 不 可 壓 縮 流 體 所 形 成 流 場 之 速 度 勢 能 函 數
x,yax2 bxycy2 dxey f ，其中 ， ， ， ， ， 均為常數。
a b c d e f
（每小題 10分，共 20 分）
求該流場分別在 x，y方向之速度分量 u 及 v。
求該流場滿足連續方程式之條件。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00031', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '政府採購法中訂定的採購標的主要區分為三類，請分別舉例說明其內容。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00032', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '混凝土是各種營建工程常見的基本材料之一。依據施工規範之規定，混凝
土係由水泥、粗細粒料及水按規定比例拌和而成，必要時得摻用化學摻料
或其他摻料。請舉例說明化學摻料之三種主要類型以及其作用。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00033', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '請將以下網圖資訊繪製於答案卷中，並完成要徑法計算後，回答以下問題：
SS+1 FS+1
作業：B 作業：D
工期：5 工期：6
FS+0
FS-3 FF+3
作業：A 作業：E 作業：F
工期：10 工期：6 工期：10
SS+1 作業：H FF+2
工期：2
單位：天。SS+1表示Start-Start的邏輯關係，中間間隔1天，其他雷同。
本專案的要徑為何？（5 分）
本專案之總工期為何？（10 分）
若作業 B工期延長為 9 天完成，作業 E提早 1天開始但工期不變，其
餘作業工期與時間皆不變，請問專案何時完成？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00034', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-111-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '時程差異（SV）、成本差異（CV）、時程績效指標（SPI）、成本績效指標
（CPI）是進行評估專案績效的指標。請說明四項指標之意義，並解釋
「SV>0、CV<0、SPI>1、CPI<1」時所代表的專案績效情境為何及如何改善？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:49+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "350", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00035', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '於一自由含水土體之地表面有穩定降雨強度 i(mm/hr)，若無地表逕流產
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
不透水層', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
