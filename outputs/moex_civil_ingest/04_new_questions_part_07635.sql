-- W1.6 questions batch 7635/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-0f640084-moex-00010', 'promotion-0f640084', 'promotion-0f640084-moex-114-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '一部 2極同步發電機的剖面如圖一所示，電機的尺寸及參數如下：氣隙
2
長度 g=2.5 mm、極面截面積 A =500 cm 、轉子繞組匝數 N=500 匝、
g
轉子繞組電流 i=5 A、鐵心的導磁係數 。
c
（真空之導磁係數： 4107 H/m）
0
c
N
極面截面積A
g
i
氣隙長度g
圖一
繪出類比於此發電機磁路的等效電路圖。（5 分）
計算轉子繞組所產生的總磁通量、轉子繞組的磁鏈數、氣隙中的磁
通密度 B、轉子繞組的電感值 L及儲存在氣隙中的磁能 W 。（15分）
m
30430
40330', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "a28c4e5150cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00011', 'promotion-0f640084', 'promotion-0f640084-moex-114-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '一部 25 kVA、220/440 V、60 Hz之單相變壓器，其開路試驗及短路試驗
之測定數據如下：
開路試驗 短路試驗
從低壓側量測 從高壓側量測
V =220 V V =37.5 V
OC SC
I =9.5 A I =55 A
OC SC
P =650 W P =950 W
OC SC
此變壓器的近似等效電路如圖二所示。
R jX
a eq eq c
R jX
c m
b d
圖二
計算變壓器近似等效電路參數（R 、X 、R、X ）之標么值。（12 分）
eq eq c m
此變壓器供應功率因數 0.766 落後之額定負載時，計算其電壓調整率
VR。（8 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "a28c4e5150cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00012', 'promotion-0f640084', 'promotion-0f640084-moex-114-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '一部額定24 kW、240 V之他激式直流電動機，其電樞電阻 R =0.06 ，
a
以 240 V之直流電壓供電，電樞反應及機械損失均可忽略。
（每小題10 分，共 20 分）
若輸入電流為90 A時，轉速為1200 rpm。計算輸出轉矩。
若輸出轉矩為280 N-m時，激磁條件與電源電壓均不變，計算此直流
電動機之轉速與電樞電流。
30430
40330', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "a28c4e5150cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00013', 'promotion-0f640084', 'promotion-0f640084-moex-114-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '一部三相 Y接之同步電動機，每相同步電抗 0.85標么，操作於額定電壓
及頻率下，忽略電樞電阻及一切損失。此電動機之轉軸輸出半載時
（P =0.5 標么），調整激磁電流使其功率因數為 0.9 落後，保持激磁電
m
流不變。（每小題 10 分，共20分）
試求此時之電樞電流 I 及內部生成電勢 E 之標么值。
a a
當電動機之轉軸輸出滿載時（P =1.0 標么），計算其轉矩角及功率
m
因數。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "a28c4e5150cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00014', 'promotion-0f640084', 'promotion-0f640084-moex-114-bdd26e86', 'sub-promotion-0f640084-03', NULL, 'essay', '某工廠有三部並聯運轉的三相交流電動機（兩部感應機及一部同步機），
經一條輸電線連接至三相480 V的無窮母線，每一部電動機消耗的有效
功率及功率因數均標示在圖三中，輸電線的壓降可忽略不計。
若同步電動機的功率因數 PF =0.85 落後，試計算輸電線之電流 I 。
3 tr
（6 分）
調整同步電動機的激磁電流以改變其功率因數，試計算使輸電線電流
I 為最小的 PF 之值及此最小電流值。（14 分）
tr 3
P
1 感應 100kW
電動機 PF=0.7落後
三相480V Q 1
1
無窮母線
I P P
tr tot 2 感應 150kW
電動機 PF=0.8落後
輸電線 Q 2
Q 2
tot
P
3 同步 200kW
電動機 PF=?
Q 3
3
工廠
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "a28c4e5150cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00015', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c8fe92', 'sub-promotion-0f640084-04', NULL, 'essay', '如圖一所示電路，若開關“S ”在“a”點、“S ”在“c”點停留了很長的時間。
1 2
時間 0 秒時，“S ”開關瞬間從“a”點移動到“b”點、“S ”開關瞬間從“c”移
1 2
動到“d”點。以拉普拉斯轉換法求v (t)。（25分）
2
S
1 v S d
a 1 2 3i
1
2 c
b F
4Ω 9
v
2 9 Ω
9V 2e-2tV 9H
i 2V 2Ω
1
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "6dc124db8da5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00016', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c8fe92', 'sub-promotion-0f640084-04', NULL, 'essay', '請畫出圖二，a與 b 端點間於相量空間之諾頓等效電路。（20分）
將阻抗 Z 接於 a 與 b 端點，若要把最大功率傳送至阻抗 Z，請問阻抗
值 Z應設計為多少？（5分）（皆以極座標表示答案）
2i
1
i 5 Ω
1
0.25H a
Z
0.5H 0.25F b
8cos(4t+90o)
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "6dc124db8da5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00017', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c8fe92', 'sub-promotion-0f640084-04', NULL, 'essay', '如圖三所示電路，若開關“S ”關起來了很長的時間、“S ”在“a”點停留了
1 2
很長的時間。時間 0 秒時，“S ”開關瞬間打開、“S ”開關瞬間從“a”移動
1 2
到“b”點。以拉普拉斯轉換法求 i (t)。（25分）
1
S
1
b
a S
1 Ω 3 Ω 2
9 Ω 1
F
3H
i 24V
24V 1

圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "6dc124db8da5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00018', 'promotion-0f640084', 'promotion-0f640084-moex-114-61c8fe92', 'sub-promotion-0f640084-04', NULL, 'essay', '如圖四，假設運算放大器為理想。求 v (t)的穩態解。（25分）
o
v(t)
o
0.1F
10 Ω
10 Ω  0.02F
10cos(2t+18o)V
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "6dc124db8da5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "178", "s": "1904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL),
  ('promotion-0f640084-moex-00019', 'promotion-0f640084', 'promotion-0f640084-moex-112-44c05cdd', 'sub-promotion-0f640084-01', NULL, 'essay', '一部三相同步發電機，規格為 60 MVA、69.3 kV 與同步電抗 Xs 每相為
15 Ω，假設忽略電樞電阻。（每小題 10 分，共20分）
若傳遞額定功率（60 MVA）給無限匯流排，三相同步發電機操作於額
定電壓與功率因數 0.8 落後的狀態下，請問三相同步發電機的每相激
磁電壓與電力角？
三相同步發電機操作於額定電壓下，若發電機傳遞給無限匯流排
48 MW，且經由場電流的調整，使得每相激磁電壓為 46 kV。請問三
相同步機的電樞電流與功率因數？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:01+00:00", "source_pdf_sha1": "c2b241865edf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "178", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
