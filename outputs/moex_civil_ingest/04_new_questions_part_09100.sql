-- W1.6 questions batch 9100/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('retired-77f8735d-moex-00060', 'retired-77f8735d', 'retired-77f8735d-moex-114-3d2b73b6', 'sub-retired-77f8735d-02', NULL, 'single_choice', 'Accordingtothepassage,whichofthefollowingstatementsistrueaboutCatalano?', '["Hehadexperiencesofenduringpainanddeformity", "Heisindifferenttothosewhoaresufferingfromadisease", "Hisservicewasinhighdemandforhisartistichealing", "Hispracticeincosmeticsurgeryboostedhisownconfidence"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "7372d76e343d", "answer_pdf_sha1": "1f7241b9e683", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "0503", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "法學知識與英文(包括中華民國憲法、法學緒論、英文)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00061', 'retired-77f8735d', 'retired-77f8735d-moex-114-3d2b73b6', 'sub-retired-77f8735d-02', NULL, 'single_choice', 'Whichofthefollowingbestdescribesthetoneofthepassage?', '["Pessimistic", "Suggestive", "Cynical", "Neutral"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "7372d76e343d", "answer_pdf_sha1": "1f7241b9e683", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "0503", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "法學知識與英文(包括中華民國憲法、法學緒論、英文)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00062', 'retired-77f8735d', 'retired-77f8735d-moex-114-010ffe9d', 'sub-retired-77f8735d-03', NULL, 'essay', '請說明訊息偏差（informationbias）？試述流行病學研究訊息偏差的種類
及來源。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1c80c972458e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00063', 'retired-77f8735d', 'retired-77f8735d-moex-114-010ffe9d', 'sub-retired-77f8735d-03', NULL, 'essay', '某流行病學研究團隊擬設計一個世代研究以探討吸菸與慢性腎病間的
關係，試述該團隊應如何設計此研究？並詳述其應如何判定兩者間之因
果關係。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1c80c972458e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00064', 'retired-77f8735d', 'retired-77f8735d-moex-114-010ffe9d', 'sub-retired-77f8735d-03', NULL, 'essay', '某研究團隊欲研究高三酸甘油酯、高尿酸、對照組的尿酸平均值是否有
差異，收集三組個案，採集血液檢測其尿酸，得到下表結果：
組別 人數 尿酸平均值 尿酸標準差
高三酸甘油酯組 94 7.2 2.0
高尿酸組 96 7.1 1.8
對照組 90 6.3 1.3
變異數分析表
變異來源 平方和 自由度 均方 F值 P值
組間 (a) 2 (c) (e) 0.001
組內 858.85 (b) (d)
總和 905.12 279
請計算高三酸甘油酯母群體尿酸平均值的 95%信賴區間及列出本研究
之統計虛無假說及對立假說，並請填入變異數分析表中(a)、(b)、(c）、
(d)、(e)之數值。另請說明三組間的尿酸平均值是否具有統計上顯著差
異？並說明本研究是否需進行事後檢定？設顯著水準為 0.05。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1c80c972458e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00065', 'retired-77f8735d', 'retired-77f8735d-moex-114-010ffe9d', 'sub-retired-77f8735d-03', NULL, 'essay', '某研究人員想研究痛風與慢性腎臟病的關係，採用醫院為主的病例對照
研究設計，收集195 名慢性腎臟病病患及192名健康對照組，結果發現
195 名慢性腎臟病病患中，65 名有痛風情形；192 名健康對照組個案，
其中 24 名有痛風情形。請以統計檢定方法檢定痛風與慢性腎臟病間是
否有統計顯著相關？設顯著水準為 0.05。並請計算兩組間痛風比率的差
異的 95%信賴區間。（25分）
（Z =2.58；Z =1.96；Z =1.645；2 =5.02；2 =5.02；
0.995 0.975 0.95 1,0.99 1,0.975
2 =3.84）
1,0.95', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1c80c972458e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00066', 'retired-77f8735d', 'retired-77f8735d-moex-114-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '有鑑於過去違背倫理之人體試驗歷史，目前以人為研究對象有許多研究
倫理指引原則及法律規範，請說明：
依照貝爾蒙報告（TheBelmontReport）有那三大基本倫理原則？（10分）
若要招募兒童為研究對象，應注意那些倫理要求及人體研究法之規範？
（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "c970393f0e00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00067', 'retired-77f8735d', 'retired-77f8735d-moex-114-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '病人自主權利法中保障病人醫療自主及善終權益之規範有那些？（10分）
病人自主權利法所保障的病人權利與積極安樂死或協助自殺有何不同？
（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "c970393f0e00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00068', 'retired-77f8735d', 'retired-77f8735d-moex-114-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '衛生福利部中央健康保險署（下稱健保署）為辦理各項保險業務，得請
保險醫事服務機構提供病歷、診療紀錄、醫療費用成本等文件，因此自
開辦全民健康保險以來，健保署已蒐集累積數量與種類均極其可觀之全
民健康保險資料（下稱健保資料）。請說明：
健保署將健保資料傳輸予衛生福利部衛生福利資料科學中心設置資
料庫，並對外提供使用，可能涉及對人民何種權利之限制？（10分）
依照憲法法庭 111 年憲判字第 13 號判決，上述資料庫之建置及對外
提供利用是否符合憲法上對人民權利之保護？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "c970393f0e00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00069', 'retired-77f8735d', 'retired-77f8735d-moex-114-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '依照現行精神衛生法，在符合何種條件及程序下，可對罹患精神疾病之
人實施強制住院？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "c970393f0e00", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "138", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
