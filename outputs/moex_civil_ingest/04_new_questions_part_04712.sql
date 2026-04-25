-- W1.6 questions batch 4712/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00095', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '假設某公司欲建立一個關聯式資料庫系統，以管理內部員工使用公務車
輛的狀況，該公司並限制一個員工在一天之內最多只能借用一部車輛。
假設表格定義為UNIVERSAL（Tag,Year,ID,Title,Date），其內每一筆資
料列（Tuple）記錄了某部車輛的車牌（Tag）和購買年份（Year），使用
該台車輛的員工編號（ID）和職稱（Title），以及使用的日期（Date）。請
針對此表格的 5 個屬性，列出三個合理且有意義（Non-Trivial）的函數
相依式（FunctionalDependency），並針對所列出的每一項式子，解釋其
合理性或詳述其所代表的限制。接著根據你所列出的函數相依式，分析
此 UNIVERSAL 表格，是否符合 BCNF正規化格式（Boyce-CoddNormal
Form）。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ce765862fb87", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1225", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00096', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '資料庫系統中，經常使用「鎖」（Lock）的機制來進行交易處理（Transaction
Processing）中的併行控制（ConcurrencyControl），而該機制允許某個資
料項目（DataItem）被「共享鎖」（SharedLock）或「排他鎖」（Exclusive
Lock）鎖定。請問這兩種不同鎖定的模式，對一個資料項目的使用方式
所造成的限制各自為何？另外，資料項目可以小到一筆資料列（Tuple）
或紀錄（Record），也可以大到涵蓋一整個表格或資料庫。請分析資料項
目的大小對系統的效能影響為何？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ce765862fb87", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1225", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00097', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '假設在某個 MongoDB的資料庫中，有個 Collection 叫做“student”，其中
每個物件表示學生的編號（_id）、姓名（name）包含名（first）和姓（last）
以及就讀的學系名稱（department）。一個範例物件以 JSON 格式表示如
下所列：
{"_id": "1",
"name": {
"first": "Ted",
"last": "Codd"
},
"department": "CS"
}
請以 Mongo語法，依序寫出符合下述要求的指令：
找出姓為“Codd”的學生，並限定只輸出第一位。（10 分）
刪除所有就讀“CS”系的學生資料。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "ce765862fb87", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1225", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00098', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', 'A為（8×4）矩陣、B 為（4×10）矩陣、C為（10×3）矩陣、D為（3×20）
矩陣、E為（20×4）矩陣，請列出此 5個矩陣相乘 ABCDE 所有
可能的乘法順序（請用括號表示乘法順序）。（5 分）請使用 Dynamic
Programming（動態規劃）的技巧計算出此五個矩陣相乘 ABCDE的
最佳乘法順序（請用括號表示乘法順序），使得五個矩陣相乘所需要花費
的乘法數量最少。（15 分）請列出此五個矩陣相乘所需要花費的最少
乘法數量。（5 分）（注意：未說明 Dynamic Programming 的計算過程，
不予計分。）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "09493e920491", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1223", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00099', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '假設收銀機內銅板的集合 S={$50, $20, $20, $15, $10, $2, $1, $1, $1}，而
預計找錢給顧客的金額 W=$75。請設計一個 Greedy（貪婪）的演算
法，來解決找錢給顧客的問題，使得找給顧客金額 W所使用的銅板數量
最少，並依此Greedy的演算法列出找給顧客金額W=$75的過程。（15分）
此 Greedy 演算法適合使用何種資料結構來完成。（5 分）此 Greedy
演算法的解法是否能保證為最佳解？請舉例說明。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "09493e920491", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1223", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00100', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '二元搜尋法（binarysearch）使用 divide-and-conquer（分而治之）演算法
技巧，對一個已排序的（sorted）且長度為 n的陣列 A[0:n1]，以二元化
方式進行資料值 x 的搜尋，其最差時間複雜度（worst case time
complexity）可降到(logn)。請使用 C++或 Python 語言，修改此二元
搜尋法，使其能對未排序的（unsorted）且長度為n 的陣列 A[0:n1]，進
行三元化搜尋，即以 divide-and-conquer技巧將此陣列切成三個子陣列，
並在可能包含資料值 x 的子陣列繼續進行 divide-and-conquer 技巧的搜
尋，如果找到則回傳 1，如果找不到則回傳 0。（17 分）（注意：請寫一
個 searching 類別，內含一個 search 功能）請分析修改後的三元化搜尋
法其最差時間複雜度（worstcasetimecomplexity）以 order的方式表示。
（8 分）（注意：不可將此陣列數值進行排序，請加註解說明程式碼作法。）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "09493e920491", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1223", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00101', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '請使用 C 語言寫一副程式 void FindMeanAverage(int A [], int n, int *
mean, int * average)，對一個未排序的（unsorted）且長度為 n 的陣列
A[0:n1]，尋找陣列中的中位數與平均數，並分別存入 mean 及 average
運算複雜度。（17 分）請舉例說明此副程式最差情況（worst case）所
花費的運算複雜度。（8 分）（注意：請加註解說明程式碼作法。）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "09493e920491", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1223", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00102', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-32d1c3e7', 'sub-heelevel3-39f5e973-08', NULL, 'essay', '請根據資通安全事件通報及應變辦法回答下列問題：
請說明資通安全事件通報內容應包括之項目。（15 分）
請說明公務機關資通安全事件之通報及應變的流程。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "33ac3b86cd62", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1226", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00103', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-32d1c3e7', 'sub-heelevel3-39f5e973-08', NULL, 'essay', '請回答下列資訊安全相關問題：
請說明雜湊函數與常見的演算法。（10分）
請說明雜湊函數的碰撞與不建議使用之原因。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "33ac3b86cd62", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1226", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00104', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-110-32d1c3e7', 'sub-heelevel3-39f5e973-08', NULL, 'essay', '請回答下列有關微型服務的問題：
請說明微型服務的特性。（6 分）
請說明微型服務的優勢。（24分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:14+00:00", "source_pdf_sha1": "33ac3b86cd62", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "379", "s": "1226", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
