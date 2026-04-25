-- W1.6 questions batch 5006/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-77f8735d-moex-00058', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-aaf759af', 'sub-heelevel3-77f8735d-05', NULL, 'essay', '某團隊欲進行一項隨機臨床試驗，請說明此研究設計需考慮那些因素，
以減少偏差的發生？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "dec64a968a5c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00059', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '一研究團隊擬在一家醫院進行低出生體重相關的研究，假定在該醫院生產
的嬰兒約有 500 位，出生體重平均值為 3000 公克，標準差為 450 公克，
假定嬰兒出生體重接近常態分布。現從全部嬰兒中隨機抽樣 16 位嬰兒，
請計算樣本的出生體重平均值 2800公克的機率為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "ff270b7a8cbe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00060', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '越來越多文獻顯示除了身體質 ≤量 指數，腰圍也和死亡率與罹患心血管疾
病等慢性病有關聯。一研究團隊進行臨床試驗探討地中海飲食對腰圍
（公分）的影響，蒐集 55歲以上、有多個心血管疾病危險因子的男性病
人，分為兩組，分別接受兩種飲食指導：地中海型飲食、一般減脂飲食。
樣本數 臨床試驗開始前 臨床試驗第5年和第0年
（第0年）的腰圍 的腰圍變化
平均值 標準差 平均值 95%信賴區間
（雙尾）
地中海型飲食 16 95.2 9.5 0.37 （-0.12,0.87）
一般減脂飲食 16 95.5 9.0 1.20 （0.68,1.72）
假定腰圍與腰圍變化皆為常態分布，兩組的腰圍和腰圍變化之變異數相
等。請回答下列問題：（統計檢定請寫出虛無假設和對立假設、檢定統計
量和計算過程，並下結論。設顯著水準 α = 0.05。）
由全國調查得知，同年齡的男性之腰圍平均為92.0 公分。相較於同年
齡的全國男性群體，地中海型飲食組的男性病人在臨床實驗開始前的
平均腰圍是否較高？（10分）
分別計算地中海型飲食組、一般減脂飲食組之腰圍變化的標準差和標
準誤（standard error）。（10分）
檢定地中海型飲食組和一般減脂飲食組的腰圍變化是否不同？（15分）
34480、36280', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "ff270b7a8cbe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00061', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '某研究者探討含糖飲食攝取量（公斤／年）和兒童齲齒狀況的關係，蒐
集 60 個兒童之含糖飲食攝取量和恆齒齲蝕指數（為恆牙齲齒齒數、缺
牙數及填補數三種牙齒數的總和，數值越小表示齲蝕顆數越少）。
基本資料如下：
變數 樣本數 平均值 標準差 X和Y的樣本共變數

糖飲食攝取量（X），單位為公斤／年 60 24.55 16.77  782.06 
∑ ( −̅)( −)
恆齒齲蝕指數（Y），單位為顆 60 2.34 1.59
假設由散布圖已知含糖飲食攝取量和恆齒齲蝕指數有正向的線性關
係，研究人員進一步建立簡單線性迴歸模型 。請估計迴歸
係數 。（5分）
Y =  +X
研究者也建立變異數分析表（如下）。請說明此迴歸直線是否有達到

統計上的顯著性（顯著水準 α = 0.05），並解釋迴歸係數 的意義。
（15 分）

變異來源 自由度 平方和 平均值平方 F 值 Pr>F
迴歸 X X 36.88077 18.91 <.0001
誤差 X X 1.95036
總和 X X
計算含糖飲食攝取量和恆齒齲蝕指數的決定係數（coefficient of
determination），並說明其意義。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "ff270b7a8cbe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00062', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-8041b019', 'sub-heelevel3-77f8735d-06', NULL, 'essay', '疫苗猶豫（Vaccinehesitancy）是指儘管有疫苗可用，但民眾延遲或拒絕
接種疫苗的現象。一調查研究顯示，在 800 位醫療工作者中，104 位有
疫苗猶豫，在 200 位公共衛生相關政府部門的工作者中，有 20 位有疫
苗猶豫。設顯著水準 α = 0.05，請檢定醫療人員和政府公共衛生部門工
作人員的疫苗猶豫比例是否不同？請寫出虛無假設和對立假設、統計
量，以及計算該統計量所需的假設、計算檢定統計量，並下結論。（25 分）
34480、36280
附表一、標準常態分配機率對照表
34480、36280
附表二、t分配臨界值表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "ff270b7a8cbe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00063', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '醫療糾紛讓許多醫師對高風險科別卻步，讓認真的醫師灰心，也增加防
禦性醫療。我國立法院於2022年 5 月 30日三讀通過「醫療事故預防及
爭議處理法」，請列舉三種措施，說明該法如何預防或因應醫療糾紛？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "31ab9d8c78b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00064', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '根據醫學倫理，病人享有身體自主權，包含接受跟拒絕特定的醫療。但
是如果病人拒絕一個風險很低、益處很高的醫療，而且拒絕的結果，非
常可能對病人的健康造成不可逆的傷害、甚至可能死亡時，病人還有權
利拒絕這個醫療嗎？請從醫療法、安寧緩和醫療條例，以及病人自主權
利法對病人自主權的保障及限制，分別析論之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "31ab9d8c78b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00065', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '面對新冠肺炎（COVID-19），各界咸認普遍施打疫苗是最能夠防範重症、
控制疫情的關鍵。然而截至 2022 年 6 月為止，75 歲以上長者完成兩劑
疫苗的比率仍然僅約七成五。有鑑於 75歲以上長者感染後，重症及死亡
風險較高，在一再宣導無效的情況下，假設某縣長擬強制75 歲以上長者
施打疫苗，否則即予以罰鍰。試問，強制施打新冠肺炎疫苗牽涉民眾何
種權利？是否合憲、合法及合倫理？假設你是該縣長之幕僚，對於縣長
的構想，你會提出何種建議？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "31ab9d8c78b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00066', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-72684875', 'sub-heelevel3-77f8735d-02', NULL, 'essay', '聯合國於 2006 年通過身心障礙者權利公約，立法院於 2014 年通過身
心障礙者權利公約施行法，賦予公約國內法律的效力，該法最重要的
意義在於把「障礙」的定義從「醫療模式」轉變為「社會模式」。請問
這兩個模式有何不同？何以社會模式比起醫療模式更能夠使障礙者享
有人權與基本自由？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "31ab9d8c78b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('heelevel3-77f8735d-moex-00067', 'heelevel3-77f8735d', 'heelevel3-77f8735d-moex-111-173e98ef', 'sub-heelevel3-77f8735d-04', NULL, 'essay', '有關我國之醫院評鑑，試說明我國醫院評鑑制度之變革，包括：
辦理評鑑機構（單位）之變革。（4分）
評鑑委員專業類別組成之演變。（5分）
醫院評鑑評定合格醫院名稱之演變。（6 分）
請敘述醫學中心任務指標基準之五大任務。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:39+00:00", "source_pdf_sha1": "7ae45c9983ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "339", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫療制度與品質管理", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
