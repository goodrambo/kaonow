-- W1.6 questions batch 5250/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00138', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖四所示一電路由三個半橋組成，每個半橋由高壓側之PMOS其
V 2 V 與低壓側之NMOS其V 2 V 組成，忽略各MOSFET的寄生電
Tp Tn
容，三個輸入v 、v 、v 個別具有0V、1.65V、3.3V三種離散（discrete）
1 2 3
狀態。（每小題10分，共20分）
v 的電壓共有幾種，各是幾伏特。
o
說明如何控制三個輸入使v 產生近似弦波的階梯輸出。
o
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00139', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '空氣中有一電荷 q，距離 r 處之電位 ，現若將另一電荷 ，從無

窮遠處移至距離r處，則所需能量為 ，此能量即為保持此
 =  

二電荷距離為 r之能量，或稱該二電荷相關之靜電能 U。如圖一所示，現
 =  = 
於空氣中有八個正電荷(1)~(8)，電荷量均為 q，分布於邊長為 a之正立方
體的八個頂點，於正立方體中心處放置一負電荷，電荷量為 Q。
試推導中心處負電荷 Q與八個正電荷 q 相關之總靜電能 。（10分）
推導八個正電荷 q 相關之總靜電能 。（10 分）

由正電荷與負電荷之總靜電能 觀點，寫出此九個電荷位置

成穩定分布之條件式。依據此條件式，推導中心處負電荷 Q之電荷量。
 =  +
（5 分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "3d605eb2d408", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00140', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '如圖二所示，上下平板均為邊長a 之正方形導體，上平板有非常小的傾斜
角度θ，兩平板左邊之最短距離為 h，假設平板面積夠大使得邊緣效應可
以忽略，試求電容 C之大小。（25 分）
圖二
37570', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "3d605eb2d408", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00141', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '有一由完全導體組成的金屬空腔，a=4cm，b=2cm，L=6cm，如圖三
所示。
計算空腔內未填充任何材料情況下的最低共振頻率。（15 分）
若有一電性材料填滿整個空腔，此電性材料不導電。若測得之最低共振
頻率為 3 GHz，求此電性材料之介質常數 。（10分）

z
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "3d605eb2d408", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00142', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '一線性極化均勻橫向平面電磁波，從介質 1 )垂直正向入射至介質
2 )，如圖四所示。其中入射平面諧波(Incidentwave)之電場相量 與
(,
磁場相量 、反射平面諧波(Reflected wave)之電場相量 與磁場相量
(, 
及穿透平面諧波(Transmittedwave)之電場相量 與磁場相量 。
  
寫出入射平面諧波之電場相量 與磁場相量 、反射平面諧波之電場
 
相量 與磁場相量 及穿透平面諧波之電場相量 與磁場相量 的表
 
示式。（15 分）
   
列出在兩介質交界處之電場及磁場的邊界連續條件。（5分）
求解上述邊界條件，得出反射係數 及穿透係數 的表示式。（5 分）
Γ τ
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "3d605eb2d408", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00143', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '三相理想降壓（step-down）變壓器以0.8滯後（lagging）pf饋入120kW
三相負載，如圖一所示。
說明變壓器連接的類型。（5分）
計算I ,I ,I ,及I 電流值。（每一電流值各5分，共20分）
LP LS PP PS
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00144', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '如圖二，求R的最大功率。（25分）
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00145', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '試求出圖三中端子a-b處的等效電阻R 值。（25分）
ab
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00146', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '計算圖四網絡中阻抗Z 的值。（25分）
ab
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "60ea46e9ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00147', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-111-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '請說明半導體材料晶體鑽石結構與閃鋅礦結構之差異，（5分）閃鋅礦結
構與六方晶系結構之異同。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "e9bde2aaae81", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "371", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
