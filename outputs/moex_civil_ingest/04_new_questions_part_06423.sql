-- W1.6 questions batch 6423/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0a2fc18c-moex-00190', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '某醫學中心蒐集就診人的資料以驗證吸菸與心臟血管疾病之關係，資
料如下：
吸菸習慣 不吸菸 偶爾吸菸 吸菸 大量吸菸
無 500 100 150 50
心臟血管疾病
有 50 40 80 30
其中偶爾吸菸指平均一天吸菸不超過 5 支，吸菸表示一天吸菸 5 支
到 1 包（20支），大量吸菸表示一天吸菸 1包以上。
試檢定吸菸量與是否罹患心臟血管疾病有無相關。請完整寫出虛
無假設、對立假設、檢定統計量及若使用之顯著水準為 0.05 之結
論。（10 分）
試檢定不吸菸者罹患心臟血管疾病的機率是否小於吸菸者罹患心
臟血管疾病的機率。請完整寫出虛無假設、對立假設、檢定統計量
及結論。（10 分）
31980', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "40cef96ec2f2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00191', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '全東機械公司想要評估 3 種不同的製程方式對產量的影響，於是由
旗下的 5 個工廠分別使用 3 種製程方式進行為期一週的生產，產量
資料如下：
製程方式 A B C 平均 變異數
甲 15 16 17 16 1
乙 14 13 15 14 1
工廠 丙 11 11 14 12 3
丁 15 13 17 15 4
戊 11 13 15 13 4
平均 13.2 13.2 15.6
變異數 4.2 3.2 1.8
所有 15筆資料之整體平均產量為14，變異數為 4。
試問此為何種實驗設計？並說明該設計在此一評估下的優點。
（5 分）
請列出正確的變異數分析（ANOVA）表以檢定製程方法對產量是
否有顯著影響。在顯著水準 0.05 之下，請完整寫出虛無假設、對
立假設、檢定統計量及結論。（15 分）
31980', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "40cef96ec2f2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00192', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '禮樂餐飲集團想研究南屏縣各大學學生人數與校園周邊餐廳數量的
關係，資料如下：
大學 自強 樂群 真平 美樂 靜平 平均 變異數 標準差
學生數
5 12 6 10 7 8 8.5 2.92
（千）
餐廳數 10 25 12 15 18 16 34.5 5.87
學生數（千）與餐廳數的相關係數約為 0.847。
今若以學生數（千）為解釋變數、餐廳數為反應變數配適一簡單線性
迴歸模型，請完成以下之迴歸分析及變異數分析（ANOVA）表格中
空格部分（A）至（Q），並請列出必要之計算過程或理由。（15分）
迴歸分析表：
估計值 標準誤 t-值 P 值
截距 （A） 5.21 （B） 0.6820
學生數
（C） （D） （E） 0.0702
（千）
決定係數（Coefficientofdetermination， ）=（F）
調整後R平方（Adjusted ）  =（G）
R

R
變異數分析（ANOVA）表：
平方和 均方和
自由度 F 值 P 值
（SS） （MS）
學生數
（H） （I） （J） （K） （L）
（千）
殘差 （M） （N） （O）
總體 （P） （Q）
31980
表1 頁次：9－5
31980
表2
31980
表3
31980
表4-1
31980
表4-2 頁次：9－9', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:17+00:00", "source_pdf_sha1": "40cef96ec2f2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00193', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'essay', '請作圖並佐以文字說明你是否同意下列敘述：「如果政府課稅不會造成
無謂損失，則政府收不到稅」。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00194', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'essay', '某一小國 2021 年 9 月的就業人數為 11,600 人，失業人數為 400 人，且
非勞動力人數為8,000 人。利用這些數字計算：（25 分）
15 歲以上民間人口。
勞動力人口。
勞動參與率（取到小數第二位）。
失業率（取到小數第二位）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00195', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '在兩期的效用最大化模型中，C 代表第0期的消費，C 代表第1期的消費，若實質利率（r）上', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00196', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '1 升，則會：', '["造成降低C 的所得與替代效果 0", "造成降低C 的所得效果，與提高C 的替代效果", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 0, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00197', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '0', '["造成提高C 的所得效果，與降低C 的替代效果", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 0, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00198', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '0', '["造成提高C 的所得與替代效果 0", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 0, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00199', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-110-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '相較於競爭性勞動市場的僱用量與生產量，獨買勞動市場的僱用量會 ，生產 的產品。', '["較低；較少", "較低；較多", "較高；較少", "較高；較多"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "93d510670c35", "answer_pdf_sha1": "35a08a6bdee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "318", "s": "1302", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
