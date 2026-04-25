-- moex_license_ingest questions batch 76/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00127', 'real-estate-appraiser', 'real-estate-appraiser-moex-108-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '地上權與區分地上權兩者在估價方法上有何異同？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "3bc3ba560f97", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00128', 'real-estate-appraiser', 'real-estate-appraiser-moex-108-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '何謂 BOT（Build-Operate-Transfer）？民間機構打算參與投資 BOT案，
所需進行之投資分析事項有那些？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "1b9aac9a768d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00129', 'real-estate-appraiser', 'real-estate-appraiser-moex-108-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '何謂淨現值法（Net Present Value Method）？何謂內部報酬率法（Internal
Rate of Return Method）？並請論述不動產投資者如何運用此兩種方法進
行投資分析？另此兩方法何時會發生決策衝突？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "1b9aac9a768d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00130', 'real-estate-appraiser', 'real-estate-appraiser-moex-108-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '何謂不動產投資之槓桿比率（Leverage Ratio）與風險值？請以下列假設
資料，說明槓桿比率與風險值各為多少？（25 分）
假設資料：某項不動產投資時之市場價值為 1億元，淨年租金收益為 400
萬元，投資者向金融機構融資（借款）5,000 萬元投資，融資年利息支
出為 120 萬元，未來可能之市場變動如下： 上漲機率為 60%，市場價
值上漲 20%，淨年租金收益為 460 萬元； 下跌機率為 40%，市場價值
下跌 20%，淨年租金收益為 360萬元。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "1b9aac9a768d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00131', 'real-estate-appraiser', 'real-estate-appraiser-moex-108-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '王先生向銀行貸款 1,000萬元購屋，貸款期間為 20 年，年利率為 2.0%，
請利用附表計算： 按月付息，本金到期一次還清； 本金定額償還
（Constant Amortization Mortgage）； 本息定額償還（Constant Payment
Mortgage），三種還款方式分別需付給銀行之利息總額。（25 分）
附表：利率因子', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "1b9aac9a768d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
