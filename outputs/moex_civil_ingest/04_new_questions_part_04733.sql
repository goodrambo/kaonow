-- W1.6 questions batch 4733/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-444ca548-moex-00087', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '考慮簡單線性迴歸模型， , （ ）， 和 分
別為β 與β 之最小平方估計式，計算下列各子題：（每小題10分，共20分）
0 1        
 =  +  +   0,  
計算Cov ，其中 為反應變數Y之平均~數，Cov是指共變異數
（Covariance）。
(, ) 
計算Var +0.8 ，Var是指變異數（Variance）。
( )', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "074bbabd4dbb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "1117", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00088', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '有關於汽車碳氫化合物排放量（克/英里）的研究，記錄碳氫化合物排放
量Y（100克/公里），和相對應的累積里程數X（以1000公里為單位）。初步
整理樣本資料如下所示：
n11，n x 190.2356，n y 212.9375，n x2 4086.6461，
i1 i i1 i i1 i
n y2 4152.344，n x y 3808.8281。
i1 i i1 i i
使用以上資料回答下列問題，請詳細將所使用之公式及計算過程列出。
（每小題9分，共36分）
計算最小平方迴歸線。（計算至小數點後4位數）
迴歸判定係數（ ）為何？
顯著水準為0.05，檢定迴歸斜率是否顯著異於0.16。

在x=25時，求對應之反應變數Y預測值的95%預測區間。
（t 2.228，t 2.262，t 1.812，t 1.833）
10,0.025 9,0.025 10,0.05 9,0.05
33480', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "074bbabd4dbb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "1117", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00089', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '觀察記錄某一城市在最近三個月內（90天）每天汽機車意外事故的次數，
其次數分配如下所示：
意外事故次數 0 1 2 3 4
觀察天數 32 34 17 6 1
檢定每天汽機車意外事故次數是否服從波松（Poisson）分配。
寫出虛無假設與對立假設。（5分）
在顯著水準α=0.05時，寫出檢定統計量、棄卻域和結論。（須列出計算
過程）（15分）
（2 7.38，2 9.35，2 11.14，
2,0.025 3,0.025 4,0.025
2 5.99，2 7.81，2 9.49）
2,0.05 3,0.05 4,0.05
波松分配累積機率表
x
0.5 1.0 2.0
0 0.607 λ =0.3E6(8X) 0.135
1 0.910 0.736 0.406
2 0.986 0.920 0.677
3 0.998 0.981 0.857
4 1.000 0.996 0.947
5 1.000 0.999 0.983
6 1.000 1.000 0.995
7 1.000 1.000 0.999', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "074bbabd4dbb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "1117", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00090', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'essay', 'A市政府為管理市內攤販經營事業，制定攤販管理自治條例。其中規定，
攤販經營許可申請，如涉及私人土地，而不違反現行法令規定者，應檢具
所有權人同意書。市民丙申請經營攤販位於他人丁之所有土地上，於申請
時檢附所有權人丁之同意書，市政府發給許可證。於證件背面註記注意事
項：核准設攤地點涉及私人土地經所有權人提出異議時，應於一個月內提
供所有權人同意書，逾期未補正者，本府得註銷許可證之效力。丙開始經
營後，丁欲收回租地，向A市政府表示異議，市政府遂要求丙提出同意書，
逾期將廢止許可證。一個月期間過後，丙未能提出同意書，故市政府以B
函註銷許可證。請問：B函是否合法？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00091', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'essay', '甲檢具陳情書向某政府乙機關陳情，主張甲所有建物（下稱系爭建物）之
相鄰建物違法施工裝潢，因其室內裝修廠商未具施工許可證，為保障系爭
建物之安全，乃訴求乙禁止相鄰建物繼續施工。乙回復甲略以：經查系爭
建物之相鄰建物，業已委託設計建築師及合格室內裝修廠商施工，其施工
期間及竣工查驗之結構安全，併由設計建築師簽證負責；且該址業由審查
機構之審查人員辦理竣工審查，並取得室內裝修合格證明在案等語。甲不
服，循序提起行政訴訟。試問：甲有無請求乙對檢舉內容為事實調查予以
裁罰之公法上請求權，並具提起行政訴訟之原告適格？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00092', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '下列何者為行政法之不成文法源？', '["行政規則", "國際條約", "公益原則", "自治規章"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": "d76f1552cd83", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00093', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '供公眾使用之建築物，違反建築法第77條規定，未定期辦理公共安全檢查簽證及申報，行政機關違反 先前先通知當事人補辦程序之慣例，即逕行採取裁罰措施，係違反何種行政法一般原理原則？', '["平等原則", "比例原則", "禁止不當聯結原則", "法律優位原則 31550、31650 32250、32950 33050 33850"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": "d76f1552cd83", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00094', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '依據實務見解，納稅義務人因違反稅法規定而受罰鍰處分，惟納稅義務人於行政訴訟程序中死亡， 則罰鍰處分應如何處置？', '["因納稅義務人死亡，法律關係即告消滅，故無法執行該罰鍰處分", "由繼承人繼承被繼承人之義務人地位，並繳納罰鍰", "納稅義務人死亡後，法院應以欠缺當事人能力為由駁回訴訟", "由繼承人於被繼承人遺產範圍內代繳罰鍰"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": "d76f1552cd83", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00095', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '關於國家表演藝術中心在組織及任務上之特性，不包括下列何者？', '["負執行公共事務之任務", "具有獨立之法律人格", "以企業化之方式營運", "所屬人員均具公務人員身分"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": "d76f1552cd83", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00096', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-112-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'single_choice', '依地方制度法規定，中央主管機關針對直轄市政府所辦理自治事項之監督，下列敘述何者錯誤？', '["地方政府辦理自治事項得自為立法並執行而負其政策規劃及行政執行責任", "地方政府辦理自治事項有違憲法或法律規定時，仍得予以撤銷、變更、廢止或停止其執行", "直轄市政府辦理自治事項違法時，由中央主管機關報行政院予以撤銷、變更、廢止或停止其執行", "地方政府辦理自治事項若有違背憲法或法律之疑義時，於司法院解釋前，中央主管機關得先予 以撤銷之"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:54+00:00", "source_pdf_sha1": "35e987219517", "answer_pdf_sha1": "d76f1552cd83", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "334", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
