-- W1.6 questions batch 5269/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00033', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '壓力為 1 MPa、溫度為 350 K的空氣穩態且等熵地流經一個流道，空氣
速度為 200 m/s，試求：（每小題 5分，共 20分）
靜滯焓（Stagnation enthalpy）（單位取 kJ/kg）
靜滯溫度（Stagnation temperature）（單位取 K）
靜滯壓力（Stagnation pressure）（單位取 MPa）
馬赫數（Machnumber）
註：假設此空氣為理想氣體，空氣的等壓比熱與等容比熱皆為定值，等
壓比熱 C =1.005 kJ/(kg·K)，等容比熱 C =0.718 kJ/(kg·K)，氣體常
p v
數 R=0.287 kJ/(kg·K)，空氣的焓h=C T（T的單位為 K）。
p', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "68271034d216", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00034', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一個封閉的活塞/氣缸組合內含初始壓力為100 kPa、溫度為 25℃、體積
為 0.4 m3的空氣，其先經過一等容加熱過程直到壓力變為 250 kPa，之
後再經過一個等壓加熱過程直到體積變為兩倍。試求：
（每小題 10分，共 30 分）
最終溫度為何？（單位取 K）
在整個過程中，空氣的作功量為何？（單位取kJ）
在整個過程，加熱空氣的熱量為何？（單位取kJ）
註：假設此空氣為理想氣體，空氣的等壓比熱與等容比熱皆為定值，等
壓比熱 C =1.005 kJ/(kg·K)，等容比熱 C =0.718 kJ/(kg·K)，氣體常
p v
數R=0.287 kJ/(kg·K)，空氣的比內能變化可以用u -u =C (T -T )
2 1 v 2 1
來計算。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "68271034d216", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00035', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '一個體積為 1.0 m³的封閉剛性容器置於一個加熱板上。剛開始的時候，
容器內含有水的飽和液（Saturatedliquid）和飽和汽（Saturatedvapor）的
兩相混合物，在壓力 P =1 bar 的情況下，乾度（Quality）為 0.6。經過
1
加熱後，容器內的壓力為 P =1.5 bar。試利用下方飽和水之特性表決定：
2
狀態 1 和 2的溫度（單位取℃）（每個答案 5分，共 10分）
狀態 1 和 2的飽和汽質量（單位取 kg）（每個答案 5分，共 10分）
如果繼續加熱至容器中的水全部變成飽和汽時，試求此時的壓力（單
位取 bar）（10分）
Specificvolume
m3/kg
Pressure Temperature
bar ℃  Sat.Liquid Sat.Vapor
υ υ
f g
0.8 93.50 1.0380×10-3 2.087
0.9 96.71 1.0410×10-3 1.869
1.0 99.63 1.0432×10-3 1.694
1.5 111.4 1.0528×10-3 1.159
2.0 120.2 1.0605×10-3 0.8857
2.5 127.3 1.0672×10-3 0.7187
3.0 133.6 1.0732×10-3 0.6058
3.5 138.9 1.0786×10-3 0.5243
4.0 143.6 1.0836×10-3 0.4625
4.5 147.9 1.0882×10-3 0.4140', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "68271034d216", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00036', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3d1978c5', 'sub-heelevel3-b0f95c3f-04', NULL, 'essay', '試回答下列兩個問題：
兩部引擎的熱效率均為 40%，引擎 A 從一個 600 K 的高溫熱池
（Thermal reservoir）吸收熱量，而引擎 B 則從一個 1,200 K 的高溫熱
池吸收熱量，兩個引擎都將熱量排給一個溫度為300 K的熱池，假設
過程中各熱池的溫度皆固定，試分別求出此兩部引擎的第二定律效
率。（每個答案 5分，共 10分）
兩部冷凍機的性能係數均為2.0，冷凍機C從一個300 K的熱池吸收熱
量，而冷凍機 D 則從一個 320 K 的熱池吸收熱量，兩部冷凍機都將熱
量排至一個溫度為400 K的高溫熱池，假設過程中各熱池的溫度皆固定，
試分別求出此兩部冷凍機的第二定律效率。（每個答案5分，共10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "68271034d216", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00037', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '如圖一所示為一實心圓柱轉軸結構，其中，直徑d 30 mm、直徑D  40 mm、
寬度L 40 mm，該轉軸傳遞轉速n 1500 rpm並承受一F  2500 N之
3
負載，負載施加位置至兩端軸承b 及b 之距離分別為L 90 mm及
1 2 1
L 120 mm，已知該轉軸由降伏強度S 650 MPa、疲勞強度S 200 MPa
2 y e
之材料製成，試問：
轉軸所受「最大彎曲應力」數值及位置？（10分）
若忽略扭矩對轉軸造成之應力，則依據Soderberg疲勞強度準則：
S  S
y y
（其中， 為平均應力、 為振幅應力），施加負
m a m a
S N
e
載F處之「最小疲勞安全因子N」為多少？（5分）
若兩端軸承為相同之深溝球軸承，其基本額定動負載C=9.8kN，試問
「最小軸承壽命」為多少小時？（10分）
補充公式及說明：
⑴球軸承負載F與壽命L之關係為F3L常數。
⑵基本額定動負載C對應106轉之軸承額定壽命。
F
L L
1 2
n
d D
L b
b 3 2
1
圖一 實心圓柱轉軸結構', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "cea422466489", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00038', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '有一正向降伏強度S 400 MPa之零件，已知該零件某位置承受如圖二所
y
示之應力狀態，試分別依據「最大剪應力（Maximumshearstress）」及「畸
變能（Distortion energy）」失效準則分析此位置之「安全因子N」為何？
（25分）
補充公式及說明：
0.5S
⑴最大剪應力失效準則：  y
max N
S 1 1
⑵畸變能失效準則：  y ，    2   2   2 2，
e N e 2  1 2 2 3 3 1
其中，、及為三個方向的主應力（Principalstress）。
1 2 3
60MPa
90MPa
30MPa
80MPa
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "cea422466489", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00039', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '如圖三所示，有一立式雙螺紋方牙螺桿傳動裝置，已知螺桿節圓直徑d 35
m
mm、節距p4 mm、螺紋面間之摩擦係數0.1，若負載W 8 kN，期望
設計上升速率v20 mm/s，則傳動功率P？（25分）
Wd d
m m
補充公式及說明：負載螺桿上升所需扭矩T  ，其中，
2 d
m
為導程。
ℓ
圖三 螺桿傳動裝置示意圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "cea422466489", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00040', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '如圖四所示為一螺旋齒輪傳動系統，輸入動力由軸1上之齒輪a傳遞給軸2
之齒輪b，再由齒輪c傳遞至軸3之齒輪d後輸出；已知輸入軸之傳遞功率
P 10 kW、轉速n 1200 rpm（由左側軸端觀察，旋轉方向為順時針旋
1 1
轉），已知齒輪均為無轉位量之標準螺旋齒輪（規格如表一），考慮經一螺
旋齒輪對傳遞後功率損失2%，試作答以下問題：
若已知齒輪a為左旋齒輪，請合理決定齒輪b、c、d之螺旋方向（左旋或
右旋）？以及齒輪b、c、d所受之軸向力方向（向左或向右）？（7分）
軸2及軸3傳遞之轉速及扭矩分別為多少？（10分）
若欲使軸2上兩齒輪所產生之軸向力互相抵消，則齒輪c之節圓螺旋角
應設計為多少？（8分）
補充公式及說明：螺旋齒輪輪齒在節圓位置所受之切向力F 與軸向力
t
F 之關係式為F  F tan，其中，為節圓螺旋角。
a a t
齒輪a
旋轉方向 軸1
輸入
齒輪b
軸承
軸2
齒輪c
輸出
齒輪d
軸3
圖四 螺旋齒輪傳動系統簡圖
表一 齒輪規格
高速級齒輪組 低速級齒輪組
項目（單位）
齒輪a 齒輪b 齒輪c 齒輪d
法向模數（mm） 2.5 4.0
法向壓力角（度） 20 20
節圓螺旋角（度） 11 ？
齒數 17 43 17 37', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "cea422466489", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00041', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '下圖為一水深2 m的蓄水池，有一寬度為1 m高度為3 m的閘門，混凝土
塊與閘門間利用極細的鋼索連結，且不計閘門的重量，需最小體積為何的
混凝土塊方可關閉閘門？混凝土的比重量為23.6 kN/m3。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "13312f903001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00042', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '如下圖所示，U形管管徑一致且有一側封閉，若U形管以AA軸為軸心旋轉，
當角速度為何時，水會開始溢出U形管？圖中的ℓ=10 cm，大氣壓力為
101 kPa。（20分）
A
封閉端
開口端
d=ℓ
6ℓ 空氣 6ℓ
水
3ℓ 3ℓ
6ℓ
A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "13312f903001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "2005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
