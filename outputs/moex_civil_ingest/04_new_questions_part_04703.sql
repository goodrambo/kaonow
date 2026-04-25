-- W1.6 questions batch 4703/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00005', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '一棵空的階數為3的B-Tree（B-Treeoforder3）。由左而右依序插入下列
鍵值（keyvalue）：10,80,2,9,45,62。請問插入完畢後，根節點中的鍵值
有那些？請依序由小到大列出，用逗號分隔，並請說明樹節點的變化。
（10分）有一棵階數為 5 的 B-Tree（B-Treeoforder5），其高度（height）
為 3，請問這棵樹中最多可以儲存多少個鍵值？(10 分)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "0d6ed9eac76a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00006', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '有一個三維整數陣列 A[3][6][8]，每個元素占用 4個記憶體空間，每個記
憶體空間均有位址。該陣列在儲存至記憶體時，會先被轉換為一維陣列
的形式儲存。下列位址皆為十進位，已知 A[0][1][2]的記憶體位址為
2040，A[1][4][5]的位址為 2340。請問陣列 A 在記憶體中的儲存方式為
何？是以列為主（row-major）還是以行為主（column-major）？（10 分）
請計算 A[1][5][3]在記憶體中的位址為何？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "0d6ed9eac76a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00007', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '假設 G為一個無方向連通加權圖（Undirectedconnectedweightedgraph），
包含五個節點：A、B、C、D、E。各節點間相連情形如下，邊權（邊的
權重）為正整數，代表邊的成本。
A與 B 相連，邊權為 16；
A與 C 相連，邊權為 18；
A與 D相連，邊權為 14；
B 與 C 相連，邊權為 15；
C 與 D相連，邊權為 13；
D與 E相連，邊權為 12；
C 與 E相連，邊權為 17；
請使用 Sollin’s 演算法，寫出最終形成的最小成本擴展樹的邊集合與總
成本，請寫出每一步的演算法與該步驟形成的擴展樹。每一合併過程，
列出選中的邊與合併的組成（component）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "0d6ed9eac76a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00008', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '根據下列的虛擬碼，若 n = 21 則傳回的答案為何？請說明。其中floor()
為數學上的地板函數（floorfunction）。（20分）
function splitSum(n:integer)returns integer
if n <=1 then
return 1
a ← floor(n /2)
b ← floor(n /3)
return splitSum(a)+ splitSum(b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "0d6ed9eac76a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00009', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '下列虛擬碼是利用某演算法對陣列 A的元素進行處理，請說明該法是進
行何種處理並請寫出其名稱和在最壞情況下時間複雜度為何？（10 分）
若陣列 A= [29, 10, 14, 37, 13]，請寫出該虛擬碼的處理過程：請列出陣
列在每一輪（每次外層迴圈執行完後）的內容變化情形。請特別標示出
最終結果為何？（10分）
doingSomething(A)
begin
n ←陣列 A的元素個數
fori ← 0 to n − 2 do
theIndex ← i
forj ← i + 1 to n − 1 do
ifA[j]<A[theIndex]then
theIndex ← j
end for
if theIndex <>ithen
temp =A[i]
A[i]=A[theIndex]
A[theIndex]=temp
end if
end for
end', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "0d6ed9eac76a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00010', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '您的一位好友是團爸/團媽，他每天的工作就是在自己營運的 line群組裡
面，推廣各色物美價廉的產品與接受群組裡親朋好友的訂單。最近有個
資訊公司來拜訪，建議他可以導入該公司的雲端訂單管理系統。您的好
友不了解導入這樣的系統可以帶來什麼樣的好處，請您試著用麥可•波特
的「價值鏈（ValueChain）」模型，分析這套雲端訂單管理系統可能為您
好友的團購事業帶來什麼影響？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9fcedf71335f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00011', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '您的好友經營一家小餐館，最近正在考慮要不要加入外送平台公司提供
的外送服務。據他說使用的費用並不便宜，而且每一訂單都要額外的付
費，對於這種小本經營的餐廳，確實是一筆不小的額外開銷。您可以站
在資訊系統的策略角色、交易成本理論、網路效應與資料導向決策等角
度跟他分析導入這樣一個外送服務可以帶來那些效益？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9fcedf71335f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00012', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '請問什麼是深度偽造 deepfake（10 分）？您認為它對於未來政府的資訊
安全維護會造成什麼樣的影響？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9fcedf71335f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00013', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '請您以一個線上客服系統來舉例，例如，現在有一位顧客小明，進入一
家電商的線上客服系統，他想詢問關於他最近購買的一台筆記型電腦的
退貨政策，以及他訂單的最新進度。請說明在這個典型的生成式 AI 的
運用情境裡，RAG（Retrieval-AugmentedGeneration，擷取增強生成）以
及 MCP（ModelContextProtocol，模型上下文協定）可以分別扮演什麼
樣的角色？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9fcedf71335f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00014', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '請說明軟體定義網路（Software-Defined Networking, SDN）的三層基本
架構與核心理念，並分析其對傳統網路管理與資安策略帶來的影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "3e892e66b836", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
