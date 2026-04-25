-- W1.6 questions batch 8039/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-e0adf6cd-moex-00078', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-112-3082b5f1', 'sub-promotion-e0adf6cd-04', NULL, 'single_choice', '人民因執行機關依法實施即時強制，致其財產遭受特別犧牲，得採行何種請求權？', '["請求國家賠償", "請求損失補償", "請求回復原狀", "請求撤銷原強制行為"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:43+00:00", "source_pdf_sha1": "b796954d584f", "answer_pdf_sha1": "403e55525a12", "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "110", "s": "0408", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00079', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-40444de9', 'sub-promotion-e0adf6cd-01', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 25分）
抽樣架構（sampling frame）
事後比較（posthoccomparison）
複本信度（parallel-forms reliability）
離群值（outliers）
多元相關係數（multiplecorrelation coefficient）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "6cb488924859", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00080', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-40444de9', 'sub-promotion-e0adf6cd-01', NULL, 'essay', '測驗的公平性一直受到極大的關注，不論是何種測驗，對所有應試的學
生都應該是公平的，但事實上卻可能產生測驗偏差的情形。
請說明何謂測驗偏差？（5分）
說明 2 項造成測驗偏差的原因。（10分）
列舉2種較常見的測驗偏差種類並說明何以會有該種測驗偏差。（10分）
三、某校是這學期中區模擬考的輪值命題團隊，由於每次申論題的命題方向
與評分標準都有學區內不同學校提出異議，因此該校決定聘請一位試題
編製專家，從命題與評分兩方面著手來提高模擬考的試題品質。假設你
是該校聘請的專家，你應該提供何種建議才能確保申論題的品質？請提
供 3 項命題與 5項評分原則給該校參考。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "6cb488924859", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00081', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-40444de9', 'sub-promotion-e0adf6cd-01', NULL, 'essay', '李老師想要了解班上學生的學習焦慮程度（Y），除了使用修課學分數（X ）
1
之外，還想利用學習專心的程度（X ）、打工的工作量（X ）來預測其學
2 3
習焦慮程度，假設李老師得到的原始分數與標準化迴歸方程式如下：
Ŷ＝－10.07＋(.56)×(X )＋(.06)×(X )＋(.86)×(X )
1 2 3
Z ＝(.57)(Z )＋(-.34)(Z )＋(.33)(Z )
Ŷ X1 X2 X3
請根據上述資料回答下列問題。
預測變項與效標變項為何？（4 分）
假設小澄修課學分數是20 學分，學習專心的程度是 85單位，打工的
工作量是 2份家教，其學習焦慮程度為何？（3分）
假設小齊修課學分數的z分數為.94，學習專心的程度的z分數為1.81，
打工工作量的 z 分數為 1.27，則他的學習焦慮程度為何？如何解釋？
（8 分）
如果多元相關係數是.84，決定係數為何？如何解釋？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "6cb488924859", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00082', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-6c2680bf', 'sub-promotion-e0adf6cd-02', NULL, 'essay', '請說明政治模式（ThePoliticalModel）在教育行政決策上的運用，並進
一步說明其可能的限制與問題。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "2717b6e0b4ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00083', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-6c2680bf', 'sub-promotion-e0adf6cd-02', NULL, 'essay', '請闡述教育績效責任制度的主要內涵，並以「實驗教育政策」為例說明
其績效管理的具體做法。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "2717b6e0b4ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00084', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-6c2680bf', 'sub-promotion-e0adf6cd-02', NULL, 'essay', '教育部於2021年公布實施《學習社會白皮書》，以建構學習型社會，提
升國家競爭力與創造美好的未來。試說明《學習社會白皮書》的願景、
目標與實施途徑，並進一步說明推動學習社會政策時可能遇到的問題與
挑戰。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "2717b6e0b4ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00085', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-6c2680bf', 'sub-promotion-e0adf6cd-02', NULL, 'essay', '聯合國於 2015 年提出的｢永續發展目標」（Sustainable Development
Goals,SDGs）17 項目標，作為 2030 年永續發展議程（Agenda2030）。
試說明 SDGs 目標 4「優質教育」的主要內涵及細項指標，並進一
步說明政府推動優質教育可採取的政策工具。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "2717b6e0b4ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00086', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-e0de6eb7', 'sub-promotion-e0adf6cd-03', NULL, 'essay', 'I. Kandel 曾提及「比較教育可以視為是教育史的研究延伸至當前」
（Comparativeeducation maybeconsideredacontinuationofthestudyofthe
history of education into the present）。試以此句話說明比較教育研究與教
育史研究之間異同與彼此的關係。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "91b2f1f9e72d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "比較教育", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL),
  ('promotion-e0adf6cd-moex-00087', 'promotion-e0adf6cd', 'promotion-e0adf6cd-moex-110-e0de6eb7', 'sub-promotion-e0adf6cd-03', NULL, 'essay', '請就美國與英國綜合中學（Comprehensive School），及德國綜合中學
（Gesamtschule），寫出三國綜合中學所屬的教育層級（前期中等教育或後
期中等教育）以及該層級其他類型的學校名稱。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:44+00:00", "source_pdf_sha1": "91b2f1f9e72d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "110", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "比較教育", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "教育行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
