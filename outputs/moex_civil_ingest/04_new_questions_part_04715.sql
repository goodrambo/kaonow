-- W1.6 questions batch 4715/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-3df1c47f-moex-00016', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-114-20e3c385', 'sub-heelevel3-3df1c47f-04', NULL, 'essay', '為何水稻種植期間土壤可能會排放不同的溫室效應氣體？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "c3fb995cbc02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "245", "s": "1210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00017', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-114-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '請回答下列問題：（每小題 5 分，共 25 分）
解釋假設檢定中的第一型錯誤為何，並說明第一型錯誤可能發生的情況。
在統計分析中進行變方分析的目的為何？
單因子變方分析要有效，必須滿足那些假設？
何謂資料轉換？舉例說明分析資料之前需先進行轉換的情境。
簡單線性相關係數強時，能暗示兩變數間具有因果關係嗎？說明原因。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "f9bf80ffb9f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "245", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00018', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-114-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '研究人員欲測試四種除草劑（A、B、C、D），並採用 4 4拉丁方設計
來控制行列效應。產量結果（公斤）以拉丁方設計呈現如下：
×
行 1 行2 行3 行4
列1 B(23) A(21) D(22) C(20)
列2 A(25) D(24) C(23) B(22)
列3 D(27) C(25) B(26) A(24)
列4 C(28) B(27) A(26) D(25)
完成以下變方分析表(1)～(12)之數值，並測試除草劑是否對產量造成顯
著影響（假設顯著水準=0.05）。（25 分）
變異來源 自由度 平方和 均方 F 值 P 值
列區集 (1) 59 (8)
行區集 (2) (6) (9)
除草劑 (3) (7) (10) (12) 0.216
機差 (4) 1 (11)
總和 (5) 79', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "f9bf80ffb9f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "245", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00019', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-114-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '某研究員探討光照量（Light：高1、低2）和肥料（Fertilizer：1、2、3）
對植物株高的影響，預計採用完全隨機設計，6 種組合每種各重複 3 次，
以探討光照、肥料，及兩者交互作用影響株高的效應大小。
說明如何進行試驗單位之隨機化，以符合上述試驗欲探討光照、肥料
及兩者交互作用是否影響株高之需求。（10 分）
若試驗結果以R進行分析後，所得之結果摘錄如下圖，在 =0.05 下，
請據以進行假設檢定的結果闡述。（15分）
α', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "f9bf80ffb9f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "245", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00020', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-114-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '測試 4 種不同培養基（A、B、C、D）對作物癒合組織生成量的影響。
每種培養基施用於5個隨機分配的組織培養皿中，並記錄癒合組織生成量
（公克）如下：
培養基 A：20、22、19、21、23
培養基 B：25、26、24、27、25
培養基 C：19、18、20、17、18
培養基 D：22、23、21、24、22
寫出變方分析表，並檢驗在 α=0.05 時，不同培養基之癒合組織生成量是
否有顯著差異（F =3.239）？（25分）
0.05,3,16', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "f9bf80ffb9f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "245", "s": "1213", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00021', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-113-545614f0', 'sub-heelevel3-3df1c47f-01', NULL, 'essay', '請說明有關下列品種權問題，申請品種權保護的條件須具備那五項？植
物的專利權與植物品種權有何區別？何謂研究免責？育種家免責？農民
免責？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "296a6aa7b38a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "341", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00022', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-113-545614f0', 'sub-heelevel3-3df1c47f-01', NULL, 'essay', '請回答水稻栽培管理相關問題：
何謂插秧適期？國內一期作和二期作插秧適期分別為何？（4分）
水稻生長至那些時期需保持田中 5-10 公分之水深？（4分）
水稻田長期在湛水環境下生長，甲烷排放高，試說明影響水稻田溫室氣
體甲烷排放之因子？如何以栽培管理方式降低甲烷之排放量？（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "296a6aa7b38a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "341", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00023', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-113-545614f0', 'sub-heelevel3-3df1c47f-01', NULL, 'essay', '請回答下列甘蔗相關問題：（每小題 4 分，共 20分）
甘蔗葉片上表皮之機動細胞有何功用？
蔗苗成熟度與所含糖類之差異對發芽之影響。
甘蔗莖色由表皮細胞紅色花青素與內部深組織葉綠素所影響，如何影響？
臺灣目前甘蔗最新品種為何？種植面積最多品種為那兩種？
優良蔗苗條件。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "296a6aa7b38a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "341", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00024', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-113-545614f0', 'sub-heelevel3-3df1c47f-01', NULL, 'essay', '請問111年臺灣仙草主要種植面積前三名縣市？仙草生長之氣候土宜？
仙草目前已命名之栽培品種有那四種？仙草乾草儲藏有何效用？及應
注意之事項為何？仙草在臺灣地區之最適種植期為何時？採收適期又
為何時期？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "296a6aa7b38a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "341", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00025', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-113-545614f0', 'sub-heelevel3-3df1c47f-01', NULL, 'essay', '請回答下列有關茶園栽培與管理相關問題：（每小題 10 分，共20分）
氮、磷、鉀肥料三要素與有機肥對茶樹生育與製茶品質之影響。
有機茶樹無法以化學肥料施用，那些資材可施用於有機茶樹？有機茶
樹施用液肥之優缺點。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "296a6aa7b38a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "341", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
