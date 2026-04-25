-- W1.6 questions batch 6979/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-acfc4025-moex-00001', 'locality-acfc4025', 'locality-acfc4025-moex-114-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '能帶理論中，那一個參數可作為區分導體、半導體與絕緣體的依據？
（5 分）
該參數以何數值作為區分半導體與絕緣體的界限？（5分）
請以能帶結構的角度說明導體、半導體與絕緣體之差異。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "abebb93ba3c6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00002', 'locality-acfc4025', 'locality-acfc4025-moex-114-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '在半導體晶格中，載子具有那二種主要的傳輸機制？（4 分）
一個實際的矽pn接面二極體在順偏導通狀態下，有那些電流成分？
（8 分）
請說明各電流形成之機制。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "abebb93ba3c6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00003', 'locality-acfc4025', 'locality-acfc4025-moex-114-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '在T300K下，一個 n型矽半導體中，施體濃度為N 1017cm3，本質
d
載子濃度為n 1.51010cm3。若在t 0秒時產生1016cm3的過量載子，
i
請回答下列問題：
在t 0秒時，多數載子和少數載子的濃度各為多少？（10 分）
請計算t 0秒時準費米能階相對於本質費米能階的能量差，並在能帶
圖上標示出來。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "abebb93ba3c6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00004', 'locality-acfc4025', 'locality-acfc4025-moex-114-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '請說明為何金氧半場效電晶體（MOSFET）的長通道與短通道元件之
臨界電壓會有所不同。（8分）
如何從汲/源極設計的角度來抑制短通道效應？並說明此方法可能導
致的副作用。（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "abebb93ba3c6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00005', 'locality-acfc4025', 'locality-acfc4025-moex-114-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '隨著技術節點持續微縮，曝光技術亦不斷演進。請說明自曝光波長
248nmKrF以降，至鰭式場效電晶體（FinFET）時代，如何運用各種
不同的曝光技術與圖案化方法來實現更微小的電路圖案。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "abebb93ba3c6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00006', 'locality-acfc4025', 'locality-acfc4025-moex-114-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '電腦系統由五大主要單元組成，其中一個是中央處理器（CPU），主要包
括「控制單元」與「算術邏輯單元」。請列出電腦系統，除 CPU 之外的
其他四個組成單元，並說明它們的作用；也請說明 CPU的「控制單元」
與「算術邏輯單元」的作用。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00007', 'locality-acfc4025', 'locality-acfc4025-moex-114-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', 'TCP/IP協定堆疊是網路運作的基礎，是一種分層架構的設計。請闡述分
層架構設計的兩個好處，也請列出 TCP/IP協定堆疊各層協定的名稱，並
闡述各層的主要作用。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00008', 'locality-acfc4025', 'locality-acfc4025-moex-114-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '資料結構是程式設計領域很重要的概念。請闡述佇列（Queue）與循環佇
列（CircularQueue）的差別與各別的應用場合。若使用陣列實作這兩種
佇列，那一種較為浪費儲存空間？請闡述原因。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00009', 'locality-acfc4025', 'locality-acfc4025-moex-114-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '結構化程式設計中，常提到的三種基本控制結構是那些？請各舉一個
簡單的範例並使用虛擬代碼（PseudoCode）或任何程式語言實現所舉
範例。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00010', 'locality-acfc4025', 'locality-acfc4025-moex-114-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '生成式 AI 有許多應用方向，但也帶來新型態的倫理與社會議題。請舉
出兩個生成式 AI的應用案例，並針對生成式 AI的「深偽（Deepfake）」、
以及「偏見」這兩項議題，闡述問題怎麼產生，並提出可行的因應方式。
（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:42+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "343", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
