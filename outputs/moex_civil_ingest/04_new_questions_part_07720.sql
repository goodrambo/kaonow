-- W1.6 questions batch 7720/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-4ece01bd-moex-00011', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '要徑法（CriticalPathMethod）是工程規劃常用的工期規劃方法。表三詳
列某工程的工作項目（Activity）、前置工項（Predecessor）、工項工期
（Duration）等資料。試回答下列問題：
繪製該工程之工項網圖（ActivityNetwork）。（5分）
計算各工項之最早動工時間（ES）、最早完工時間（EF）、最晚完工時
間（LF），以及最晚動工時間（LS），並在作答紙上繪製，填寫答案。
（10分）
計算各工項之總浮時（Total Float），並在作答紙上繪製，填寫答案。
（5 分）
找出該工程之要徑，並計算總工期。（5分）
表三 某工程期程規劃表
Activity Predecessor Duration ES EF LF LS TotalFloat
a - 10
b - 12
c a 14
d a,b 18
e b 22
f c,d 24
g d 30
h d,e 22
i f,g 18
j g,h 10
k k 10', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "709c846df25e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00012', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '下圖所示的等截面外伸簡支梁，桿件的 EI 為常數。若自由端 C 點受一
個逆時針的集中力矩 M 作用，同時在梁深方向有溫度變化，梁頂溫度
0
為 T ，梁底溫度為 T ，T >T 。梁深為 h，材料熱膨脹係數為，試用單
1 2 2 1
位力法計算 C點的垂直位移（註：不考慮剪力變形）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "08d9229e853e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00013', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '如圖所示的複合結構，上部簡支梁的長度為 L，撓曲剛度為 EI；簡支梁
在跨度中點 C 處連接軸向剛度為 EA 的連桿，連桿長度為 L/2。若梁上
受均布載重 w 作用，且 A/L=12I/L3，試求 C 點的撓度（請以 EI、L、w
表示）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "08d9229e853e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00014', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '如圖所示的桁架結構，若所有桿件的 EA 值皆相同，且 E 點受垂直載重
P作用，試計算CD桿件的軸力。（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "08d9229e853e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00015', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-112-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '如圖所示兩端固接的梁，AB 段的撓曲剛度為 3EI，BC 段的撓曲剛度為
EI，試利用傾角變位法計算 B點轉角與垂直位移。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "08d9229e853e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00016', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-110-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '假設你負責編列某一件公共工程之專案管理（不含監造）服務費用，且
依據「機關委託技術服務廠商評選及計費辦法」之「工程專案管理（不
含監造）技術服務建造費用百分比參考表」加以計算。依據該參考表，
建造費用在 3億元以下部分之服務費用百分比（參考上限）為3.5%、超
過 3 億元至 5 億元部分之服務費用百分比為 3.0%、超過 5 億元至 10 億
元部分之服務費用百分比為 2.5%、超過 10 億元部分之服務費用百分比
為 2.2%。如果該工程之建造費用為 6 億元，請問該工程專案管理（不含
監造）服務費用之參考上限應為多少？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "0b3f38ea54ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00017', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-110-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '公共工程契約價金之給付條件條款內，經常指出當工程履約實際進度因
可歸責於廠商之事由，落後預定進度達 10%以上，且經機關通知限期改
善未積極改善者，機關得暫停給付估驗計價款至情形消滅。請說明一般
有那幾種工程進度百分比之計算方式？並請舉出那一種計算方式最常
用，其優缺點為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "0b3f38ea54ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00018', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-110-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '混凝土的摻料依其功能可分為化學摻料、礦粉摻料以及膨脹添加物等三
類。請分別說明加入上述各類摻料之主要功能為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "0b3f38ea54ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00019', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-110-a5727cc1', 'sub-promotion-4ece01bd-01', NULL, 'essay', '鋼筋混凝土構造（RC）、鋼構造（SC）或鋼骨鋼筋混凝土構造（SRC）
等為最常使用之結構材料。相對於 RC構造，請分別說明鋼構造（SC）
的優點與缺點為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "0b3f38ea54ad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "156", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL),
  ('promotion-4ece01bd-moex-00020', 'promotion-4ece01bd', 'promotion-4ece01bd-moex-110-7d633e06', 'sub-promotion-4ece01bd-02', NULL, 'essay', '求解圖版梁系統 C點左側剪力、C點右側剪力和 C點彎矩之影響線。
假設移動載重作用於版，下部為簡支梁。（25分）
圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:26+00:00", "source_pdf_sha1": "08913876c197", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "156", "s": "1405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
