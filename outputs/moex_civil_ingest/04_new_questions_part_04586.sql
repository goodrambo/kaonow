-- W1.6 questions batch 4586/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00136', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖四所示一電路由三個半橋組成，每個半橋由高壓側之PMOS其
V 2 V 與低壓側之NMOS其V 2 V 組成，忽略各MOSFET的寄生電
Tp Tn
容，三個輸入v 、v 、v 個別具有0V、1.65V、3.3V三種離散（discrete）
1 2 3
狀態。（每小題10分，共20分）
v 的電壓共有幾種，各是幾伏特。
o
說明如何控制三個輸入使v 產生近似弦波的階梯輸出。
o
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00137', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一磁路如圖一所示，繞組匝數N = 600匝，通以直流電流i，氣隙長度
g = 0.55 cm，氣隙截面積A = 81 cm2，鐵心使用理想導磁材料
g
（ ），忽略磁飽和與邊緣效應，欲使氣隙中產生0.85T之磁通密
c
度，計算：（每小題5分，共15分）
直流電流i之值。
繞組的電感值。
氣隙中所儲存的磁能。
磁力線
0
氣隙 g
N 匝 c
繞組
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "a77e76fdd049", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00138', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '額定230V、12HP的直流串激電動機，以V=230V直流電源供電時，汲取
s
40A的電流，轉速為1200rpm。此直流機的電樞電阻R =0.25 Ω，串激磁場
a
繞組電阻R=0.1 Ω，磁飽和、電刷壓降及機械損失皆可忽略。
s
（每小題10分，共20分）
繪出此電動機之等效電路圖，標示電樞電壓之極性、電樞電流方向及電
源電壓極性。
計算此電動機輸出之機械功率及轉矩。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "a77e76fdd049", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00139', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '額定60Hz、460V、Y接、300馬力之三相六極鼠籠式感應電動機，每相等
效電路如圖二中虛線所圍繞的部分，s為轉差率，參照至定子側的等效電
路每相歐姆值為R 0.007，R 0.011，X  X 0.05，X 2.4，此電
1 2 1 2 m
動機在額定電壓下啟動。鐵心損失、風阻及摩擦損失均可忽略。
（每小題10分，共20分）
計算此電動機之啟動電流I 及啟動時之功率因數。
st
若欲使啟動時之功率因數提升至0.95落後，計算必須在A-B節點間並聯
的每相電容值，及並聯此電容器之後，新的啟動電流。
I
st A R jX jX
1 1 2
R
460 jX 2
V m s
3
B
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "a77e76fdd049", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00140', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '三部15kVA、460/120V、60Hz之單相雙繞組變壓器，每一部單相變壓器
參照至高壓側的等效阻抗為0.5+j1.5 Ω，鐵心損失與磁化電流可忽略。將
此三部單相變壓器連接成一部460/208V之三相變壓器組，供應三相208V
功率因數0.8落後之額定負載。
繪出變壓器之接線圖。（10分）
計算變壓器高、低壓側之繞組電流。（10分）
計算此變壓器組之效率。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "a77e76fdd049", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00141', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '兩部三相同步發電機G 與G 並聯運轉，共同供應實功率300 kW、功率因
1 2
數0.8落後之負載。G 與G 之電機規格及原動機的轉速降（speed droop）
1 2
特性如下表所示：（每小題10分，共20分）
原動機轉速(rpm)
發電機 電機規格
無載 滿載
2極、60Hz、250kVA、480V、
G 3650 3570
1 功率因數0.8落後
4極、60Hz、250kVA、480V、
G 1800 1780
2 功率因數0.85落後
求此電力系統之運轉頻率f。
s
計算G 與G 分別供應之實功率。
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "a77e76fdd049", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00142', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '三相理想降壓（step-down）變壓器以0.8滯後（lagging）pf饋入120kW
三相負載，如圖一所示。
說明變壓器連接的類型。（5分）
計算I ,I ,I ,及I 電流值。（每一電流值各5分，共20分）
LP LS PP PS
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00143', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '如圖二，求R的最大功率。（25分）
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00144', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '試求出圖三中端子a-b處的等效電阻R 值。（25分）
ab
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00145', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '計算圖四網絡中阻抗Z 的值。（25分）
ab
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
