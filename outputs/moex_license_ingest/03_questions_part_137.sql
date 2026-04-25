-- moex_license_ingest questions batch 137/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-01361', 'cpa', 'cpa-moex-103-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列有關政府財務報表審計與績效審計之敘述，何者錯誤？', '["政府績效審計之工作範圍，與財務報表審計相仿", "政府績效審計之發展，相較政府財務報表審計為晚", "政府績效審計相較財務報表審計，較缺乏客觀之衡量標準", "政府績效審計相較財務報表審計，需要較多元化的審計人力背景，始能辦理"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "11136eb40783", "answer_pdf_sha1": "e8b48647d0fd", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 19, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01362', 'cpa', 'cpa-moex-103-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員為確定受查者所提供關係人資訊之完整性，通常可執行下列何項查核程序？', '["複核上期工作底稿，查明已知之關係人", "複核受查者辨認關係人之程序", "查閱股東會、董事會及治理單位會議紀錄", "複核金融機構詢證回函 複核受查者營利事業所得稅申報書"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "11136eb40783", "answer_pdf_sha1": "e8b48647d0fd", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 20, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01363', 'cpa', 'cpa-moex-103-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員執行銷貨交易截止（cutoff）測試時，可能發現以下何者情況？', '["本期銷貨漏列", "期末應收帳款延壓（lapping）入帳", "銷貨退回漏列", "應收帳款高估 員工挪用公款"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "11136eb40783", "answer_pdf_sha1": "e8b48647d0fd", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 21, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01364', 'cpa', 'cpa-moex-103-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '下列有關執行證實程序之時間敘述，何者正確？', '["於期中執行證實程序後，對剩餘期間執行控制測試，並無助於延伸期中查核結論至期末", "為了節省成本，最好將以往查核時經由證實程序所取得之查核證據，沿用作為當期之查核證據", "於期中執行證實程序，再於期末對剩餘期間執行證實分析性程序或細項測試，係屬有效之查核方式", "於期中執行證實程序而未於後續執行額外程序，將增加查核人員未能偵出期末可能存有不實表達之風險 於期中偵出評估重大不實表達風險時未預期之不實表達，應評估是否需修改對相關風險之評估"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "11136eb40783", "answer_pdf_sha1": "e8b48647d0fd", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 22, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01365', 'cpa', 'cpa-moex-103-0e802df0', 'sub-cpa-03', NULL, 'single_choice', '查核人員於查核財務報表時，對受查者是否遵循法令之考量，下列何項敘述正確？', '["未遵循法令事項，係指受查者業務經營涉有違反法令規定之情事，包括管理階層或員工個人從事與受 查者業務經營無關之不當行為", "查核人員應以專業上懷疑之態度，實施查核規劃及執行查核程序，俾能對受查者是否有未遵循法令事 項提高警覺", "查核人員查核財務報表，對未遵循法令事項之發生具有嚇阻作用，也需擔負防範其發生之責任", "某項行為是否未遵循法令規定係屬法令適用問題，判斷該行為是否違反法令，常非查核人員之專業能 力所及 查核人員應特別注意受查者如不遵循即可能導致停業或結束營業之法令"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "11136eb40783", "answer_pdf_sha1": "e8b48647d0fd", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01366', 'cpa', 'cpa-moex-103-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '安亞公司本年7月份有關生產10,000瓶漂白水的資料如下：
直接材料（假設購入材料均投入生產）：
標準成本：每毫公升$0.06
實際總成本：$530,000
每瓶漂白水所允許投入的成本$54
材料數量差異：$1,200有利
直接人工：
標準成本：每小時$124，每小時應完成20瓶漂白水
實際成本：每小時$125
人工效率差異：$3,720不利
試作：（需列示分析過程，否則不予計分）
每瓶漂白水之標準投入量。（2分）
直接材料價格差異。（3分）
直接人工的彈性預算差異與價格差異。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "931ef34bb028", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01367', 'cpa', 'cpa-moex-103-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '甲公司之通訊部門正考慮由下列兩款通訊產品（A、B 型式）擇一研發，該兩
種產品預期開發一年，自第二年起可正式於市場銷售三年，預計每年可銷售
10,000單位，兩種產品單位售價均為$150。下列是預估之相關成本資訊：
A型式  B型式
第一年成本：
研究發展成本  $300,000  $150,000
產品設計成本  $200,000  $100,000
第二至四年每年成本 每年固定成本 每單位變動成本 每年固定成本  每單位變動成本
製造成本  $40,000  $25  $75,000  $25
行銷成本  $20,000  $15  $25,000  $20
顧客服務成本  $10,000  $10  $30,000  $15
不考慮貨幣之時間價值，請回答：
請問甲公司通訊部門應選擇研發那種利潤較高之型式產品？該型式產品生命
週期之利潤率（總利潤除以總銷貨收入）為若干？（計算值請四捨五入至小
數點第二位）（8分）
甲公司每年以各部門利潤來進行績效評估並發放現金紅利，且第二年末通訊
部門主管將屆齡退休，請問若通訊部門主管基於個人紅利之考量，應該會選
擇研發那種型式之產品？此決策是否與公司整體利益產生衝突？甲公司在績
效評估制度上，宜如何改善以解決此問題？（6分）
如果產品之生命週期較目前估計數減少一年（只能於第二年及第三年銷售），
則在每年何種銷量預期下，兩種型式產品之利潤恰好相等？若預期銷量超過
此無差異點，通訊部門應選擇研發那種型式之產品？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "931ef34bb028", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01368', 'cpa', 'cpa-moex-103-17b9ba7b', 'sub-cpa-04', NULL, 'essay', '遠東公司採用分步成本制度，該公司第一生產部門在 X1 年 5 月底有在製品
3,000單位，相關資料如下：
完工程度      約當單位成本
材料  100%  $19.20
加工  60%  15.75
X1年6月份第一生產部門生產成本報告之部分資料如下：
月底在製品數量  4,000
完工程度：材料  100%
加工  50%
本月投入成本：材料  $336,600
加工  260,010
遠東公司採用先進先出法，其第一生產部門6月份材料及加工之約當產量分別
為17,000與16,200單位，試求該部門下列的數量及成本（需列示分析過程，否
則不予計分）：
6月份完工並轉出產品的數量。（3分）
6月份新投入生產的數量。（3分）
完工並轉出產品之成本。（9分）
期末在製品成本。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "931ef34bb028", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "成本會計與管理會計", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01369', 'cpa', 'cpa-moex-103-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '共同成本分攤最常使用的兩種方法為增額成本分攤法（incremental cost-allocation method）與獨支成 本分攤法（stand-alone cost-allocation method），有關此二法描述，以下何者為正確？', '["增額成本分攤法下，如果有兩個以上的額外使用者共同使用設備，則需按照使用金額多寡來排序， 以分攤成本", "增額成本分攤法下，如額外使用者加入後，共同成本並未增加，則額外使用者無須分攤共同成本", "獨支成本分攤法是將服務部門之共同成本按使用部門人工小時相對比例分攤到各部門", "增額成本分攤法比獨支成本分攤法公平"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "931ef34bb028", "answer_pdf_sha1": "0115394f7ee8", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-01370', 'cpa', 'cpa-moex-103-17b9ba7b', 'sub-cpa-04', NULL, 'single_choice', '以下是有關於作業基礎成本制度（activity-based costing systems）的陳述：①當間接成本占總成本之', '["當產品種類較多時，且所需資源差異甚大，較適合 實施作業基礎成本制度", "當產品對間接資源之需求較為相同時，實施作業基礎成本制度會產生較 大的利益", "各部門有其自己的作業，不同作業都有其成本分攤率時，則依部門成本制度的結果會 與作業基礎成本制度相近 請問以上陳述何者正確？", "僅"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:14+00:00", "source_pdf_sha1": "931ef34bb028", "answer_pdf_sha1": "0115394f7ee8", "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "803", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "成本會計與管理會計", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
