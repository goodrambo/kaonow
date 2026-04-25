-- W1.6 questions batch 5004/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-77f8735d-moex-00038', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-aaf759af', 'sub-heelevel3-77f8735d-05', NULL, 'essay', '下表為某社區2,000位高齡長者（65～74歲）與經過性別匹配（matching）
的2,000位對照組（55～64歲）民眾在2022年駕駛機動車輛（包括汽車與
機車）發生車禍的數據。研究人員計算高齡長者與對照組民眾駕駛機動車
輛發生車禍的發生率，分別為0.03與0.01，相對危險性為3倍。根據這個結
果，研究人員推測高齡長者可能是因為反應與操作機動車輛能力下降而
使得發生車禍的風險較高，請說明這個研究有那些可能的偏差（bias）來
源？（25分）
駕車發生車禍
人數 是 否
高齡長者 2,000 60 1,940
對照組 2,000 20 1,980', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "33b9fb57e0e4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00039', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '某研究人員欲評估有無吸菸與第一秒用力呼氣量（FEV1）的相關性，以
肺功能量計測量340名個案的第一秒用力呼氣量，並依其有無吸菸分成兩
組，以比較吸菸組與非吸菸組間的第一秒用力呼氣量平均值的差異，得到
下列結果：
第一秒用力呼氣量 第一秒用力呼氣量
組別 人數
平均值（公升） 標準差（公升）
非吸菸組 116 2.92 0.71
吸菸組 224 3.30 0.68
請計算吸菸組之第一秒用力呼氣量平均值的百分之九十五信賴區間。
（5分）
請檢定兩組第一秒用力呼氣量之母群體平均值的差異是否有統計顯著
性？並列出虛無假說及對立假說，設顯著水準=0.05。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e460672729b0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00040', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '某流行病學家欲研究有無肥胖與脂肪肝嚴重程度的關係，自某醫院收集
430名個案，得到下列結果：
無脂肪肝組 輕度脂肪肝組 中度脂肪肝組
肥胖情形
(n=158) (n=180) (n=92)
無 142 145 47
有 16 35 45
請以統計檢定方法檢定有無肥胖與脂肪肝嚴重程度間是否有統計顯著
相關？並列出虛無假說及對立假說，設顯著水準=0.05。（15分）
請計算中度脂肪肝組與無脂肪肝組兩組間肥胖比率的差異的百分之九
十五信賴區間。（10分）
35080、36480', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e460672729b0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00041', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '某社區醫學研究團隊欲探討吸菸情形與高密度脂蛋白膽固醇的相關性，
該研究團隊收集575名個案，抽血檢測其高密度脂蛋白膽固醇，並依其吸
菸情形分成：現在吸菸組、過去吸菸組、從未吸菸組三組，以比較三組間
的高密度脂蛋白膽固醇平均值的差異，得到下列結果：
高密度脂蛋白膽固醇平均值
組別 人數 標準差
（毫克/分升）
現在吸菸組 277 44.5 11.1
過去吸菸組 150 46.2 13.6
從未吸菸組 148 50.8 12.9
請檢定三組間的高密度脂蛋白膽固醇平均值的差異是否有統計上顯著不同？
並請列出虛無假說及對立假說（設顯著水準=0.05，F ＝3.83，
2,100,0.975
F ＝3.70）。（25分）
210000.975
， ，', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e460672729b0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00042', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '某研究人員想要評估尿酸（mg/dL）與血清肌酸酐（mg/dL）間的關係，
於某健康管理中心收集415名個案的資料，建立以尿酸預測血清肌酸酐的
迴歸模式，得到下列結果：
變異數分析表
變異來源 平方和 自由度 均方 F值 P值
迴歸模型 1.85 1 1.85 87.19 <0.001
殘差 8.76 413 0.02
總和 10.61 414
模式 迴歸係數 標準誤 標準化迴歸係數 t值 P值
尿酸 0.604 0.005 0.418 9.337 <0.001
常數 0.048 0.036 - 16.728 <0.001
請寫出此線性迴歸方程式、解釋此迴歸模式、說明此迴歸模式是否達統計
顯著性？並解釋其理由。設顯著水準=0.05。另請計算此線性迴歸模式的
決定係數，並解釋此決定係數的意義。（25分）
35080、36480
附表
35080、36480', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "e460672729b0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00043', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '病患要先簽署同意書，方能進行後續的手術，請評析這項規範的法源依
據、意涵與目的。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "bd7a49316d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00044', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '機構式的照護是健康照護體系服務提供很重要的部分，請說明「醫療機
構」、「護理機構」、「精神復健機構」與「長照服務機構」這四種機構在法
源、意義、分類、附屬法規等項目的法令規範。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "bd7a49316d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00045', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '依據2022年12月14日修正公布的精神衛生法，該法除了原有之衛生主管
機關與目的事業主管機關業務職掌的修訂外，還新增了一些「目的事業」
主管機關，請列舉其中五個並說明其職掌之內容。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "bd7a49316d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00046', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '依據我國醫事人員與公共衛生師之法律規範，未取得各類人員專業之合
法資格卻執行相關法定業務者，其處罰的方式上可以區分為那些類型？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "bd7a49316d4f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00047', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-112-173e98ef', 'sub-heelevel3-77f8735d-04', NULL, 'essay', '醫療網計畫的推動，是健康服務體系的基礎。在法源上，醫療法第88條規
定，中央主管機關為促進醫療資源均衡發展，統籌規劃現有公私立醫療機
構及人力合理分布，得劃分醫療區域，建立分級醫療制度，訂定醫療網計
畫。我國自民國75年起開始推動第一期的醫療網計畫，到最新一期已經是
第九期。
請舉出第一期、第二期、第三期、第四期、第五期、第六期、第七期、
第八期和第九期，其中至少五期的計畫名稱或重點內容，包含前幾期計
畫中臺灣醫療區劃分的轉變。（10分）
請說明第九期醫療網計畫的願景為何？（3分）
有關第九期計畫的未來環境預測，請列舉至少六項，並加以說明。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "84ff7d9cedff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "342", "s": "2303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫療制度與品質管理", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
