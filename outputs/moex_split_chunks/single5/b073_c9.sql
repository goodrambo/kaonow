-- moex_license_ingest questions batch 73/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00017', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '收益法（40分）
㉑民國113年1月到民國113年8月價格日期房租指數無調整皆為100%。
㉒勘估標的與比較標的位在同一個區域，區域因素一致。
㉓比較標的為成交租金，無須進行情況調整。
㉔勘估標的與比較租賃標的租金案例分析表，如下表。
項目 勘估標的 比較租賃標的一 比較租賃標的二 比較租賃標的三
地址 中正路100號12樓中正路20號17樓中正路40號12樓 中正路50巷1號5樓
建物面積
133 145 77 180
（平方公尺）
年總租金
170,520 101,640 216,000
（元/年）
空置率 2個月 2個月 2個月
押金 2個月 2個月 2個月
屋齡 15 15 16 11
㉕勘估標的及比較租賃標的資料及調整率表，如下表。
結構 鋼筋混凝土造 鋼筋混凝土造 鋼筋混凝土造 鋼筋混凝土造
建物條件 相當 相當 相當 相當
區位條件 相當 相當 相當 相當
勘察日期 113.8.16 113.8.16 113.8.16 113.8.16
租金價格日期 113.8.16 113.3.16 113.4.16 113.7.16
交易型態 交易租金 交易租金 交易租金
價格日期
100% 100% 100%
調整率
區域因素
100% 100% 100%
調整率
個別因素
99% 103% 100%
調整率
㉖勘估標的其他相關資料說明：
⑴勘估標的面積：土地10.58平方公尺、建物面積為 133平方公尺。
⑵租賃空置損失 2 個月的閒置率。
⑶押金 2個月，押金利率為 1%。
⑷地價稅的申報地價 10,648 元/平方公尺，基本稅率 2‰。
⑸房屋稅核定現值 3,000 元/平方公尺，房屋稅率為 3.6%。
⑹房屋管理維修費每個月 2,000 元。
⑺收益資本化率請以加權平均資金法 WACC計算，自有資金 30%，自
有資金利率 1%，貸款 70%、貸款利率 3%。
⑻不動產估價師在製作收益法估價報告書時，請說明不動產估價技術
規則對於製作估價報告書要求應載明的事項。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "5f13c9e0cbaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00018', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '勘估標的之有效總收入的估計應包含那些事項？另外估價人員在估計
總收入及有效總收入時，應與那些資料做核對比較？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00019', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '估價人員進行農作改良物估價時，應考慮那些因素？農作改良物之估價
方式有那些？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00020', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '估價人員對某一上市保險公司之投資性不動產進行估價，請問投資性不
動產的定義為何？在撰寫估價報告書時，其估價目的與價格種類應為
何？在保險公司之投資性不動產中，一棟的租約在 1 年以上，另一棟的
租約則在 1年以下，請問所採用估價的方法有何不同？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00021', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '在土地徵收補償市價查估時，估價人員以買賣實例估計土地正常單價，
若土地上有區分所有建物，買賣實例為其中部分層數或區分單位者，以
及地上有建物，且買賣實例為全部層數者，其土地正常買賣單價的估計
程序各為何？請分別詳述之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
