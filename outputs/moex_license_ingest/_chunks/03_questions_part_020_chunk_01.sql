INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00968', 'cpa', 'cpa-moex-106-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲文具公司生產鋼筆，採用實際成本法，以實際產量為製造費用之分攤基礎。
每年固定製造費用及固定銷管費用分別為$42,000 及$20,000。營運第一至二年
生產及銷售資料如下：
第一年  第二年
銷售數量
2,500  2,500
生產數量  3,000  2,000
依據歸納成本法（absorption-costing）編製之第一至二年損益如下：
第一年  第二年
銷貨收入……………………………… $125,000 $ 125,000
減：銷貨成本：
期初製成品存貨……………… $      0 $  10,500
製成品成本…………………… 63,000 56,000
可供銷貨商品………………… $ 63,000 $  66,500
期末製成品…………………… 10,500 0
銷貨成本……………………… $ 52,500 $  66,500
銷貨毛利……………………………… $ 72,500 $  58,500
銷管費用……………………………… 45,000 54,000
淨利………………………………… $ 27,500 $   4,500
若改以變動成本法（variable-costing）編製損益表。試求：
第二年變動成本法下銷貨成本中之變動成本及銷管費用中之變動成本。（5分）
第二年變動成本法下銷貨成本中之固定成本及銷管費用中之固定成本。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "a064df3fb634", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00969', 'cpa', 'cpa-moex-106-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '乙公司為一辦公用品的批發商，總部位於臺北，向製造商購買商品後，在北區、
中區、南區成立三個銷售據點。今年公司首度出現營業虧損，總經理要求會計
部門提供損益表以檢討虧損原因。以下為會計部門所提供的各地區別之損益表：
北區  中區  南區
營業收入    $ 4,500,000 $ 8,000,000 $7,500,000
區域費用：
銷貨成本    1,629,000 2,800,000 3,765,000
廣告費    1,080,000 2,000,000 2,100,000
人事費    900,000 880,000 1,350,000
水電費    135,000 120,000 150,000
折舊費    270,000 280,000 300,000
運送費用    171,000 320,000 285,000
區域費用總和    $ 4,185,000 $6,400,000 $7,950,000
區域營業淨利（損）    $  315,000 $ 1,600,000 ($  450,000)
總部費用：
廣告費    180,000  320,000 300,000
行政費    500,000  500,000 500,000
總部費用總和    $  680,000  $  820,000 $  800,000
營業淨利（損）    ($ 365,000) $  780,000 ($1,250,000)
上表中，銷貨成本與運送費用為變動成本，其餘成本為固定成本。三個銷售據
點規模很接近，每一據點皆各自有銷售經理與業務人員。
試回答下列問題：
以上述會計部門所提供之損益表評估各銷售據點之營運績效有何缺陷？
（4分）
請問總部費用是如何分攤給各地區之銷售據點？你認為該分攤是否合理？請
說明理由。（6分）
試編製一張新的損益表使總經理更能有效評估各銷售據點之營運績效。
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "a064df3fb634", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00970', 'cpa', 'cpa-moex-106-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司生產浴巾，包括高級型與基本型兩類。高級型與基本型分別使用有機棉
與一般棉，每批製造投入的材料成本，有機棉材料成本為$100,000，是一般棉
的兩倍，但每一批一般棉投入可製造基本型浴巾600條，而有機棉一批僅能生
產400條。在加工步驟方面，兩型須依序經過染整、裁剪、車邊與整理等四個
完整生產步驟，但高級型在車邊後還需經過一道電腦刺繡，刺繡的人力成本每
小時$200，每小時可刺繡80條浴巾，繡料成本每批$500。除電腦刺繡外，在每
一生產步驟中，此二型式產品每單位所耗費之資源完全相同，所需材料也都是
在各該步驟啟動時就一次全部投入，只有整理的材料是在結束才投入。甲公司
採作業成本制（operation costing）記錄兩種產品之成本。本月份生產單位數為
高級型2,000條，基本型3,000條。
當月份各生產步驟之成本如下：
染整  裁剪  車邊  整理
直接材料（不含棉材料）  $15,000  $ 9,000  $12,500  $5,000
加工成本  $ 7,500  $15,000  $10,000  $6,000
試作：（單位成本若不能整除，請一律四捨五入至小數點後第二位）
請計算本月份每種型式產品每批之總成本（假設無損壞品）。（8分）
假設在整理部門，浴巾於完工95%進行檢驗，材料於檢驗後投入，正常損壞
品是完好品的 2%，而異常損壞品要列為製造費用。整理部門本月份無期初
存貨，按高級型浴巾與基本型浴巾生產比例，期末共有存貨 600 條（完成
50%），由前一部門轉入的有5,000條，轉至製成品有4,200條，請問兩種浴
巾的期末在製品成本分別為何？（8分）
情況如所述，請問異常損壞的總成本為何？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:11+00:00", "source_pdf_sha1": "a064df3fb634", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00971', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '請依所得稅法及其相關法規規定，計算並回答下列問題：（以下各題分別獨立）
甲公司105年5月15日購置乘人小客車一輛供董事長使用，購置成本350萬元，
耐用年數5年，殘值50萬元，按平均法提列折舊。試問：甲公司105年可提列
之折舊額為若干？（5分）
乙公司本年度營利事業所得稅結算申報時，其營業資料如下，試計算該公司本年
度可認列之全部捐贈金額為多少？（10分）
銷貨收入  $180,000,000
銷貨成本  160,000,000
銷貨毛利  20,000,000
營業費用  16,000,000
非營業收益  2,000,000
非營業損失  1,000,000
帳面所得  5,000,000
該公司營業費用中，包括對政府之捐贈$900,000 與對合法之公益慈善團體捐贈
$600,000。（除捐贈外，其餘各項均符合所得稅法規定）
丙公司於105年10月10日設立並開始營業，採曆年制，年底結算其課稅所得額
為$40,000，則丙公司105年度之營利事業所得稅應納稅額為若干？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00972', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '依加值型及非加值型營業稅法規定，下列各情況應如何報繳營業稅？
外國之事業、機關、團體、組織，在中華民國境內，無固定營業場所，而有銷售
勞務者。（10分）
外國國際運輸事業在中華民國境內，無固定營業場所而有代理人在中華民國境內
銷售勞務。（5分）
外國技藝表演業，在中華民國境內演出。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00973', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '依稅捐稽徵法第39條規定，納稅義務人應納稅捐，於繳納期間屆滿30日後仍未繳
納者，由稅捐稽徵機關移送強制執行，但納稅義務人在那些情形下，稽徵機關應「暫
緩移送」或「撤回」強制執行？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00974', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，境內居住者個人出售適用房地合一課稅之房屋土地，若出售時價格為2,000萬元，重購 之房地價格為1,500萬元，下列敘述何者錯誤？', '["必須自完成移轉登記之日或房屋使用權交易之日起算2年內重購才能適用重購退稅規定", "必須在重購自住房屋、土地完成移轉登記或房屋使用權交易之次日起算5年內申請退稅", "本題重購房地價格低於原出售價格，所以不符合重購退稅規定", "重購之自住房屋、土地，於重購後5年內改作其他用途或再行移轉時，應追繳原扣抵或退還稅額"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00975', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '境內居住者張三於民國105年2月1日購買房地一筆（該日辦妥所有權移轉登記），市價2,000萬元，房 屋評定現值400萬元，土地公告現值800萬元，民國106年1月28日簽約將該屋以2,500萬元出售，並 於民國106年2月10日辦理所有權移轉登記，房屋評定現值380萬元，土地公告現值1,000萬元，張三 未提示因取得、改良及移轉而支付之費用。假設土地增值稅之土地漲價總數額為 200 萬元，應納土地增 值稅40萬元，試問下列敘述何者正確？', '["張三應適用之稅率為45%", "張三所繳納之土地增值稅40萬元可以當成房地合一必要成本費用扣除，以避免重複課稅", "張三獲利460萬元應於隔年5月合併申報綜合所得稅", "個人未提示因取得、改良及移轉而支付之費用者，稽徵機關得按成交價額5%計算其費用"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00976', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依遺產及贈與稅法規定，無特殊情形者，稽徵機關應於接到遺產稅或贈與稅申報書表之日起幾個月內， 辦理調查及估價，決定應納稅額，繕發納稅通知書，通知納稅義務人繳納？', '["1個月", "2個月", "3個月", "4個月"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00977', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，有關境內居住者個人有符合房地合一課稅之交易所得或損失，下列敘述何者正確？', '["不論有無應納稅額，應於房屋、土地完成所有權移轉登記日之次日起算30日內自行填具申報書，向該 管稽徵機關辦理申報", "有獲利則須於房屋、土地完成所有權移轉登記日之次年5月份辦理結算申報", "若出售產生虧損，則無須辦理申報，直接計入當年度綜合所得稅之財產交易損失扣除", "若出售產生虧損，得自交易日以後5年內之房屋、土地交易所得中減除之"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00978', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法及其相關法規規定，有關營利事業辦理資產重估價之敘述，下列何者錯誤？', '["於當年度物價指數較該資產取得年度或前次依法令規定辦理資產重估價年度物價指數上漲達 25%以上 時，得申請辦理資產重估價", "應於其會計年度終了後第二個月內申請辦理", "以申請重估日之上一年度終了日為重估基準日", "如部分資產之重估年度物價指數未超過該資產取得年度物價指數達25%以上，該資產不可辦理重估價"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00979', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，營利事業就全年應納稅額計算當年度應補或應退稅額時，得減除下列何項金額？①暫', '["未抵繳之扣繳稅額", "股利總額所含之可扣抵稅額", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 6, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00980', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得基本稅額條例規定，下列營利事業，何者無須依法計算、申報繳納所得基本稅額？', '["公營事業", "在中華民國境內設有固定營業場所之外國事業", "公有事業", "生產合作社組織"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00981', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，下列各項金額中，何者不得計入當年度股東可扣抵稅額帳戶餘額？', '["以受託人身分經營信託業務所繳納之營利事業所得稅", "民國87年度或以後年度營利事業所得稅結算申報之應納稅額", "因投資於我國境內其他營利事業，獲配屬民國87年度或以後年度股利或盈餘總額所含之可扣抵稅額", "民國87年度或以後年度持有發票日在民國98年12月31日以前之短期票券之利息所得扣繳稅款按持 有期間計算之稅額"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 8, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00982', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '甲公司採曆年制，104年5月15日繳納103年度營利事業所得稅20萬元，104年9月30日繳納暫繳稅 款10萬元，104年12月15日取得利息收入被扣繳稅款1萬元，104年底結算104年度之應納稅額為 10萬元，請問依所得稅法規定104年應計入股東可扣抵稅額帳戶之金額為何？', '["10萬元", "20萬元", "30萬元", "31萬元"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 9, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00983', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法第92條規定，扣繳義務人在當年1月無連續3日以上國定假日時，應於當年何時前將上一年 度內扣繳各納稅義務人之稅款數額，開具扣繳憑單，彙報該管稽徵機關查核？', '["1月底", "2月5日", "2月10日", "2月15日"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 10, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00984', 'cpa', 'cpa-moex-106-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '總機構在我國境外之甲公司，在我國境內提供技術服務，104年度境內營業收入為1,000萬元，設該公司 依所得稅法第25條規定計算課稅所得額，則104年度其應扣繳之所得稅稅額為若干？', '["20萬元", "25.5萬元", "30萬元", "150萬元"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:12+00:00", "source_pdf_sha1": "d6ee7dd2d5b1", "answer_pdf_sha1": "7ebd75063743", "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 11, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL);
