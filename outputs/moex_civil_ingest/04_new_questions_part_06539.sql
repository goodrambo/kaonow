-- W1.6 questions batch 6539/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00022', 'locality-39f5e973', 'locality-39f5e973-moex-113-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請回答下列關於二元樹（BinaryTree）的問題：
一個算術運算式（ArithmeticExpression）可以用一個二元樹表示，稱
為算術運算樹（ExpressionTree），請將下列算術運算式以算術運算樹
表示。（5分）
(( (5 + 1 ) 3 － (7 + 2 ) )/ ( (( 2 8 )+ 5 )/ 7 ) )
請判斷下列敘述是否正確：（5分）
“一個算術運算樹是一個滿二元樹（Full Binary Tree, or Proper Binary
Tree）”
子題中的算術運算式是何種順序的運算表示式？請利用其算術運
算樹將此運算式表示為一前序表示式（Preorder Expression），並說明
其過程。（5分）
請敘述如何以子題的算術運算樹計算出算術運算式的值，並逐步表
示其過程。（10分）
51250', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "609102378556", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00023', 'locality-39f5e973', 'locality-39f5e973-moex-113-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '在許多應用中，往往需要以物件的優先權來進行處理，為了區別物件的
優先順序，我們可以簡單地賦予物件一個鍵值（Key）來代表優先權，此
鍵值通常是一個數值可以用來區別物件前後順序。在此，我們考慮物件
的鍵值是一個數值而其值愈小，物件的優先權愈高，優先佇列（Priority
Queue）則是一種以物件的優先權來管理物件的資料結構。
請說明優先佇列的抽象資料型態（abstractdatatype,ADT）定義。（10分）
給定一個最小二元堆積（MinimumHeap）H與一個鍵值k，在H中快速
地找出所有鍵值小於或等於k的資料物件。請描述一個有效的方法，此
方法所花的時間（或運算量）與欲找出的資料物件之數量成線性比例。
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "609102378556", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00024', 'locality-39f5e973', 'locality-39f5e973-moex-113-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '關於紅黑樹（RedBlackTree）與(2,4)-樹((2,4)-Tree)：
請分別說明紅黑樹與(2,4)-樹的定義。（10 分）
考慮下面的紅黑樹（實線節點代表黑色節點，虛線節點代表紅色節
點），代表節點的字元符號可視為鍵值，請說明如何將此紅黑樹轉換為
一個(2,4)-樹，並將其結果畫出。此外，請申論轉換的(2,4)-樹是否唯一。
（10分）
請說明為何一個有n個節點（鍵值）的紅黑樹其高度是O(logn)。（5分）
51250', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "609102378556", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00025', 'locality-39f5e973', 'locality-39f5e973-moex-113-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '下面的矩陣 M 是表示一個無向圖 G=(V, E)的相鄰矩陣（Adjacency
Matrix），V與 E 分別為節點與邊的集合：
a b c d e f g
a 0 1 0 1 1 1 0
b 1 0 1 0 1 1 0
c 0 1 0 0 0 1 1
d 1 0 0 0 0 0 1
e 1 1 0 0 0 0 0
f 1 1 1 0 0 0 1
g 0 0 1 1 0 1 0
請畫出此無向圖 G。（10分）
若以字母順序為考量對 G 進行廣度優先搜尋（Breadth-First Search,
BFS），因此將由節點a開始，請繪出尋訪完後所產生的BF樹（Breadth-
First(BF)Tree）。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "609102378556", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2104", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00026', 'locality-39f5e973', 'locality-39f5e973-moex-113-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '如果您是承接某縣市政府「交通運輸整合管理系統建置案」的專案負責
人，現需要決定適合的軟體開發流程模式。此「交通運輸整合管理系統」
的主要目標是建置該縣市政府的交通大數據資料庫，並提供動態整合式
交通事件即時通報及應變處理等功能。可選擇的軟體開發流程模式包含
瀑布式（Waterfall）模式、漸增式（Incremental）模式、再用客製化（Reused
Customization）模式，請問您會選擇那一種流程模式？選擇此流程模式的
原因及此流程模式的主要作業程序（OperationProcedure）為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "52d324b7b70c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00027', 'locality-39f5e973', 'locality-39f5e973-moex-113-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '軟體風險管理首先會辨識該專案的風險（RiskIdentification）後進行風險
分析（Risk Analysis），再以排序出專案風險的優先順序（Risk
Prioritization）後進行風險處置（Risk Treatment）。請問風險辨識的方法
有那些？如何進行風險分析與優先順序排序？風險處置的方法有那
些？各風險處置方法的適用時機為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "52d324b7b70c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00028', 'locality-39f5e973', 'locality-39f5e973-moex-113-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '資通安全責任等級分級辦法規定資通系統防護基準之執行控制措施。請
問該辦法將資通系統防護需求等級分為那幾級？對防護需求為中級之
資通系統在存取控制構面下之帳號管理、識別與鑑別構面下之身分驗證
管理需執行的防護措施有那些？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "52d324b7b70c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00029', 'locality-39f5e973', 'locality-39f5e973-moex-113-aff4a67f', 'sub-locality-39f5e973-03', NULL, 'essay', '如果您是政府機關負責資訊系統建置業務的承辦人員，現需要決定開發
完成後的應用資訊系統需要部署到自有機房硬體上，還是採用公有雲亦
或私有雲。請問您選擇考量的因素會有那些？依據各自考量因素，您會
決定採用那一種部署方式？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "52d324b7b70c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2105", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00030', 'locality-39f5e973', 'locality-39f5e973-moex-113-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '針對資安攻擊與防禦，請回答下列問題：
請說明防火牆（Firewall）與入侵防禦系統（Intrusion Prevention
Systems,IPS）如何進行合作以防禦阻斷服務攻擊（Denial-of-Service,
DoS）。若二者的合作仍無法完全防禦阻斷服務攻擊，請說明其可能
之原因。（15 分）
請說明何謂分散式阻斷服務攻擊（DistributedDenial-of-Service,DDoS）；
並說明系統管理者應如何加強防範分散式阻斷服務攻擊的事件發生。
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "25617693c311", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00031', 'locality-39f5e973', 'locality-39f5e973-moex-113-35fb3067', 'sub-locality-39f5e973-04', NULL, 'essay', '請回答下列負載平衡（Load Balancing）與網路架構（Network
Architecture）的問題：
在實現負載平衡過程中，請說明循環法（RoundRobin）和加權循環法
（Weighted Round Robin）的差異。（15分）
請說明當使用者請求頻繁切換至不同的伺服器時，可能會遇到的問
題；並說明透過會話黏著（SessionStickiness）解決此問題的可行方法。
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:50+00:00", "source_pdf_sha1": "25617693c311", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "512", "s": "2106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
