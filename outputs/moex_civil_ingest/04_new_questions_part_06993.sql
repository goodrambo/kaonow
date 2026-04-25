-- W1.6 questions batch 6993/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-acfc4025-moex-00141', 'locality-acfc4025', 'locality-acfc4025-moex-111-394901ca', 'sub-locality-acfc4025-04', NULL, 'essay', '證明time harmonic 平面電磁波 = 為一圓形極化
波，更進一步證明該圓形極化波在無損 耗介質中傳 播時之瞬時
E⃗ a⃗Ee −a⃗jEe
（instantaneous）Poynting向量為一常數，與時間及傳播距離均無關。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "1deb3075e9fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00142', 'locality-acfc4025', 'locality-acfc4025-moex-111-394901ca', 'sub-locality-acfc4025-04', NULL, 'essay', '如下圖，一具有功率 P之電磁波由傳輸線1（Line 1）經由 a – a''節點輸
入傳輸線2（Line2），其特徵阻抗（characteristicimpedance） 為 300 Ω，
及傳輸線 3（Line 3），其特徵阻抗值為 100Ω，試計算導入傳輸線 1 之

反射功率，與導入傳輸線 2及 3之功率。（15分）
Z0
Z0
Z0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "1deb3075e9fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00143', 'locality-acfc4025', 'locality-acfc4025-moex-111-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '一具有負載 R 之電路如下圖所示：
L
請計算 R 值，使其可以獲得最大功率轉移。（20 分）
L
其最大轉換之功率值為何？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00144', 'locality-acfc4025', 'locality-acfc4025-moex-111-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '具有相依電源之一階電路如下圖所示，其開關於 t=0 前開啟已有一段時
間並呈現穩定狀態。
請證明該電路在 t>0 之後是否呈現穩定？（16分）
請計算出在 t>0 之後電容器兩端之電壓 v(t)。（4 分）
34740', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00145', 'locality-acfc4025', 'locality-acfc4025-moex-111-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '在下列之電路中，其獨立電壓源之表示式為 v (t)=75cos5000tV，當系統
g
到達穩態時，請計算出 v (t)及 i (t)之表示式。（20分）（hint：可將電路之
o o
元件轉換至頻域）
i (t)
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00146', 'locality-acfc4025', 'locality-acfc4025-moex-111-61c8fe92', 'sub-locality-acfc4025-05', NULL, 'essay', '由一運算放大器所組成之主動式通用型濾波器如下列之電路所示，請推
導並說明此電路在何種情況下可達成高通、低通和全通濾波器之功用。
（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "eb6438a70459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2404", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00147', 'locality-acfc4025', 'locality-acfc4025-moex-110-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '砷化鎵半導體的晶格結構為閃鋅（zincblende）結構；其中砷原子構成一
個面心立方次晶格（sub-lattice），而鎵原子構成另一個面心立方次晶格。
繪出閃鋅晶格結構，並說明次晶格如何使兩種原子組合成共價鍵鍵
結。（10分）
若以矽原子為砷化鎵半導體的雜質。分別就矽原子進入砷原子的次晶
格取代砷原子、以及進入鎵原子的次晶格取代鎵原子，討論如何影響
砷化鎵的導電型態。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a5b86a1ed5b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00148', 'locality-acfc4025', 'locality-acfc4025-moex-110-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '考慮在一個順偏發光二極體元件的主動層內的電子、電洞復合
（recombination），舉出三種復合的方式，說明其物理機制，並敘述其復
合速率與電子、電洞濃度的關係。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a5b86a1ed5b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00149', 'locality-acfc4025', 'locality-acfc4025-moex-110-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '如下圖所示為一霍爾效應（Halleffect）量測結構，所量測為一半導體薄
膜長方形結構。電流 I 如圖所示，由接點 a 流入，接點 b 流出。磁場 B
為出紙面方向，與薄膜電流方向垂直。由接點 c與接點 d 量得的電壓為
V ；由接點 e與接點 d量得的電壓為 V 。
cd ed
若此半導體為 n 型半導體，由電子傳導，問電子會堆積在 e 接點側或
d 接點側？電壓 V 為正或為負？說明你的理由。若半導體為 p 型半
ed
導體又會如何？（10分）
若 ed 的間距為 W，cd 的間距為 L，薄膜的厚度為 t，磁場的大小為
|B|，單位電荷以q 表之。就半導體為 n型半導體，電子濃度為 n的條
件，求 V /I之值，以上述參數表之。（10分）
ed
B磁場', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a5b86a1ed5b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00150', 'locality-acfc4025', 'locality-acfc4025-moex-110-8a852d5e', 'sub-locality-acfc4025-01', NULL, 'essay', '考慮一個異質 PN 接面，P 型半導體的能隙為 1.4 eV，其中性區之費米
能階在價電帶上方 0.05eV。N型半導體的能隙為1.7eV，其中性區的費
米能階在導電帶下方 0.1 eV。若在接面接合處 N型半導體的導電帶比 P
型半導體的導電帶高 0.2 eV。假設 P 型半導體的雜質濃度 N 遠高於 N
A
型半導體的雜質濃度 N ，畫出平衡時的能帶圖概要圖，圖中需標出能
D
隙、中性區費米能階、接合處的導電帶與價電帶差異，以及空間電荷區。
說明空間電荷區的主要電荷及其電場方向。並求此 PN 接面的內建電位
（built-in potential）大小。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "a5b86a1ed5b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "341", "s": "2403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
