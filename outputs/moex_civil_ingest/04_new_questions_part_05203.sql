-- W1.6 questions batch 5203/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00289', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '圖三所示之電路中，V =100∠0°為電源v (t)=100cos ωt 的相量（phasor）
s s
表示法，其中ω為頻率（單位：rad/sec）。（每小題 10 分，共 20分）
( )
當負載為一阻抗時，試求能傳送至負載的最大功率及此時之負載值。
當負載為一電阻時，試求能傳送至負載的最大功率及此時之負載值。
V=100∠0°
s
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:03+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00290', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-110-61c8fe92', 'sub-heelevel3-8ec6300d-05', NULL, 'essay', '圖四為一濾波電路，其中v 和v 分別為輸入與輸出電壓，其轉移函數
s
V (jω)
（transferfunction）H jω = o 為頻率ω（單位：rad/sec）的函數。
o
V (jω)
s
Vo(jω)
試 推 導 圖 四  電 路 的 轉 移 函 數 H jω = ， 並 以
( )
Vs(jω)
K×(jω) m (1+jωB )
H jω = k=1 k 之形式表示之，並求式中之K和 c。（10 分）
( )
cn (1+jωA )
k=1∏ k
( ) ∏
R R3
2
－
+ R
4
R1
+ + +
v C v v C2 v
s 1 a b o
－ － －
圖四
圖四為圖四之轉移函數的波德圖（Bode Plot）漸近線，若
C =C =1 μF且R =10 kΩ，試求R 、R 、R 。（15 分）
1 2 2 1 3 4
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:03+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "378", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00001', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'essay', '會計師執行財務報表查核之際，可能採用他人之工作，請依據我國目
前審計準則之規定，回答下列問題：
請列示會計師執行財務報表查核之際，可能採用他人之工作有那幾
種？（3分）
會計師決定是否採用他人之工作，要考量之因素為何？請就各情境分別
詳細說明。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00002', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'essay', '查核人員於查核財務報表之際，在查核規劃階段，必須決定財務報表
整體重大性（Materialityforthefinancialstatementsasawhole）、執行重
大性（Performancemateriality）及顯然微小（Clearlytrivial）之不實表
達等三個重大性門檻。另不實表達分類為實際不實表達（Factual
misstatements）、判斷性不實表達（Judgementalmisstatements）及推估
不實表達（Projected misstatements）。請回答下列問題：
請說明三個重大性門檻之關係為何？（4分）
請問那二種情境下，查核人員可做出其查核之財務報表並無重大不
實表達的結論。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00003', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'essay', 'A公司於2020年導入企業資源規劃系統，以利公司處理龐雜之營運財
務作業。查核該公司2022年度財務報表之B會計師，擬採用自動化工具
及技術，查核銷貨收入與應收帳款。請依據我國目前審計準則之規定，
回答下列問題：
當受查者係存在複雜之資訊系統（例如企業資源規劃系統），則查核
人員須瞭解與資訊系統攸關之「資訊科技環境」，請詳細說明理由與
內容。（3分）
採用自動化工具及技術，執行銷貨收入與應收帳款之風險評估程序，
可執行那些查核程序？（4分）
B會計師取得一EXCEL檔，包括公司之呆帳提列政策以及2022年底
之應收帳款明細帳檔案，相關資訊如下。擬採簡化法之帳齡分析法，
執行應收帳款的評價－預期信用減損損失估計（AccountReceivable
－ExpectedCreditLoss）之查核，請以EXCEL語法列出帳齡分析表。
（15分）
A B C D E F
1 客戶 到期日 應收帳款 截止日 帳齡期間 呆帳率
2 Bernier 2022/4/29 $330,000 2022/12/31 逾期1-60天 1%
3 Kuphal 2022/5/25 482,000 逾期61-90天 3%
4 Homenick 2022/5/20 650,000 逾期91天 10%
5 Kuphal 2022/6/12 426,000
6 Bernier 2022/7/13 654,000
7 Kuphal 2022/8/14 94,000
8 Boehm 2022/9/14 82,000
9 Homenick 2022/10/25 21,000
… … …
99 Kuphal 2022/12/1 94,000
100 Boehm 2022/12/25 58,000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00004', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '下列何者係屬審計準則委員會所發布規範會計師服務案件準則總綱所稱之直接案件？①編製', '["永續發展報告作第三方確信", "會計師代編服務", "僅", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": "4372d45127c4", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00005', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '下列何者係屬會計師可於查核報告中納入強調事項段之情況？① 對財務報表具重大影響之新', '["對以前年度財務報表所表示之意見已予更新，且與前期所表示者不 同", "對受查者財務狀況或財務績效具重大影響之災害", "重大訴訟或監管措施未來結果之 不確定性", "僅"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": "4372d45127c4", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00006', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '依據品質管理準則1號「會計師事務所之品質管理」，下列何者並非屬於會計師事務所品質管 理制度之八項組成要素？', '["資源", "品質目標", "資訊及溝通", "治理及領導階層"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": "4372d45127c4", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00007', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '管理階層於財務報表附註後揭露有關該公司於全球各區域廣告支出的明細，以提供財務報表 使用者額外的分析。會計師對該資訊的處理方式，下列何者並不適當？', '["會計師應要求管理階層標示該資訊未經查核", "會計師應評估該等補充資訊之表達方式是否能使其與經查核之財務報表明確區分。若未能 明確區分，應要求管理階層變更該等補充資訊之表達方式", "應對該資訊進行查核，查核意見應涵蓋該資訊", "會計師應閱讀該資訊，確認是否與財務報表之資訊一致"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": "4372d45127c4", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL),
  ('heelevel3-988e0de1-moex-00008', 'heelevel3-988e0de1', 'heelevel3-988e0de1-moex-112-0e802df0', 'sub-heelevel3-988e0de1-01', NULL, 'single_choice', '依審計準則570號規定，查核人員於風險評估時辨認出受查者存有繼續經營能力可能產生重 大疑慮之事件或情況，下列敘述何者錯誤？', '["查核人員判斷受查者管理階層採用繼續經營會計基礎編製財務報表係屬不適當時，應表示 「否定意見」", "查核人員判斷管理階層並無意圖清算或停止營業，或除清算或停業外別無實際可行之方案， 惟有繼續經營之能力可能產生重大疑慮之事件或情況仍存有重大不確定性，且其財務報表 已作適當揭露，會計師應於查核報告中納入「繼續經營有關之重大不確定性」段", "查核人員判斷受查者管理階層採用繼續經營會計基礎編製財務報表係屬適當，惟有繼續經 營之能力可能產生重大疑慮之事件或情況仍存有重大不確定性，且其財務報表未作適當揭 露，會計師可能因此表示「保留意見」或「否定意見」", "管理階層對繼續經營能力評估僅6個月（自財務報導結束日起算），並拒絕查核人員延伸評 估之要求，會計師可表示「保留意見」或「否定意見」"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "1731d19687e2", "answer_pdf_sha1": "4372d45127c4", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "326", "s": "1107", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "財務審計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
