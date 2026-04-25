INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00061', 'cpa', 'cpa-moex-114-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列有關作業審計之敘述，何者正確？', '["作業審計報告必須提供外部人士（如股東、債權人）作為決策參考", "作業審計所蒐集之證據，應作成工作底稿，以佐證其結論或建議", "作業審計涉及企業營運之評估，只能交由內部稽核部門執行，不宜委託外界專家", "內部稽核人員依專業判斷決定作業審計的目標，並進而規劃及執行作業審計工作"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "3220df39efb4", "answer_pdf_sha1": "86d0642657d1", "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00062', 'cpa', 'cpa-moex-114-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司是專門製造環保袋的公司，會計人員蒐集下列六個月的相關資料
如下：
月份 銷售單位
7月 90,000
8月 120,000
9月 210,000
10月 150,000
11月 180,000
12月 120,000
7 月初有製成品存貨 30,000 單位。公司製造部門的生產政策是預留
下個月銷貨量之20%為本期期末製成品存貨。每單位環保袋需要5吋
的環保直接原料，每吋價格為$8。原料存貨水準為下個月需求量的30%。
6 月 1 日的環保直接原料存貨為15,000吋。
試作：
編製甲公司 9 月份與 10 月份之進貨預算表（每月之進貨預算表，請
同時列示數量（吋數）與金額）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "396a5fae2385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00063', 'cpa', 'cpa-moex-114-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司是汽車製造商。當產能充分使用時，每個月可製造10,000單位
的汽車後照鏡，汽車後照鏡的單位成本資料如下：
直接原料 $0.60
直接製造人工 3.00
變動製造費用 1.20
固定製造費用 1.60
小計 $6.40
X1 年 5 月份，甲公司可向外購買該汽車後照鏡 10,000 單位，每單位
購價$6.00。如果甲公司向外購買汽車後照鏡，原廠房設備產能可出
租，每月租金收入為$4,000；此外，因外購汽車後照鏡，每單位可節
省固定製造費用$1.00。
試問：
該月份甲公司製造汽車後照鏡的單位攸關成本為何？（5 分）
針對汽車後照鏡，該月份甲公司採自製或外購決策，那一種較佳？
請說明外購與自製總攸關成本及二者的差異分析。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "396a5fae2385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00064', 'cpa', 'cpa-moex-114-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司經營兩個汽車部門，一為有高性能跑車部門，另一為家庭房車
部門。下列為兩個部門去年的營運資料：
單位：元
跑車部門 家庭房車部門
總資產 $6,500,000 $9,500,000
流動負債 1,200,000 2,000,000
稅前淨利 750,000 1,600,000
試問：（請詳列計算過程，否則不予計分）
甲公司的資金來源有二種：
㉑長期負債$9,000,000，利率 10%
㉒業主權益年底市價$6,000,000，權益資金成本 15%
甲公司所得稅率假設為 35%，試計算該公司的加權平均資金成本
（WACC）。（4 分）
分別計算跑車部門與家庭房車部門的附加經濟價值（EVA）。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "396a5fae2385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00065', 'cpa', 'cpa-moex-114-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司提供專業訂製西服，採用分批成本制及正常成本法，以機器小
時為製造費用分攤基礎。X1 年期末調整前資料如下：
預計數 實際數
銷售批次數 100 110
製造費用 $6,240,000 $ 6,370,000
機器小時 104,000 97,500
銷貨成本 $9,400,000 $10,400,000
變動銷管費用 每批次 $200 每批次 $220
固定銷管費用 $1,800,000 $ 1,850,000
期末製成品 $1,200,000 $ 1,650,000
期末在製品 $1,400,000 $ 970,000
實際使用機器小時為：期末在製品 5,200小時、期末製成品14,300小
時、銷貨成本 78,000 小時。甲公司採成本加成訂價，售價為製造成
本加價 40%。
試問：（金額計算四捨五入到小數點後第 2 位）
若甲公司將多分攤或少分攤製造費用調整至銷貨成本，則調整後營
業淨利為何？（5 分）
若甲公司將多分攤或少分攤製造費用依在製品、製成品、銷貨成本
調整前期末餘額比例調整，則調整後期末製成品為何？（5 分）
若批次 X資料如下：
實際數 預計數
直接原料 $2,000 $1,800
直接人工 $6,000 $6,500
機器小時 22 20
則批次 X之售價為何？（5 分）
若甲公司改採實際成本法，則批次 X之售價為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "396a5fae2385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00066', 'cpa', 'cpa-moex-114-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲公司為兼營營業人當期營業稅銷售額包括應稅銷售額 180萬元（其
中外銷零稅率銷售額 80 萬元）、免稅銷售額 20 萬元；當期進項（均
不含稅）包括一般進項 60萬元及固定資產進項 60萬元，請依加值型
及非加值型營業稅法規定，計算甲公司當期得扣抵進項稅額（5分）
及應納（退）稅額為何？（5分）（未列計算式者不予計分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "994b415074d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00067', 'cpa', 'cpa-moex-114-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲為中華民國國民，居住臺北市已經 30 多年，請依遺產及贈與稅法
及相關法規規定，回答下列問題：（未列計算式者不予計分）
甲於 113年 1月 1 日贈與兒子2 筆商業區土地，市價 6,000萬元，
土地公告現值 3,000 萬元，其兒子應納之土地增值稅 300萬元，並
由甲代其繳納，甲於該年度並無其他贈與行為，則甲該次贈與應課
稅之贈與淨額及應納贈與稅額各為多少元？（6分）
承上題，甲將土地贈與兒子半年後去世，去世時遺有銀行存款 2,500
萬元，名下不動產（含坐落土地）一棟市價4,500 萬元，房屋評定
標準價格450萬元、坐落土地公告現值 600萬元，則甲應課稅的遺
產總額為多少元？（4分）
甲死後，遺有重度身心障礙之妻、25歲之兒子及 18 歲之女兒，兒
子拋棄繼承，遺產由女兒及妻子共同繼承，喪葬費用 150 萬元，本
案遺產稅扣除額合計數為多少元？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "994b415074d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00068', 'cpa', 'cpa-moex-114-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '中華民國境內甲公司 113 年度直接持有境外低稅負國家 A 公司股權
比率 80%，A公司持有境外非低稅負國家（非大陸地區）B 公司股權
比率 60%，A 公司為甲公司之受控外國企業（CFC），A 公司 113 年
度無實質營運活動。甲公司、A 公司及 B 公司之關係企業股權結構
如圖所示，113 年度持有股權比率皆未變動，財務報表稅後盈餘及決
議盈餘分配數資訊如下：
中華民國境內
甲公司
80%
低稅負國家
A公司
60%
非低稅負國家
(非大陸地區)
B公司
㉑甲公司 113 年度不含 A 公司投資收益之源自中華民國境內之課稅
所得額為新臺幣（下同）3,000 萬元。A 公司 112 年度經稽徵機關
核定並無虧損。
㉒ A公司 113年度財務報表稅後盈餘為 8,000萬元，其中包含認列獲
配 B 公司股利所繳納之股利或盈餘所得稅費用 120 萬元。A 公司
113 年度未提列法定盈餘公積或限制盈餘分配。
㉓ B公司 113年6 月 30 日決議分配股利 2,000萬元，並依 B公司所
在國家稅法規定繳納股利或盈餘所得稅 200萬元。B公司 113 年度
財務報表稅後盈餘為 6,000 萬元。
請依所得稅法及營利事業認列受控外國企業所得適用辦法規定，回答
下列問題：（未列計算式及說明計算過程者不予計分）
甲公司計算 113 年度 A公司之當年度盈餘為多少？（7分）
甲公司113年度應認列 A公司之投資收益為多少？（4分）
甲公司113年度營利事業所得稅應納稅額為多少？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "994b415074d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00069', 'cpa', 'cpa-moex-114-9bdab6d6', 'sub-cpa-05', NULL, 'essay', '甲在 A市持有 3筆都市土地，土地資料如下：
申報地價（每平
土地標示 面 積 用地別及使用情形
方公尺單價）
公共設施保留地，未作使用且
新北段1地號 200平方公尺 10,000元
與使用中之土地隔離
依都市計畫法規定設置之供
新北段2地號 500平方公尺 25,000元
公眾使用的停車場用地
新北段3地號 680平方公尺 25,000元 一般用地
若 A 市 113 年累進起點地價為 200 萬元，請依土地稅法規定，計算
113 年甲在Ａ市各筆土地之應納地價稅額為何？（10 分）（未列計算
式者不予計分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "994b415074d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "稅務法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00070', 'cpa', 'cpa-moex-114-9bdab6d6', 'sub-cpa-05', NULL, 'single_choice', '依所得稅法規定，公益信託之信託利益，其課稅時點及課稅主體為何？', '["公益信託因具公益性質，不發生課稅問題", "於信託契約成立年度，對委託人課稅", "於所得發生年度，對受託人課稅", "於信託利益分配年度，對受益人課稅"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:58+00:00", "source_pdf_sha1": "994b415074d0", "answer_pdf_sha1": "4b61d7f7beb9", "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "803", "s": "0203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "稅務法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
