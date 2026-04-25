-- W1.6 questions batch 2491/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-39f5e973-moex-00009', 'disabled-39f5e973', 'disabled-39f5e973-moex-114-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '下列三個 IP位址的區塊，可以合併成一個單一區塊嗎？如果可以的話，
那合併後的區塊 IP範圍為何？合併後的子網路（subnet）遮罩（mask）
是幾個 bits？請詳細說明。如果不能合併，理由為何？（15分）
16.27.24.0/26
16.27.24.64/26
16.27.24.128/25
一個機構擁有的 IP 位址區塊為 130.56.0.0/16，管理者把它均分為 1024
個子網路，請問第一個子網路的 IP範圍是多少？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "42a1099415ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00010', 'disabled-39f5e973', 'disabled-39f5e973-moex-114-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '假設一個TCP的客戶端（client）預期接收byte的序號為3001，然後它收
到一個封包序號3001，總共含有400bytes，而此時這個客戶端並沒有資料
要回傳，且上一個收到的封包已經確認回應（acknowledged）過了，請問
這個客戶端會如何針對這個事件做怎樣的處理與反應？為什麼？（15分）
TCP有壅塞控制（congestioncontrol）及流量控制（flowcontrol）的機
制，分別是用 cwnd 與 rwnd 這兩個視窗的值來進行該控制。請問這兩
個值分別是利用怎樣的機制來動態改變的，以達到控制的目的？請詳細
說明。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "42a1099415ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00011', 'disabled-39f5e973', 'disabled-39f5e973-moex-114-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '請比較 WiFi及藍芽使用的媒介存取控制協定（mediumaccesscontrol），
並說明其基本的運作方式。其使用的協定是半雙工（half duplex）還是
全雙工（fullduplex）？請說明理由。（15分）
有關提供有時限（time-bounded）的服務，WiFi與藍芽各自有怎樣的機
制可以提供此類服務？請說明其運作方式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "42a1099415ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00012', 'disabled-39f5e973', 'disabled-39f5e973-moex-114-c178e015', 'sub-disabled-39f5e973-03', NULL, 'essay', '請解釋 NAT（NetworkAddressTranslation）與 ARP（AddressResolution
Protocol）分別是牽涉到那些位址？及其分別用途在那？（10分）
封包過濾防火牆（PacketFilterFirewall）與代理人防火牆（ProxyFirewall）
在運作方式上有何不同？其各自的優缺點為何，請詳述之。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "42a1099415ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00013', 'disabled-39f5e973', 'disabled-39f5e973-moex-113-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '資料結構中的二元樹（binarytree）依其走訪節點的順序可以得出不同的
運算表示式。給予一中序（inorder）表示式FBACEIGJH和後序（postorder）
表示式 BCAFIHJGE，請說明並畫出其對應的二元樹。有一後序表示式
36 12 / 10 23 - * 50 40 - +（此運算式中的數值均為二位
數），利用堆疊運算其結果為何？（請勿只寫出最後結果，需詳細寫出堆
疊內每一步的變化並說明）。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00014', 'disabled-39f5e973', 'disabled-39f5e973-moex-113-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '一串含有 8個整數的資料：48, 55, 10, 88, 26, 80, 35, 40，請以第一個數值
為樞紐（pivot）進行快速排序法（quicksort），將這些資料由小排到大，
並寫出詳細的比較過程。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00015', 'disabled-39f5e973', 'disabled-39f5e973-moex-113-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '有一棵高度平衡二元搜尋樹（balanced binary search tree）又稱 AVL 樹
（Adelson-Velskii Landis tree）如下圖，加入 90，請詳細說明該如何調整
成一棵AVL樹？接著再加入85，請詳細說明該如何調整成一棵AVL樹？
接著再刪除 15，該如何調整成一棵 AVL 樹？請將最後調整後的 AVL 樹
中每個節點之平衡因子（balancefactor）寫在節點旁邊。（25分）
25
15 60
30 80', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00016', 'disabled-39f5e973', 'disabled-39f5e973-moex-113-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '有一棵二元樹（binarytree）利用一維陣列來存放其節點，假設樹根（root）
存放在索引（index）為 1 的位置，若有一節點 i 存放在索引為 1024 的位
置，請問該節點i的父節點存於陣列的那個位置，其索引為何？若節點i有
一右子節點 j，請問節點 j 存於陣列的那個位置，其索引為何？用一維陣
列存放二元樹，最浪費陣列空間的二元樹是那一種？請畫出並詳細說明。
（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00017', 'disabled-39f5e973', 'disabled-39f5e973-moex-113-9aa8415c', 'sub-disabled-39f5e973-01', NULL, 'essay', '給定一個以相鄰矩陣（adjacencymatrix）表示的一無方向圖如下表，∞表
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
g ∞ ∞ ∞ 18 ∞ 6 ∞', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "7d81bad1b59b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1406", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('disabled-39f5e973-moex-00018', 'disabled-39f5e973', 'disabled-39f5e973-moex-113-aff4a67f', 'sub-disabled-39f5e973-02', NULL, 'essay', 'UML（UnifiedModelingLanguage）2.5.1 版定義 14 種圖（Diagram），請
舉出至少六種 UML 圖，並說明這些 UML 圖之間如何互相搭配以完成資
訊系統塑模（Modeling）工作。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:45+00:00", "source_pdf_sha1": "4795c213c012", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "104", "s": "1401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
