-- W1.6 questions batch 5240/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00038', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '如圖一，該開關已閉合一段長時間後，於時間為 t=100sec時，突然開關
打開（開路），請計算回答下列問題：
請計算開關打開（開路）前、後瞬間，累積於電容兩端的電荷量（單
位：庫倫）。（6分）
請計算開關打開（開路）前瞬間之電感電流i (t 100sec)。（6分）
L
請計算開關打開（開路）後瞬間之電感電壓v (t 100sec)。（6分）
L
請計算開關打開（開路）後，消耗在 5 Ω電阻之總能量（單位：焦耳）。
（7 分）
00..55FF
v t110000sseecc
C
44 Ω
2200VV 00.4.4HH v 55 Ω
L
i
L
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00039', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '如圖二，可變電阻R 連接於a、b兩端點，虛線內電路之雙埠電路表示式為
L
V  A BV
1  2
I C D I
1 2
請計算a、b兩端點之戴維寧等效電阻。（6分）
請計算a、b兩端點之戴維寧等效電壓。（6分）
調整可變電阻R ，使可變電阻溫度最高，請計算可變電阻R 的消耗功
L L
率。（6 分）
請計算參數 B（含單位）。（7分）
a
22Ω 22 Ω I I 66 Ω
1 2
1166VV 44 Ω V R
V 2 L
1
b
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00040', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '如圖三，該開關已開路一段長時間後，於時間為 t=0sec時，突然開關閉
合，記錄到之電流i (t 0sec)可用下列式子表示，請計算回答下列問題：
S
i (t 0)k cos(10t)k sin(10t)k ekk4tt (V)
4
S 1 2 3
請計算係數k 。（6 分）
1
請計算係數k 。（6 分）
2
請計算係數k 。（6 分）
3
請計算係數k 。（7 分）
4
tt=00sseecc
00.4.4Ω
0.01.F1F
v 22 Ω
i C
S i
C
10cos(10t)
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00041', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-113-61c8fe92', 'sub-heelevel3-acfc4025-05', NULL, 'essay', '如圖四，連接於 n、N 兩端點之支路電流為零安培，方塊內為功率因數
0.5 落後負載，請計算回答下列問題：
請計算方塊內負載之平均消耗功率。（8分）
請計算各理想電阻 R的平均消耗功率。（8分）
請計算各理想電感 L的平均消耗功率。（9分）
L R
116600ccooss((440000t)t)
R L
2
116600ccooss((440000tt )
3 00AA
n N
2
116600ccooss((440000tt )
3
PF0.5(落後)
2200ccooss((440000tt+))
圖∅ 四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "2b8b912ee3c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "372", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00042', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', 'Si與 Ge都是鑽石結構，其晶格常數分別為 5.43Å與 5.66Å。有一由 Si與
Ge 組成的合金半導體 Si Ge ，問該合金半導體的晶格結構為何？說明
0.9 0.1
其晶格結構的構造。此合金半導體的晶格常數為多少？其中的Si與Ge的
原子濃度又各為多少？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "808ec35dc41b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00043', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '請說明半導體中載子傳導的漂移速度（driftvelocity）、熱速度（thermal
velocity）、以及遷移率（mobility）。（10分）
舉出兩種影響載子遷移率的散射機制（scattering mechanism），並說明
其與溫度的關係。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "808ec35dc41b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00044', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '考慮一個陡峭（abrupt）P+N接面，兩邊的雜質濃度分別為N 與N ；
A D
N >>N 。若接面處於平衡狀態，請由載子擴散、復合的觀點來說明接面
A D
空乏區（depletionregion）、內建電場（built-inelectricfield）的生成機制，
並指出內建電場的指向。若接面由內建電場產生的內建電位為V ，空乏
bi
區寬度為W；以空乏區近似法表出W與V 的關係式。半導體的介電係數為
bi
ε，單位電荷為q。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "808ec35dc41b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00045', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '考慮一個NPN雙極性電晶體，若將其操作在主動區，其射基極接面與集基
極接面的電壓應如何安排？以基極為零電壓參考點說明之。就主動區操
作之該電晶體，畫出能帶對空間的概要圖，並在圖上標出各項電子、電洞
之擴散電流以及復合電流。並由這些電流來定義注入效率（injection
efficiency）以及傳輸因子（transportfactor）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "808ec35dc41b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00046', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-8a852d5e', 'sub-heelevel3-acfc4025-01', NULL, 'essay', '矽的 Deal-Grove 熱氧化模型公式：D2 + A D = Bt，公式中 D為氧化層厚
度、t 為氧化時間、A 與 B 為參數。求氧化速率 dD/dt。由反應物在氧化
層經由擴散到氧化層與矽介面進行氧化的模型來分別說明在 D<<A 與
D>>A兩種狀況下，氧化層厚度與時間關係。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "808ec35dc41b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2813", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "半導體工程", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00047', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-bd2490ec', 'sub-heelevel3-acfc4025-06', NULL, 'essay', '求yy''''(y'') 的通解（generalsolution）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
