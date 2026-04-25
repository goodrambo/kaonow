-- W1.6 questions batch 4278/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('generalpolice-0395e56f-moex-00122', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-113-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '加密貨幣（或稱虛擬貨幣，如比特幣）與非同質化代幣（NFT）有那
些共同特點？又有那些不同？（10 分）
為何至今加密貨幣只有極少數國家承認其可如國家法幣般的流通？
又為何它容易變成犯罪金流及非法洗錢利器？（10 分）
為何近幾年會有新聞報導某些 NFT 被賣出驚人天價（如 2021 年時，
《EVERYDAYS：TheFirst5000Days》被賣出 6930萬美元）？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "1cd952d94708", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113060", "c": "305", "s": "1305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00123', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-113-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '隨著資訊科技的快速發展，職場中運用科技設備進行員工管理的情形很
普遍，請一一討論下列作法對於員工隱私權是否有侵犯，以及為什麼：
（每小題 5分，共 25 分）
在辦公場所，廣設監視器。
在公司的郵件主機上，監控員工收發的電子郵件。
公司提供給員工工作電腦，員工雖可自行額外安裝軟體，但公司預先
安裝了無法移除的側錄軟體。
在公司公務車上安裝 GPS行車記錄器，掌握行車軌跡。
公司同意員工在家遠距上班，但是員工得同意在其自家電腦安裝遠端
監控軟體，透過「網路攝影」的方式，自動定時拍攝員工在家工作過
程的照片，即時傳送給主管進行監看。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "1cd952d94708", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113060", "c": "305", "s": "1305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00124', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '考慮以下實體關聯圖：
成績
教師編號 課程編號
教授 修課
教師 課程
教師姓名 課程名稱
研究室 學生
研究室編號 地點 學號 學生姓名
試以最適當且最少個關聯資料表（relations），來描述上述實體關聯圖。
需寫出這些關聯資料表的名稱、所含之屬性及主要鍵（primarykey）。
（15分）
除了 primarykey外，還有那些屬性於撰寫程式定義關聯資料表時，須
被設定為 Non-NULL，為什麼？（10分）
對於上述之關聯資料表（relations），於撰寫程式建立關聯資料庫時，
那些屬性之間應設定為參考完整性限制（Referential integrity
constraint），為什麼？（10分）
依前述之關聯資料表（relations），試寫一 SQL程式片段，顯示每一門
課程之課程名稱、成績 60 分以上之學生人數、該課程之授課教師姓
名。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "e26b26e7302f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00125', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', 'R（A,B,C,D,E,F,H,I）為一個含有 A、B、C、D、E、F、H、I八個屬
性，且符合 1NF（first normal form）要求之關聯表格。該表格有五個功
能相依（FunctionalDependency）：AB→F;A→E;B→H;BC→I;C→D。
試決定最適合被用來當作 R的primarykey。（10 分）
繼上題，試將 R 分割成符合 2NF（secondnormalform）及 3NF（third
normal form）要求的關聯表格，並標出各關聯表格之 primary key。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "e26b26e7302f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00126', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '資料庫中，採用雜湊法索引及採用循序檔之資料結構，以儲存資料檔
案時，對兩者⑴在最壞的資料找尋時間上，⑵在儲存空間的利用率上，
⑶資料是否需事先經過排序，⑷是否適合建構在 linkedlist 資料結構下
作業等方面，進行比較。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "e26b26e7302f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00127', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '資訊系統應用於組織提升管理效能，請舉至少三個你知道於警察機構導
入的資訊系統，其如何改善作業流程及具體效益。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "a9e1880bb706", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00128', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '資料庫設計通常可以分成：需求分析、概念設計、邏輯模型、物理模型、
實施測試，請說明這些步驟的重點工作是什麼？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "a9e1880bb706", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00129', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '要在企業組織實施知識管理，可以考慮導入文件管理系統、內部網路Intranet、
社交媒體平台、視訊會議系統、專案管理軟體等資訊技術，你會如何應用這
些進行知識管理？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "a9e1880bb706", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00130', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-112-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '若你要在自己的機構影響高層主管推動數位轉型，你會如何說服？請提
出至少五個重點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "a9e1880bb706", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112070", "c": "304", "s": "1608", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "112", "exam_name": "112年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00131', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-de0a21a2', 'sub-generalpolice-0395e56f-01', NULL, 'essay', '甲利用不知情的乙，騙乙說，A 欠債 50 萬元不還，要乙和他一起去討
債。乙出於幫助友人的想法，某日跟著甲一同將A打昏並將 A帶到山上
廢棄工寮，待 A清醒後，甲命令 A 簽下 50 萬元本票，並取走其提款卡
與密碼，然後才再把 A帶回市區釋放。A獲釋後前去報警，警方循線逮
捕甲、乙，乙後來才知道 A並沒有積欠債款，而甲事後自行拿著提款卡
連續提款10 萬元花用。試問：甲、乙之刑責為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "597bc88062c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "0901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
