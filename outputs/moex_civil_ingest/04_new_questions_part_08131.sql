-- W1.6 questions batch 8131/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0c700c30-moex-00174', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '當總支出線位於45度線下方時，下列敘述何者正確？', '["存貨減少，產出減少", "存貨減少，產出增加", "存貨增加，產出增加", "存貨增加，產出減少"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "3c0482ee47bc", "answer_pdf_sha1": "f0806c49c35d", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00175', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '若商業銀行透過貼現窗口，向中央銀行增加借款，則在中央銀行資產負債表中，準備金帳戶內的準備金會：', '["增加", "不變", "減少", "不一定"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "3c0482ee47bc", "answer_pdf_sha1": "f0806c49c35d", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "1011", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00176', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '在資料庫中，建有資料表「Company」，其為一家水果行的資訊，如下圖
所示，欄位分別代表ID、販售水果名稱、價格與產地。請回答下列問題：
ID Product Price Origin
1 banana 10 Tainan
2 apple 50 Taichung
3 papaya 45 Tainan
4 grape 120 Taichung
5 lemon 20 Taipei
6 orange 30 Taichung
7 pineapple 40 Kaohsiung
8 watermelon 100 Kaohsiung
9 guava 60 Tainan
10 tomato 70 Kaohsiung
寫一個SQL指令查詢該水果行所販售的水果名稱中有包含字串“apple”
的水果之名稱與售價，查詢結果如下圖所示。（10分）
水果 價格
apple 50
pineapple 40
寫一個SQL指令查詢該水果行所販售的水果來自不同產地的種類數量，
查詢結果請按產地名稱排序，查詢結果如下圖所示。（10分）
產地 數量
Kaohsiung 3
Taichung 3
Tainan 3
Taipei 1
寫一個SQL指令查詢該水果行所販售的水果來自不同產地且種類數量
大於2的水果平均價格，查詢結果請按平均價格由低到高排序，查詢結
果如下圖所示。（15分）
產地 均價
Tainan 38.33
Taichung 66.67
Kaohsiung 70', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "e5d1aba8fa48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "2902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00177', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '有一筆資料為12，10，7，23，13，6，15，17，46，3。
請依序建置最小堆積（Minheap）樹（由上而下TopDown建置）。（10分）
請依序建置最大堆積（Maxheap）樹（由上而下TopDown建置）。（10分）
把上題所產生的最大堆積樹刪除最大元素，其更新完的結果為何？
（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "e5d1aba8fa48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "2902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00178', 'pukao-0c700c30', 'pukao-0c700c30-moex-112-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '有一手機透過無線路由器連上網際網路時的網路設定如下圖所示，請回
答下列問題：
何謂MAC位址？（5分）其規範於OSI七層網路架構中的那一層？（5分）
該層的主要功能為何？（5分）
IP位址屬於OSI七層網路架構中的那一層？（5分）
請說明何謂DNS？（5分）其屬於OSI七層網路架構中的那一層？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "e5d1aba8fa48", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "414", "s": "2902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00179', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '關於事件 A、B、C，已知   ，   ，   ，
P A B 0.24 P A B|C 0.2 P C 0.6
∩ ∩
C
表 C的補集。求P A B C 。(15 分)
∩ ∩', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "057d0bcfc739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "1016", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00180', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '三種遺傳型態 A、B、C 在某基因模式下，出現機率分別為/6、/3、
(1/2)，研究者收集120位受測者，A、B、C人數分別為10、25、85人。
（每小題10分，共20分）
求之最大概似估計。
請問在α0.05下，檢定該模式是否合適？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "057d0bcfc739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "1016", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00181', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '八位受試者接受某降膽固醇藥物，接受前先測量一次，接受後再測量一
次，結果如下表。下降表示該藥物有效果。請以符號檢定（Signtest）在
α0.05顯著水準下檢定H ：藥物對降膽固醇有效果。（20分）
1
受試者 1 2 3 4 5 6 7 8
前 51 48 52 62 64 51 55 60
後 46 45 53 48 57 55 42 50', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "057d0bcfc739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "1016", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00182', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '教育當局想測試 A、B 兩區學童數學程度是否相同，A 區 250 位學童受
測，及格比率0.40，B區 200位學童受測，及格比率 0.37。請以α0.01
顯著水準下檢定兩區學童數學測試及格之比例是否相同？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "057d0bcfc739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "1016", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00183', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '反應變數Y在三組（以類別變數X=1,2,3表示）中的母體平均為u、u、u。
1 2 3
為比較此三平均之差異，會將 X 轉成 2 個虛擬變數x、x ，然後配適迴歸
1 2
模式 Y  x x 。假設三組樣本數相同。
0 1 1 2 2
若虛擬變數（x, x ）的設定為：
1 2
X=1 時，x 1，x 0
1 2
X=2 時，x 0，x 1
1 2
X=3 時，x 0，x 0
1 2
結果顯示：顯著大於0而 顯著小於0。請依此比較u、u、u 的大小。
1 2 1 2 3
（20分）
附表一、 分配右尾百分點
 
 ()
附表二、常態分配表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "057d0bcfc739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "1016", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
