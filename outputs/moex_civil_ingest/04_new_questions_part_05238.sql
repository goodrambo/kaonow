-- W1.6 questions batch 5238/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00018', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '兩段串接的無損耗傳輸線如圖四所示，分別連接至一個時變電壓源與一
個複數負載阻抗。根據電路中所給的各項參數，請求出兩段傳輸線交界
處的輸入阻抗（Z ,Z ），最後，請求出傳送至負載的實數功率。（24分）
in1 in2
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "fbf8b2f0e55a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00019', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-394901ca', 'sub-heelevel3-acfc4025-04', NULL, 'essay', '請寫出高斯定律、安培定律與法拉第定律的微分形式，並說明其物理意
義。在上述定律的基礎上，馬克士威（Maxwell）補充一項，使電磁理論
得以完整。請指出馬克士威所補充的項目，並說明為何需要加入該項。
（註：自由空間中介電係數為 ，導磁係數為 ，體電荷密度為，電
流密度向量為 ，位移電流向量為 ，電場強度與磁通密度分別以向量
  
與 表示，向量微分運算符號為 ）（24 分）
⃗ ⃗ ⃗
⃗  ⃗', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "fbf8b2f0e55a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00020', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '某電路如圖一所示，試計算每一個電阻兩端之電壓及流通之電流。（30分）
40 Ω i 48 Ω i
2 5
v v
2 5
12V v 80 Ω v 32 Ω
500mA 4 6
i i
4 6
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ab110042fb55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00021', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '某電感－電阻－開關電路圖如圖二所示，試計算：
（hint:i(t) I (i(0)I )e(R/L)t,e1 0.368）
t
SC SC
該電路中電感器之初始電流 i(0)？（10分）
該電路圖在時間 1mst>0 之時間常數（timeconstant）值與電感器之響
應函數 i(t)？（5分）
該電路圖在時間t>1ms之時間常數值與電感器之響應函數i(t)？（10分）
請繪出電感器之響應函數 i(t)完整之響應圖。（5分）
t=1ms
t=0
10A i(t) 2mH 2 Ω  2 Ω
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ab110042fb55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00022', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '一理想變壓器電路圖如圖三所示，若該電路之輸出電壓相量（phasor）
V 4830，試計算該電路之輸入電壓 V 相量值。（20 分）
0 S
-j6Ω
6 Ω
I I
1 2
1:2
V V V 24 Ω V
S 1 2 O
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ab110042fb55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00023', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-114-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '以下圖四所示為一 OPA電路，其負載電阻 R =50，該電路輸出電壓 v
L o
操作於15 V，其輸出電流 i 不大於 200 mA。當輸入電壓 v =1 V 且
o s
R +R =10 k時，請問 R 、R 及其最大之增益 A值為多少？（20 分）
1 2 1 2
v
s i
o
v
o
R
2
R R
1 L
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "ab110042fb55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "275", "s": "2502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00024', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '砷化鎵（GaAs）半導體在 T=300K之本質載子濃度 n =1.8 106cm-3，其
i
施體雜質與受體雜質濃度分別為N =2 1016cm-3及N =0，且為完全解離。
D A
×
假設電子與電洞之遷移率分別為μ =8500 cm2/V-s 及μ =400 cm2/V-s；單位
n p
×
電量q=1.6 10-19C。試求：
電子與電洞濃度分別為何？（10分）
×
若外加電場為E=15V/cm，其漂移電流密度為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "1a4b259fa1de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00025', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '請輔以數學表示式說明影響半導體「導電率（conductivity）」之因素
為何？（10分）
載子傳輸包含漂移（drift）與擴散（diffusion）兩種主要機制。請輔
以數學表示式說明影響半導體「電流密度（currentdensity）」之因素
為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "1a4b259fa1de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00026', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', 'p-n 接面二極體與蕭特基能障（Schottky barrier）二極體均可具有整流
（rectification）功效。請輔以數學表示式說明影響上述兩者元件之「逆向飽
和電流密度（reverse-saturationcurrentdensity）」之因素分別為何？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "1a4b259fa1de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00027', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '矽半導體 n 通道金屬-氧化物-半導體場效電晶體（MOS-FET）之閘極
長度 L=1.25 μm、電子遷移率 μ =650cm2/V-s、臨界電壓 V =0.65V、
n th
閘極氧化層電容C = 6.9 × 10-8 F/cm2，且測得在閘-源極偏壓 V = 5 V
ox GS
之汲極飽和電流（I ）值為 8mA。試求閘極寬度（W）為何？（20分）
D,sat', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "1a4b259fa1de", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
