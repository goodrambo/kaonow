-- W1.6 questions batch 8624/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-814ced5a-moex-00016', 'pukao-814ced5a', 'pukao-814ced5a-moex-111-3d8d549f', 'sub-pukao-814ced5a-01', NULL, 'essay', '資訊安全與隱私權於數位時代是很重要的議題，請說明影響資訊安全的
因素與樣態，如何防範圖書館相關資訊系統受到資訊安全的威脅？如何
為圖書館擬定資訊安全政策？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:49+00:00", "source_pdf_sha1": "d99f38df7bcc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "411", "s": "0809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與資訊檢索概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "圖書資訊管理"}'::jsonb, NULL),
  ('pukao-814ced5a-moex-00017', 'pukao-814ced5a', 'pukao-814ced5a-moex-110-3d8d549f', 'sub-pukao-814ced5a-01', NULL, 'essay', '依照下表 1檢索情況
表1 甲與乙檢索資料結果表
相關數目 不相關數目
檢索者 甲 乙 甲 乙
檢索到資料 80 70 20 30
未檢索到資料 20 0 20 30
請就精確率（precision ratio）、回現率（recall ratio）、精確率補充
（complement of precision）及回現率補充（complement of recall）等四個
方向說明並分別計算甲及乙的精確率、回現率、精確率補充及回現率補
充。（20分）並就甲及乙檢索者比較其檢索品質。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:49+00:00", "source_pdf_sha1": "ee6771460d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "411", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與資訊檢索概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "圖書資訊管理"}'::jsonb, NULL),
  ('pukao-814ced5a-moex-00018', 'pukao-814ced5a', 'pukao-814ced5a-moex-110-3d8d549f', 'sub-pukao-814ced5a-01', NULL, 'essay', '資訊系統很強調使用者經驗（userexperience），一般在衡量（measure）
使用者經驗可從二種觀點上來看。一是績效表現（performance），另一個
是滿意程度（satisfaction）。請就績效表現來探討。
任務成功（tasksuccess）是最被廣泛運用在績效表現衡量測度（metric）。
請闡述並舉例二元成功（binarysuccess）。（15 分）
請再舉出二個績效表現衡量的測度並加以說明。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:49+00:00", "source_pdf_sha1": "ee6771460d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "411", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與資訊檢索概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "圖書資訊管理"}'::jsonb, NULL),
  ('pukao-814ced5a-moex-00019', 'pukao-814ced5a', 'pukao-814ced5a-moex-110-3d8d549f', 'sub-pukao-814ced5a-01', NULL, 'essay', '闡述概念為基礎（conceptbased）技術檢索的方式。（15分）
並說明其優點、限制與改善的方法。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:49+00:00", "source_pdf_sha1": "ee6771460d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "411", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與資訊檢索概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "圖書資訊管理"}'::jsonb, NULL),
  ('pukao-814ced5a-moex-00020', 'pukao-814ced5a', 'pukao-814ced5a-moex-110-3d8d549f', 'sub-pukao-814ced5a-01', NULL, 'essay', '請說明分區組合（block building）檢索，並以主題甲、主題乙及主題
丙為例。（10分）
請說明主題層面配對（pairwise facets）檢索，並以主題甲、主題乙及
主題丙為例。（10 分）
試比較分區組合檢索與主題層面配對檢索。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:49+00:00", "source_pdf_sha1": "ee6771460d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "411", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與資訊檢索概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "圖書資訊管理"}'::jsonb, NULL),
  ('pukao-8b44517b-moex-00001', 'pukao-8b44517b', 'pukao-8b44517b-moex-114-4919f6c4', 'sub-pukao-8b44517b-01', NULL, 'essay', '何謂資遣解僱？（10分）何謂懲戒解僱？（10 分）若勞工因職業災害受
傷，雇主是否得解僱之？（5 分）請依「勞動基準法」之規定予以申論
之。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "98c8a98912f9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "406", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "勞工行政與勞工立法概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "勞工行政"}'::jsonb, NULL),
  ('pukao-8b44517b-moex-00002', 'pukao-8b44517b', 'pukao-8b44517b-moex-114-4919f6c4', 'sub-pukao-8b44517b-01', NULL, 'essay', '根據我國現行「團體協約法」之相關規範，請說明何者為適格之團體協
約當事人？（15分）如勞方同時存在兩個以上的工會，或資方同時存在
兩個以上的雇主，請問，勞資雙方依法應以何者作為協商代表？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "98c8a98912f9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "406", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "勞工行政與勞工立法概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "勞工行政"}'::jsonb, NULL),
  ('pukao-8b44517b-moex-00003', 'pukao-8b44517b', 'pukao-8b44517b-moex-114-4919f6c4', 'sub-pukao-8b44517b-01', NULL, 'essay', '由於當代勞動市場興起各式各樣的非典型僱用型態，因此我國亦於 2019
年修正「勞動基準法」，就派遣勞動關係之保護制定相關規範。請依據我
國現行「勞動基準法」之相關規定，說明有關派遣勞動關係之主要特徵
與定義（10分），以及該法對於勞動派遣制度之重要規範內容。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "98c8a98912f9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "406", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "勞工行政與勞工立法概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "勞工行政"}'::jsonb, NULL),
  ('pukao-8b44517b-moex-00004', 'pukao-8b44517b', 'pukao-8b44517b-moex-114-4919f6c4', 'sub-pukao-8b44517b-01', NULL, 'essay', '依我國現行「就業服務法」之規定，雇主如有聘僱外國人時，原則上應
向中央主管機關申請許可，但也有例外得不須申請許可之情形。請根據
「就業服務法」之相關規定回答以下有關外國人聘僱之問題：
依「就業服務法」之規定，請問雇主得在何種情形下，不須申請聘僱
許可即可聘僱外國人？（15分）
當雇主聘僱外國人之聘僱許可期限已屆滿時，倘雇主未辦理續聘手續
而繼續聘僱該外國人時，則該聘僱許可是否繼續發生效力，以及雇主
於法律上將受何等之處罰？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "98c8a98912f9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "406", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "勞工行政與勞工立法概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "勞工行政"}'::jsonb, NULL),
  ('pukao-8b44517b-moex-00005', 'pukao-8b44517b', 'pukao-8b44517b-moex-114-93470287', 'sub-pukao-8b44517b-02', NULL, 'essay', '在勞資關係中創造「家庭友善」（family-friendly）職場，可提升勞資雙方
的共同利益。那些制度或措施有助於促進「家庭友善」職場，請詳述之。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:05+00:00", "source_pdf_sha1": "6eb2ec212251", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "406", "s": "0512", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "勞資關係概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "勞工行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
