-- W1.6 questions batch 7335/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('police-8a5d488d-moex-00203', 'police-8a5d488d', 'police-8a5d488d-moex-112-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '請回答下列有關資料分配中常用之平均數（Mean）、中位數（Median）
及眾數（Mode）的問題：
平均數（Mean）、中位數（Median）及眾數（Mode）所代表之意義為
何？（6分）
請分別繪圖說明資料分配對稱（Symmetrical）、左偏（SkewedLeft）及
右偏（Skewed Right）時，上述三種統計量在資料分配圖上之相對位
置？（15分）
請舉例說明在那些情況下，以「中位數」代替「平均數」更能有效呈
現資料分配所要傳達之資訊意義。（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "f01c4128d6b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00204', 'police-8a5d488d', 'police-8a5d488d-moex-112-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '某研究為評估機車駕駛訓練對其取得駕駛執照後之駕駛行為是否具有
影響，隨機收集了機車考照前有、無受過安全駕駛教育訓練且都通過駕
照考驗並取得「機車駕駛執照」之機車駕駛人各500 位，分別調查其在
考取機車駕駛執照後一年內是否有發生交通事故而受傷之經驗，其調查
結果如下表所示。茲為進行此項研究，請回答以下問題：
考照前是否接 取得機車駕照後一年 取得機車駕照後一年
受過機車安全 內「曾經」發生有人 內「未曾」發生有人 小計
駕駛教育訓練 受傷之交通事故 受傷之交通事故
是 50 450 500
否 100 400 500
小計 150 850 1000
您的「虛無假設（Nullhypothesis）」與「對立假設（Alternativehypothesis）」
各為何？（5分）
您的檢定統計量（TestStatistic）為何？該統計量為何種機率分配？其
自由度（Degreeof freedom）為何？（9分）
請寫出計算此檢定統計量之步驟，並算出其值。（6分）
請問您該如何根據所計算得之統計量，作出必要之決策選擇與結論。
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "f01c4128d6b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00205', 'police-8a5d488d', 'police-8a5d488d-moex-112-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '有一研究對五位受測者進行血液中某種藥物含量比率對其反應時間之
影響實驗，所收集到之實驗結果如下：
受試者 1 2 3 4 5
血液中藥物含量比率 x（%） 1 2 3 4 5
反應時間 y（秒） 1 1 2 2 4
該資料經統計軟體校估得如下之簡單線性迴歸模式及相關之統計量。
迴歸相關係數
預測變數 估計係數 係數標準差 t統計量 p 值
R2
常數項 -0.1000 0.6351 -0.16 0.885
0.817
藥物比率 x 0.7000 0.1915 3.66 0.035
請以座標圖點出實驗之結果，並繪出 E（y）= a +b x之線性迴歸線。
（5 分）
請解釋此校估得之迴歸模式的意涵，其內容包括：
(A)各係數估計值之意義為何？（5 分）
(B)本線性迴歸模式最主要之假設檢定為何？其結果如何？（5分）
(C)p 值所代表之意義為何？（5分）
(D)迴歸相關係數 所代表的意義為何？（5分）
', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "f01c4128d6b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00206', 'police-8a5d488d', 'police-8a5d488d-moex-112-544e4a2e', 'sub-police-8a5d488d-03', NULL, 'essay', '在一項以我國最常導致交通事故的 23 種危險用路行為當作試題的調查
研究中，分別對A與 B兩個縣市隨機各抽取 100位民眾進行調查，並以
勾選「曾經做過」這些危險用路行為的多寡作為評比用路行為優劣之指
標。該調查之結果整理如下表所示，請問 A與 B兩個縣市民眾之用路行
為是否具有顯著之危險差異？
抽樣調查民眾數 平均勾選題數 標準差
縣市別
（Number of Samples） （Mean） （Std.Deviation）
A縣市 n =100 x =9.31 s =4.67
A A A
B縣市 n =100 x =7.40 s =4.04
B B B

您所建立的「虛無假設 」及「對立假設 」各為何？（5分）

在α=0.05 及 =1.96 之水準下，請完整寫出您的假設檢定程序並
 
做出結論。（20分）
.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "f01c4128d6b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "507", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "交通統計與分析", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00207', 'police-8a5d488d', 'police-8a5d488d-moex-111-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'essay', '英譯中：（10 分）
Notuntilthelate19thcenturydidimprisonmentbecomethemostcommon
penalty for most crimes. This resulted in great part from the work of
criminologists who persuaded society against the uselessness of other
punishments.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "a526a29fb5cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中華民國憲法與警察專業英文", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00208', 'police-8a5d488d', 'police-8a5d488d-moex-111-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'essay', '中譯英：（15 分）
傳統上人們被教導，努力工作就會成功。但事實上，一開始就快樂的
人比較容易成功，一開始就不快樂的人比較可能失敗。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "a526a29fb5cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "0205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中華民國憲法與警察專業英文", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00209', 'police-8a5d488d', 'police-8a5d488d-moex-111-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '依憲法及司法院大法官解釋，關於立法院質詢權，下列敘述何者錯誤？', '["只有行政院院長及行政院各部會首長有至立法院院會接受質詢之義務", "立法院各委員會得邀請民間團體代表到會備詢", "司法院院長得列席立法院院會陳述意見", "參謀總長並無至立法院各委員會備詢之義務"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "a526a29fb5cc", "answer_pdf_sha1": "53cf396c4907", "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00210', 'police-8a5d488d', 'police-8a5d488d-moex-111-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '依司法院釋字第627號解釋，下列有關總統國家機密特權之敘述，何者錯誤？', '["於法院訴訟程序進行中，總統尚非不得將系爭資訊依法改核定為國家機密", "法院審理個案，如涉及總統已提出之資訊者，即無國家機密保護法之適用", "依國家機密特權，總統就國家機密事項於刑事訴訟程序應享有拒絕證言權", "總統就有關國家安全、國防以及外交之國家機密事項，有決定不予公開之權力"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "a526a29fb5cc", "answer_pdf_sha1": "53cf396c4907", "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00211', 'police-8a5d488d', 'police-8a5d488d-moex-111-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '依憲法對於社會安全之規定，下列敘述何者錯誤？', '["犯罪被害人所受損害，應由國家予以賠償", "人民具有工作能力者，國家應予以適當之工作機會", "兒童從事勞動者，應予以特別之保護", "國家應制定保護農民之法律"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "a526a29fb5cc", "answer_pdf_sha1": "53cf396c4907", "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL),
  ('police-8a5d488d-moex-00212', 'police-8a5d488d', 'police-8a5d488d-moex-111-15a7b19c', 'sub-police-8a5d488d-01', NULL, 'single_choice', '依司法院大法官解釋，關於行政一體原則，下列敘述何者錯誤？', '["行政院為國家最高行政機關，須為其所屬機關之整體施政表現負責", "除憲法別有規定外，無論各行政專業單位如何分工，所有國家之行政事務最終均歸由行政 院指揮監督", "立法院得立法設置獨立機關，自主運作，完全排除行政院之監督", "立法院得以法律限制行政院對獨立機關之人事決定權，但有其界限"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:02+00:00", "source_pdf_sha1": "a526a29fb5cc", "answer_pdf_sha1": "53cf396c4907", "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "507", "s": "0205", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "交通警察人員交通組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
