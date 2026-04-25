-- W1.6 questions batch 9108/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('retired-77f8735d-moex-00140', 'retired-77f8735d', 'retired-77f8735d-moex-112-aaf759af', 'sub-retired-77f8735d-07', NULL, 'essay', '下表為某研究調查母親生產年齡與剖腹產盛行率之間相關性的研究數
據。數據顯示無論胎次為何，40-49 歲母親剖腹產盛行率比<20 歲母親高
出 2-3 倍，不過整體來說，40-49歲母親與<20 歲母親剖腹產盛行率差異
卻小了許多（23.5%vs14.7%）。您能說明造成此剖腹產盛行率差異縮小
的原因是什麼嗎？請說明您的理由。此外，如果要解決這種比較上的問
題，您建議的方法是什麼？（25分）
母親生產年齡與剖腹產盛行率(%)
胎次
合計 <20歲 20-24歲 25-29歲 30-34歲 35-39歲 40-49歲
合計 16.0 14.7 15.0 16.0 16.5 19.0 23.5
1 24.6 16.9 22.6 27.1 32.2 39.2 46.9
2 8.9 6.8 7.3 8.7 10.4 13.6 20.1
3 8.4 6.3 6.5 7.7 9.0 12.0 18.1
>=4 8.8 7.6 6.8 7.4 8.8 11.2 15.1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "babaac8bbb72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00141', 'retired-77f8735d', 'retired-77f8735d-moex-112-aaf759af', 'sub-retired-77f8735d-07', NULL, 'essay', '請說明世代研究（cohort studies）與隨機控制臨床試驗（randomized
controlledtrial）在研究設計上的相同點與相異點各兩點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "babaac8bbb72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00142', 'retired-77f8735d', 'retired-77f8735d-moex-112-aaf759af', 'sub-retired-77f8735d-07', NULL, 'essay', '某研究調查 1 萬 4 千名 20 歲以上成人樣本的吸菸盛行率，其部分結果
呈現在下面兩個表格。根據表格數據您會認為寡居女性與較低的吸菸盛
行率有關嗎？請說明您的理由。另外，您會不會認為不分性別，離婚狀
態與較高的吸菸盛行率有關嗎？請說明您的理由。（25分）
吸菸盛行率（%） 吸菸盛行率（%）
年齡（歲） 男 女 婚姻狀況 男 女
21-24 41.3 34.0 已婚 38.3 28.3
25-34 43.9 35.4 未婚 37.5 30.6
35-44 47.1 36.4 離婚 60.1 50.0
45-54 41.1 32.8 鰥寡 35.7 19.3
55-64 33.7 25.9
65-74 24.2 7.1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "babaac8bbb72", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00143', 'retired-77f8735d', 'retired-77f8735d-moex-112-8041b019', 'sub-retired-77f8735d-08', NULL, 'essay', '最近臨床感興趣的議題是使用新開發藥物減少 24 小時內發生心肌梗塞
患者的梗塞面積。假設我們知道在未經治療的患者中，平均梗塞面積為
25(ck-g-EQ/m2)，標準差為10(ck-g-EQ/m2)。在 8名接受此新開發藥物治
療的患者中，平均梗塞面積為 16(ck-g-EQ/m2)。
請問此新開發藥物對減少梗塞面積有顯著減少嗎？請以單尾檢定進
行分析，並報告p 值。（10分）
如果接受此新開發藥物治療的族群患者真實的平均梗塞面積為
20(ck-g-EQ/m2)，且 =10(ck-g-EQ/m2)，請以單尾檢定計算此檢定的
檢力（power）。（15 分）
（ 備 註 ： P(Z0.23)=0.409 ， P(Z1.645)=0.05 ， P(Z1.96)=0.025 ，
P(Z2.55)=0.005）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "75464fc1bb2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00144', 'retired-77f8735d', 'retired-77f8735d-moex-112-8041b019', 'sub-retired-77f8735d-08', NULL, 'essay', '假設有藥商宣稱其新產品的藥物在治療高血壓的有效率為80%，今實際
試驗 500 位高血壓患者，結果有375 位高血壓患者在服用後血壓控制為
正常，若欲檢測實際的試驗結果是否與藥商所宣稱的效果相符合，請進
行檢定。（20分）
（備註： ， ， ， ，
 ，  ）  
., = 5.02 ., = 7.38 ., = 9.35 ., = 3.84
 
., = 5.99 ., = 7.81', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "75464fc1bb2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00145', 'retired-77f8735d', 'retired-77f8735d-moex-112-8041b019', 'sub-retired-77f8735d-08', NULL, 'essay', '有一臨床試驗評估補充鈣（calcium）與骨化三醇（calcitriol）治停經後骨
質疏鬆症的相對療效。骨化三醇是一種能夠增加胃腸道對鈣吸收的藥
物。由於治療的不良反應，包括口渴、皮膚問題和神經系統症狀，許多
患者提早退出了這項研究。相關數據如下。
退出試驗
治療方式 總計
是 否
骨化三醇 27 287 314
補充鈣 20 288 308
總計 47 575 622
計算每種治療組中退出研究的受試者樣本比例。（5分）
在 0.05的顯著性水準下，檢驗虛無假設，即治療組與退出研究之間沒
有關聯。得出什麼結論？（10 分）
請計算並解釋OR和其 95%信賴區間。（10分）
（備註： ， ， ， ，
 ，  ）  
., = 5.02 ., = 7.38 ., = 9.35 ., = 3.84
 
., = 5.99 ., = 7.81', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "75464fc1bb2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00146', 'retired-77f8735d', 'retired-77f8735d-moex-112-8041b019', 'sub-retired-77f8735d-08', NULL, 'essay', '假設患有某碳水化合物吸收不良症候群的嬰兒被餵食新配方奶粉後，其
增加體重的分布大致呈常態分布，平均磅數為10.5和標準差磅數為
13.1。
有多少百分比嬰兒增加體重介在 5.1 到 15.2磅之間？（10分）
如果從該母群體中重複抽取樣本數 25 的樣本，則平均增重在 5.1 到
15.2 磅之間的樣本比例是多少？（10分）
要使 95%的樣本增加體重均值位於母群體增加體重均值的2磅以內，
樣本必須要多大？（即介於 10.5-2 和 10.5+2 磅之間）（10分）
（備註：P（Z≥0.41）=0.341，P（Z≥0.36）=0.359，P（Z≥1.64）=0.051，
P（Z≥1.79）=0.037，P（Z≥1.96）=0.025，P（Z≥2.06）=0.020）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "75464fc1bb2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2505", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00147', 'retired-77f8735d', 'retired-77f8735d-moex-112-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '在公衛政策的制定與實務推動上，有時會有侵害個人自由或違反一般道
德考量之虞。請闡述從公衛倫理觀點，如何判斷公衛政策是否具有倫理
正當性？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1060ef90e04a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00148', 'retired-77f8735d', 'retired-77f8735d-moex-112-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '針對國際間出現琳瑯滿目的電子煙、加熱菸等產品及其造成的健康危
害，衛生福利部推動菸害防制法之修法，並在立法院審議後於 112 年 1
月完成三讀。請說明此次修法之主要重點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1060ef90e04a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('retired-77f8735d-moex-00149', 'retired-77f8735d', 'retired-77f8735d-moex-112-72684875', 'sub-retired-77f8735d-04', NULL, 'essay', '我國為減緩醫療爭議及訴訟衍生的醫病關係對立、高風險科別醫事人才
流失及防禦醫療等問題，於 111年通過「醫療事故預防及爭議處理法」。
請說明該法的立法宗旨與採取的三大原則。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:03+00:00", "source_pdf_sha1": "1060ef90e04a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "138", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "retired", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
