-- W1.6 questions batch 8272/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-39f5e973-moex-00199', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '1', '["1", "", "2", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d0cd7ea1e12f", "answer_pdf_sha1": "690af196782e", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2616", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00200', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '2', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d0cd7ea1e12f", "answer_pdf_sha1": "690af196782e", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2616", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00201', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '關於影像媒體，下列敘述何者正確？', '["點陣圖是使用角度、座標、距離等參數來表示圖形", "向量式繪圖的影像較容易失真，但儲存空間小、處理速度較快", "點陣圖與向量圖屬於動態影像", "點陣圖用於需要精細細節的複雜繪圖"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d0cd7ea1e12f", "answer_pdf_sha1": "690af196782e", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2616", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 40, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00202', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-1f134407', 'sub-pukao-39f5e973-04', NULL, 'essay', '一個 m×n 的二維矩陣 A ，其中列數 m=5，行數 n=4，A 矩陣大部
m×n
分的元素值為 0，屬於稀疏矩陣，請試述：
稀疏矩陣的缺點？（10分）
使用一個二維密集矩陣 B表現稀疏矩陣 A。A矩陣的非零元素分別為
A(0,0)=1,A(1,1)=2,A(2,2)=3,A(3,0)=4,A(4,3)=5，如圖，請畫出 B
矩陣。（20 分）
1 0 0 0
0 2 0 0
0 0 3 0
4 0 0 0
0 0 0 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00203', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-1f134407', 'sub-pukao-39f5e973-04', NULL, 'essay', '有一資料表 R，以 R(A, B, C, D, E, F)表示，A～F為資料表 R的欄位名
稱，功能相依以X→Y表示，表欄位 Y依賴欄位 X。資料表 R存在下列
功能相依：
A→(E, F)
B→C
(A, D)→(B, C, E, F)
請問：
R資料表的主鍵為何？（10 分）
將資料表 R正規化為符合三階正規資料表，其中必須將三階正規化後
的所有資料表，標出主鍵(P)和外部鍵(F)。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00204', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-1f134407', 'sub-pukao-39f5e973-04', NULL, 'essay', '容錯式磁碟陣列（Redundant Array of Independent Disks; RAID）的使用
對於資料的儲存策略影響深遠，請試述何謂 RAID 0、RAID 1？假設共
有 n 顆硬碟，每顆硬碟規格皆相同，請就組成 RAID 0、RAID 1 最少
硬碟數、最大容錯硬碟數、可用容量硬碟數三方面，比較它們的差異。
（10 分）
44630', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00205', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-1f134407', 'sub-pukao-39f5e973-04', NULL, 'essay', '網際網路上的應用，如全球資訊網（World Wide Web）的應用已蓬勃發
展，有所謂的 WEB1.0、WEB2.0、WEB3.0 世代的演進，其中 WEB3.0
有學者認為是語意網的發展，另一派學者認為是去中心化的發展，目前
尚無定論。請以資訊提供者、資訊品質、資訊互動性，試述比較WEB1.0
和 WEB2.0 的差異。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00206', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '請闡述資訊管理職場生涯的職種，包括資訊長（ChiefInformationOfficer,
CIO）、知識長（ChiefKnowledgeOfficer,CKO）以及資訊安全長（Chief
SecurityInformationOfficer,CSIO）的工作性質與所需具備的能力或經驗。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "3dcb53e6cf94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2620", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00207', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '請闡述下列名詞的意涵：工作分解結構（WorkBreakdownStructure）、組
織分解結構（OrganizationBreakdownStructure）、工作包（Workpackage）
以及工作項目（Activity），並且說明它們的關係。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "3dcb53e6cf94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2620", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00208', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '有一網路設備的網路設定如下：IP 位址為 167.11.12.88、網路遮罩為
255.255.255.0。針對此網路設備的子網路，請回答下列問題：
（每小題 5分，共 10 分）
子網路 ID（SubnetID）為何？
常用的預設閘道器的 IP位址為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "3dcb53e6cf94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2620", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
