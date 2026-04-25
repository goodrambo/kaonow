-- moex_license_ingest questions batch 74/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00062', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', 'A不動產證券化基金擬投資購買整棟商辦大樓，以該大樓出租收益做為
基金之配息來源。請問應選用何種估價方法評估該棟大樓價格最為適
當？並請詳述選用該估價方法之理由及依據。此估價方法應依循之估價
原則為何？請至少列舉三種估價原則並詳細說明其與該估價方法之
關係。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "7a368711a4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00063', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '一般購買都市計畫區內之公共設施保留地應如何評估？其與土地徵收
公共設施保留地前應先與所有權人協議價購之估價有無不同？又應如
何查估？請詳述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "7a368711a4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00064', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '路線價係指設在面臨街道之標準宗地的單位地價，此標準宗地與目前政
府單位查估之基準地有無不同？基準地制度建立完善後對我國公告土
地現值查估有何影響？請詳述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "7a368711a4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00065', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '依不動產估價技術規則之規定，建築物累積折舊額之計算可選擇那些途
徑之折舊方法？每種途徑請各列舉一種方法說明並比較其優缺點。請詳
述之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "7a368711a4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00066', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '請說明以下辦理浮動利率抵押貸款（Adjustableratemortgages,ARMs）
的重要條件項目內容：㉑指標（Index）、㉒重設日期（Reset date）、
㉓上下限（CapsandFloors）、㉔閉鎖期（Lockouts）及㉕負償債（Negative
amortization）？（15分）
近年來，中央銀行連續升息，試問對購屋借款人（Borrower）和貸款
人（Lender）而言，各自面臨那些利率風險（Interest rate risk）、違約
風險（Defaultrisk）和風險貼水（Risk premiums）？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "0cb1c00ed003", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00067', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '請說明收益性不動產在中性財務槓桿下的：
損益平衡利率（Break-EvenInterestRate）？（5分）
當融資貸款的實際利率大於或小於損益平衡利率時，對投資者的稅後
權益內部報酬率（After-TaxIRRonequityinvested,ATIRR ）會造成何
E
種影響？（10分）
假設投資者評估貸款60%和80%二種情況，當融資貸款的實際利率小
於損益平衡利率時，對投資者的稅後權益內部報酬率和借貸雙方的風
險會產生何種影響？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "0cb1c00ed003", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00068', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '某企業考慮購置一間辦公室，經市場情境分析評估顯示：
情境一：目前市場處於供需均衡，預估辦公室第1 年的營運淨收入（Net
operatingincome,NOI）是 1,000,000 元，且之後每年呈 3%穩定
增加，並預測自第 6 年起到該不動產經濟壽命結束為止，均維
持相同的成長率。
情境二：市場短期處於供給過剩，造成前 3年每年的營運淨收入均維持
在 1,000,000 元不變，但自第 4年起營運淨收入每年又呈 3%穩
定增加，並預測自第 6年起到該不動產經濟壽命結束為止，也
都維持相同的成長率。
假設市場的期望報酬率均是 13%，試問上述二種市場情境下：
第 5年年底的回復價值（Reversionvalue,REV）或再出售價格（Resale
price）是多少？（5 分）
投資案的現值（Present value）是多少？（10 分）
第 1年的資本還原率（Capitalrate）是多少？（5 分）
當市場處於供給過剩的情況下，對該不動產的價值和利率的影響為何？
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "0cb1c00ed003", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00069', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '假設有一塊素地可以開發為如下四種使用：
用途 第 1 年 NOI IRR 每年成長率 g 建物成本
辦公大樓 5,000,000元 13% 3% 40,000,000 元
零售商場 6,000,000元 13% 5% 67,500,000 元
公寓 4,500,000元 12% 3% 30,000,000 元
倉儲 4,000,000元 10% 2% 40,000,000 元
試問土地開發成那種用途是最高和最佳使用（Highestandbestuse）？
（15 分）
假設這塊基地上有一座舊倉儲，目前每年能產生 2,500,000 元的 NOI，
因為是舊倉儲，每年成長率 g只有 1%，IRR=13%，試問是否應該要
拆除舊倉儲改作其他用途？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "0cb1c00ed003", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00070', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '假設有兩位投資者 A、B，各持有相當數量的自用住宅（OH）與出租住
宅（RH），A 對 RH 的評價高於 OH，但擁有較多的 OH、較少的 RH；
B則對 OH的評價高於 RH，但擁有較多的 RH、較少的 OH。一開始時，
兩人對這兩種住宅的持有數量並不滿意，則須透過怎樣的互相交易活
動，才能使之達到 Pareto 最適狀態？請繪製 Edgeworth 箱型圖加以說明
並評述該理論應用之限制處。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "19674fc33f32", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00071', 'real-estate-appraiser', 'real-estate-appraiser-moex-111-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '假設某購物中心一定數量土地僅供少數銀行業（B）、多家服飾店（C）
兩種用途使用，則其達到市場均衡時，B、C的均衡租金與土地用量如何
決定？又假定所有基地都歸一人所有，並且來自購物中心外場地的競爭
受到限制，使該所有權人得以進行差別取價，為求其利潤極大化，此時
B、C兩種用途的土地數量與租金又該如何決定？請繪圖說明之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "19674fc33f32", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
