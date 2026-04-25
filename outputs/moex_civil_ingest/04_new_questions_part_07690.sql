-- W1.6 questions batch 7690/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-39f5e973-moex-00011', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '費伯納西數列（Fibonacci Sequence）定義如下：F(0) = 0，F(1) = 1，
F(n)= F(n-1) +F(n-2)，n≥2。請完成下列各題：
使用遞迴方法（Recursion）撰寫虛擬碼，計算第 n 項的費伯納西數。
（8 分）
使用動態規劃方法（DynamicProgramming）撰寫虛擬碼，透過自底向
上（Bottom-up）的方式計算第 n項的費伯納西數。（8分）
比較兩個方法的時間複雜度（TimeComplexity）。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7fb1cad70d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00012', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '已知 B+-tree的階數（Order）為 m=3。葉節點至多可存放 2 個鍵值，至
少須存放 1個鍵值；內部節點至多可有 3 個子節點，至少須有 2個子節
點。當節點因插入而溢位時，規定葉節點分裂時將右子節點之第一個鍵
值提升至父節點，內部節點分裂時則將中間鍵值提升至父節點。請完成
下列各題：
依序插入 17、5、12、23、7、19、3、30等 8 個鍵值以建構 B+-tree。
請逐步說明並繪製每次插入後之樹形結構。（12分）
承接之結果，依序刪除7、23 與 5 等三個鍵值。刪除過程中若需借
值時，一律自右兄弟節點借取；若無法借值，則與左兄弟節點合併。
請逐步說明並繪製每次刪除鍵值後之樹形結構。（6 分）
承接之結果，說明在該 B+-tree 中搜尋鍵值 19 之完整過程，並列出
查找時經過之節點及比較順序。（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7fb1cad70d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00013', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '已知待排序數列如下：36,45,59,81,72,64,36,27，其中 36與另一個 36
數值相同，但以底線標示以便在排序過程中追蹤其相對次序。請完成下
列各題：（每小題 6 分，共 24分）
說明何謂穩定排序（Stable Sort），並解釋若演算法不屬於穩定排序，
在處理相同鍵值時會造成什麼影響。
使用選擇排序（SelectionSort）對上述數列進行排序，並逐步描述每次
選擇與交換的過程，最後給出排序後的結果。
使用合併排序（MergeSort）對上述數列進行排序，並描述拆分與合併
的過程，最後給出排序後的結果。
使用基數排序（RadixSort）對上述數列進行排序，並描述逐位（個位
數、十位數）的桶排序（BucketSort）過程，最後給出排序後的結果。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7fb1cad70d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00014', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '19 世紀電報傳輸以訊號數計費。為了降低成本，電報公司決定採用霍夫
曼編碼（Huffman Coding）壓縮電文。假設要傳輸字母 TURING，其出
現次數如下：T(15 次)，U(7 次），R(6 次），I(6 次)，N(5 次)，G(5次)。
在建構過程中，每次取出權重最小的兩個節點合併；若兩者權重相同，
則依字母順序決定先後。請完成下列各題：
依步驟建構霍夫曼樹，並寫出各字母的編碼。（10 分）
比較固定長度編碼（假設每個字母以 3 位元表示）與霍夫曼編碼，並
計算壓縮率（需列計算過程）。（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7fb1cad70d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00015', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-9aa8415c', 'sub-promotion-39f5e973-03', NULL, 'essay', '下圖為一有向圖（Directed Graph）G。請完成下列各題：
（每小題 4分，共 16 分）
畫出圖 G的相鄰串列（Adjacency List）。
畫出圖 G的相鄰矩陣（Adjacency Matrix）。
從節點 a開始，寫出廣度優先搜尋（Breadth-FirstSearch,BFS）的節點
拜訪順序。
從節點 a開始，寫出深度優先搜尋（Depth-First Search, DFS）的節點
拜訪順序。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7fb1cad70d5b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00016', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-694c1c8f', 'sub-promotion-39f5e973-04', NULL, 'essay', '請說明安全軟體發展生命週期（Secure Software Development Life
Cycle, SSDLC）與傳統 SDLC 的差異，並解釋 SSDLC 為何在軟體開
發過程中必須納入安全性需求。（10 分）
請設計一個完整的 SSDLC 安全治理模型，涵蓋「政策（Policy）」、
「流程（Process）」、「技術（Technology）」，並解釋如何確保系統從需
求到維護全程符合法規與標準（如：ISO27001、資通安全管理法等）。
（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7431faa7226e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與分析", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00017', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-694c1c8f', 'sub-promotion-39f5e973-04', NULL, 'essay', '在系統發展生命週期（SystemDevelopmentLifeCycle,SDLC）的需求規
劃階段，如何結合零信任原則（ZeroTrust Principles），以確保系統符合
法遵對於個人隱私的要求（如：個人資料保護法與GDPR的隱私要求）？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7431faa7226e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與分析", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00018', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-694c1c8f', 'sub-promotion-39f5e973-04', NULL, 'essay', '何謂「軟體物料清單（SoftwareBillofMaterials,SBOM）」？（10分）
在系統建置階段，如何結合 SBOM與零信任原則，確保開源元件在部
署前即通過驗證與漏洞檢查？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7431faa7226e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與分析", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00019', 'promotion-39f5e973', 'promotion-39f5e973-moex-114-694c1c8f', 'sub-promotion-39f5e973-04', NULL, 'essay', '請說明黑箱測試（Black-BoxTesting）與白箱測試（White-BoxTesting）
的差異，並說明在什麼情境下適合使用這兩種測試方法。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:10+00:00", "source_pdf_sha1": "7431faa7226e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114160", "c": "181", "s": "2007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊系統與分析", "year": "114", "exam_name": "114年公務人員升官等考試、114年關務人員升官等考試、114年交通事業郵政人員升資考試、114年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('promotion-39f5e973-moex-00020', 'promotion-39f5e973', 'promotion-39f5e973-moex-112-84f8139f', 'sub-promotion-39f5e973-01', NULL, 'essay', '請依據以下 Python 程式碼回答以下問題：（25分）
⑴請說明費氏數列函式 fib的輸入參數與回傳結果。
⑵請說明第 6行輸出結果並加以說明。
⑶請說明第 7行輸出結果並加以說明。
1 deffib(n):
2 if(n==0): return0
3 elif(n==1): return1
4 else:
5 returnfib(n-1)+fib(n-2)
6 print("fib(1)=",fib(1))
7 print("fib(5)=",fib(5))', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:11+00:00", "source_pdf_sha1": "da755ff9c739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "181", "s": "2006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
