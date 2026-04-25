-- W1.6 questions batch 4767/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-4ece01bd-moex-00068', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '試申論大氣折光差及水準面曲率差（習稱為地球曲率差）對於一條直接
水準測線的影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "5376d5190408", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00069', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '政府採購法中訂定的採購標的主要區分為三類，請分別舉例說明其內容。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00070', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '混凝土是各種營建工程常見的基本材料之一。依據施工規範之規定，混凝
土係由水泥、粗細粒料及水按規定比例拌和而成，必要時得摻用化學摻料
或其他摻料。請舉例說明化學摻料之三種主要類型以及其作用。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00071', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '請將以下網圖資訊繪製於答案卷中，並完成要徑法計算後，回答以下問題：
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
餘作業工期與時間皆不變，請問專案何時完成？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00072', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '時程差異（SV）、成本差異（CV）、時程績效指標（SPI）、成本績效指標
（CPI）是進行評估專案績效的指標。請說明四項指標之意義，並解釋
「SV>0、CV<0、SPI>1、CPI<1」時所代表的專案績效情境為何及如何改善？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d4c52965479c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00073', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如下圖梁，承受1.5 kN/m的均布活載重和8 kN的單一集中載重，靜載
重為 2kN/m。請回答下列問題（A點是滾接支承，B點是鉸支承，構件
自重不計）。（25分）
繪製 C 點剪力影響線。
繪製 C 點彎矩影響線。
求 C點最大正剪力。
求 C點最大正彎矩。
B
A
C
2m 2m 2m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "c8c39189e114", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00074', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如下圖超靜定桁架，A點是鉸支承，B點與 C點是滾接支承，指定 C點
支承的反力 C 為贅力，請以最小功法計算超靜定桁架各支承點的反力
Y
與桿件桿力（構件自重不計，使用其他方法或是使用反力 C 以外其他
Y
贅力，一律不予計分）。（每小題5 分，共 30分）
劃出以反力 C 替代支承點 C成為靜定桁架 S。
Y
計算承受原載重的靜定桁架 S，如圖各桿件桿力。
計算承受未知反力 C 的靜定桁架 S，如圖各桿件桿力。
Y
依據各桿桿力，列表計算桁架應變能 U對贅力C 的偏微分式。
Y
解得 C 。
Y
計算各桿桿力。
)
2
m
c
1
2
(
(14cm2) (14cm2)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "c8c39189e114", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00075', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如下圖剛架，A 點為鉸支承，B 點為剛接點，C 點為滾接支承。以卡氏
第二定理（Castigliano’sSecondTheorem）詳細計算剛架上支承點 C 的水
平變位，構件自重不計（使用其他方法一律不予計分）。
在C點加上一個向右水平變數作用力P，並推得A與C點支承點反力。
（5 分）
列出各段斷面彎矩函數及對 P的偏微分。（10分）
使用積分公式計算支承點 C 的水平變位。（10分）
m 全樑EI定值
/N E 7000kN/cm2 5m
k
I103000cm4
5
2
5m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "c8c39189e114", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00076', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如下圖大梁 AB，A點是鉸支承，B點是滾接支承，假若 EI為固定值，
請以共軛梁法詳細計算梁在 B點的轉角與 C點的撓度（使用其他方法一
律不予計分），構件自重不計。（每小題 5分，共 20分）
劃出共軛梁承受彈性載重圖。
求出共軛梁，梁端反力。
計算梁在 B點的轉角。
計算梁 C點的撓度。
a a a a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "c8c39189e114", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00077', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '一供公眾使用之鋼筋混凝土構件，受靜載重 D、活載重 L、地震力 E 及
風力 W四種力量作用，而風力受方向因數折減。設計此構件所需考慮之
設計載重組合 U，除了 U1.4D、U1.2D+1.6L與 U1.2D+1.0L外，
還有那些？請全部列出，不用管它們之間的大小。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "23f7f5ece97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
