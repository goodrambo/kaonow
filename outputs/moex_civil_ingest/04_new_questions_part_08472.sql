-- W1.6 questions batch 8472/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-77f8735d-moex-00110', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-2a72a0d9', 'sub-pukao-77f8735d-04', NULL, 'essay', '食用油常以游離脂肪酸的量評定其新鮮程度，請說明如何評定游離脂肪
酸之量？其數值大小如何反應油品的新鮮度？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "5c20b31497c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00111', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-2a72a0d9', 'sub-pukao-77f8735d-04', NULL, 'essay', '請說明環境污染物所造成的生物累積性和生物放大性，並舉環境污染物
為例說明此二作用。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "5c20b31497c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00112', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '請說明何謂集團免疫力（herdimmunity）及二次侵襲率（secondaryattack
rate）。並請說明這兩個因素如何影響新冠肺炎的流行狀況。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "ba3e35c7e484", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00113', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某流行病學研究團隊預計進行一個世代研究以探討吸菸與非酒精性脂
肪肝發生的關係，試述該團隊應如何設計此研究？並詳述應如何判定兩
者間之因果關係。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "ba3e35c7e484", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00114', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某團隊欲評估民眾至餐廳用餐行為是否受新冠肺炎疫情之影響，於 2021
年 10 月時電訪 600 名個案，詢問其至餐廳用餐行為之情形。之後於 2022
年 5 月時，再次電訪聯繫這 600名個案，並詢問其至餐廳用餐行為之情
形，所蒐集到的資料如下：
2022年5月
有餐廳用餐行為者無餐廳用餐行為者
有餐廳用餐行為者 250 110
2021年10月
無餐廳用餐行為者 30 210
請說明本研究應使用何種統計檢定方法？請列出本研究之統計虛無假
說及對立假說，並以該統計方法來檢定新冠肺炎疫情對民眾至餐廳用餐
行為有無統計上顯著的影響？設顯著水準為 0.05。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "ba3e35c7e484", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00115', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某研究欲評估吸菸狀況與三酸甘油脂間的相關性，該研究蒐集120 名現
在吸菸者及 115名從未吸菸者，抽血測量其三酸甘油脂，得到現在吸菸
組三酸甘油脂之平均值為161.6毫克／分升、標準差為83.5毫克／分升；
從未吸菸組三酸甘油脂之平均值為 112.1 毫克／分升、標準差為 65.7
毫克／分升。請列出本研究之統計虛無假說及對立假說，並以適當統
計檢定方法檢定現在吸菸組與從未吸菸組這兩組之三酸甘油脂是否有
統計顯著差異？設顯著水準為 0.05。（25 分）
43850
附表一、卡方分配臨界值表
附表二、t分布的百分位數
右尾面積
自由度 0.10 0.05 0.025 0.01 0.005 0.0005', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "ba3e35c7e484", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00116', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '醫療法第5條所列醫療法人有那兩種型態？這兩種醫療法人對捐助財產
的歸屬及解散後對捐助財產的處理，有何差異？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "89e7924712cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00117', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '我國於 2014 年通過身心障礙者權利公約施行法，使聯合國身心障礙者
權利公約具有內國法的拘束力。根據身心障礙者權利公約施行法，締約
國應禁止所有基於身心障礙之歧視，保障身心障礙者獲得平等與有效之
法律保護，使其不受基於任何原因之歧視，同時，身心障礙者在與其他
人平等基礎上，享有人身自由及安全之權利；不被非法或任意剝奪自由，
任何對自由之剝奪均須符合法律規定，且於任何情況下均不得以身心障
礙作為剝奪自由之理由。試舉我國精神衛生法第 41 條針對強制住院治
療之規定與程序中，至少 3個有助於保障精神病人權益之設計。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "89e7924712cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00118', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '因醫療費用持續成長，在資源有限的情況下，許多國家皆採用不同的策
略希望能控制醫療費用的成長。但就多個先進國家的經驗，沒有一個國
家能成功的控制醫療費用長期的成長。請試述醫療費用長期成長的主要
因素及兩項可能的因應對策。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "89e7924712cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00119', 'pukao-77f8735d', 'pukao-77f8735d-moex-111-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '60 歲甲男因新冠肺炎（COVID-19）重症，被送到隔離加護病房接受治
療，家屬只能透過視訊方式與病人及醫師溝通。住院第 5 日，甲呼吸窘
迫，心肺衰竭。假設當時疫情嚴重，呼吸器不足以滿足所有病人需求，
醫院對呼吸器使用的優先順位進行配置，優先給有機會可以拯救之病
人，至於甲由於病情太過嚴重，用呼吸器也很難救回來，因此不施予呼
吸器。試問醫院分配呼吸器的政策牽涉甲男那些權利？此一政策之實
施，牽涉那些醫學倫理？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "89e7924712cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "426", "s": "2108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
