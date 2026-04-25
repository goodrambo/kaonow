-- W1.6 questions batch 7719/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-4ece01bd-moex-00001', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '某專案工程活動關係如下表所示，請依此繪製與計算：
活動 前置活動 工期（日）
A - 3
B A 5
C A 4
D B,C 6
E C 2
F D,E 3
請繪製本專案之箭線圖（Activity-on-Arrow Diagram），並標示節點間
邏輯關係。（10分）
計算各活動的最早開始時間、最早完成時間、最晚開始時間、最晚完
成時間、專案總工期，並求出該專案的浮時與關鍵路徑。（15分）
若下列活動可透過加班或增加資源以縮短工期，並產生相對應的成本
變化，假設專案期望將總工期壓縮至 15日，應採取何種活動壓縮策略
最具成本效益。（15 分）
活動 原工期（日） 最短工期（日） 每縮短 1 日增加成本（萬元）
C 4 3 10
D 6 4 15', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "6dccae0d62c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00002', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '針對某都市道路拓寬工程，請回答以下問題：
請說明本工程最重要的三項前期作業。（15分）
請指出本工程最可能面臨的兩項主要風險，並扼要說明其關鍵應對
措施。（15 分）
15860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "6dccae0d62c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00003', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '根據內政部建築研究所報告，建築全生命週期的溫室氣體排放包含「使
用碳排（OperationalCarbon）」及「蘊含碳排（EmbodiedCarbon）」兩部
分，而依據 2022年國際能源署（InternationalEnergyAgency,IEA）的最
新研究顯示，全球溫室氣體排放，建築部門約占37%。
請說明「建築碳足跡」、「使用碳排」與「蘊含碳排」的定義。（15 分）
請以全生命週期觀點與參考下表，說明建築工程常見工程材料「鋼
筋」、「混凝土」與「水泥」之蘊含碳排量特性。（15 分）
係數名稱 碳足跡數值宣告單位 政府部門/公司名稱 公告
（kgCO e） 年份
2
2015
鋼筋 0.66 公斤（kg）環境部
2017
水泥（不分型號）0.907 公斤（kg）公路總局蘇花公路改善工程處
混凝土 立方公尺 2019
310 公路總局西部濱海公路南區臨時工程處
（210kgf/cm2） （m3）
備註：假設乾燥狀態下普通混凝土密度在2000kg/m3至 2800kg/m3之間', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "6dccae0d62c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00004', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '圖一所示桁架，於節點 E和 F承受相同大小的集中載重 P。已知各桿件
的容許軸拉力為150kN，容許軸壓力為 100kN。請判定當任一桿件達容
許軸力時：
求外力 P之最大值。（14 分）
指出達容許軸力之桿件。（3 分）
指出不受軸力之桿件。（3分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "594d53115589", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00005', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '圖二所示結構中，柱 C-E以鉸接的方式連接至連續梁 A-B，結構於 B點
承受一集中載重100kN。各桿件的撓曲剛度為EI 5 106 kN m2，請
計算 B點的垂直位移。（25 分）
= × −
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "594d53115589", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00006', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '圖三所示梁 A-C，於 C 點設置定向支承（容許垂直方向移動，束制
轉動與水平方向移動），並於 B 點以吊索 B-D 支撐，梁的撓曲剛度為
EI 2 107 kN m2，吊索的軸向剛度為EA 4 10 kN。請以柔度法
（力法）分析： 6
= × − = ×
吊索的受力。（20 分）
梁所受的最大正彎矩與負彎矩。（10分）
註：索力建議以kN為單位，取至整數位進行梁彎矩分析。
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "594d53115589", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00007', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-114-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '圖四所示剛架，各桿件的撓曲剛度均為EI 10 kN m2。梁 B-C承
受均布載重後，支承 A發生水平位移 5mm向左（遠5 離支承 D），但無沉
= 1× −
陷與轉角；支承D沒有發生任何位移與轉角。請依據結構的變形特性與
邊界條件，以勁度法（位移法）進行分析，繪製剛架的彎矩圖，並標註
節點及各桿件的最大彎矩值。（25 分）
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "594d53115589", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00008', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '何謂再生瀝青混凝土？試說明再生瀝青混凝土新舊粒料的組合及使用
率，以及再生瀝青混凝土之馬歇爾配合設計與一般熱拌式瀝青混凝土的
差異。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "709c846df25e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00009', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '試詳述施工規範之涵意及訂定目的，施工規範之種類，以及施工規範之
用途。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "709c846df25e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00010', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '在工程管理中，製程管制圖是一種常用的品質管制工具，其中當材料試
驗樣本數量不多時，常採用平均數—全距管制圖（x-Rchart）。表一顯示
某工程混凝土材料抗壓力（kgf/cm2）試驗資料，其中共有 10組資料，每
組共有 4 個樣本。試回答下列問題：
計算各組抗壓力之平均值、標準差及全距，並在作答紙上繪製，填寫
答案。（7分）
計算 10組抗壓力之平均值、標準差及全距，並在作答紙上繪製，填寫
答案。（3分）
根據表二所列品質管制圖常用係數數據，試求x管制圖之中心線x、管
制上下限（UCL、LCL）。（7分）
同上數據，試求R管制圖之中心線R、管制上下限（UCL、LCL）。（8分）
表一 某工程之混凝土材料抗壓力試驗資料 表二 計量值管制圖係數
⑴ ⑵ ⑶ ⑷ 平均值 標準差 全距 每組樣本數 管 制 圖 係 數
286 270 290 272 n A D D
2 3 4
271 289 293 280
2 1.880 0 3.267
265 292 274 283
3 1.023 0 2.575
285 299 290 270
4 0.729 0 2.282
281 283 294 295
276 262 273 285 5 0.577 0 2.115
254 296 300 270 6 0.483 0 2.004
285 296 280 282 7 0.419 0.076 1.924
274 284 289 290
8 0.373 0.136 1.864
271 284 268 293
9 0.337 0.184 1.816
合計
10 0.308 0.223 1.777
平均
15860', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "709c846df25e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
