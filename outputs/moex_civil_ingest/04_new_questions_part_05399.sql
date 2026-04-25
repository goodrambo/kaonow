-- W1.6 questions batch 5399/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-d0d1b9a2-moex-00505', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-0e802df0', 'sub-heelevel3-d0d1b9a2-05', NULL, 'single_choice', '下列何者並非合理確信案件之結論？', '["由於否定結論基礎之說明段所述事項之影響重大，依本執業人員之意見，甲公司在所有重 大方面未遵循XX法令", "依本執業人員之意見，甲公司之擬制性資訊在所有重大方面係依照XX基準編製", "依據所執行之程序及所獲取之證據，本執業人員未發現（適當方）就甲公司已遵循XX法 令所作之聲明，在所有重大方面有未允當表達之情事", "依本執業人員之意見，（適當方）就已依照XX基準表達重要績效指標所作之聲明，在所有 重大方面係允當表達"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "64ede6b2988b", "answer_pdf_sha1": "770329449bc6", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00506', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'essay', '某公司共有甲、乙、丙三部門，各部門之要求報酬率皆為15%。T年
預計的營運資料如下所示：
部門 營業淨利 投資額 應付帳款
甲 $30,000 $200,000 $7,200
乙 50,000 250,000 2,240
丙 ？？ 100,000 60
為了擴張營運規模，公司需投資$300,000的成本，預期可使整體營業
淨利增加$45,000。該公司以各部門營業淨利占公司淨利的比例，分攤
投資成本及營業淨利予各部門。
由於丙部門未提供足夠的資訊，管理階層遂要求會計人員蒐集該部門
T年的相關資訊，資訊如下：銷貨數量為 31,000、銷貨收入為$76,000、
每單位變動製造成本為$10、固定製造成本為$9,000。部門之行政管理
成本以及總公司分攤的行政管理成本如下：
總公司的行政管理成本為$52,000，並按各部門的行政管理成本為分攤
基礎，分攤總公司行政管理成本給各部門（成本四捨五入至整數位）。
已知甲、乙、丙各部門的行政管理成本分別為$3,000、$6,000、$4,000。
試問：
各部門目前的投資報酬率（Return on Investment）為何？（6分）
各部門目前的剩餘利潤（ResidualIncome）為何？（6分）
若該公司的所得稅稅率為 20%，資金來源包含兩大類：長期負債
（利率為 5%，帳面價值為$5,000，市值為$6,000）及權益（資金成
本率為 10%，帳面價值為$12,000，市值為$14,000）。假設各部門加
權平均資金成本相同，甲部門的經濟附加價值（Economic Value
Added）為何？（加權資金成本計算至小數點第三位）（5 分）
請比較各部門擴張計畫前後績效的狀況，若公司以投資報酬率衡量
績效，那些部門將支持擴張計畫？若以剩餘利潤衡量績效，那些部
門將支持擴張計畫？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00507', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'essay', '某公司為農地拖拉機具的製造商。公司採用分權化制度，將各製造部
門視為單獨利潤中心，各部門可將其產製之產品售予其他部門，或對
外銷售。
按照往例，C部門皆自 A部門購入拖拉機具引擎的零件。然而，A部
門於 T年間引入高科技設備，因此，為達成年度獲利目標，A部門決
定將零件的售價調升至$140，以反映高昂的折舊成本。C部門聽聞後，
想要另尋找外部廠商 B購買，以$120 購入相同的零件。
A 部門的經理於是找上總經理，以尋求解決之道，以下為 A 部門提
供的資訊：
C部門購買引擎零件數（年） 2,000單位
A部門每單位引擎零件變動成本 $100
A部門每單位引擎零件固定成本 30
試作：請列示計算過程（每小題5 分，共 25分）
假設 A部門失去 C部門的訂單後，將造成產能閒置，則 C部門以
$120 自外部供應商購入零件，對公司整體而言造成的損失或利益
為何？
承上題，公司該如何設定移轉訂價，使該價格不僅對 A、C部門有
利，亦對公司整體有利？
假設 A 部門失去 C 部門的訂單後，剩餘的產能可用於其他的生產
作業，預計可替部門節省每年$25,500 的現金，則C部門向外部供
應商購買零件對公司整體利潤的影響？
假設A部門失去C部門的訂單後，將造成產能閒置，且外部供應商
B的售價變為購買1,000單位~1,500單位（含）折扣10%，1,500單
位以上~2,000單位（含）則折扣15%，2,000單位以上則折扣20%，
請問C部門是否應向外部供應商B購買？對公司利潤的影響為何？
若 C部門不跟A部門購買，A部門可以每單位$147 的價格售出，
另支出每單位$12 的行銷成本，將 2,000 單位的零件銷售給外部顧
客。此時，C 部門可自外部供應商 D 以每單位$120 的價格獲得
2,000 單位的零件，但發現須分批採購，一批500單位，採購聯絡
成本每批為$500。試作該情況對公司整體利潤的影響為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00508', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '某公司產銷聯合產品甲及乙，投入聯合成本$180,000 可於分離點產出甲及乙合計 6,000 磅。 二種產品均可進一步加工後再出售，但乙在進一步加工過程會耗損（shrinkage）12.5%。若該 公司採淨變現價值法（NetRealizableValueMethod）分攤聯合成本，分攤給乙的聯合成本為 $135,000。資料彙整如下： 甲 乙 分離點每磅售價 $108 $63 再加工成本 $60,000 $18,000 再加工後每磅售價 $150 $90 若該公司採分離點售價法分攤聯合成本，則分攤給乙產品的聯合成本為何？', '["$126,000", "$135,000", "$140,000", "$144,000"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00509', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '當公司分攤服務部門成本時，使用單一分攤率法相較於雙重分攤率法，下列何者正確？', '["單一分攤率法會促使營業部門主管採用對企業整體一樣有利的決策", "單一分攤率法會使營業部門藉由控制使用量而節省分攤成本", "單一分攤率法會依據預計使用量乘上預計費率計算成本", "單一分攤率法執行成本較低"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00510', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '下列有關服務部門成本分攤的敘述何者錯誤？', '["隨著各營業部門對各服務部門服務使用量的差異提高，三種服務部門分攤方法的差異也會 增加", "相互分攤法在概念上是最精確的，因為它考慮了所有服務部門之間提供的相互服務", "直接法相對簡單，但隨著資訊科技的進步與計算能力的提升，越來越多公司發現已經較容 易執行相互分攤法", "採用梯形法必須選擇部門間分攤之順序，應該按服務部門原始成本的高低排列，從原始成 本最高的服務部門開始分攤"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00511', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '甲公司是一家新成立的電腦產品製造廠商，會計部門整理與公司產品相關的成本資料如下： 直接人工成本 $125,000 直接原料購料成本 $420,000 製造費用 $650,000 該公司第一年期末在製品成本為本期製造成本的10%；期末直接原料存貨成本為當期原料購 貨成本的20%。甲公司目前僅生產一種產品，當期的製成品有80%出售，所有產品的單位成 本都一樣，則該年度製成品成本總額為何？', '["$111,100", "$799,920", "$999,900", "$1,111,000"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00512', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '下列何種產品成本計算制度下之會計分錄，最不可能出現在製品科目？', '["逆算（倒推）成本制度", "分步成本制度", "作業活動基礎成本制度", "作業（混合）成本制度"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00513', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '採用加權平均分步成本制計算加工約當單位成本時，下列何者非為必要的資訊？', '["期初在製品的加工成本", "本期投入的加工成本", "期初在製品加工完工程度", "期末在製品加工完工程度"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00514', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-110-194ec0d9', 'sub-heelevel3-d0d1b9a2-06', NULL, 'single_choice', '當甲公司要將產品從組裝部門轉至測試部門時，其會計分錄為何？', '["借：存貨—組裝部門 貸：在製品—測試部門", "借：在製品—測試部門 貸：應付帳款", "借：在製品—測試部門 貸：製成品—組裝部門", "借：在製品—測試部門 貸：在製品—組裝部門"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:02+00:00", "source_pdf_sha1": "4b3e125ac1b5", "answer_pdf_sha1": "f3b54cbf9472", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "326", "s": "1105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本與管理會計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
