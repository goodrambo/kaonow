-- moex_license_ingest questions batch 75/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00102', 'real-estate-appraiser', 'real-estate-appraiser-moex-109-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '如下圖所示，今估價師受某政府委託，查估堤防兼道路用地之預定徵收
價格，今給與之資料為：河川區、堤防兼道路用地及住三區皆各為同一
地價區段。河川區之區段地價為10,000元/平方公尺及住三區之區段地價
為300,000元/平方公尺，預定徵收土地上無建築改良物，請估價師說明查
估堤防兼道路用地之預定徵收價格，並以估價報告書之方式呈現。其中
買賣實例、區域因素及比準地或其他事項，可以由估價師假定，但須加
以詳細說明理由。（100分）
住三區', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "8e5bf6fc9545", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00103', 'real-estate-appraiser', 'real-estate-appraiser-moex-109-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '請說明在運用比較法進行不動產估價時，比較標的坐落於「近鄰地區」
或「類似地區」有何差異？（10分）若臺北市房價上漲，其後其他五
都或非六都縣市房價也上漲，請問此是否意味這些縣市屬於同一供需
圈？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "e69fc134906c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00104', 'real-estate-appraiser', 'real-estate-appraiser-moex-109-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '以比較法進行土地估價時，若因當地素地交易案例不足而採用房地分離
方式取得土地比較標的，請問此種作法可能產生什麼偏誤？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "e69fc134906c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00105', 'real-estate-appraiser', 'real-estate-appraiser-moex-109-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '請說明運用收益法進行不動產估價時，收益資本化率或折現率之求取方
法（10分），並比較不同求取方法的優缺點為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "e69fc134906c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00106', 'real-estate-appraiser', 'real-estate-appraiser-moex-109-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '請說明現行政府在土地公告現值評估作業的主要優缺點為何？（10分）
是否可透過現行累積的大量不動產實價登錄資料結合大量估價方法改
善上述缺點？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:30+00:00", "source_pdf_sha1": "e69fc134906c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
