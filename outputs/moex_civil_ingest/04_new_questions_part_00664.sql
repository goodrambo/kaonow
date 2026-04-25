-- W1.6 questions batch 664/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-e0adf6cd-moex-00185', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-40444de9', 'sub-aboriginal-e0adf6cd-03', NULL, 'essay', '某手機銷售公司抽樣調查200位民眾，欲了解性別是否與不同手機品牌
的喜好度有關。其調查的結果如下：
手機品牌
芭樂 六星 磐石
性 男性 40（A1） 20（A2） 60（A3）
別 女性 20（B1） 40（B2） 20（B3）
寫出虛無假設與對立假設。（4分）
請依序呈現 A1、A2、A3的期望次數。（6分）
求出卡方值（只需正確至整數位），選擇參考以下適當的臨界值，作出
你的裁決並解釋結果。（12 分）
χ2 6.635，χ2 9.210，χ2 11.341，χ2 16.812
.99(1) .99(2) .99(3) .99(6)
性別與手機品牌喜好度之間有顯著相關嗎？若要求出兩變項的關係，
應採用那一種方法？（3分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "f36419ef3c1d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00186', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-40444de9', 'sub-aboriginal-e0adf6cd-03', NULL, 'essay', '陳老師以學生的數學學習態度來預測其數學成就，他蒐集資料並進行簡
單直線迴歸分析，得到以下結果。（每小題5分，共25分）
模式摘要
模式 R R平方 調過後的R平方 估計的標準誤
1 .415a .172 .169 9.656
a. 預測變數：（常數），數學態度
係數a
未標準化係數 標準化係數 共線性統計量
模式 t 顯著性
B之估計值 標準誤差 Beta分配 允差 VIF
1 （常數） -.557 3.596 -.155 .877
數學態度 .251 .035 .415 7.181 .000 1.000 1.000
a. 依變數：數學成就
請問簡單直線迴歸分析中的「簡單」和「直線」各代表什麼意思？
請寫出原始分數之迴歸公式及標準化迴歸公式。
本迴歸模式是否有效（顯著）？你如何判斷？
決定係數是多少？請以本題中的變項解釋決定係數的意義。
「共線性」的意義是什麼？本次分析有沒有共線性的問題？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "f36419ef3c1d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育測驗與統計", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00187', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-6c2680bf', 'sub-aboriginal-e0adf6cd-04', NULL, 'essay', '從事教育行政工作，須進行溝通，溝通是個人或團體相互間交換訊息的
歷程，藉以建立共識、協調行動、集思廣益或滿足需求，進而達成預定
目標。請問教育行政溝通應把握那些原則？為求溝通更為有效，可運用
那些溝通技巧？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "59cd4d0d5be2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00188', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-6c2680bf', 'sub-aboriginal-e0adf6cd-04', NULL, 'essay', '學校是一種雙重系統組織，一為行政系統；另一為專業系統，前者具有
科層組織性質；後者屬於鬆散結合系統（loosely coupled system），臺灣
近二十年來已完成二十餘所大學校院整併，請問大學校院整併之成效和
產生之問題為何？並請針對問題提出改進策略。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "59cd4d0d5be2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00189', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-6c2680bf', 'sub-aboriginal-e0adf6cd-04', NULL, 'essay', '教育部於 109 年 3 月發布「中華民國教師專業素養指引」，請問其發布
之緣由和意旨為何？該教師專業素養指引包括那些主要的內涵？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "59cd4d0d5be2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00190', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-6c2680bf', 'sub-aboriginal-e0adf6cd-04', NULL, 'essay', '知識領導（knowledge leadership）的意涵為何？在教育行政機關如欲推
動知識領導，可採行那些策略？請加以論述。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "59cd4d0d5be2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "教育行政學", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00191', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-e0de6eb7', 'sub-aboriginal-e0adf6cd-06', NULL, 'essay', '一位比較教育研究者蒐集了世界地理區域的國民所得發展情形，並試著
要以此資料進行比較研究。請回答以下問題：
若以表中資料來看，它屬於 Bray 與 Thomas（1995）所提出多層次國
際比較教育中，那一種比較單位（unit）的分析？表中看出這 18年來
國民所得差距最大及最小是在那一個地區？（6分）
如果以這種比較單位進行分析，研究者最應注意那些重點？（6 分）
運用這種比較的分析單位，它的優點及限制各有那些？（13 分）
表：2000年至2018年各地理區域的國民所得情形 單位：美元
地區/年代 2000 2006 2012 2018 差距
阿拉伯地區國家 4907.18 5628.27 6291.07 6508.75 1601.57
東亞與大洋洲國家 5329.67 6631.01 8380.54 10538.82 5209.14
拉丁美洲與加勒比海 7526.33 8345.66 9523.29 9613.64 2087.30
北美洲國家 44089.74 48993.13 49910.94 55043.52 10953.78
薩哈拉非洲國家 1227.74 1453.91 1641.14 1681.38 453.64
歐洲國家 34868.83 37747.49 37771.87 40787.50 5918.67
中歐及白俄羅斯聯邦 8296.70 11127.06 12787.78 15881.61 7584.90', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "9f980f9d2735", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "比較教育", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00192', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-e0de6eb7', 'sub-aboriginal-e0adf6cd-06', NULL, 'essay', '過去女性社會地位較男性低，接受教育機會較男性少，產生女性教育機
會不均等。近年來各國教育擴充，女性接受教育機會提高，已縮小兩性
教育在學率差距。在國際比較教育上，有不同理論可以解釋此現象，請
舉五個理論來說明，近年來兩性教育在學率差距縮小的原因。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "9f980f9d2735", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "比較教育", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00193', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-e0de6eb7', 'sub-aboriginal-e0adf6cd-06', NULL, 'essay', '一位比較教育研究者以全球 62 個國家的平均國民接受教育年數及國民
所得進行分析，運用空間散布，X 軸為教育年數，Y 軸為各國的平均國
民所得，各國的散布情形如圖所示。圖中的斜直線為迴歸分析所產生的
最適迴歸直線。請回答以下問題：
請說明這兩個變項之間的關係，以及在迴歸直線以上與以下的國家的
意義，請各舉一個國家來說明兩者變項之間的意義。（15分）
請指出，運用這種方式進行比較教育研究的優點與限制。（10分）
R2線性(L)=0.214
平
均
國
民
所
得
教育年數
圖 2018年62個國家的教育年數與平均國民所得之散布狀況', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "9f980f9d2735", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "比較教育", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL),
  ('aboriginal-e0adf6cd-moex-00194', 'aboriginal-e0adf6cd', 'aboriginal-e0adf6cd-moex-110-e0de6eb7', 'sub-aboriginal-e0adf6cd-06', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 25分）
聯合國教科文組織的「教育 2030」（Education 2030）
比較教育學者E.H. Epstein（1939~）
世界系統理論（World SystemTheory）
教育收益率（Education to Return）
免許狀', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:30+00:00", "source_pdf_sha1": "9f980f9d2735", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "403", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "比較教育", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "教育行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
