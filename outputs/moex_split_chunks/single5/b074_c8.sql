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
風險（Defaultrisk）和風險貼水（Risk premiums）？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "0cb1c00ed003", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "111", "exam_name": "111年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
