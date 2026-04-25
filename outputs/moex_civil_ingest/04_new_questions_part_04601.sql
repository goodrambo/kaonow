-- W1.6 questions batch 4601/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00286', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '下表為一個單相、50kVA、60Hz、2,400/240V配電變壓器的短路（SC）
與開路（OC）實驗測試結果。
電壓（V） 電流（A） 功率（Watt）
開路實驗，在一次側進行 V =2,400 I =0.541 P =186
OC OC OC
短路實驗，在一次側進行 V =168 I =20.8 P =650
SC SC SC
繪出轉換到一次側的等效電路，計算其中各電路元件參數，並標示於
等效電路上。（10 分）
若此變壓器二次側操作在全載、功率因數0.8 落後、端電壓240V，試
計算此變壓器的效率與電壓調整率（V.R.%）。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "10a026b3cbd9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00287', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一部三相、460V、60Hz、4 極、Y接線感應電動機有以下等效到定子側
的單相等效電路參數，包含鐵芯損失的總旋轉損失為 1 kW。
R1=0.3 ，R2=0.3 ，X1=1.0 ，X2=1.0 ，XM=25
若此感應電動機操作轉差率為 3%，試計算：（每小題 5 分，共 25分）
轉子轉速多少 rpm？
轉子感應電流頻率多少 Hz？
定子電流與功率因數（powerfactor）。
轉子輸出轉矩多少 kg-m？
感應電動機效率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "10a026b3cbd9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00288', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一部三相、1.5MVA、2.3kV、60Hz、30 極、Y接線凸極式轉子（salient
polerotor）同步電動機，直軸電抗為Xd=1.95 /每相、交軸電抗為Xq=1.4
/每相，電樞電阻忽略不計。此電動機以額定電壓、額定容量、功率因
數（powerfactor）1.0 運轉，所有損失均不計。
說明直軸電抗Xd 為何大於交軸電抗 Xq。（5分）
計算電樞感應電壓（induced armature voltage, E ）與功率角（power
A
angle, ）。（10分）
計算運轉輸出轉矩多少 N-m。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "10a026b3cbd9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00289', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '圖一中 A、B 為電源電路的兩端點。（每小題10分，共 30分）
請利用網目電流法（meshcurrentanalysis）求得A、B兩點的開路電壓。
請利用節點電壓分析法（nodevoltageanalysis）求得 A、B兩點的短路
電流。
請繪出圖一電路之戴維寧等效電路（Thévenin equivalent network）和
諾頓等效電路（Norton equivalentnetwork）。
1 kΩ 4mA 12V
1 kΩ 1 kΩ
Ix
A
6V 2I
x
B
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00290', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '圖二中，v 為電源，R、L、C分別為電阻、電感和電容。
s
試推導i (t)之微分方程，找出i (t)與v (t)之關係式（以R、L、C和v (t)表
L L s s
示之，並讓i (t)最高階微分項之係數為 1）。（10分）
L
1 10V t 0
若 =2 H、 =5 W、C= F，且v (t)
50 s 30V t 0
試求i 0+ 、i'' 0+ 以及t>0 之 i (t)。其中i 0+ 和 i'' 0+ 分別為電源切
LL RL L L L
換發生後那一刻之i (t)以及i (t) 的一次微分值。（t=0+係指v (t)切換之後
L L s
       
瞬間之時刻。）（15 分）
L
圖二
|
37840', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00291', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '圖三所示之電路中，V =100∠0°為電源v (t)=100cos ωt 的相量（phasor）
s s
表示法，其中ω為頻率（單位：rad/sec）。（每小題 10 分，共 20分）
( )
當負載為一阻抗時，試求能傳送至負載的最大功率及此時之負載值。
當負載為一電阻時，試求能傳送至負載的最大功率及此時之負載值。
V=100∠0°
s
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00292', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '圖四為一濾波電路，其中v 和v 分別為輸入與輸出電壓，其轉移函數
s
V (jω)
（transferfunction）H jω = o 為頻率ω（單位：rad/sec）的函數。
o
V (jω)
s
Vo(jω)
試 推 導 圖 四  電 路 的 轉 移 函 數 H jω = ， 並 以
( )
Vs(jω)
K×(jω) m (1+jωB )
H jω = k=1 k 之形式表示之，並求式中之K和 c。（10 分）
( )
cn (1+jωA )
k=1∏ k
( ) ∏
R R3
2
－
+ R
4
R1
+ + +
v C v v C2 v
s 1 a b o
－ － －
圖四
圖四為圖四之轉移函數的波德圖（Bode Plot）漸近線，若
C =C =1 μF且R =10 kΩ，試求R 、R 、R 。（15 分）
1 2 2 1 3 4
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "86b4fbd4bbb3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-10ced7e2-moex-00001', 'heelevel3-10ced7e2', 'heelevel3-10ced7e2-moex-114-c227590c', 'sub-heelevel3-10ced7e2-01', NULL, 'essay', '美國川普政府在 2024 年 11 月宣布成立「政府效率部」（Department of
GovernmentEfficiency,DOGE），引發行政部門內部的震撼，也激起了「快
速削減成本是否能有效改革政府效率？」的辯論。反對者憂心此舉無法
實現政府改革，且將犧牲文官制度基本的代表性、公平性和功績制原則。
試從「管理主義」（managerialism）與「官僚主義」（bureaucracy）的本質，
對此議題加以評論。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:33+00:00", "source_pdf_sha1": "c54a74fd1ef8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "221", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "人事行政"}'::jsonb, NULL),
  ('heelevel3-10ced7e2-moex-00002', 'heelevel3-10ced7e2', 'heelevel3-10ced7e2-moex-114-c227590c', 'sub-heelevel3-10ced7e2-01', NULL, 'essay', '高階文官為當前各國公共人力資源管理的骨幹，其角色與職能為何？規
範高階文官的體制與一般文官的管理，有何不同？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:33+00:00", "source_pdf_sha1": "c54a74fd1ef8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "221", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "人事行政"}'::jsonb, NULL),
  ('heelevel3-10ced7e2-moex-00003', 'heelevel3-10ced7e2', 'heelevel3-10ced7e2-moex-114-c227590c', 'sub-heelevel3-10ced7e2-01', NULL, 'essay', '多元化管理（diversity management）在各國公私部門人力資源管理領域
中已成為重要課題。我國政府的人事行政部門如何面對此「多元工作人
力」及「多元管理」的潮流？試舉例說明。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:33+00:00", "source_pdf_sha1": "c54a74fd1ef8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "221", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共人力資源管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "人事行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
