-- moex_license_ingest questions batch 73/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00012', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '某甲有一塊土地，屬於都市計畫公共設施保留地，某乙建設公司在同一
個主要計畫地區範圍內有一塊建築基地，請依現行都市計畫容積移轉之
規範說明，接受基地移入送出基地之容積應如何計算？接受基地之可移
入容積上限為何？若某乙建設公司欲以折繳代金方式移入容積，其程序
為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00013', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '某甲不動產估價師受到某乙地主之委託，協助評估某地都市更新案之財
務可行性評估。某甲查詢法規後，發現都市更新事業計畫範圍內之建築
基地，得視都市更新事業需要，給予適度之建築容積獎勵。請依都市更
新條例之規定，說明各級主管機關訂定獎勵之項目應考量那些因素？
獎勵後之建築容積的上限及其例外情形為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00014', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '請依現行規定說明區段徵收土地時，應如何補償所有權人之地價，以及
其餘之各項補償費？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00015', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '比較法（30分）
㉑民國 113年 1月到民國113 年8 月價格日期指數無調整皆為 100%。
㉒勘估標的與比較標的位在同一個區域，區域因素一致。
㉓比較標的的價格為交易價格，無須進行情況調整。
㉔計算比較價格時，比較標的一的加權數 34%、比較標的二的加權數
33%、比較標的三的加權數 33%。
㉕勘估標的及比較標的資料，如下表。
項目 勘估標的 比較標的一 比較標的二 比較標的三
地址 中正路1號12樓 中正路1號17樓 中正路3號12樓 中正路5巷1號5樓
價格型態 交易價格 交易價格 交易價格
交易價格 2,180萬 3,370萬 3,180萬
勘察日期 113.8.16 113.8.16 113.8.16 113.8.16
價格日期 113.8.16 113.4.16 113.5.16 113.6.16
使用分區 第四種住宅區 第四種住宅區 第四種住宅區 第四種住宅區
屋齡 15年 15年 15年 17年
建物面積 133.56 m2 78.6 m2 134.4 m2 120.85 m2
結構 鋼筋混凝土 鋼筋混凝土 鋼筋混凝土 鋼筋混凝土
臨路情況 單面臨路 單面臨路 單面臨路 單面臨路
道路寬度 30 m 30 m 30 m 24 m
㉖勘估標的與比較標的個別因素比較調整率表，如下表。
主要 比較標的一 比較標的二 比較標的三
項目 調整百分率% 調整百分率% 調整百分率%
宗地條件 100 100 100
行政條件 100 100 106
建物個別條件 101 100 102
道路條件 100 100 103
接近條件 100 100 100
週邊環境條件 100 100 100', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "5f13c9e0cbaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00016', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '土地開發分析法（30分）
㉑基地面積為 600 坪，預計開發興建住宅社區。根據相關都市計畫法、
建築技術規則規定得知，基地興建樓地板面積為 1,200 坪，請依據不
動產估價技術規則土地開發分析法計算、分析，並將運算過程予以逐
一列出。
㉒有關可銷售房地產價格資料為如下所示：一樓可銷售面積 240坪，一
樓銷售價格每坪40 萬；二樓以上可銷售面積 960坪，二樓以上銷售價
格每坪 30萬。車位可銷售50 個，每個車位100萬。
㉓相關土地開發成本如下所示：
⑴營造施工費用：17 萬/坪，營造施工面積 1,200 坪。
⑵規劃設計費用：以營造施工費 2%計算。
⑶管銷費用：以總銷售金額 3%計算。
⑷稅捐及其他負擔費用：以總銷售金額3%計算。
⑸開發者之適當利潤率：20%。
⑹資本利息綜合利率：4%。
⑺開發計畫期間 2 年。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "5f13c9e0cbaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
