-- W1.6 questions batch 8465/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-77f8735d-moex-00040', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某研究者研究每天三餐飲食吃辣椒的習慣和十二指腸潰瘍的關係，得到
的資料如下表。
有十二指腸潰瘍 沒有十二指腸潰瘍
三餐飲食均吃辣椒 280 220
三餐飲食均沒吃辣椒 220 280
請回答下列問題。
請計算三餐飲食均吃辣椒者與三餐飲食均沒吃辣椒者，得到十二指腸
潰瘍風險的勝算比（oddsratio）。（8 分）
請說明三餐飲食均吃辣椒和十二指腸潰瘍的關聯性。（12 分）
44650', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00041', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '有關不同治療藥物對於腎盂腎炎病人住院天數的影響。某研究者在由 A
藥物治療的病人中隨機抽出 36 名，其平均住院日為 4.51 天，標準差為
1.98 天；在由 B藥物治療的病人中隨機抽出 36名，其平均住院日為 6.28
天，標準差為2.54 天，假設二種治療藥物的病人母全體住院天數均呈常
態分布，且變異數相等，請回答下列問題：
如何得知用A藥物治療腎盂腎炎病人可否縮短平均住院天數？（15分）
請計算 A 藥物與 B 藥物治療腎盂腎炎病人平均住院天數差值之 95%
信賴區間。（10分）
Z =1.96、Z =1.645、Z =2.575
0.975 0.95 0.99
t =1.29、t =1.29、t =1.29
70,0.90 71,0.90 72,0.90
t =1.67、t =1.67、t =1.67
70,0.95 71,0.95 72,0.95
t =1.99、t =1.99、t =1.99
70,0.975 71,0.975 72,0.975', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "210f72fcbac3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00042', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '檢疫是防治傳染病重要的方式，何謂檢疫？根據我國傳染病防治法之規
範，主管機關主要的檢疫措施內容為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f4de9c2c217d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00043', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '根據我國人工生殖法之規範，實施人工生殖夫妻與捐贈人需符合何種條
件，才能實施人工生殖與捐贈生殖細胞？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f4de9c2c217d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00044', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '根據藥事法之規範，何謂藥物廣告？以及該法針對藥物廣告之管理內涵
為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f4de9c2c217d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00045', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '請比較安寧緩和醫療條例與病人自主權利法不施行維持生命治療或心
肺復甦術等之要件差異。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f4de9c2c217d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00046', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'essay', '請說明臺灣長期照護服務的主要財務來源有那些？你認為這些財務來
源是否能夠持續支撐日益增加的長期照護需求？如果有困難，你建議那
些解決方法？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00047', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'essay', '請說明社會保險與商業保險，如何不同？請就投保對象、保險目標與財
源為何等項目進行分析。並說明全民健保是屬於那一種保險類型？其財
務來源為何？政府如何確保全民健保財務健全？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00048', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'single_choice', '下列何項不是「食安五環」政策之內容？', '["全民監督", "重建生產管理", "源頭管控", "加強品管"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": "bc389906415c", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00049', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'single_choice', '直轄市政府與縣（市）政府普遍在鄉鎮市區層級設置衛生所，負責執行基層的公共衛生服務。而 衛生所又得依需要在村（里）設置下列那一個選項的單位，負責公共衛生及簡易保健的服務工作？', '["衛生室", "衛生站", "社區營造中心", "群體醫療執業中心"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": "bc389906415c", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
