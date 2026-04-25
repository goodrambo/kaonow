-- W1.6 questions batch 6762/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-77f8735d-moex-00034', 'locality-77f8735d', 'locality-77f8735d-moex-112-aaf759af', 'sub-locality-77f8735d-05', NULL, 'essay', '下圖為研究者針對 10 個區域某年度冰淇淋銷售量以及當年度溺水死亡
的數據所做的統計圖，依照上述，請問此研究最有可能為何種研究設
計？（5 分）請問此種研究設計之研究結果是否可以進行因果關係的推
論？（5分）若可以進行因果關係的推論或者不能進行因果關係的推論，
原因為何（請寫出至少兩點原因）？（10分）
冰 5
0
0
淇
淋 4
0
銷 0
售
3
( 0
公 0
斤
)
50 100 150 200 250
溺水死亡人數', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "e085fe16ab1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00035', 'locality-77f8735d', 'locality-77f8735d-moex-112-aaf759af', 'sub-locality-77f8735d-05', NULL, 'essay', '下列為一項世代研究之研究結果，此研究為期 10年的追蹤，探討空氣污
染曝露與肺癌之間的相關性：
㉑粗相對危險性（cruderelativerisk）=1.27；
㉒分層之相對危險性估計值結果：
性別：男性（RR=2.48）；女性（RR=4.50）
㉓抽菸狀態：目前仍在抽菸且平均每週抽菸>=20 根（RR=3.33）；目前
仍在抽菸且平均每週抽菸<20 根（RR=2.33）；過去曾抽過菸
（RR=1.10）；從來沒有抽過菸（RR=1.05）。
依照上述數據，請問本研究之潛在干擾因子為何？（5 分）依據抽菸狀
態的結果，此結果符合希爾因果關係標準（Hill''scriteriaforcausation）中
的那一項？（5 分）請說明如何在研究設計以及資料分析階段，減少干
擾因子對研究結果的影響？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "e085fe16ab1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00036', 'locality-77f8735d', 'locality-77f8735d-moex-112-aaf759af', 'sub-locality-77f8735d-05', NULL, 'essay', '某國家衛生官員想要比較，該國家中 A 城市與 B 城市第二型糖尿病盛
行率的情形，以下數據，請協助計算 A城市與 B城市直接年齡標準化糖
尿病盛行率？（15 分）並解釋此計算結果？（5分）
A城市第二型糖尿病 B城市第二型糖尿病
年齡（歲） 標準人口數
盛行率（千分之一） 盛行率（千分之一）
<40 3500 1.0 0.8
40～<50 5500 2.5 2.0
50～<60 2500 7.0 8.0
60～<70 2300 16.0 17.0
>=70 2000 33.0 35.0
總計 15800', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "e085fe16ab1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00037', 'locality-77f8735d', 'locality-77f8735d-moex-112-aaf759af', 'sub-locality-77f8735d-05', NULL, 'essay', '有一名醫師想要評估新的篩檢大腸癌工具，假若利用大腸鏡的檢驗結果
為真實的疾病狀態，此篩檢工具的篩檢結果如下表：
真實疾病狀態
篩檢結果 大腸癌(+) 大腸癌(-) 總和
Positive（陽性） 100 533 633
Negative（陰性） 20 8213 8233
Total（總和） 120 8746 8866
請計算此篩檢工具的：敏感度（Sensitivity）（5分）以及陰性預測值（Negative
PredictiveValue），（5分）並分別解釋此兩數值的意義？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "e085fe16ab1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00038', 'locality-77f8735d', 'locality-77f8735d-moex-112-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '某研究邀請二位醫師協助進行疾病狀態之評估，每一位參與研究之對
象，均經過二位醫師之診斷，結果如下表。為瞭解二位醫師的診斷是否
有差異，請以適當之統計方法進行檢定（請寫出完整的檢定步驟、相關
之統計量，以及檢定之結果）。（25 分）
甲醫師
乙醫師 有病 沒有病
有病 80 10
沒有病 20 90', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "39aef775e7ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00039', 'locality-77f8735d', 'locality-77f8735d-moex-112-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '某營養師欲評估減重介入方案之成效，以 12 位參與減重的個案進行介
入前後的比較，方案進行12 週之後，體重的結果如下表。假設族群中體
重的分布為常態分布，請檢定該介入方案是否有效地降低參與者的體
重？（請寫出完整的檢定步驟、相關之統計量以及檢定之結果）（25 分）
個案編號 1 2 3 4 5 6 7 8 9 10 11 12
介入前體重（kg） 88 67 54 71 75 68 95 84 64 76 61 78
介入後體重（kg） 76 63 55 67 66 65 78 79 64 70 63 75
32980
34080', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "39aef775e7ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00040', 'locality-77f8735d', 'locality-77f8735d-moex-112-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '近年來，運動被視為對於高血脂預防具有相當成效的方式。某研究人員
想要知道運動頻率是否對總膽固醇濃度（mg/dl）的下降產生效果，以線
性迴歸模型加以分析 200 名樣本，並且為了避免年齡、性別的干擾，因
此也將此二變項放在模式中加以控制。線性迴歸分析表格如下，請回答
下列問題：
模式 B估計值 標準誤 t 顯著性
常數 22.4 2.6 8.5 .000
年齡（歲） 2.3 1.2 1.6 .260
性別（男vs.女） 10.8 2.7 6.8 .001
運動頻率（次/週） -3.5 1.6 -3.9 .015
R2 .12
請寫出完整之迴歸方程式並說明模型解釋力。（10 分）
請問那些變項對總膽固醇濃度有顯著影響？如何解釋？（15 分）
請對此一結果做綜合性之解釋。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "39aef775e7ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00041', 'locality-77f8735d', 'locality-77f8735d-moex-112-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '觀察某地區空氣品質之指標 PM 持續 100 天，按照濃度（µg/m³）大小
10
排列如下表，請回答下列問題：
51 62 64 69 70 71 72 74 74 74
74 74 75 75 77 77 78 78 79 79
79 79 79 80 80 82 82 83 83 83
83 84 84 84 84 85 85 85 85 86
86 86 86 86 86 87 88 88 89 89
90 90 90 90 91 91 91 91 92 92
93 93 93 93 94 94 95 96 96 96
96 97 98 98 98 98 98 99 99 99
99 99 100 101 102 102 104 105 107 108
108 111 112 112 113 116 118 120 122 131
平均數、中位數、眾數、Q1、Q3 各為多少？（5 分）
根據這些數值，此地區空氣品質之分布為何種型態（常態、左偏、右
偏）？（5 分）
請以 10 µg/m³為區間，列出頻率分配表（需含區間端點、次數、百分
比、累積次數、累積百分比）。（10 分）
32980
34080
t分布表
32980
34080
卡方分布表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "39aef775e7ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00042', 'locality-77f8735d', 'locality-77f8735d-moex-112-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '請說明醫療法有關醫療廣告之定義，以及有關醫療廣告主體、內容、方
式之管制規定，並進一步說明憲法法庭 112年度憲判字第17 號判決，就
禁止醫師為醫療廣告案所做出之判決主旨與理由。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "7d371fc4a166", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00043', 'locality-77f8735d', 'locality-77f8735d-moex-112-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '民國 111 年 12月 14 日修正公布之精神衛生法，請分別說明本次修法中，
有關強制社區治療與強制住院治療之啟動要件、強制期間（包括安置與
鑑定期間）、停止條件之規定。（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "7d371fc4a166", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "325", "s": "2804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
