-- W1.6 questions batch 7863/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-77f8735d-moex-00031', 'promotion-77f8735d', 'promotion-77f8735d-moex-112-820a958c', 'sub-promotion-77f8735d-04', NULL, 'essay', '依據我國毒性及關注化學物質管理法，請試述共分為幾大類管理？並舉
例說明具食安疑慮物質之管理內容。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "947be3715152", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "140", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00032', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '某研究者想探討年輕時候的肥胖狀態與長期心血管疾病風險的關係，追
蹤 2,000名受試者 10 年後，得到以下資料。以下每個欄位的分母是受試
者人數，分子是追蹤期間得到心血管疾病的人數。請計算並解讀全體受
試者當中，肥胖與心血管疾病的風險比（riskratio）。（5 分）也請計算並
解讀未規律運動與規律運動者當中，肥胖與心血管疾病的風險比（risk
ratio）。（10分）請評論全體族群跟分層族群當中的風險比之異同，並且
解釋背後可能的原因。（10 分）
肥胖 不肥胖
未規律運動 36/900 2/100
規律運動 2/100 9/900
全體 38/1,000 11/1,000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "71bc5d11cc26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00033', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '承上題，某研究者想探討年輕時候的肥胖狀態與長期心血管疾病風險的
關係，追蹤 2,000 名受試者 10 年後，得到以下資料。以下每個欄位的分
母是受試者人數，分子是追蹤期間得到心血管疾病的人數。請評論全體族
群跟分層族群當中風險比之異同。干擾因子的定義為何？如果從干擾因
子的角度思考，當分層的因子由題一的（未規律運動/規律運動）換成本
題的（糖尿病/無糖尿病）時，在分析策略上是否會有所差異？（15分）
肥胖 不肥胖
糖尿病 36/900 2/100
無糖尿病 2/100 9/900
全體 38/1,000 11/1,000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "71bc5d11cc26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00034', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', 'Messerli探討巧克力攝取與認知發展的國際比較（NEJM2012），下圖的
橫軸為每年每人平均巧克力攝取量，縱軸為每千萬人口的諾貝爾獎得主
人數。請問此種研究設計為何？（5 分）此類研究設計在推論因果關係
的時候需要注意什麼？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "71bc5d11cc26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00035', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '請說明發生率跟盛行率這兩個流行病學指標的定義與兩者之間的關係
（10 分）。下圖為美國 1980 2010 年的 HIV 盛行個案（上方曲線）與新
發生個案（下方曲線）之趨勢。自 1997年之後，發生率雖然沒有上升甚
~
至逐漸下降，可是盛行率卻逐年上升，請問可能的原因為何？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "71bc5d11cc26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00036', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-aaf759af', 'sub-promotion-77f8735d-01', NULL, 'essay', '臨床試驗與觀察性研究的主要差別為何？（10分）在隨機分派試驗中，
被分派到治療組的病患，有可能自行停藥。在這種情形下，使用治療意
象分析法（intentiontotreatanalysis）的優勢為何？請舉例說明。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "71bc5d11cc26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00037', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '在臺灣懷孕週數為 40 週的嬰兒的出生體重分布近似正常，平均值為
µ = 3500 克，標準差= 430 克。
假設一個懷孕週數為 40 週的新生兒，他或她的出生體重小於 2500
克的機率是多少？（5 分）
截斷（cutoff）此出生體重分布最低 5%的體重值為何？（5 分）
假設從這個母群體中隨機抽取了一個樣本數為 5 的隨機樣本，截斷
此樣本數為 5 的樣本抽樣分布最低 5%的平均體重值為何？（5 分）
假設此樣本數為 5、懷孕週數為 40 週新生兒樣本平均值的抽樣分
布，平均出生體重小於 2500 克的機率是多少？（5 分）
假設從這個母群體中隨機抽取了五個新生兒，在此五個新生兒中只
有一個出生體重低於 2500 克的機率是多少？（5 分）
P（Z≧2.33）=0.010；P（Z≧1.645）=0.05；P（Z≧5.21）=0.000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "b7fd1bcca8f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00038', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '使用來自佛拉明罕心臟研究（Framingham Heart Study）的數據比較兩
個男性族群研究起始點的血清膽固醇水平分布，這兩個族群分別為後
續產生冠心病和沒有產生冠心病者。未患冠心病的男性人群的平均血
清膽固醇為 µ = 219 mg/100 ml，標準差= 41 mg/100 ml，假設我們並
不知道這群未產生冠心病者其真正母群體的平均值，我們假設 µ 等於
244 mg/100 ml。由於未患冠心病的男性的平均血清膽固醇水平不會高
於患有冠心病的男性的平均水平，因此選擇在 α=0.05 的顯著性水平下
進行單測檢驗。
請寫下虛無假設與對立假設。（5 分）
如果從沒有產生冠心病的男性族群中選擇樣本數為 25 的樣本，如上
面題目所述，此母群體真實平均值為 219mg/100ml，那麼此檢定的型
二誤差機率是多少？（10分）
若想降低型二誤差，此研究者該如何做？（5分）
在單尾 α=0.05 的顯著水準、型二誤差為 0.05 的情況下，如果沒有冠
心病的男性族群真實平均值為 219 mg /100 ml，此檢定需要多大的樣
本？（10分）
P（Z≧1.40）=0.081；P（Z≧1.645）=0.05；P（Z≧1.28）=0.10
16730', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "b7fd1bcca8f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00039', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '假設您有興趣調查退休狀態與心臟病之間的關聯。一個潛在的干擾效應
可能是受試者的年齡，即當老年人更有可能退休，也更有可能患有心臟
病。因此，在一項研究中，127名心臟驟停（cardiacarrest）患者在許多
特徵上與127名健康對照受試者進行了匹配，包括年齡，然後確定每個
受試者的退休狀態。
心臟驟停
健康者 退休 沒有退休 總計
退休 27 12 39
沒有退休 20 68 88
總計 47 80 127
請進行退休狀態和心臟驟停間是否相關之檢定，請說明你的結論。（10分）
請估計健康者與經歷過心臟驟停者退休的相對勝算，並建立其 95%信
賴區間，此區間是否包含1？此代表意義為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "b7fd1bcca8f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('promotion-77f8735d-moex-00040', 'promotion-77f8735d', 'promotion-77f8735d-moex-110-8041b019', 'sub-promotion-77f8735d-02', NULL, 'essay', '在一個含有臺灣某家醫院100名低出生體重嬰兒樣本的資料庫中，懷孕
週數以變項名稱gestage標示，收縮壓測量值以變項名稱 sbp標示。假設
嬰兒收縮壓和懷孕週數呈線性相關，使用收縮壓作為反應變項，懷孕週
數作為解釋變項，下列報表以 SAS 軟體計算最小平方法所估計之迴歸
線。
Parameter Estimates
Variable DF Parameter Standard tValue Pr> |t|
Estimate Error
Intercept 1 10.55207 12.65063 0.834 0.005
gestage 1 1.26438 0.4362311 2.898 0.005
請寫下此迴歸方程式，並解釋直線的估計斜率和與 y軸相交截距所代
表的意思是什麼？（10 分）
在 0.05 的顯著水準，請檢定真實母群體斜率等於 0 的虛無假設。你
得出什麼結論？（10分）
懷孕週數為31週的低出生體重嬰兒的估計平均收縮壓是多少？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:13+00:00", "source_pdf_sha1": "b7fd1bcca8f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "140", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
