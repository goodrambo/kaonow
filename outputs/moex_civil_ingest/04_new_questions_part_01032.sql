-- W1.6 questions batch 1032/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-39f5e973-moex-00052', 'customs-39f5e973', 'customs-39f5e973-moex-113-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '一串含有 8個整數的資料：48, 55, 10, 88, 26, 80, 35, 40，請以第一個數值
為樞紐（pivot）進行快速排序法（quicksort），將這些資料由小排到大，
並寫出詳細的比較過程。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00053', 'customs-39f5e973', 'customs-39f5e973-moex-113-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '有一棵高度平衡二元搜尋樹（balanced binary search tree）又稱 AVL 樹
（Adelson-Velskii Landis tree）如下圖，加入 90，請詳細說明該如何調整
成一棵AVL樹？接著再加入85，請詳細說明該如何調整成一棵AVL樹？
接著再刪除 15，該如何調整成一棵 AVL 樹？請將最後調整後的 AVL 樹
中每個節點之平衡因子（balancefactor）寫在節點旁邊。（25分）
25
15 60
30 80', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00054', 'customs-39f5e973', 'customs-39f5e973-moex-113-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '有一棵二元樹（binarytree）利用一維陣列來存放其節點，假設樹根（root）
存放在索引（index）為 1 的位置，若有一節點 i 存放在索引為 1024 的位
置，請問該節點i的父節點存於陣列的那個位置，其索引為何？若節點i有
一右子節點 j，請問節點 j 存於陣列的那個位置，其索引為何？用一維陣
列存放二元樹，最浪費陣列空間的二元樹是那一種？請畫出並詳細說明。
（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00055', 'customs-39f5e973', 'customs-39f5e973-moex-113-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '給定一個以相鄰矩陣（adjacencymatrix）表示的一無方向圖如下表，∞表
示沒有邊（edge）相鄰。請畫出對應的圖形，每個邊和其對應的權值必須
列出。另外請使用 Kruskal’s 演算法計算權重最小的生成樹（minimum
spanning tree），並詳細列出該生成樹的形成過程。（20 分）
a b c d e f g
a ∞ 13 9 10 ∞ ∞ ∞
b 13 ∞ ∞ 16 ∞ ∞ ∞
c 9 ∞ ∞ 12 2 3 ∞
d 10 16 12 ∞ ∞ ∞ 18
e ∞ ∞ 2 ∞ ∞ 4 ∞
f ∞ ∞ 3 ∞ 4 ∞ 6
g ∞ ∞ ∞ 18 ∞ 6 ∞', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00056', 'customs-39f5e973', 'customs-39f5e973-moex-113-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', 'UML（UnifiedModelingLanguage）2.5.1 版定義 14 種圖（Diagram），請
舉出至少六種 UML 圖，並說明這些 UML 圖之間如何互相搭配以完成資
訊系統塑模（Modeling）工作。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4795c213c012", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00057', 'customs-39f5e973', 'customs-39f5e973-moex-113-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '零售業者已嘗試開發生成式 AI 應用系統並探索其潛力，期望藉此提升銷
售互動體驗。
現有電子商務網站與上述生成式 AI應用系統有何差異？（10 分）
在開發生成式 AI 應用系統時，相對於現行資訊系統開發，需要額外加
以思考的問題與解決方案為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4795c213c012", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00058', 'customs-39f5e973', 'customs-39f5e973-moex-113-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '網際網路溝通（InternetCommunication）的一項能力，是個人可以使用虛構
用戶名稱，在網路上從事匿名活動。試問匿名和隱私權屬同一件事嗎？匿名
權利應被保障嗎？匿名性增加會衍生出那些倫理議題？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4795c213c012", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00059', 'customs-39f5e973', 'customs-39f5e973-moex-113-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '謠言、假消息、假新聞、偏頗資訊、錯誤資訊等是近年來引起廣泛討論的
網路議題。請舉具體實例，試述其傳遞路徑、流傳的原因及社群媒體（Social
Media）在其散布過程中扮演的角色。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4795c213c012", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00060', 'customs-39f5e973', 'customs-39f5e973-moex-113-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '有一個組織擁有一個 /23 網段，需要分出數個子網路，以便提供給各部門
使用。（每小題5 分，共 25分）
設定 subnet mask 的目的為何？
/23網段共有多少可使用之 IP位址？
/23網段的 subnet mask 為何？
若切成 8個子網路，subnet mask 為何？
延續，各子網路有多少可使用之 IP位址？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "8484bc43afeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00061', 'customs-39f5e973', 'customs-39f5e973-moex-113-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', 'DNS cache poisoning 或稱 DNS spoofing，是污染 DNS伺服器資料，導致
DNS 查詢回傳錯誤 IP 資訊給客戶端。請說明此種攻擊之攻擊原理與防範
方法。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "8484bc43afeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
