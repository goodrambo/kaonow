-- W1.6 questions batch 6716/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-6f0ba476-moex-00355', 'locality-6f0ba476', 'locality-6f0ba476-moex-112-f6c431ec', 'sub-locality-6f0ba476-04', NULL, 'single_choice', '比較凱因斯及布坎南對於公債是否存在代際間負擔移轉之推論，下列何者正確？', '["前者須視公債收入之用途而定，後者認為不存在代際間移轉", "前者不存在代際間移轉，後者認為須視公債收入之用途而定", "二者均認為須視公債收入之用途而定", "二者均認為不存在代際間移轉"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:03+00:00", "source_pdf_sha1": "a3b41793a05d", "answer_pdf_sha1": "b75ba863b029", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "313", "s": "1712", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00356', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-e0b1f2ed', 'sub-locality-6f0ba476-01', NULL, 'essay', '甲公司 X2 年及X3 年保留盈餘表相關資料及其他相關資料如下：
甲公司
保留盈餘表
X3 年度 X2 年度
期初餘額 $225,000 $120,000
加：本期淨利 105,000 135,000
減：現金股利 (30,000) (30,000)
期末餘額 $300,000 $225,000
⑴X2 年初取得不動產、廠房及設備之機器設備，金額為$150,000，估
計可使用 4年，無殘值。該公司自 X3 年開始將折舊方法變更為直
線法，其他條件不變，但公司之會計人員在編製X3 年度財務報表
時仍採用年數合計法提列折舊。
⑵X2 年期末存貨多計$30,000，亦至 X3 年底結帳後才發現，但 X3年
期末存貨無誤。
⑶X2 年底應付租金$15,000未調整入帳，於 X3 年支付時記為租金費
用$15,000。
假設不考慮所得稅之影響，試作：
計算該公司 X2 年底及 X3 年底保留盈餘的正確餘額。（10 分）
假設該公司在X3 年度結帳後才發現上述錯誤，請作該公司應有之
更正分錄。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:03+00:00", "source_pdf_sha1": "d83dc0a4750c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00357', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-e0b1f2ed', 'sub-locality-6f0ba476-01', NULL, 'essay', '乙公司 X3 年度期初現金及約當現金餘額為$500,000，X3 年度資產負
債表各會計項目餘額增減情形，及綜合損益表資料如下：
增加(減少)
現金及約當現金 $(45,000)
應收帳款淨額 20,000
存貨 0
預付費用 (3,000)
透過其他綜合損益按公允價值衡量之債務工具投資 30,000
採用權益法之投資 60,000
不動產、廠房及設備淨額 (50,000)
合計 $12,000
應付帳款 $71,000
應付利息 1,000
租賃負債 (90,000)
普通股股本 (50,000)
資本公積 (5,000)
保留盈餘 80,000
其他權益 5,000
合計 $12,000
銷貨收入 $302,000
銷貨成本 (140,000)
折舊費用（含租賃資產之折舊） (50,000)
其他營業費用 (5,000)
預期信用減損損失 (1,000)
採用權益法認列之損益份額 42,000
利息費用 (12,000)
所得稅費用 (6,000)
本期淨利 130,000
本期其他綜合損益 5,000
本期綜合損益總額 $135,000
其他補充資料如下：
⑴本年度未處分「透過其他綜合損益按公允價值衡量之債務工具投
資」，其他權益之變動為認列「透過其他綜合損益按公允價值衡量
之債務工具投資」的未實現損益。
⑵本年度增加關聯企業之投資$30,000。
⑶租賃每年支付租金$100,000。
⑷本年度買回庫藏股票並註銷，買回成本超過原發行價格部分係以保
留盈餘沖抵。
⑸公司本年度通過並支付現金股利$45,000。
⑹公司將收取股利及支付利息分類為營業活動之現金流量；支付股利
分類為籌資活動之現金流量。
試求：（每小題 4分，共 20分）
X3 年度現金流量表中之現銷及應收帳款收現數額。
X3 年度現金流量表中買回並註銷庫藏股票所支付之現金數額。
X3 年度之營業活動現金流量。
X3 年度之投資活動現金流量。
X3 年度之籌資活動現金流量。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:03+00:00", "source_pdf_sha1": "d83dc0a4750c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00358', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-e0b1f2ed', 'sub-locality-6f0ba476-01', NULL, 'essay', '丙公司於 X2 年 1 月 1 日支付現金向某軟體開發廠商購買一套 ERP
（EnterpriseResourcePlanning）系統，成本$6,000,000，預計使用年限
5 年，估計殘值為零。X4 年 1 月 1 日丙公司因為該系統的顧客管理
子系統不敷公司管理需求，向原軟體開發廠商購買新版顧客關係管理
子系統，以取代原來的顧客管理子系統，新子系統成本為$1,500,000
並以現金支付，管理階層認為該支出可為丙公司產生未來經濟效益，
且將於整個 ERP系統使用年限到期時失效。
試作：
若已知原ERP系統中之顧客管理子系統的原始成本為$1,000,000，截
至 X3 年 12 月 31 日已提列之累計攤銷$400,000（使用「累計攤
銷－電腦軟體」帳戶）。請記錄丙公司 X4 年 1 月 1 日重置顧客關
係管理子系統之相關分錄（包括除列舊資產及認列新資產之分錄）。
（7分）
假設丙公司無法得知被重置顧客管理子系統的帳面金額，但已知全
套 ERP 系統的成本為$8,000,000，並以全套 ERP 系統的重置成本
估計被重置顧客管理子系統的原始成本。請記錄丙公司 X4 年 1月
1 日重置顧客關係管理子系統之除列舊資產之分錄。（4 分）
假設丙公司無法得知被重置顧客管理子系統的帳面金額，也不知全
套 ERP 系統的重置成本。請記錄丙公司 X4 年 1 月 1 日重置顧客
關係管理子系統之除列舊資產之分錄。（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:03+00:00", "source_pdf_sha1": "d83dc0a4750c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "會計學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00359', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-9b7ab1bb', 'sub-locality-6f0ba476-02', NULL, 'essay', '甲是 A 地所有人，乙是 B 地所有人，A 地與 B 地相鄰。乙長年旅居國
外，未曾回國。B地荒廢，雜草蔓生。甲在 A地建築 C屋。C屋有一部
分越界建築在 B地之上。C屋建成後 5年，乙返國定居，始發現甲越界
建築一事。試問：
乙請求甲拆除C屋返還 B地，有無理由？（10分）
乙請求甲以相當價額購買越界部分之 B地，有無理由？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:04+00:00", "source_pdf_sha1": "a1087bdf06ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "0801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00360', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-9b7ab1bb', 'sub-locality-6f0ba476-02', NULL, 'essay', '甲之家族世代在知名夜市 A店面（房屋）經營大腸麵線小吃生意，生意
鼎盛，平均月淨利達 50 萬元。甲是 A 店面所有人，乙是甲的鄰居，兩
人因故素有嫌隙，經常發生口角，甚至鬥毆。某日，乙為使甲無法營業，
駕駛大貨車，撞毀甲的 A店面。甲因此長達 2個月無法營業，損失高達
100 萬元，並支付 A店面維修費用共 50萬元。試問：甲就此對乙有何權
利得以主張？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:04+00:00", "source_pdf_sha1": "a1087bdf06ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "0801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00361', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-9b7ab1bb', 'sub-locality-6f0ba476-02', NULL, 'single_choice', '甲贈與乙汽車一輛，並移轉所有權於乙。嗣後乙毆打甲，甲原可撤銷該贈與，但甲宥恕之。該宥 恕之性質為何？', '["意思表示", "意思通知", "觀念通知", "感情表示"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:04+00:00", "source_pdf_sha1": "a1087bdf06ab", "answer_pdf_sha1": "b0ca7e94525d", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "0801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00362', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-9b7ab1bb', 'sub-locality-6f0ba476-02', NULL, 'single_choice', '甲為與乙訂立契約，邀請乙到酒店喝酒，將乙灌醉致乙於無意識中簽約，下列敘述，何者正確？', '["在無意識中簽約，該契約無效", "乙因無意識而變成無行為能力", "乙在回復清醒後，得撤銷該契約", "契約經乙清醒後，因承認，發生效力"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:04+00:00", "source_pdf_sha1": "a1087bdf06ab", "answer_pdf_sha1": "b0ca7e94525d", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "0801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00363', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-9b7ab1bb', 'sub-locality-6f0ba476-02', NULL, 'single_choice', '下列關於消滅時效完成後效力之敘述，何者正確？', '["債務人不知債權已罹於消滅時效而為承認，生中斷時效之效力", "債務人於債權已罹於消滅時效後，拋棄其時效利益者，係違反不得預先拋棄時效利益之強行規定", "債務人知債權已罹於消滅時效而為承認，則債務人不得為消滅時效之抗辯", "債務人不知債權已罹於消滅時效而為承認，則債務人不得為消滅時效之抗辯 31770 32170"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:04+00:00", "source_pdf_sha1": "a1087bdf06ab", "answer_pdf_sha1": "b0ca7e94525d", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "0801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('locality-6f0ba476-moex-00364', 'locality-6f0ba476', 'locality-6f0ba476-moex-111-9b7ab1bb', 'sub-locality-6f0ba476-02', NULL, 'single_choice', '下列關於主物與從物之敘述，何者錯誤？', '["從物須為主物之成分", "從物常助主物之效用", "主物與從物必屬於同一人所有", "主物之處分，及於從物"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:04+00:00", "source_pdf_sha1": "a1087bdf06ab", "answer_pdf_sha1": "b0ca7e94525d", "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "314", "s": "0801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "財稅行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
