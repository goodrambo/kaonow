-- W1.6 questions batch 2494/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-39f5e973-moex-00039', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '請說明函式之間的呼叫方式，其實際參數（actual parameter）與形式參數
（formalparameter）的傳送有那幾種？並撰寫對應的程式片段加以說明。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "d4649458a90c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00040', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '請解釋並舉例說明何謂多載函式（overloaded function）與樣版函式
（template function）？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "d4649458a90c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00041', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-84f8139f', 'sub-disabled-39f5e973-04', NULL, 'essay', '程式語言中變數要給予資料型態，其作用為何？同時請說明何謂靜態連
結（static binding）和動態連結（dynamic binding）的作用時機點及其優
缺點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "d4649458a90c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00042', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '請回答下列 BigO的相關問題：
BigONotation，根據維基百科又稱為漸進符號，它是用於描述演算法漸
進行為的數學符號。更確切地說，它用更簡單的函式來描述一個演算法在
數量上的漸進趨勢。某個問題可採用5個演算法A～E求解，各演算法執
行時間的BigO分別如下：A為O（N2），B為O（Nlog（logN）），C
為O（N1.5），D為O（N2log（N）），E為O（SQRT（N））。當N很
大時，請根據演算法的執行時間，由慢至快排序這5個演算法。（10分）
給定 100 萬個介於 0 到 100（含 0 及 100）的整數，請利用任一種高階
程式語言寫出一個 O（N）的由大至小的排序演算法，並說明此演算法
為何是 O（N）的方法。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "404c2a903583", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00043', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '以下 7個數字[21,1,16,11,25,9,35]，要儲存到 HashTable中，HashTable
的儲存空間是一個索引從 0開始的一維陣列（Array）。假設 Hash函數為
H（Key）=（Key * 3）mod 7，裝填因子（Load Factor）為 0.7。
若處理 HashTable衝突的方法為開放定址法（OpenAddressingHashing）
中的線性探測法（LinearProbing）：增量函數 F（i）=i（i為衝突的次
數）。請依序列出每存入一個數字後的 HashTable的內容。接著計算在
相同機率的情況下，查找成功及查找失敗的平均查找長度（Average
Search Length;ASL）。（15 分）
若處理 HashTable衝突的方法為開放定址法（OpenAddressingHashing）
中的平方探測法（Quadratic Probing）：增量函數F（i）= i2（i為衝突
的次數）。請依序列出每存入一個數字後的 HashTable的內容。接著計
算在相同機率的情況下，查找成功及查找失敗的平均查找長度（Average
Search Length;ASL）。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "404c2a903583", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00044', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '請寫出對以下 8個數字[44, 62, 31, 5, 82, 49, 16, 7]，依序建構最小堆積樹
（MinHeapTree）的過程。為方便最小堆積樹的建構，我們通常會使用一
個一維陣列來儲存堆積樹中的數字。請說明如何用一維陣列來處理最小堆
積樹的建構。最小堆積樹建構完成後，請寫出如何用此樹依序將數字由小
到大的排序過程。請說明此種排序法的計算複雜度BigO為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "404c2a903583", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00045', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '下圖中有 4個城市 8 條公路，公路上的數字表示這條公路的長短。請注意
這些公路是單向的。若使用 FloydWarshall的動態規劃法求解從任意兩個
城市之間的最短路徑，請回答下列問題：
首先將圖的信息建成一個 N*N 的初始距離矩陣，其中 N 是節點的個
數，矩陣的各列（Rows）代表 From Nodes，矩陣的各行（Columns）
代表 ToNodes，矩陣中的值則分別代表上圖中從 FromNode到 ToNode
的距離。（5 分）
其次列舉從D到C的最短路徑求解過程（需輸出最短路徑的值及路徑），
並說明此方法的計算複雜度 BigO為何。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "404c2a903583", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00046', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '請問何謂工業 4.0，工業 4.0 與過去的工業發展有何差別？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "0575f43761c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00047', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '這次的防疫工作，中央流行疫情指揮中心倚重簡訊實聯制系統來提供疫調
的資料。請問以你的觀點，實聯制跟實名制有何差異？這套實聯制系統比
起在門口留下個人資料，為何比較能夠保護民眾的個資？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "0575f43761c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00048', 'disabled-39f5e973', 'disabled-39f5e973-moex-111-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', '如果你要用機器學習模式來訓練你的系統辨識圖片中的狗，請敘述主要的
作業過程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "0575f43761c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "308", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
