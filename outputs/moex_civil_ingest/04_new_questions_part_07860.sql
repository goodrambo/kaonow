-- W1.6 questions batch 7860/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-77f8735d-moex-00001', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '兩位研究者在多家醫院進行一項研究，比較新診斷的男性肺癌患者與同
年齡、同性別的非肺癌患者之吸菸習慣，以探討吸菸與肺癌之間的關聯
性。調查結果發現肺癌患者和非肺癌患者不吸菸者分別有 7人和61 人。
另根據每日吸菸量的資料，結果如下：
每日吸菸量（支） 肺癌患者 非肺癌患者
0 7 61
1-14 565 706
15-24 445 408
≥25  340 182
總計 1,357 1,357
根據上表資料，請分別計算吸菸及不同吸菸量與肺癌之勝算比（odds
ratio,OR），並說明其流行病學意義。（10分）
請說明此研究設計主要的優點，並指出兩種常見的偏差（bias）及其改
善方法。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "8f59c45a84d7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00002', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '學者針對全英國約 6 萬名醫師發出問卷，詢問其吸菸習慣，共有約 4 萬
名醫師回覆。研究團隊後續追蹤10 年，記錄其中男性醫師的死亡原因，
結果如下：
每日吸菸量（支） 肺癌病例數 觀察人年 肺癌死亡率（每千人年）
0 3 42,800 0.07
1-14 22 38,600 0.57
15-24 54 38,900 1.39
≥25  57 25,100 2.27
所有吸菸者 133 102,600 1.30
總計 136 145,400 0.94
請說明此研究設計屬於那一類型，根據上表資料，計算不同吸菸量與
肺癌之率比（rate ratio, RR），並解釋其流行病學意義。若全英國男性
皆不吸菸，預估可避免多少比例的肺癌死亡？（15 分）
根據這一項研究之整體結果，請利用 Bradford Hill因果關聯判斷準則
說明吸菸與肺癌之間是否有因果關係。又若你為衛生政策制定者，可
提出那些公共衛生政策建議？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "8f59c45a84d7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00003', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '研究人員進行「癌症和類固醇激素研究」，探討口服避孕藥使用與卵巢癌
風險之關聯性。研究中納入 20-54 歲新診斷的卵巢癌女性病例 179 人，
以及 1,642 位隨機選取之對照。下表顯示口服避孕藥使用情形在研究對
象中的分布狀況：
對象 使用口服避孕藥 病例 對照
曾經使用 93 959
所有人
不曾使用 86 683
曾經使用 46 285
年齡 20-39 歲
不曾使用 12 51
曾經使用 30 463
年齡 40-49 歲
不曾使用 30 301
曾經使用 17 211
年齡 50-54 歲
不曾使用 44 331
根據上表資料，請計算不同年齡層，避孕藥使用與卵巢癌之勝算比
（oddsratio,OR），並說明年齡的影響及可能扮演的角色。若要解決上
該問題，在資料分析階段可用那些方法加以控制？（15 分）
若進一步分析發現「生育次數」改變口服避孕藥與卵巢癌之關聯強度，
胎次 0、1-2、≥3的年齡校正勝算比分別為0.3、0.8、0.7，請說明此種
結果屬於何種效應，並描述其流行病學意義。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "8f59c45a84d7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00004', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '學者針對月經相關毒性休克症候群（TSS）進行兩階段研究。第一階段
研究探討是否使用衛生棉條與 TSS 發生之關聯。每位 TSS 患者配對一
名同地區、同性別、相近年齡之對照。下表為配對結果：
對照
使用棉條 未使用棉條 總計
使用棉條 33 16 49
病例
未使用棉條 1 2 3
總計 34 18 52
第二階段研究為探討不同品牌棉條與 TSS 之關聯，再針對 50 名倖存女
性病例與50 名依年齡與地區配對之對照進行研究。結果如下：
品牌 病例使用比率 對照使用百比率 配對勝算比（matched OR）
品牌 A 35% 5% 7.7
品牌 B 10% 14% 0.7
品牌 C 3% 8% 0.4
品牌 D 2% 7% 0.3
請說明採用配對病例對照研究的原因及限制為何？選擇配對變項的
理由為何？（10分）
請計算並比較配對與未配對勝算比的差異，說明其流行病學上的意
義。（10分）
第二階段研究結果顯示「品牌A」與 TSS發病高度相關，其他品牌未
顯著。其他品牌的配對勝算比均小於 1，是否可以被解釋為具有「保
護效果」？請提出你的看法。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "8f59c45a84d7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00005', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '95 0.975
t =1.761、t =1.753、t =1.672、t =1.671、t =1.671
14,0.95 15,0.95 58,0.95 59,0.95 60,0.95
t =2.145、t =2.131、t =2.002、t =2.001、t =2.000
14,0.975 15,0.975 58,0.975 59,0.975 60,0.975
X2 =3.841、X2 =77.931、X2 =79.082、X2 =5.024、
1,0.95 59,0.95 60,0.95 1,0.975
X2 =82.117、X2 =83.298
59,0.975 60,0.975
一、某學者調查英國某地區 100位罹患霍亂的居民，以及 336 位未罹患霍亂
的居民的飲用水狀況，結果如下表，試問：
罹患霍亂者 未罹患霍亂者
飲用地下水 80 57
飲用自來水 20 279
罹患霍亂者與未罹患霍亂者飲用地下水的比例是否有差異？（0.05）
（10分）
罹患霍亂者與未罹患霍亂者飲用地下水比例差異的 95%信賴區間為
何？（10分）
由所求得之信賴區間，是否可以判斷飲用水種類與罹患霍亂有關？
請說明理由。（5分）
二、以隨機分派方式，給予60 位高血壓病人服用 A、B兩種降血壓藥其中一
種，所得結果如下表：
服用前後血壓改變 服用前後血壓改變
樣本數
之平均數 之標準差
服用 A藥物 30 6.07 11.60
服用 B藥物 30 10.63 10.05
試問 A、B 兩種藥物對降血壓之效果是否有差異？（假設兩組母群體
血壓改變值之變異數相等）（0.05）（10 分）
服用 A、B兩種藥物後，血壓改變值平均數差異之95%信賴區間為何？
（10分）
依據所算得95%信賴區間，是否可以判斷 A、B兩種降血壓藥物之
降血壓效果具有統計差異？並請說明理由。（5 分）
16730
16830
三、根據某一族群的橫斷性研究（cross-sectional study），獲得以下吸菸與肺
癌之資料，試推論吸菸與肺癌是否有關聯性？（  0.05）（25 分）
有肺癌 無肺癌 合計
吸菸 20 80 100
無吸菸 10 390 400
合計 30 470 500
四、在罹患糖尿病的血液透析患者中隨機挑選 15 名患者進行飲食改善介入
試驗，在飲食改善前後，白蛋白濃度差異（試驗前試驗後）之平均值為
-0.26，標準差為0.57，試問：
飲食改善介入前後，白蛋白濃度差異之平均值是否有統計上顯著差
異？（15分）
飲食改善介入前後，白蛋白濃度差異之平均值的 95%信賴區間為何？
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "fdcf4276cced", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00006', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '登革熱是我國目前最主要的蟲媒傳染病，請說明傳播登革熱的病媒蚊有
那幾種？面對氣候變遷造成的環境變化，請論述對防治登革熱可能面臨
的挑戰及預防的方法。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "a110d6f4d5b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00007', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '隨著醫療發達及衛生條件改變，國人平均壽命逐漸延長。請說明健康平
均餘命（HealthyLifeExpectancy,HALE）與失能調整損失人年（DALY）
衡量方式的相似和相異之處為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "a110d6f4d5b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00008', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '一般健康照護體系財源籌措的方式與考量原則有那些？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "a110d6f4d5b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00009', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-e19e5d54', 'sub-promotion-77f8735d-03', NULL, 'essay', '健康照護體系保險財務籌措機制下，可能產生道德危害風險及逆選擇的
問題。請說明何謂道德危害風險及逆選擇？另請說明預防道德危害風險
及逆選擇之可能方法。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "a110d6f4d5b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生行政學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00010', 'promotion-77f8735d', 'promotion-77f8735d-moex-114-820a958c', 'sub-promotion-77f8735d-04', NULL, 'essay', '由於科技進步，近來已經有越來越多的技術應用於食品上，請試述何謂
新穎性食品及其類型。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:12+00:00", "source_pdf_sha1": "1cd5e6797aa9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
