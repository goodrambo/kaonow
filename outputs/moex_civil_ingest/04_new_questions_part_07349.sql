-- W1.6 questions batch 7349/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('police-8a5d488d-moex-00343', 'police-8a5d488d', 'police-8a5d488d-moex-110-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '您是一位交通工程師，負責檢討訂定某市區幹道路段最高速限，該路段
現點速率（SpotSpeed）調查結果如下表所示。
速率群組（公里/小時）
觀測次數
下限 組中點 上限
27.6 30.0 32.5 1
32.6 35.0 37.5 2
37.6 40.0 42.5 5
42.6 45.0 47.5 16
47.6 50.0 52.5 17
52.6 55.0 57.5 22
57.6 60.0 62.5 23
62.6 65.0 67.5 21
67.6 70.0 72.5 6
72.6 75.0 77.5 4
77.6 80.0 82.5 2
82.6 85.0 87.5 1
試計算：（每小題 5 分，共 15分）
㉑時間平均速率（Time Mean Speed）
㉒標準差（Standard Deviation）
㉓時間平均速率之標準差（Standard Deviation of theMean）
如何決定該路段最高速限？其數值為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "53d9bf5ce892", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00344', 'police-8a5d488d', 'police-8a5d488d-moex-110-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '試詳述多元迴歸（MultipleRegression）之假設。（10 分）
您是一位運輸規劃師，欲建立旅次吸引（TripAttraction）之多元迴歸
分析模式，蒐集之基年相關變數資料如下：
A =尖峰小時旅次吸引數
I
X =總就業人口數
1
=
X2 製造業就業人口數
=
X3 零售與服務業就業人口數
=
X4 其他行業就業人口數
上述資料經初步分析，得到下列相關矩陣（Correlation Matrix）：
A X X X X
I 1 2 3 4
A 1.00 0.996 0.958 0.552 0.124
I
X 1.00 0.978 0.486 0.110
1
X 1.00 0.297 0.068
2
X 1.00 0.073
3
X 1.00
4
經建立四個可能的迴歸分析方程式：
A =61.4 +0.93X
I 1
S =288.4 R2 =0.992 t =42
A =507.7 +0.98X
I 2
S =935.9 R2 =0.921 t =14
A =– 69.9 +1.26X – 0.37X +0.02X
I 2 3 4
S =142.6 R2 =0.998 t =37,1.1,0.06
A =25.8 +0.89X +1.29X
I 2 3
S =199.4 R2 =0.996 t =51,17
試分析上述四個迴歸式之適用性。您將選擇那一個方程式？說明您選
擇的理由。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "53d9bf5ce892", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00345', 'police-8a5d488d', 'police-8a5d488d-moex-110-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '某市因交岔路口事故日增，決定針對非號誌化路口增設「停」標誌，並
進行交通大執法，下表為標誌設置前後車輛行經路口遵循規則與否的調
查結果。試以列聯表（ContingencyTable）分析檢定設置標誌並大執法後
是否有顯著效果（顯著水準α=0.05）？（25分）
設置前 設置後 總計
停車再開 25 52 77
減速慢行 15 12 27
未停車再開 10 7 17
總計 50 71 121', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "53d9bf5ce892", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00346', 'police-8a5d488d', 'police-8a5d488d-moex-110-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '假設一易肇事交岔路口發生事故的件數可以用 Poisson 過程表示，其參
數為平均每週 2件。試問：
連續二事故發生時間間隔 3天以上的機率？（10 分）
由一事故到下二事故間隔 7天以上的機率？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:03+00:00", "source_pdf_sha1": "53d9bf5ce892", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8b7f1efc-moex-00001', 'police-8b7f1efc', 'police-8b7f1efc-moex-114-15a7b19c', 'sub-police-8b7f1efc-01', NULL, 'single_choice', '依我國憲法規定人民受逮捕拘禁時，逮捕拘禁機關至遲多久應移送該管法院審問？', '["48小時", "36小時", "24小時", "12小時"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:11+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "501", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "行政警察人員"}'::jsonb, NULL),
  ('police-8b7f1efc-moex-00002', 'police-8b7f1efc', 'police-8b7f1efc-moex-114-15a7b19c', 'sub-police-8b7f1efc-01', NULL, 'single_choice', '依憲法及司法院大法官解釋，下列何者並非憲法上之法官？', '["檢察官", "地方法院簡易庭法官", "大法官", "懲戒法院法官"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:11+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "501", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "行政警察人員"}'::jsonb, NULL),
  ('police-8b7f1efc-moex-00003', 'police-8b7f1efc', 'police-8b7f1efc-moex-114-15a7b19c', 'sub-police-8b7f1efc-01', NULL, 'single_choice', '依司法院大法官解釋，大陸地區人民於臺灣地區設籍未滿 10 年者，不得擔任公務人員之規 定，並未牴觸憲法，下列敘述何者錯誤？', '["立法者制定規範時應斟酌事物本質的差異而為合理的區別對待，以實現憲法價值", "法律得基於原大陸地區人民對自由民主憲政體制的認識與其他臺灣人民可能不同，限制其 任公職之權利", "此類爭議涉及兩岸政治事務，故對於代表民意且充分掌握資訊的立法機關，司法機關應完 全尊重其決定", "設籍10年始得任公職的限制，仍在必要及合理的範圍"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:11+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "501", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "行政警察人員"}'::jsonb, NULL),
  ('police-8b7f1efc-moex-00004', 'police-8b7f1efc', 'police-8b7f1efc-moex-114-15a7b19c', 'sub-police-8b7f1efc-01', NULL, 'single_choice', '副總統缺位時，依憲法增修條文規定，應如何遞補？', '["由主要政黨提名候選人，交立法院補選", "由行政院院長兼任", "總統應於3個月內提名候選人，由立法院補選", "重新辦理副總統選舉"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:11+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "501", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "行政警察人員"}'::jsonb, NULL),
  ('police-8b7f1efc-moex-00005', 'police-8b7f1efc', 'police-8b7f1efc-moex-114-15a7b19c', 'sub-police-8b7f1efc-01', NULL, 'single_choice', '關於憲法法庭，下列敘述何者錯誤？', '["憲法法庭之判決得不經言詞辯論", "憲法法庭之不受理裁定毋須標示主筆大法官", "憲法法庭之判決，應經全體大法官三分之二以上同意", "對於憲法法庭之裁判，不得聲明不服"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:11+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "501", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "行政警察人員"}'::jsonb, NULL),
  ('police-8b7f1efc-moex-00006', 'police-8b7f1efc', 'police-8b7f1efc-moex-114-15a7b19c', 'sub-police-8b7f1efc-01', NULL, 'single_choice', '下列何者是國民主權的直接具體表現？', '["立法委員之報酬或待遇，應以法律定之", "原住民族之地位與政治參與，應予以保障", "行政院院長由總統任命", "立法委員由人民選舉產生"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:11+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "501", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "行政警察人員"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
