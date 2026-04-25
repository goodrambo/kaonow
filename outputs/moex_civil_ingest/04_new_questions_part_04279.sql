-- W1.6 questions batch 4279/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('generalpolice-0395e56f-moex-00132', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-de0a21a2', 'sub-generalpolice-0395e56f-01', NULL, 'essay', '甲向好友乙借了一輛轎車使用，乙為行車安全著想，在車上裝設行車紀
錄器。某日甲去夜店喝酒，喝完後開車回家，因酒精作用影響，開車開
到睡著，因而追撞前面由丙騎乘的機車，導致丙摔車倒地且小腿骨折。
甲於事故後一時驚慌，沒有留在現場而是開車離開，然而警察仍在不久
後將甲攔停下來，經酒測，甲之吐氣所含酒精濃度為每公升 0.25毫克。
此外，甲因為擔心有人會看到行車紀錄器畫面，在離開現場時就先將行
車紀錄器的記憶卡取出並丟棄。試問：甲之刑責如何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "597bc88062c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "0901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00133', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-de0a21a2', 'sub-generalpolice-0395e56f-01', NULL, 'essay', '被害人行經某路段時，被追撞成重傷。偵查結束後，檢察官對張三提起
公訴。在審判中，張三提出車上行車紀錄器中的紀錄，主張自己在案發當
時，並未行經該路段，不可能撞傷被害人。檢察官則主張，該行車紀錄器
的紀錄是審判外陳述，且未合於任何的傳聞法則的例外，應無證據能力。
試問，張三及檢察官的主張，何者有理由？請附詳細理由說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "597bc88062c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "0901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00134', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-de0a21a2', 'sub-generalpolice-0395e56f-01', NULL, 'essay', '偵查中，檢察官傳喚證人張三到場作證。訊問前，檢察官漏未告知張三
若恐陳述致自己或一定關係之人受刑事追訴或處罰者，得拒絕證言。訊
問後，張三承認案發當日，自己與被告李四一同竊取他人財物。在李四的
審判中，檢察官提出張三偵查中的陳述作為證據，證明李四的犯罪事實。
李四主張，檢察官訊問張三時，未告知張三得拒絕證言，張三的陳述應無
證據能力。請問，李四的主張有無理由？請附詳細理由說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "597bc88062c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "0901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00135', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '政府在推動兩稅合一以抑制房價的高漲，今有一家房屋仲介公司擬建置
一資料庫，經過系統分析後，有如下的需求：
⑴每一間房屋（House）：有一房屋編號（house-id）、街道名稱（house-str）、
房屋種類（house-type）與價格（price），房屋編號唯一識別所有房屋。
⑵每一屋主（Solder）：有一屋主編號（solder-id）、屋主姓名（solder-name）、
屋主地址（solder-addr）與屋主電話（solder-tel），每一屋主有數個電
話，屋主編號唯一識別所有屋主。
⑶每一買主（Buyer）：有一買主編號（buyer-id）、買主姓名（buyer-name）、
買主地址（buyer-addr）與買主電話（buyer-tel），每一買主有數個電話，
買主編號唯一識別所有買主。
⑷房屋與屋主的關係為一個屋主可同時提供數間房屋委賣（Sold-By），
一間房屋可由多位屋主所擁有，每一委賣皆記錄其委賣時間（sold-
time）、契約書編號（contr-id）與佣金成數（sold-comm）。
⑸房屋與買主的關係為一個買主可同時購買（Purch-By）數間房屋，但
每一房屋僅為一買主所購買，每一購買皆記錄其購屋日期（buy-time）、
契約書編號（contr-id）、成交價（buy-price）與佣金成數（buy-comm）。
⑹每一屋主（Solder）會有多個繼承人（Inher-Dep），每一繼承人（Inheritor）
有繼承人編號（inher-id）與繼承人姓名（inher-name），繼承人編號唯
一識別繼承人，繼承人依附於屋主存在。
請繪出此房屋仲介公司資料庫的實體關係圖（ERDiagram），此實體關係
圖裡應包括有強實體型態（Strong Entity Types）與弱實體型態（Weak
EntityTypes）的設計，並請標示各項限制（Constraints）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "4f569cf01c7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00136', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '給予一關聯綱要（RelationSchema）GROUND（property-id,county-name,
lot-id, area, price, tax-rate），此關聯綱要記錄土地資料，包括財產編號
（property-id）、鄉鎮名稱（county-name）、地號（lot-id）、土地面積（area）、
價格（price）與稅率（tax-rate），主鍵為財產編號（property-id），並給予
一組功能依附性（Functional Dependencies）{{property-id}→{county-
name,lot-id,area,price,tax-rate}，{county-name,lot-id}→{property-id,area,
price,tax-rate}，{county-name}→{tax-rate}，{area}→{price}}，關聯綱要
GROUND是否為 2NF？如不是，會有何問題？請將 GROUND正規化至
2NF，然後至 3NF。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "4f569cf01c7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00137', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '給予如下兩個關聯綱要（RelationSchemas），EMPLOYEE關聯綱要記錄
員工編號（ssn）、年齡（age）及所在部門（dno），主鍵為 ssn，DEPARTMENT
關聯綱要記錄部門編號（dnum）及名稱（dname），主鍵為 dnum，其中
EMPLOYEE的外來鍵（ForeignKey）“dno”參考到DEPARTMENT 的主
鍵（Primary Key）“dnum”，請用 SQLGROUPBY 寫出查詢「至少兩個
人的部門，取出部門名稱及年齡大於 25 歲的人數（Foreachdepartment
that has more than two employees, retrieve the department name and the
number of its employees who each is more than twenty-five years old）」。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "4f569cf01c7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00138', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '一資料庫管理系統（DBMS）基本上包括一資料庫安全與授權子系統
（Database Security and Authorization Subsystem），負責確保對沒有授權
資料庫內容存取的安全，請論述一資料庫安全與授權子系統兩類型的資
料庫安全機制（Two Types of Database Security Mechanisms），其中對資
料庫內容的存取，在 SQL語言中可使用何指令來設定權限，並寫出一獲
得授權存取表格的例子。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "4f569cf01c7f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00139', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '請說明公開金鑰架構（PKI/CA）的基本概念，包含其中的組成項目；以
及公開金鑰在密碼學中，有那些基本的特性和運作方式。（10 分）並請
舉例說明如何利用公開金鑰達成網路傳輸上的保密性不可否認性
與 VPN通訊。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "52206dcb0a93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00140', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '傳統上，警察巡邏箱是採用「書面填寫」的紙筆方式進行。也有一些警
察單位採用掃描二維條碼（QRCode）方式進行。2020 年 3月中，媒體
報導嘉義市全面啟用「嘉 e巡簽－智慧巡邏箱」2.0 升級版。有別於其他
縣市電子巡簽系統，採用 NFC感應方式，只需 1秒即可完成簽到，讓員
警有更多時間對周遭可疑人物作盤查，並優化見警率。請提出一個利用
NFC 來進行簽到的可能作法。（10 分）請從使用者和管理者兩個角度，
分別從不同的考慮因素來評析紙筆、掃 QRCode、刷 NFC等三個方案的
優劣，包含易用性、正確性、資訊安全及處理成本等等。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "52206dcb0a93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00141', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-111-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '假設你被賦予一項任務為某個單位開發一個戶外集會遊行保安人力調
派系統。在取得遊行集會申請後，依據過去歷史資料、研判參與人數、
參考地點特性、天氣狀況等，由系統調派適當的保安人力，以及後續動
態的備援人力等。請提出一套解決方案，包括可能的初步需求、所需要
的技術項目、進行步驟和進行方式等。（15 分）若你的單位沒有足夠的
人力來開發這個系統，但是還是需要進行，請規劃在人力不足下，如何
達成任務。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:51+00:00", "source_pdf_sha1": "52206dcb0a93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111070", "c": "304", "s": "1506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "111", "exam_name": "111年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
