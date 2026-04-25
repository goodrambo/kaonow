-- W1.6 questions batch 4515/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel2-3df1c47f-moex-00015', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-111-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '試寫出區集及處理效應均為固定型，其中區集數及處理數均為 r，並且
不具交感效應的拉丁方格設計之數學模式，請解釋各成分的意義及限制
條件。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "fba8ba569496", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111160", "c": "212", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "111", "exam_name": "111年公務人員高等考試一級暨二級考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00016', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-111-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '考慮一個隨機完全區集設計，所使用的線性統計模式為：
y μα β
ε
ij i j ij
這裡的μ為總平均；α 為處理效應；β 為區集效應； 為一隨機誤差，
ε
i j ij
4
i1,2,...,4； j1,2,...,6。並假設 α 0及β 的分布為互相獨立的
i1 i j
2  2
N 0,σ ， 的分布為互相獨立的N 0,σ ，所蒐集到的試驗資料中，各
ε
β ij
處理平均分別為：y 92.67；y 92；y 89；y 86。經計算所得
1. 2. 3. 4.
到的處理平方和為 168.5，區集平方和為 194.33，誤差平方和為 113。請
回答以下問題：（每小題 5 分，共25 分）
請估計第 3處理平均y 的標準誤差為何？
3.
請估計第 1處理平均與第 2處理平均，這兩平均差的標準誤差為何？
請估計區集變方為何？
請問在上述的線性統計模式下，同一區集內，任兩個觀測值的變積
（covariance）為何？
同樣在上述的線性統計模式下，不同區集間，任兩個觀測值的變積
為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "fba8ba569496", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111160", "c": "212", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "111", "exam_name": "111年公務人員高等考試一級暨二級考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00017', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-111-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '某技術人員進行田間試驗，決定A因子採用 a個等級，B因子採用 b 個
等級，A、B 兩因子均為固定型，並安排成重複一次（n1）的因子設
計，考慮利用以下的線性統計模式進行資料分析：
i1,2,...,a
y μτ β (τβ)
ε
ij i j ij ij j1,2,...,b
其中μ是總平均效應；τ 是 A 因子的第 i 個等級效應；β 是 B 因子的第
i j
j個等級效應；(τβ) 是τ 和β 之間交感作用的效應； 是隨機誤差。
ε
ij i j ij
請問如要對各因子效應進行顯著性檢定時會發生什麼問題？（10 分）
請提出可能解決此問題的方法並詳細說明如何進行？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "fba8ba569496", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111160", "c": "212", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "111", "exam_name": "111年公務人員高等考試一級暨二級考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel2-3df1c47f-moex-00018', 'heelevel2-3df1c47f', 'heelevel2-3df1c47f-moex-111-44bd4b53', 'sub-heelevel2-3df1c47f-01', NULL, 'essay', '統計試驗設計最主要的目的是要讓試驗的結果具有準確性（accuracy）及
精確性（precision），因此當進行試驗設計時應遵守三個基本原則。
請詳細說明三個基本原則的作用為何？（10 分）
請詳細說明三個基本原則之間的相互關係為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:37+00:00", "source_pdf_sha1": "fba8ba569496", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111160", "c": "212", "s": "0602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "111", "exam_name": "111年公務人員高等考試一級暨二級考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel2", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-0489de64-moex-00001', 'heelevel3-0489de64', 'heelevel3-0489de64-moex-114-341b1486', 'sub-heelevel3-0489de64-01', NULL, 'essay', '請詳述地方政府依據「道路交通安全基本法」之規定，可透過那些作為
建立安全之用路環境及文化？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:17+00:00", "source_pdf_sha1": "bf8bf5f69289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "239", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "交通行政"}'::jsonb, NULL),
  ('heelevel3-0489de64-moex-00002', 'heelevel3-0489de64', 'heelevel3-0489de64-moex-114-341b1486', 'sub-heelevel3-0489de64-01', NULL, 'essay', '我國在 2020 年版運輸政策白皮書之「運輸部門因應氣候變遷調適與防
災分冊」中提到以「降低脆弱度及提升韌性」為核心理念，請說明何謂
運輸部門韌性（resilience）？並詳細說明我國提升運輸部門韌性可採取
之施政重點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:17+00:00", "source_pdf_sha1": "bf8bf5f69289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "239", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "交通行政"}'::jsonb, NULL),
  ('heelevel3-0489de64-moex-00003', 'heelevel3-0489de64', 'heelevel3-0489de64-moex-114-341b1486', 'sub-heelevel3-0489de64-01', NULL, 'essay', '近年來偶有發生鐵路事故或異常事件，依據「鐵路法」之規定：鐵路機
構應根據前一年度之事故及異常事件檢討結果，於每年第一季結束前，
向交通部鐵道局提出當年度安全管理報告。請詳述鐵路機構所提安全管
理報告，應涵蓋那些具體內容？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:17+00:00", "source_pdf_sha1": "bf8bf5f69289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "239", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "交通行政"}'::jsonb, NULL),
  ('heelevel3-0489de64-moex-00004', 'heelevel3-0489de64', 'heelevel3-0489de64-moex-114-341b1486', 'sub-heelevel3-0489de64-01', NULL, 'essay', '請列舉四個人工智慧在交通治理或服務之可能應用案例或情境，並詳述
人工智慧技術在該案例或情境中所扮演之角色。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:17+00:00", "source_pdf_sha1": "bf8bf5f69289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "239", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通政策與行政", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "交通行政"}'::jsonb, NULL),
  ('heelevel3-0489de64-moex-00005', 'heelevel3-0489de64', 'heelevel3-0489de64-moex-114-456557e4', 'sub-heelevel3-0489de64-02', NULL, 'essay', '請說明影響鐵路行車安全之要素。歐洲嘗試以 RAMS（Reliability,
Availability, Maintainability and Safety）的標準來維持鐵路行車安全管理
一致性，請說明如何應用 RAMS 的標準來確保鐵路系統的行車安全。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:17+00:00", "source_pdf_sha1": "3a738c1e2564", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "239", "s": "1108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "交通行政"}'::jsonb, NULL),
  ('heelevel3-0489de64-moex-00006', 'heelevel3-0489de64', 'heelevel3-0489de64-moex-114-456557e4', 'sub-heelevel3-0489de64-02', NULL, 'essay', '請說明公路汽車客運基本運價之計算方法以及費率公式。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:17+00:00", "source_pdf_sha1": "3a738c1e2564", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "239", "s": "1108", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "交通行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
