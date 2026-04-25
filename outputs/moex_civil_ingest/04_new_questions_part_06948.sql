-- W1.6 questions batch 6948/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-8ec6300d-moex-00017', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '在無損耗簡單介質（相對介電常數 relativepermittivity為 4，相對導磁係
數 relative permeability 為 1，導電率為 0）中，有一均勻平面波朝z方
向傳遞，已知其磁場強度Ha H ，H 為頻率為 100MHz 的弦波函數，
y y y
當t 0且z 1/8(m)時有最大值104(A/m)。請詳細推導此均勻平面波磁
場強度與電場強度的瞬時表示式。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "4c8b778b272b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00018', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-394901ca', 'sub-locality-8ec6300d-04', NULL, 'essay', '有一電路，包含一個內阻為 50 Ω，能產生電壓為 10V，頻率為 300MHz
的訊號產生器；訊號產生器連接一長度為 2 公尺，阻抗為50的傳輸線；
傳輸線末端接上一阻抗為(3040j)Ω的負載。請詳細推導此電路中的相
位常數、傳輸線連接負載處的反射係數、傳輸線上電壓的表示式。以及
若要讓負載端接收到最大的平均功率，其阻抗應設定為多少？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "4c8b778b272b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00019', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '計算圖中惠斯登電橋與運算放大器電路的 v 、v 、v 電壓值以及 i 、i 的
1 2 3 1 2
電流值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "bd471cb01505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00020', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '圖中開關在時間t 0時將一個5伏特的直流電壓源接上串聯電阻電感電
路，其中電感的初始電流為 0，計算電感跨壓的時間函數v (t)，t 0。
out
（20分）
100Ω
t=0
5V 0.1H', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "bd471cb01505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00021', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '計算以下交流電源所看到的阻抗Z以及傳送至電阻R的平均功率。（20分）
400Ω', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "bd471cb01505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00022', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '說明圖中電路屬於何種濾波器（低通、高通、帶通或帶抑）？計算輸入
頻率為 100 rad/s 時，此電路的增益及相位移。（20 分）
100Ω', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "bd471cb01505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00023', 'locality-8ec6300d', 'locality-8ec6300d-moex-114-61c8fe92', 'sub-locality-8ec6300d-05', NULL, 'essay', '下圖中的放大器以戴維寧等效電路表示，負載則等效為電感串聯電阻。
若放大器輸入頻率為 106rad/s，請回答以下問題：
（每小題 5分，共 15 分）
在此輸入頻率下，負載阻抗 Z 實部與虛部分別為多少？
load
放大器若希望傳輸最大平均功率給負載，圖中電容並聯負載的等效阻
抗 Z需為多少？
計算電容值 C，使放大器傳輸最大平均功率給負載。
100Ω 50μH
6 Z C Z 50Ω
cos(10 t)
load
放大器 負載', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "bd471cb01505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "344", "s": "2004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00024', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-d87dd49a', 'sub-locality-8ec6300d-01', NULL, 'essay', '十進位表示的一個數，268，請將它轉換成二進位、八進位、十六進位的
表示，並請說明二進位的負數表示方法。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00025', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-d87dd49a', 'sub-locality-8ec6300d-01', NULL, 'essay', '請說明何謂多工作業系統；並以A、B、C 等 3個執行程序（Process），
說明多工作業的進行方式。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL),
  ('locality-8ec6300d-moex-00026', 'locality-8ec6300d', 'locality-8ec6300d-moex-113-d87dd49a', 'sub-locality-8ec6300d-01', NULL, 'essay', '有一數列，S={6、1、3、10、12、7}，請撰寫一個虛擬程式碼（Pseudo
Code），或以任何程式語言撰寫運用泡沫排序演算法（Bubble Sorting
Algorithm）完成 S數列由小至大的排序。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:44+00:00", "source_pdf_sha1": "41200cc2c15d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "344", "s": "2109", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
