-- W1.6 questions batch 121/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-3df1c47f-moex-00102', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-112-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '作物區域產量型農業保險設定作物基準產量作為理賠啟動條件，亦即當
被保險標的所在區域之實際產量（）低於該區域之基準產量（ ）時即
0
予理賠。某公所承辦人員預計透過適當之隨機抽樣，取得目標區域作物
產量的樣本，並透過統計方法分析結果決定是否啟動理賠。
寫出以上擬說檢定對應之虛無假設及對立假設。（5分）
若以上擬說檢定發生型 I 錯誤，代表該區域實際產量是否低於基準產
量？是否啟動理賠？請說明原因。（5分）
假設統計分析結果獲得 P值為0.023，並設顯著水準為 0.050，說明擬
說檢定 P值之定義，並說明本次擬說檢定應如何決策？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "a408de0f7ad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "513", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00103', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-112-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '下列資料為以兩種不同檢測方法（A、B）測量相同 5 個試驗單位之血液
中膽固醇含量的結果。
試驗單位編號
檢測方法 1 2 3 4 5
A 309 331 418 409 387
B 340 356 501 504 482
以成對T檢定檢驗兩種不同方式測量之膽固醇含量平均值是否相等？
（註：t =2.78）（10 分）
0.025,4
建立兩種不同方式測量方法平均值差異之 95%信賴區間。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "a408de0f7ad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "513", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00104', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-112-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '欲比較 3 種不同組織培養方式對於香莢蘭植株之生長影響，預計在實驗
室中以完全隨機設計進行試驗，各組織培養方式重複 5次，並於培養一
段時間後記錄植株高度。
說明應使用多少試驗單位，以及該如何隨機分配此試驗之試驗單位。
（10分）
寫出對應此試驗之線性統計模式，並說明模式中各項參數之定義及限
制條式。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "a408de0f7ad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "513", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00105', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-112-44bd4b53', 'sub-aboriginal-3df1c47f-04', NULL, 'essay', '利用兩因子設計探討播種密度（兩變級：D1,D2）與播種日期（兩變級：
T1,T2）對作物地上部乾物重之影響，以隨機完全區集設計進行試驗，各
處理變級組合重複 3 次，試驗後取得各處理變級組合地上部乾物重之觀
測值（單位：公斤/公頃）如下表：
區集代號
處理變級組合 I II III 總和
D1T1 19.21 19.37 18.19 56.77
D1T2 25.05 19.53 22.12 66.70
D2T1 23.74 21.51 25.90 71.15
D2T2 25.42 26.67 30.79 82.88
總和 93.42 87.08 97.00 277.5
請填寫變方分析表（1）至（16）欄位數值。（25 分）
變異來源 自由度 平方和 均方 F值 P 值
區集 （1） （6）
播種密度 （2） （7） （10） （14） 0.007
播種日期 （3） （8） （11） （15） 0.029
播種密度與播種
（4） （9） （12） （16） 0.821
日期交感效應
誤差 （5） 28.884 （13）
依據題變方分析表提供之 P 值及下方統計軟體之特奇氏公正顯著
差異法分析結果，論述不同播種密度（density）與播種日期（time）處
理下對於該作物地上部乾物重（y）是否有影響（設顯著水準為 0.05）。
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "a408de0f7ad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "513", "s": "1408", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00106', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-111-545614f0', 'sub-aboriginal-3df1c47f-01', NULL, 'essay', '請試述下列名詞之意涵：（每小題 5 分，共 25分）
救荒作物（emergencecrop）
孤兒作物（orphancrop）
染料作物（dyecrop）
溫室效應（greenhouseeffect）
酸雨（acid precipitation）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "df8d41c07137", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "509", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00107', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-111-545614f0', 'sub-aboriginal-3df1c47f-01', NULL, 'essay', '請回答下列有關香草料作物相關問題：
何謂香草料作物？（5分）
臺灣種植香草料作物須注意事項？（10分）
舉出 5 種適合臺灣平地夏季種植的香草料作物名稱與其用途。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "df8d41c07137", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "509", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00108', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-111-545614f0', 'sub-aboriginal-3df1c47f-01', NULL, 'essay', '請回答下列有關稻的相關問題：
完整寫出兩種栽培稻的學名。（10 分）
請詳細比較三種亞洲型栽培稻的生理特性與植株形態上的差異。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "df8d41c07137", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "509", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00109', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-111-545614f0', 'sub-aboriginal-3df1c47f-01', NULL, 'essay', '請詳細比較並說明綠茶與紅茶製作過程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:26+00:00", "source_pdf_sha1": "df8d41c07137", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "509", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00110', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-111-e4f6108f', 'sub-aboriginal-3df1c47f-05', NULL, 'essay', '俗諺『老樹怕剝皮、不怕空心』，試問：
請劃出並標示樹幹的解剖圖。（10 分）
說明各標示部位的功用。（5 分）
論述『老樹怕剝皮、不怕空心』的原因，並描述施以環狀剝皮後，樹
木生長的變化。（5 分）
假設有一生產樹皮的樹種，在樹齡 5年後開始每年採收，該如何採收
樹皮？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:27+00:00", "source_pdf_sha1": "dc2052a58af8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "509", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL),
  ('aboriginal-3df1c47f-moex-00111', 'aboriginal-3df1c47f', 'aboriginal-3df1c47f-moex-111-e4f6108f', 'sub-aboriginal-3df1c47f-05', NULL, 'essay', '請分別說明土壤pH值對植物生長的影響：
一般而言，栽培作物時，土壤 pH 值的安全範圍為何？請說明原因。
（10分）
在 pH 值 4-5 的土壤栽培結球白菜，可能面臨的問題為何？（10 分）
該如何調整？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:37:27+00:00", "source_pdf_sha1": "dc2052a58af8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "509", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "作物生理學", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "農業技術"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
