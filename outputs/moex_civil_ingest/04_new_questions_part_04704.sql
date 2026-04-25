-- W1.6 questions batch 4704/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00015', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '企業常透過網路位址轉譯（NetworkAddressTranslation,NAT）技術來節
省公有 IP 位址，然而在進行內部服務外部化（例如公開 Web、Mail、
VPN等伺服器）時，NAT設計可能帶來一些限制或挑戰，請說明兩項限
制或挑戰並提出對應的兩種解決方法。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "3e892e66b836", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00016', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '請說明社交工程攻擊與技術性攻擊（如惡意程式、SQLInjection）在手法
與防禦策略上的差異，並分析企業若僅依賴技術防禦可能面臨的風險。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "3e892e66b836", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00017', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-114-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '企業在面對重大資安事件（如勒索病毒入侵或大規模資料外洩）時，若
無有效的資安事件應變計畫，可能產生那些影響？請舉例說明，並提出
具體改善建議。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "3e892e66b836", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "277", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00018', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '資料模型（Data Model）是用來描述資料的性質與資料之間的關係，個
體關係模型（Entity-RelationshipModel,ERModel）是最常用的資料模型。
延伸個體關係模型（EnhancedEntity-RelationshipModel,EERModel）的
塑模概念（Modeling Constructs）主要包括個體（Entity）、關係
（Relationship）、屬性（Attribute）及父子型態關係（Supertype/Subtype
Relationship）四種，請分別定義這四種塑模概念並舉例說明。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "fd060b529e83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00019', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '某醫院的關聯式資料庫綱要（RelationalDatabaseSchema）包括下列兩個
表格：
表格一為住院病患，包括病患編號、病患姓名、病房編號、護理師編號
四個欄位，病患編號為主鍵；護理師編號為外來鍵。
表格二為護理師，包括護理師編號、護理師姓名、月薪三個欄位；護理
師編號為主鍵。
對於下列三個查詢問題，請各寫出一個 SQLSELECT指令。
列出月薪高於45,000元的每一位護理師之護理師編號與月薪。（10分）
列出有照顧住在病房編號‘8F12’的病患之護理師姓名。（10 分）
列出每一位有照顧病患的護理師編號與照顧人數。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "fd060b529e83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00020', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '一個關聯式資料庫表格的綱要如下所示：
T(A,B,C, D,E)
T為表格名稱，A、B、C、D、E為表格的五個屬性，{A,B}與{A,C}為
表格的兩個候選鍵。另外，此表格有下列功能相依（Functional
Dependency）：
{A,B}{D,E}、{A,C}  {D,E}、{B} {C}
請問表格 T為第幾正規型式（Normal Form）？請說明原因。（15 分）
若表格 T不是適當的正規型式（換言之，可能會有重複的資料），請將
該表格正規化（Normalization)，分解成若干個適當正規型式的表格。
請寫出每一個表格的綱要，包括表格名稱、屬性、主鍵以及外來鍵（假
設有外來鍵的話）。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "fd060b529e83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00021', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-804ba136', 'sub-heelevel3-39f5e973-01', NULL, 'essay', '資料倉儲（Data Warehouse）的多維度資料模型（Multidimensional Data
Model）以資料方塊（Data Cube）的形式來檢視資料，在資料方塊上的
操作稱為線上分析處理（OnlineAnalyticalProcessing，簡稱 OLAP），典
型的 OLAP操作主要包括向下鑽取（DrillDown）、向上鑽取（DrillUp）、
切片（Slice）及切塊（Dice）四種，請分別定義這四種 OLAP操作並舉
例說明。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "fd060b529e83", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00022', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '若有 200人，其中一個人開始打電話給兩個人。隨後，每個接到電話
的人都會打電話給另外兩個尚沒有接到電話的人。請問總共會撥打多
少通電話？有多少人不會打電話？（無推導過程不給分）（10分）
若一個二元樹其前序追蹤順序（Preorder Traversal）及後序追蹤順序
（PostorderTraversal）分別如下，請問此樹是否唯一？並請列出此二元
樹的中序追蹤順序（InorderTraversal）。（無推導過程不給分）（15分）
前序追蹤順序：T,S,R,F,D, I, H,E, Z, G, M, L, J,N, Q
後序追蹤順序：F,I, H, D, R, Z, G,E,S,J, N, L, Q, M,T', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "776a0fc8ffe7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00023', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '快速排序法（Quick Sort）最壞的情況下所需的時間複雜度（Time
Complexity）為 O(n2)，請說明是在何種情況下造成？（10分）
請列出其最壞的時間複雜度為O(n2)的推導過程。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "776a0fc8ffe7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00024', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '請使用虛擬碼（Pseudo Code）或任何程式語言，完成下列問題：
撰寫二元搜尋（BinarySearch）的遞迴及非遞迴程式。（20分）
推導二元搜尋的時間複雜度（TimeComplexity）。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "776a0fc8ffe7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
