INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00385', 'cpa', 'cpa-moex-111-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員採用單位平均數估計法(mean per unit) 測試受查者帳上存貨是否存有重大不實表達，下 列為測試後所得的資訊： 帳列金額 $800,000 點估計 $791,000 抽樣風險限額 ±$24,000 可容忍錯誤金額 ±$55,000 根據上列抽樣結果，請問查核人員可作何種結論？', '["推論帳上存貨未存有重大不實表達", "推論帳上存貨可能存有$55,000不實表達", "推論帳上存貨可能存有$9,000不實表達", "推論帳上存貨可能存有$24,000不實表達"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "16c9f593d647", "answer_pdf_sha1": "a6333c6eea94", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00386', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司採分批成本制度，預計 X1年將發生直接原料成本$8,600,000、
直接人工成本$3,600,000，製造費用預計有機器加工成本$1,800,000
及填裝殺菌成本$5,400,000 共$7,200,000。機器加工成本按機器小時
數分攤，X1 年預計將使用產能為50,000機器小時，填裝殺菌成本按
直接人工成本分攤。X1 年 8 月期間，甲公司生產兩批訂單，相關成
本資料如下：
批號 801 批號 802
直接原料 $40,000 $56,000
直接人工 $45,000 $70,000
其他資料如下：
⑴訂單批號 801使用 200 機器小時，批號802使用 500機器小時。
⑵X1 年 8 月實際發生之機器加工成本為$28,000，填裝殺菌成本為
$171,770。
⑶批號 801及批號 802之產品均於 X1 年 8 月完工轉入製成品倉庫。
試作：（單位成本若不能整除，請一律四捨五入至小數點後第二位）
計算各批號產品 8 月份應分攤之機器加工成本、填裝殺菌成本及總
成本。（8分）
計算 X1 年 8月份之多（少）分攤之機器加工成本及填裝殺菌成本。
（4 分）
若批號 801 共計生產 2,000 單位產品，其中非常損壞品共計 40 單
位，均係於完工檢驗時發現，且無任何出售價值。計算批號 801之
完好產品單位成本，並作損壞品之分錄。（4分）
若批號 802 共計生產 3,000 單位產品，其中損壞品共計 30 單位，
為該批產品特有原因造成的正常損壞，均係於完工檢驗時發現，且
無任何出售價值。計算批號802之完好產品單位成本，並作損壞品
之分錄。（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00387', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '臺北公司生產飲料，甲部門負責混合飲料，混合好的飲料由乙部門進
行殺菌消毒並包裝；甲部門使用加權平均分步成本制，乙部門使用先
進先出分步成本制。乙部門的包裝原料於製程完成時投入，加工成本
在製程中均勻投入。製程達到 80%時檢驗是否為損壞品，損壞品之淨
處分價值為$0，估計正常損壞品占完好品的 5%。乙部門 10月份資訊
如下：
實體單位 轉入成本 直接原料 加工成本
期初在製品存貨（期初完工程度70%） 37,800 $101,094 $0 $70,425
本期開始生產 73,800
本期投入成本 $99,270 $17,280 $122,535
本期完工且轉出 79,200
期末在製品存貨（期末完工程度90%） 25,200
計算乙部門 10 月份下列資訊（約當單位成本請四捨五入至小數點下
第四位）：
完工轉出單位的成本總額（請四捨五入至整數）。（5分）
期末在製品存貨成本（請四捨五入至整數）。（5 分）
正常損壞品成本（請四捨五入至整數）。（5分）
異常損壞品成本（請四捨五入至整數）。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00388', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司生產及銷售高端的智慧型手機，單位售價為$1,250、製造成本
$1,000，目前每年銷售 2,000 支手機。由於科技的進步，競爭對手即
將於市場推出新款智慧型手機，預計單位售價為$1,220。面對智慧型
手機的推陳出新，甲公司管理階層認為此款智慧型手機應該訂價低於
$1,220，才具有市場競爭力；且根據行銷部門的調查，調降售價將帶
來甲公司手機銷售量 10%的成長。
試問：（請詳列計算過程，否則不予計分。計算過程中若有除不盡，
一律四捨五入後取至小數點第三位。）
假如甲公司調降智慧型手機售價至$1,220，目標營業利益為銷貨收
入的 15%，試求甲公司智慧型手機的單位目標成本。（3 分）
假如甲公司調降智慧型手機售價至$1,220，製造成本維持不變，且
手機銷售成長如行銷部門所預期。試求手機降價前後，甲公司營業
利益之變化。（3分）
假如甲公司欲維持手機降價前的營業利益，而手機達到行銷部門所
預期之銷售量成長，試求甲公司新的單位目標成本。（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00389', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '甲公司20X1年度之營業槓桿係數（degreeofoperatingleverage）為4，銷貨收入為$2,000,000， 邊際貢獻率為0.3。若20X2年度銷貨收入為$3,000,000，則其預期營業利潤為多少？', '["$600,000", "$300,000", "$450,000", "$900,000"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00390', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '甲公司的機器小時（成本動因）及電力費用，最近七個月之資料如下： 月份 機器小時 電力費用（元） 三月 7,300 73,000 四月 8,000 76,000 五月 7,000 75,000 六月 11,000 107,000 七月 17,900 120,000 八月 18,000 130,000 九月 17,900 124,000 用高低點法，估計15,000小時電力費用的金額（變動成本率請計算至小數點後一位，第二位 四捨五入）。', '["$115,000", "$112,000", "$113,810", "$123,810"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00391', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '當公司要建立產品製造實務標準（practicalstandards）時，會考慮下列那項因素？', '["當不正常機器停擺造成的生產閒置時間", "極端不正常的直接材料損壞比率", "大量直接材料採購的折扣", "短期生產線工程師的延遲造成的生產力損失"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00392', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '甲公司計劃20X2年1月份銷售A產品800,000單位，並且預期當年每個月的銷售成長率為 20%，每個月要求的期末存貨為下個月估計銷售量的40%，20X1年年底的期末存貨為160,000 單位，甲公司20X2年1至4月底，應該生產多少單位的A產品？', '["4,790,848單位", "4,294,400單位", "3,790,848單位", "4,797,952單位"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00393', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '唐寧茶行有兩款紅茶系列：大吉嶺與阿薩姆，相關資訊如下： 預算數 實際數 大吉嶺 阿薩姆 大吉嶺 阿薩姆 銷售量（公斤） 5,500 6,000 5,830 5,760 每公斤售價 $120 $80 $110 $85 每公斤變動成本 $90 $65 $85 $70 廠務層級之固定成本預算數及實際數分別為$225,000 與$200,550。邊際貢獻之靜態預算差異 為多少？', '["$22,850不利", "$29,150不利", "$24,450有利", "$6,300有利"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00394', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '甲公司每年訂購原料6次，每次的訂購處理成本為$100；每次的缺貨成本為$500，由於此項 原料十分特殊，其每單位安全存量之持有成本為$50，每單位的進貨成本為$25，在不同水準 下的安全存量及缺貨機率如下： 安全存量（單位） 20 40 60 80 缺貨機率 60% 20% 15% 5% 則下列有關甲公司最適安全存量的敘述何者最為正確？', '["最適的安全存量水準是20單位，因為在此水準下缺貨成本最低", "最適的安全存量水準是40單位，因為在此水準下存貨的相關成本最低", "最適的安全存量水準是20單位，因為在此水準下存貨的持有成本最低", "最適的安全存量水準是80單位，因為在此水準下缺貨成本最低"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00395', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '寶星公司的甲部門生產與銷售單一產品。甲部門年度的單一產品資料如下所示： 單位售價 $50 單位變動成本 $30 總固定成本 $200,000 平均營業資產 $750,000 最低要求報酬率 12% 若甲部門的經理欲達到剩餘利潤（residualincome）$45,000，為達成此目標，甲部門今年需銷 售多少單位產品？', '["14,500單位", "16,750單位", "18,250單位", "19,500單位"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00396', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '流程價值分析（process valueanalysis）是作業基礎成本管理制度中的重要環節，流程價值分 析可能產生何種功能？', '["降低成本庫的數量", "將所有成本都放在一個成本庫內", "分攤率是基於廣泛平均值的觀念", "有助持續改進作業效率"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 8, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00397', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '甲公司出售一項機器設備售價為$67,200，其原始成本為$512,000，累積折舊為$224,000。甲公 司適用所得稅稅率20%，甲公司處分機器設備之稅後現金流量為何？', '["$67,200", "$89,600", "$111,360", "$199,680"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 9, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00398', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '精密公司目前正在評估一項新產品製程，相關資料如下： ㉑每年的銷售單位數等於生產單位數 ㉒新產品第1年的售價為$10，以後每年售價調漲$2 ㉓精密公司有4條生產線，每年每條生產線的整備成本為$5,500 ㉔每年每條生產線可以製造3,000個新產品 ㉕每年每條生產線的直接成本為$11,000 ㉖每年每條生產線的間接成本為$6,200 ㉗新產品的單位運送成本為$2 ㉘新產品的單位客戶服務成本為$1 ㉙新產品第1年投入發展成本$8,000，並預期未來三年將持續投入相同的金額 精密公司第1年新產品營業利益(損失)為多少？', '["($6,800)", "($14,800)", "$5,200", "$29,200"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 10, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00399', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '當以下情況發生時，何者將產生有利的銷售組合差異（sales-mixvariance）？', '["實際銷售單位數大於預算銷售單位數", "實際銷售組合轉向較不獲利的銷售單位數", "實際銷售組合的預計邊際貢獻大於預計銷售組合的預計邊際貢獻", "實際邊際貢獻大於靜態預算邊際貢獻"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 11, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00400', 'cpa', 'cpa-moex-111-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '甲公司主要生產西式糕點，目前正考慮是否更換一個新的烤箱，主要基於新式烤箱可以節省 部分的營運成本。以下為舊式烤箱及新式烤箱的相關資訊： 舊式烤箱 新式烤箱 原始成本 $112,000 $190,000 年度營運成本 $45,000 $30,000 年度折舊 $10,000 $22,500 累積折舊 $20,000 — 舊式烤箱的目前殘值 $54,800 — 未來8年的估計殘值 $0 $0 剩餘年限 8年 8年 甲公司評估以新式烤箱取代舊式烤箱所節省之營運成本，可使得未來8年的營業利益：', '["降低$37,200", "提高$60,000", "降低$100,000", "提高$120,000"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:04+00:00", "source_pdf_sha1": "eccb4a808f75", "answer_pdf_sha1": "4b4b68825e00", "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 12, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  (id)
ON CONFLICT (id) DO NOTHING;
