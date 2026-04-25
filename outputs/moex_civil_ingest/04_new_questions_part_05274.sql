-- W1.6 questions batch 5274/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00083', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '燃氣發電之燃料為天然氣。有一天然氣，經分析其組成以體積百分比表
示為 80.62%CH 、5.41%C H 、1.87%C H 、1.6%C H 、10.5%N 。若
4 2 6 3 8 4 10 2
此天然氣與空氣燃燒後，乾產物分析以體積百分比表示為 7.8% CO 、
2
0.2%CO、7%O ，以及 85%N 。試求：
2 2
此燃燒之莫耳空燃比（10分）
以 100m3、300K，及 100kPa之天然氣燃燒，燃燒產物之總莫耳數為
何？（5分）
理論空氣量為何？（5分）
38020', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "cab1b1b151c9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00084', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一穩態運轉之電動馬達，輸入電流及電壓分別為 10 安培及 220 伏特，轉
速為1000rpm，轉軸輸出扭矩16N·m 至負載。運轉時馬達之發熱排至外
界，散熱量可表為Q=hA(T -T )，其中，h=對流熱傳係數=100W/m2K，A=
b 0
馬達表面積=0.195m2，T =馬達表面溫度，T =環境溫度=20°C。試求：（每
b 0
小題5分，共20分）
T
b
馬達熵改變量
環境熵改變量
此馬達運轉狀態為可能嗎？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "cab1b1b151c9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00085', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一太陽熱能發電系統如圖所示，太陽輻射能量為 0.315 kW/m2。太陽能
板吸收之太陽熱能提供給一溫度維持為定溫 220°C之儲能裝置。一動力
循環由儲能裝置供應熱能，排熱至溫度為50°C之熱源，並產生0.5MW
之電能。環境之溫度為 20°C。假設此動力循環為穩態操作，儲能裝置太
陽熱能吸收效率為 0.75，試求：
所需之最小太陽能板面積（5分）
儲能裝置提供之可用能（5分）
動力循環之熱力學第二定律效率（second-lawefficiency）（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "cab1b1b151c9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00086', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '如下圖馬達控制系統，受控馬達之轉移函數G(s) ，其輸入為
0.1s1
電樞電壓，輸出為轉速。馬達角度由一可變電位計量測，其轉移函數
為 K =2 V/rad。
t
僅使用比例控制，設計 K 以使系統之阻尼比為0.5，此時系統之自然
P
頻率為何？此系統進行定位控制與定速控制時，分別能否達到穩態誤
差為零的要求？請說明其原因。（15 分）
若使用者要求系統自然頻率至少須為 20rad/sec且阻尼比維持 0.5，試
提出新的控制器設計以達其要求。（10分）
r 控制器 馬達
+ K G(s)
P
-
可變電位計
Kt=2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "c6d02a682e9b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00087', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '考慮下圖之控制系統，a 與 K 為待設計之控制參數，試化簡方塊圖以求
Y(s)
得轉移函數 ，並判斷能使系統穩定之 a 與 K之條件。此系統之直流
R(s)
增益對 K的靈敏度為何？對 a的靈敏度在何條件下為最高？（25分）
-
Y(s)
R(s) 1 + K
s+a s2
+
- -
2
1 19', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "c6d02a682e9b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00088', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '如下圖左方之控制系統架構，G(s) ，與H(s) 。
s2 6s20 s1
為判斷系統型態，請計算系統於單位負回授下之等效轉移函數G (s)，
e
如下圖右方，並據以判定系統型態為何。（15分）
請使用漸近線（asymptote）技術繪出 G (s)之近似波德圖之大小增益部
e
分（無須繪製相位圖）。（10分）
R(s) Y(s) R(s) Y(s)
G(s) G (s)
+ + e
- -
H(s)
32', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "c6d02a682e9b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00089', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-110-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '單位負回授之架構下，一系統之轉移函數為G(s) ，若欲
s(s2 4s28)
設計一 PD 控制器C(s)(1Ks)以進行補償，請畫出閉路系統之根針對
K值變化而產生之根軌跡，並說明為何無論 K之值為何，此系統皆無法
穩定。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:57+00:00", "source_pdf_sha1": "c6d02a682e9b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "380", "s": "1309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-bd60a725-moex-00001', 'heelevel3-bd60a725', 'heelevel3-bd60a725-moex-114-9af4f2a0', 'sub-heelevel3-bd60a725-01', NULL, 'essay', '請說明如何利用以下四種方法，內部標準法（Internalstandard）、組
織檢量線法（Tissue calibration curve）、基質匹配檢量線法（Matrix-
matchedcalibration curve）及標準添加法（Standard addition），來解決
使用液相層析或氣相層析串聯質譜儀分析食品中農藥及動物用藥殘留
量時，產生之基質效應（Matrix effect）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "9232663ca903", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "265", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "食品衛生檢驗"}'::jsonb, NULL),
  ('heelevel3-bd60a725-moex-00002', 'heelevel3-bd60a725', 'heelevel3-bd60a725-moex-114-9af4f2a0', 'sub-heelevel3-bd60a725-01', NULL, 'essay', '請說明：
利用索氏萃取法（Soxhletextractmethod）測定食品中脂肪含量的原理
與操作步驟。（15 分）
分別說明花生及糖果在進行脂肪含量測定時，樣品前處理的步驟。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "9232663ca903", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "265", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "食品衛生檢驗"}'::jsonb, NULL),
  ('heelevel3-bd60a725-moex-00003', 'heelevel3-bd60a725', 'heelevel3-bd60a725-moex-114-9af4f2a0', 'sub-heelevel3-bd60a725-01', NULL, 'essay', 'K值可作為魚介類的鮮度指標，請說明：
魚貝類死後經由體內酵素作用，將腺嘌呤核苷三磷酸（Adenosine
triphosphate，ATP）分解生成次黃嘌呤（Hypoxanthine，Hx）的過程。
（5 分）
如何由 ATP相關分解物求得 K值。（5 分）
K 值與揮發性鹽基態氮（Volatile basic nitrogen，VBN）及三甲胺
（Trimethylamine，TMA）的測定目的有何不同？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "9232663ca903", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "265", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "食品衛生檢驗"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
