-- moex_license_ingest questions batch 1361/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('food-tech-moex-00106', 'food-tech', 'food-tech-moex-111-6a6e5047', 'sub-food-tech-06', NULL, 'essay', '「新冠肺炎疫情」―有關自主衛生管理中「清潔」、「消毒」是專有名詞及
專業知識，為確保飲食環境、器具及手部清潔安全，常使用清潔劑，請
回答下列問題：
次氯酸鈉（SodiumHypochlorite）之殺菌原理？有效氯定義？pH有何
影響？次氯酸鈉溶液（有效氯 4-6%）用於醫療（法定傳染病）消毒，
可稀釋倍數？有效氯 ppm？殺菌所需時間？又用於蔬菜、水果清潔之
稀釋倍數？有效氯 ppm？殺菌所需時間？（10 分）
過氧化氫（H O ）之殺菌原理？如何提升食用安全性？（5分）
2 2
手部酒精消毒應使用多少%酒精？為什麼？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "df8039ae3aeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111060", "c": "101", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品衛生安全與法規", "year": "111", "exam_name": "111年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00107', 'food-tech', 'food-tech-moex-111-6a6e5047', 'sub-food-tech-06', NULL, 'essay', '帶殼花生（乾燥）常發生長黴，甚至產生毒素中毒事件，請回答下列問題：
（每小題5分，共20分）
花生常發生之黴菌毒素為何種毒素？常見之菌種為何？
黴菌毒素常見之肝毒素（hepatotoxin）及致癌性的食品安全性為何？
黴菌毒素生成之影響因素及防止方法為何？
常見黴菌毒素之測定方法為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "df8039ae3aeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111060", "c": "101", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品衛生安全與法規", "year": "111", "exam_name": "111年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00108', 'food-tech', 'food-tech-moex-110-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '在食品分析的過程中，樣品採樣的方式是整個分析過程中非常重要的步
驟，請說明簡單隨機抽樣（Simplerandomsampling）、整群抽樣（Cluster
sampling）、系統抽樣（Systematic sampling）及連續採樣（Continuous
sampling）的方式及其意義。並寫出顆粒狀食品與小包裝食品的採樣方
式。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "66908dc22c83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00109', 'food-tech', 'food-tech-moex-110-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '請說明氣相層析儀（Gaschromatography）的分析原理，並寫出熱傳導偵
測器（Thermal conductivity detector, TCD）、火焰離子化偵測器（Flame
ionizationdetector,FID）及光游離偵測器（Photoionizationdetector,PID）
的偵測原理與應用。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "66908dc22c83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00110', 'food-tech', 'food-tech-moex-110-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '請敘述下列蛋白質分析的測定原理及用途。（每小題 5 分，共 20分）
杜馬斯燃燒法（Dumas combustion method）
寧海準反應（Ninhydrin reaction）
雙縮脲反應（Biuretreaction）
紫外線分光光度計法（Ultravioletspectrophotometric method）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "66908dc22c83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00111', 'food-tech', 'food-tech-moex-110-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '請敘述酸價（Acidvalue）與皂化價（Saponificationvalue）的定義。（5分）
有一檢驗人員進行二種油脂之分析，分析得 A油脂之酸價為 75，皂化
價為 150；B 油脂之酸價為 25，皂化價為 100，請問何種油脂的品質
較佳？原因為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "66908dc22c83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00112', 'food-tech', 'food-tech-moex-110-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '某一食品進行酸鹼度測定，利用 1N HCl、1N Na CO 及 0.1N NaOH 溶
2 3
液進行分析，測得其使用量與力價，分別為1mL（力價 0.995）、0.5mL
（力價1.009）、2mL（力價 0.997），試求該食品的酸鹼度（請寫出計算過
程）。並判斷該食品為鹼性或酸性？判斷標準為何？（假設食品之樣品重
為 1 g）（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "66908dc22c83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00113', 'food-tech', 'food-tech-moex-110-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '請試述冷凍乾燥、減壓乾燥、熱風乾燥、噴霧乾燥、鼓式乾燥的原理，
並舉例說明其應用。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "7438b172f6f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00114', 'food-tech', 'food-tech-moex-110-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '請試述非熱加工技術的目的，並舉四例說明。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "7438b172f6f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00115', 'food-tech', 'food-tech-moex-110-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '請試述冷藏與冷凍食品加工技術及其對食品的應用與品質之影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:04+00:00", "source_pdf_sha1": "7438b172f6f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "101", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
