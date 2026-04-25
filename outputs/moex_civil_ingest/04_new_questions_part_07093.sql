-- W1.6 questions batch 7093/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-d0d1b9a2-moex-00494', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-78566e18', 'sub-locality-d0d1b9a2-01', NULL, 'single_choice', '臺南公司2020年7月1日發行10年期公司債，面額$10,000,000，票面利率未知，每年6月', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "e7d62f420309", "answer_pdf_sha1": "1da4fc535389", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1510", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 20, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00495', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-78566e18', 'sub-locality-d0d1b9a2-01', NULL, 'single_choice', '日付息，發行時扣除相關成本後淨收取現金$11,622,179，當時市場利率為 4%，公司採利 息法攤銷折溢價。已知2021年6月30日債券之帳面價值為$11,487,066，公司於2022年6月', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "e7d62f420309", "answer_pdf_sha1": "1da4fc535389", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1510", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 30, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00496', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-78566e18', 'sub-locality-d0d1b9a2-01', NULL, 'single_choice', '日付完利息後以 102 之價格收回半數公司債，請計算贖回損益：（金額請四捨五入至整數 位）', '["損失$573,275", "利得$573,275", "損失$1,146,549", "利得$1,146,549"]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "e7d62f420309", "answer_pdf_sha1": "1da4fc535389", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1510", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 30, "answer_corrected": false, "flags": ["answer_missing"], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00497', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'essay', '有關查核人員於查核財務報表時，對財務報表之金額及揭露不具直接
影響之法令遵循，審計準則公報第七十二號「查核財務報表對法令遵
循之考量」規定，查核人員對該等法令之查核責任僅限於執行特定查
核程序，以辨認該等法令可能對財務報表具重大影響之未遵循法令事
項。試問：查核人員對財務報表之金額及揭露不具直接影響之法令的
遵循，負有執行那些特定證實程序（substantiveprocedures）的責任？
（18 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00498', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'essay', '您是甲上市公司財務報表的簽證會計師，您想要在出具的無保留意見
查核報告中說明下列事項，試問：您應於查核報告中的那一段說明下
列相關之事項。（16 分）
事項1： 您想向財務報表使用者溝通當年度的查核規劃，如重大性
（包括執行重大性）、重要組成個體及查核範圍的決定。
事項2： 甲公司連續數年虧損，而下年度亦將有銀行的借款到期，您
判斷公司似乎存有繼續經營上的疑慮，惟經您謹慎地執行
適當之查核程序並取得查核證據後，您認為管理階層的因
應措施可以消除您對該公司有關繼續經營上的疑慮。
事項3： 甲公司的某一個重要組成個體係由另一家會計師事務所查
核，您採用該事務所之查核報告作為集團財務報表查核結
論依據的一部分，而您想在查核報告中提及其他會計師。
事項4： 甲公司當年度對存貨由先進先出法改為加權平均法，對比較
財務報表的一致性造成影響，管理階層已於財務報表附註加
以揭露，惟您想提醒財務報表使用者注意此一會計政策變動。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00499', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'essay', '某一上市公司，由於連續數年皆發生虧損，會計師於今年查核時又發
現該公司有流動性的疑慮，因此認為該公司存有繼續經營的不確定
性。於是會計師規劃及執行適當之查核程序，並取得足夠及適切之查
核證據。請根據下列兩個獨立的情況，說明會計師應對今年度財務報
表出具何種意見之查核報告，並在那一段說明有關繼續經營的不確定
性的相關事項（假設會計師認為應向財務報表使用者說明相關事項，
且並未發現其他重大不實表達）？（16 分）
情況 1：會計師認為管理階層採用繼續經營會計基礎編製財務報表係
屬適當，但查核證據顯示受查者繼續經營之能力存在重大不
確定性，惟財務報表已對重大不確定性作適當揭露。
情況 2：因查核證據顯示管理階層對繼續經營之能力存在重大不確定
性情況已有適當之因應對策，且管理階層亦於財務報表中充
分說明相關之因應對策，故消除了會計師對繼續經營能力存
在不確定的疑慮。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00500', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'single_choice', '有關「關鍵查核事項段」，下列敘述何者錯誤？', '["原則上，上市（櫃）公司財務報表查核報告中，一定要包含關鍵查核事項段", "當會計師因某一事項而須表示修正式意見時，應於查核報告中關鍵查核事項段溝通該事項", "除非法令另有規定，無保留意見、保留意見、否定意見之查核報告中得包括關鍵查核事項段", "會計師不應於查核報告之關鍵查核事項段中，敘述使受查者繼續經營之能力可能產生重大 疑慮之事件或情況的重大不確定性事項"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": "6df25b623a35", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00501', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'single_choice', '查核人員於了解受查者目標、策略及可能導致財務報表重大不實表達風險之相關營業風險時， 下列事項何者需納入考量？', '["受查者無法符合條款規定將喪失融資之潛在風險", "對會計規範之應用不完整或不適當之風險", "資訊系統與作業流程不相容之風險", "產品需求無法精確估計之潛在風險"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": "6df25b623a35", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00502', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'single_choice', '集團主辦會計師在其查核報告中提及部分之查核係由其他會計師執行，有關由其他會計師查 核之比重應放在查核報告的那一個段落中？', '["查核意見之基礎段", "關鍵查核事項段", "會計師查核財務報表之責任段", "其他事項段"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": "6df25b623a35", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00503', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-0e802df0', 'sub-locality-d0d1b9a2-05', NULL, 'single_choice', '下列關於會計師之獨立性的敘述，何者錯誤？', '["會計師之獨立性，會與正直、公正客觀相關聯，如其缺乏或喪失獨立性，將影響正直及公 正客觀之立場", "獨立性僅受到自我利益、自我評估及脅迫這三個因素而有所影響", "獨立性受自我利益影響，係指經由審計客戶獲取財務利益，或因其他利害關係而與審計客 戶發生利益上衝突", "獨立性受自我評估影響，指其執行非審計案件所出具報告或判斷，於執行財務資訊之查核 或核閱過程中作為結論之重要依據"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:09+00:00", "source_pdf_sha1": "0e5dce46d5c3", "answer_pdf_sha1": "6df25b623a35", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1503", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "審計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
