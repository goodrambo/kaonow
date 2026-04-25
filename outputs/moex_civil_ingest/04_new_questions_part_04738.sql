-- W1.6 questions batch 4738/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-444ca548-moex-00137', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '05,3,3 0.05,3,4 0.05,3,5
一、假設隨機變數 X 的動差生成函數為 。令
      
為服從此機率分配之獨立樣本，而 為其樣本平均。
() = + + +
試求 X之機率分配。（5分）
,,..., 
試估計 。（10分）
二、假設父親與兒子≥的2身高服從二元常態分配，其中父親的身高（公分）服
從期望值為 170、標準差為 10的常態分配，兒子的身高（公分）服從期
望值為 170、變異數為 10 的常態分配，而二者之相關係數為 0.6。考慮
父親身高為 175公分的這群人，試問他們兒子的平均身高為何？其中超
過 175公分之比例為何？（15 分）
三、假設 W 鎮每個月竊盜案件數是互相獨立的。令 代表平均每個月的竊
盜案件數、 代表過去 36 個月的竊盜案件數的樣本平均。W 鎮警官打

算以{ >20.64}做為檢定 ： ： 的拒絕域。假設

這 36 個月的竊盜案件數之樣本平均數為 21、樣本標準差為3。
   = 20 .   > 20
試求該檢定之型一錯誤（TypeIerror probability）為多少？（10分）
試求在 時之型二錯誤（TypeIIerrorprobability）為多少？
（10 分）
 = 21.28
承子題，若樣本數提高為 50，而拒絕域不變，試問型二錯誤將增加
或降低？（5分）
33180
四、甲公司提出節能方案以減少其辦公大樓之冷氣耗電量，該節能方案實施
一年後，記錄實施前後每月冷氣耗電量（1000 瓩）如下表：
1 2 3 4 5 6 7 8 9 10 11 12
實施前 5.8 6.1 5.4 6.8 8.5 9.6 7.4 6.2 5.6 4.8 4.5 3.6
實施後 5.2 4.8 5.6 6.5 7.8 8.5 6.5 5.5 5.0 3.5 4.0 3.2
在 0.05顯著水準下，試檢定該節能方案是否減少冷氣耗電量。（10 分）
假設 1-3 月為春季、4-6 月為夏季、7-9 月為秋季、10-12 月為冬季，將
資料依季節整理如下表。令顯著水準為 0.05，在考量實施前後可能有
差異的情況下，試檢定春夏秋冬的冷氣耗電量是否相同。（15分）
春 夏 秋 冬
實施前 17.3 24.9 19.2 12.9
實施後 15.6 22.8 17.0 10.7
五、甲市鎮過去 6年之人口數（千人）如下：（每小題 10 分，共20分）
2016 2017 2018 2019 2020 2021
520 580 560 650 780 800
試用三期移動平均法預測 2019至 2022年之人口數，並計算平均絕對
誤差（MeanAbsoluteDeviation）。
試以平滑係數為 0.8 之簡單指數平滑法，預測 2017 至 2022 年之人口
數，並計算平均絕對誤差。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "c9b1eda23974", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "1017", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00138', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'essay', '依戶籍法第 48 條第 1 項規定，戶籍登記之申請，應於事件發生或確定
後 30 日內為之。據此，申請人有依法定期限向戶政事務所辦理戶籍登記
之義務，如申請人不於期限內辦理戶籍登記者，即依同法（舊法）第 79
條之規定處新臺幣 300元以上 900 元以下罰鍰。假設國人某甲於國外結
婚後 6個月，該（新法）第 79條經修法而變更處以新臺幣1000元以上
1500元以下罰鍰，故後法比較前法顯有更重之行政罰。申請人於結婚後
1 年，始回國申請辦理結婚登記。
試問：行政機關應依戶籍法第 79 條之新法或舊法來處罰申請人？並請
申述其理由。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00139', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'essay', 'A 直轄市都市發展局依行政程序法第 16 條規定，委託某民間開發公司
B 改造該直轄市之某老舊市區。B 公司爰於受委託之權限範圍內與甲下
水道工程公司締結行政契約，約定甲負責清理、淨化該市區淤積之下水
道，而 B則於必要範圍內，依法發給甲各項工程許可及廢棄物清理許可。
準此，甲若依約向 B申請下水道之某工程許可，而 B 拒絕發給時，甲應
提起何種類型之行政訴訟，以為救濟？甲如情況急迫，有聲請暫時權利
保護之必要時，應向 B、A，抑或行政法院聲（申）請那一種類型之暫時
權利保護？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00140', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '關於行政法法源之敘述，下列何者正確？', '["緊急命令係取代或暫停法律之規範，故其不得作為行政法之法源", "法規命令規範事項雖屬行政機關內部事務，但仍可作為行政法之法源", "由立法院審議通過產生國內法律效力後，係屬行政法之法源", "行政規則在對人民權利有所限制時，才能例外作為行政法法源 31350、31450 32050、32750 32850 33550"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00141', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '下列何者須有法律或有法律具體明確授權之依據始得為之？', '["補助國旅", "吊銷證照", "執行法律之細節性、技術性事項", "不涉及重大公益之給付行政"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00142', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '關於訴訟紛爭之解決途徑，下列敘述何者錯誤？', '["政府機關採購物品之履約爭議，得向普通法院提起民事訴訟", "消費者向公營銀行貸款之履約爭議，得向普通法院提起民事訴訟", "不服台灣電力公司計收電費之通知，得向普通法院提起民事訴訟", "申請購買國民住宅，因資格不符而遭拒絕，得向普通法院提起民事訴訟"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00143', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '關於行政組織之敘述，下列何者錯誤？', '["依現行法制，行政院農業委員會農田水利署為行政法人", "依現行法制，國家中山科學研究院為行政法人", "地方自治團體具有公法人之法律地位", "里長雖經選舉，但「里」不具地方自治團體之法律地位"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00144', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '關於委託行使公權力之概念，下列敘述何者錯誤？', '["受託行使公權力之個人或團體，於委託範圍內，視為行政機關", "委託行使公權力得僅限於私經濟行政", "委託方式得以行政處分或行政契約為之", "行政機關得依法規將其權限之一部分，委託民間團體或個人辦理"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00145', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '稅捐稽徵機關為確認某納稅義務人及其扶養親屬之資料，函請戶政機關提供戶籍資料，性質屬於 下列何者？', '["職務協助", "權限委託", "權限委任", "委辦"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00146', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-111-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '下列何者無公務員懲戒法之適用？', '["私立學校之教師", "具公務員身分之公營事業機構服務人員", "受有俸給之文武職公務員", "公立學校兼任行政工作之教師"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:55+00:00", "source_pdf_sha1": "b4a31a26c6f1", "answer_pdf_sha1": "98cbeae447c8", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "331", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
