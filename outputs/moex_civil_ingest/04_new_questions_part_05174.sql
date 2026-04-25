-- W1.6 questions batch 5174/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8e13c35a-moex-00023', 'heelevel3-8e13c35a', 'heelevel3-8e13c35a-moex-110-5a8e61f1', 'sub-heelevel3-8e13c35a-02', NULL, 'essay', '臺鐵 3年之內連續發生普悠瑪號出軌，以及太魯閣號撞車兩件重大傷亡
事故，各界紛紛要求臺鐵進行改革，民營化、公司化的議題再度被提起。
請問民營化與公司化有何差異？請分析造成臺灣民營化政策延宕的原
因。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:50+00:00", "source_pdf_sha1": "2f8785302dd7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "301", "s": "0503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共管理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "績效審計"}'::jsonb, NULL),
  ('heelevel3-8e13c35a-moex-00024', 'heelevel3-8e13c35a', 'heelevel3-8e13c35a-moex-110-5a8e61f1', 'sub-heelevel3-8e13c35a-02', NULL, 'essay', '去年爆發新冠肺炎（COVID-19）疫情，臺灣因為實施口罩實名制的管制
政策，成功避免搶購的混亂。以行政介入目的來看，管制行為可分為經
濟管制與社會管制。請分別敘述這兩種管制的意義與目的，並各舉一例
說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:50+00:00", "source_pdf_sha1": "2f8785302dd7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "301", "s": "0503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共管理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "績效審計"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00001', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '如果任何布林函數（Boolean function）可以藉著重複使用一種邏輯閘或
一組邏輯閘來建構，則稱該邏輯閘或該組邏輯閘為通用的（universal）。
例如，集合{AND,OR,NOT}是一組通用的邏輯閘。請寫出 AND,OR, 與
NOT邏輯閘的真值表。然後使用這三種邏輯閘設計與畫出一個 2 對1 多
工器，並說明其動作。所謂的 2對 1 多工器為一個組合邏輯模組，它由
兩個資料輸入端（I 與 I ）、一個標的選擇線（S）與一個資料輸出端（Y）
0 1
組成。當選擇線（S）為邏輯 0 時，輸入資料端 I 的值即傳送到資料輸
0
出端（Y）；當選擇線（S）為邏輯 1 時，輸入資料端 I 的值即傳送到輸
1
出端（Y）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00002', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '目前固態硬碟（SSD，solid-statedisk orsolid-state driver）已經廣泛地使
用在計算機（或稱電腦）系統或是當作資料儲存的隨身碟。目前用來生
產固態硬碟的 NANDFlash 有四種，分別是單層式儲存（SLC）、多層式
儲存（MLC，通常用來指稱雙層式儲存）、三層式儲存（TLC）、四層式
儲存（QLC）。請說明這四種 NANDFlash 的差異，再由使用者觀點，比
較它們的讀寫速度、使用壽命與成本。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00003', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '在計算機（或稱電腦）系統或是計算機網路中，資訊傳輸的安全性倍受
重視。為此，許多不同的加密與解密技術（或稱演算法）廣泛的應用於
此等系統中，研究這些技術的專門學問則稱為密碼學（cryptography）。
然而這些技術可以歸納為兩大類：對稱式密碼學（symmetric
cryptography）與非對稱式密碼學（asymmetriccryptography）。請說明這
兩者的區別。又公鑰（publickey）與私鑰（privatekey）與上述兩種密碼
學有何關連？請說明之。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00004', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '欲將桌上型計算機（或稱電腦）連接到網際網路時，必須設定下列四個
TCP/IP 通訊協定的項目：IP（internet protocol）位址、子網路遮罩
（subnetworkmask）、預設閘道（defaultgateway）IP 位址、DNS（Domain
Name System或是 Domain Name Server）IP位址。請說明上述各項目的
功能。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00005', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '在計算機系統中，搜尋（search）資料為一個常用的演算法。今有一個 N
個元素的陣列。請先由計算機科學的觀點定義什麼是演算法，再說明循
序搜尋（sequentialsearch）與二元搜尋（binarysearch）的適用時機，並
使用運算的次數為時間單位，比較兩種搜尋方式在搜尋上述 N個元素的
陣列時的最小搜尋時間、平均搜尋時間與最大搜尋時間。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00006', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '請問以下訊號是否具有週期性（periodic）？若是，請求其週期（period）；
若否，請說明為什麼？
取樣後（sampled）的離散時間（discrete-time）訊號x[n] Acos(2f n)，
0
其中 A為常數。（10 分）
連續時間（continuous-time）訊號x (t)2cos(2t)4sin(6t)。（5分）
1
連續時間訊號x (t)4sin(6t)7cos(30t)。（5分）
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00007', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '假設 x(t)與 y(t)分別為線性非時變（linear time-invariant, LTI）系
統 的 輸 入 訊 號 與 輸 出 訊 號 ， 已 知 若 x(t)  X ej2nft ， 則
0
n
n
y(t)  X ej2nft ej2nft，其中t 為常數。請回答以下的問題：
00 0
n 0
n
如果輸出訊號為y(t) Acos(2f t)，A為常數，請求輸入訊號x(t)以及
0
t 。（10分）
0
如果輸入訊號x(t) Acos(2f t) Asin(2f t)，請求輸出訊號 y(t)。
0 0
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00008', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-114-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '假設一線性非時變（linear time-invariant, LTI）系統的輸入訊號x(t)與輸
出訊號y(t)滿足以下的微分方程式（differentialequation）：
dy(t) dx(t)
ay(t)b cx(t)，
dt dt
其中 a、b、c為非負常數（non-negativeconstant）。如果該線性非時變系
統的頻率響應（frequencyresponse）為H(f)，請求該線性非時變系統的
振幅響應（amplitude response） H(f) 以及相位響應（phase response）
H(f)。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:00+00:00", "source_pdf_sha1": "2a674a0e3a15", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "276", "s": "2513", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
