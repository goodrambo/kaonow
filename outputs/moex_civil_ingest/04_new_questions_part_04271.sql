-- W1.6 questions batch 4271/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('generalpolice-0395e56f-moex-00052', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-3d2b73b6', 'sub-generalpolice-0395e56f-02', NULL, 'single_choice', 'Accordingtothepassage,whichofthefollowingstatementscanbeinferred?', '["Tattoosareviewedaspartofastandardcosmeticandmedicalprocedure", "Peopleareusingtattoostoexpresstheirindividualityorideasofbeauty", "Tattoosaredonetofurtherimprovetheappearanceafteraplasticsurgery", "Peopleareusingtattoosasacheaperandsaferalternativetocosmeticsurgery"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "7372d76e343d", "answer_pdf_sha1": "1f7241b9e683", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "0503", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "法學知識與英文(包括中華民國憲法、法學緒論、英文)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 48, "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00053', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-3d2b73b6', 'sub-generalpolice-0395e56f-02', NULL, 'single_choice', 'Accordingtothepassage,whichofthefollowingstatementsistrueaboutCatalano?', '["Hehadexperiencesofenduringpainanddeformity", "Heisindifferenttothosewhoaresufferingfromadisease", "Hisservicewasinhighdemandforhisartistichealing", "Hispracticeincosmeticsurgeryboostedhisownconfidence"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "7372d76e343d", "answer_pdf_sha1": "1f7241b9e683", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "0503", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "法學知識與英文(包括中華民國憲法、法學緒論、英文)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00054', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-3d2b73b6', 'sub-generalpolice-0395e56f-02', NULL, 'single_choice', 'Whichofthefollowingbestdescribesthetoneofthepassage?', '["Pessimistic", "Suggestive", "Cynical", "Neutral"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "7372d76e343d", "answer_pdf_sha1": "1f7241b9e683", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "0503", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "法學知識與英文(包括中華民國憲法、法學緒論、英文)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00055', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '請設計符合BCNF且考量OO（物件導向）的Enhanced-ER(EER)datamodel，
可以滿足如下受（處）理案件證明案管理的需求，model中需註明合適的
primary/foreignkey，及資料表彼此關聯的maximum/minimumcardinality。
（30分）
註：題目中不需要用到的資料，請不要列入到資料表中。
假設：各受理單位代號具有唯一性，受理單位名稱中包含縣市、分局、
派出所資訊，如臺北市文山第一分局木柵派出所。
假設：警政人員的代號具有唯一性，不受所屬單位的影響，且同一時間
區段只能隸屬一個單位。
假設：受理案件案號由受理單位代號、發生日期、流水號組合而成，具
有唯一性。
假設：某時間區段，一位警政人員只能被一個單位任命為主管，一個單
位的主管亦只有一位。
假設：單位主管及警政人員，不同時間區段，可能隸屬不同單位。
假設：如為「車（牌）輛協尋」案件，同一案件，只能協尋一部車輛。
依案件類型，顯示不同縣市受理案件的資訊，包括受理單位名稱（如
xx 市警察局 yy 分局 zz 派出所）、案號、地址、電話、案件相關人員
（報案人、受理人員、單位主管）的身分代號及姓名。
依特定性別、報案時年齡、聯絡電話，查詢相關報案受理內容，包括
案件發生地、發生日期時間、案件內容。
查詢特定受理人員過去 1 年，所有受理的案件清單，包括案件案號、
類型、案件發生地、受理單位審核人員的代號及姓名。
查詢各縣市「特殊註記欄位」內容為「告訴乃論罪」受理案件的資料、
包括報案人身分代號、姓名、性別、出生年月日、報案時年齡、地址、
受理人員身分代號、姓名、服務年資（會因案發日期時間跟到職日，
而有所不同）、案件發生地及發生日期。
查詢「車（牌）輛協尋」案件，報案人身分代號、聯絡電話、姓名、
協尋車輛相關資料，包括車牌號碼（記錄於「特殊註記欄位」）、車輛
製造商、車主身分代號及姓名。
查詢 xx縣 yy分局 zz派出所，2020/01/01 至今，所有的單位主管，及
其相對應的任命期間。
查詢最近 1年，案發時間為凌晨0～6點的所有案件資料，包括案號、
受理單位名稱、不同案件類型的數量。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "493f73b585ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00056', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '假設現有如下連鎖診所醫師服務點數紀錄的關連式資料庫，請使用 SQL
回答下列子問題。（每小題 5 分，共 20 分）
Clinic(Clinic_No, name, area)PK:Clinic_No
Doctor(ID,name,gender,issuing_date,specialty,hire_date,Clinic_No)PK:ID
FK:Clinic_No ref.Clinic(Clinic_No)
Patient(ID,name, gender,birthday, mobile,area) PK: ID
Performance(Clinic_No, Doctor_ID, patient_ID, visit_date, visit_time,
NHI_claim_point,self_paid_amount)
PK:(Clinic_No,Doctor_ID,patient_ID,visit_date,visit_time)
FK:Clinic_No ref.Clinic(Clinic_No)
FK:Doctor_IDref. Doctor(ID)
FK:Patient_IDref.Patient(ID)
註：一個區域內，最多只會有一家診所，同一醫師可能在不同時段駐診
不同診所。
註：欄位名稱如有不同或欲顯示非欄位名稱，請使用 Alias 重新命名顯
示的欄位。
請列出跨區域就醫的資訊，包括診所名稱及所在區域、醫師姓名、病
人姓名、居住區域、就診日期時間、自費金額、健保申報點數，結果
依就診日期時間排序。
請列出就職滿1 年以上醫師，2024 年各月份之業績「自費金額＋健保
申報點數」小於80000的醫師姓名、專長領域、年資（2024 年各月份
–醫師執照發照日的年月）、業績（自費金額+健保申報金額），結果依
月份由小到大、績效由大到小排序。
請列出 2025 年 5 月份，營業額（5 月份自費金額＋健保申報點數總
和）超過 1 千萬診所的業績王（5 月份，自費金額＋健保申報點數最
高者）姓名、性別、專長、業績，結果依醫師業績由大到小排序。
請列出 2025 年 6 月份，各診所所有年齡大於 80（就醫日期–病人生
日，滿80年）的病人姓名、性別、行動電話、診治醫師的姓名、性別、
專長。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "493f73b585ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00057', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '請以符合 BCNF 的 RDB 資料表來表示如下 json 格式的銀行換匯資料，
正規化後的資料表欄位，需同時註明 primary/foreign keys，並將資料填
入正規化後的資料表內。（30分）
[{"銀行代號":"B01","分行代號":"x01","行員代號":"E01","行員名字":"Bob",
"幣別":"USD","換匯時間":"1140502-100000","匯率":"32","數量":"10","金額":"320"},
{"銀行代號":"B01","分行代號":"x01","行員代號":"E02","行員名字":"Bob",
"幣別":"USD","換匯時間":"1140502-100000","匯率":"32","數量":"10","金額":"320"},
{"銀行代號":"B01","分行代號":"x02","行員代號":"E01","行員名字":"Bob",
"幣別":"EUR","換匯時間":"1140502-100000","匯率":"36","數量":"20","金額":"720"},
{"銀行代號":"B02","分行代號":"y01","行員代號":"E01","行員名字":"Eva",
"幣別":"USD","換匯時間":"1140430-100000","匯率":"32","數量":"20","金額":"640"},
{"銀行代號":"B02","分行代號":"y02","行員代號":"E02","行員名字":"Joy",
"幣別":"EUR","換匯時間":"1140502-100000","匯率":"36","數量":"10","金額":"360"},
{"銀行代號":"B02","分行代號":"y02","行員代號":"E02","行員名字":"Joy",
"幣別":"USD","換匯時間":"1140502-111000","匯率":"31","數量":"20","金額":"620"},
{"銀行代號":"B03","分行代號":"x01","行員代號":"F01","行員名字":"Eva",
"幣別":"EUR","換匯時間":"1140502-100000","匯率":"36","數量":"10","金額":"360"}]', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "493f73b585ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00058', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '假設現有如下資料庫交易時間軸，請分別就時間點 5 及 10，說明system
failure時，採用 log-baseimmediateupdate資料庫更新方法時，T1~T6 是
否需 redo orundo。（12分）
FailureTime T1 T2 T3 T4 T5 T6
5
10', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "493f73b585ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00059', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '請列表分別說明資料庫同步控制 Two-Phase Locking(2PL), Timestamp
Ordering(TO), Optimistic Concurrency Control(OCC), Multi-version
Concurrency Control(MVCC)等方法，是否需要加鎖，及是否可避免
deadlock。（8 分）
2PL TO OCC MVCC
是否需要加鎖
是否可避免deadlock', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "493f73b585ec", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1402", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00060', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '敏捷軟體開發是目前資訊服務廠商常採用的軟體開發方法之一，主要的
核心價值或理念是來自 2001 年的敏捷宣言。請依據敏捷宣言來解析下
列四個敘述對軟體開發的重要程度。（25分）
㉑軟體開發需要有標準作業程序（StandardOperationProcedure,SOP），並
能持續調整、優化與精進SOP，以提升軟體開發流程效率及人員生產力。
㉒軟體開發要儘可能單純，因此須具備能最大化未完成工作量的思維及
能力。
㉓可持續性的軟體開發是很重要的，因此軟體開發專案的贊助者、開發
者及使用者須能維持穩定的工作步調。
㉔軟體開發初期須制定詳實的專案管理計畫書，並依計畫來執行與監控
專案的進行，並能維持專案管理計畫書內容的有效性。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "aa32405e8ab5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00061', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-114-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '實獲值管理（EarnedValueManagement,EVM）是一種以量化方式來管控
專案執行績效的常用方法之一。請說明 EVM 方法中有那些指標可用來
評估專案成本與進度績效？這些指標的計算公式為何？如何使用這些
指標的計算結果來評估專案執行績效？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:50+00:00", "source_pdf_sha1": "aa32405e8ab5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "304", "s": "1409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
