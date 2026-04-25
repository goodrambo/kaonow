-- W1.6 questions batch 4286/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('generalpolice-0395e56f-moex-00202', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-110-804ba136', 'sub-generalpolice-0395e56f-03', NULL, 'essay', '假設現有如下個人實聯制登記紀錄的關連式資料庫，請使用SQL回答相關的子問題。
Place（placeID, placeName, countyCity, district, address）PK：placeID
Person（mobile,name, telecomProvider）PK：（mobile）
EnterRecord（placeID, mobile, date, time）
PK：（placeID, mobile,date,time）
FK：placeID ref. Place（placeID）
FK：mobile ref. Person（mobile）
使用DDL定義所有的資料表，定義中應適當表示primary/foreignkeys，
及 referentialintegration。（10分）
請依countyCity、district，分群顯示該行政區內，2021/05/11~2021/05/31間，
所有公共場所進出人數的總和，結果需依進出人次多至少作排列。（5分）
請列出臺北市萬華區內"公有XX市場"，2021/05/15~2021/05/28進出人員
的手機號碼及姓名，並依手機登錄進出次數，由多至少排列顯示。（5分）
請查詢所有手機號碼，在"新北市"所有公共場所進出次數>1 的相關資
訊，包括姓名、手機號碼、日期、進出場所的縣市行政區與名稱，結
果依日期近至遠排列顯示。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:52+00:00", "source_pdf_sha1": "888e6a5fb5aa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "304", "s": "1602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00203', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-110-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '近年來雲端技術蓬勃發展，大量組織採用雲端架構系統，但部分機構或
組織受限於法規或其資料的機敏性，必須謹慎評估雲端技術的運用。假
設某金融機構計劃將應用雲端技術於相關資訊服務，請仔細評估此金融
機構雲端託管服務（incloud）以及主機自管（inhouse）的優缺點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:52+00:00", "source_pdf_sha1": "d1b61730f46b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "304", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00204', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-110-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '產出高品質的資訊所需的資料有那些特性？請舉一個警察資訊系統的
例子來詳細說明各特性。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:52+00:00", "source_pdf_sha1": "d1b61730f46b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "304", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00205', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-110-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '為了將組織中現有的資料萃取為知識，協助組織做出重要的業務決策，
商業智慧型（BusinessIntelligence,BI）的技術被廣泛應用。請以警察資
訊管理的背景來詳述商業智慧流程的主要三個活動。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:52+00:00", "source_pdf_sha1": "d1b61730f46b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "304", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-0395e56f-moex-00206', 'generalpolice-0395e56f', 'generalpolice-0395e56f-moex-110-aff4a67f', 'sub-generalpolice-0395e56f-04', NULL, 'essay', '為實現動態程式設計，提升日後程式修改、擴充、簡化與再利用，MVC
架構被實務界大量使用。請先說明一個你所知的警察資訊管理需求，然
後若要滿足你所舉的例子的需求，且決定以 MVC 架構來開發的話，詳
細說明你的 MVC架構與優點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:52+00:00", "source_pdf_sha1": "d1b61730f46b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110070", "c": "304", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "110", "exam_name": "110年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、交通事業鐵路人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "警察資訊管理人員"}'::jsonb, NULL),
  ('generalpolice-3218f787-moex-00001', 'generalpolice-3218f787', 'generalpolice-3218f787-moex-114-de0a21a2', 'sub-generalpolice-3218f787-01', NULL, 'essay', '公務員甲因投資失敗，欠下鉅額債務，某日知悉經營貴金屬鑑定的好友
乙，正好於家中保管客戶 A的高價金屬，甲告訴乙，該貴金屬依照 A的
經營模式一定有保險，不如想出一個方法，對 A謊稱該批貴金屬遭人搶
劫，實際上由甲變賣，利益兩人均分，對 A來說也不會有太多損失。乙
告訴甲，可以將該批貴金屬拿一些出來，客戶應該不會發現，但謊稱整
批被搶走，很難說得過去。兩人商議後，同意由乙取出部分貴金屬（市
價約新臺幣 200萬元）藉由甲的人脈關係賣出，獲取金額由乙拿六成，
甲拿四成。因為在交易市場中，買家丙私下辨識出該貴金屬為 A所有，
且甲無法交代貴金屬來源，實際賣得總價只有 50萬，甲、乙依兩人約定
朋分贓款。
數月後甲仍需錢孔急，甲到乙的辦公室向乙借錢，稱討債公司揚言，若
不還錢，將加害甲的家人。乙考慮數日後，仍拒絕借錢給甲。另一方面，
乙心中確實不忍甲的家人遭受危難，乙將甲約至辦公室，對甲婉轉說明
自己手上也沒有多餘現金可供週轉，無法借錢給甲。乙以有要事處理為
由要外出一趟，離開辦公室前將家中存放貴金屬之保險箱的鑰匙放置桌
上，心想如果甲識得該鑰匙並且能夠使用鑰匙拿走貴金屬，也算幫甲一
個忙。甲果然認得該鑰匙為乙家中保險箱鑰匙，趁辦公室四下無人，甲
將鑰匙放進口袋後即離開。當天夜裡，甲攜帶鑰匙潛入乙的家中，開啟
保險箱並將裡面所存放之 A的貴金屬一掃而空。試問甲、乙的行為依刑
法如何評價？（50 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:29+00:00", "source_pdf_sha1": "a91534b7814d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "302", "s": "0604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "犯罪防治人員預防組"}'::jsonb, NULL),
  ('generalpolice-3218f787-moex-00002', 'generalpolice-3218f787', 'generalpolice-3218f787-moex-114-de0a21a2', 'sub-generalpolice-3218f787-01', NULL, 'essay', '警察在例行巡邏時，發現前科累累，甫出獄的張三神情可疑地在雜貨店
門口張頭探腦，於是向前盤查，因而發現其攜帶有槍枝，並以現行犯逮
捕張三。逮捕後，警察搜索張三隨身攜帶的背包，發現有毒品。請問，
警察所發現的槍枝及毒品，有無證據能力？應如何判斷？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:29+00:00", "source_pdf_sha1": "a91534b7814d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "302", "s": "0604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "犯罪防治人員預防組"}'::jsonb, NULL),
  ('generalpolice-3218f787-moex-00003', 'generalpolice-3218f787', 'generalpolice-3218f787-moex-114-de0a21a2', 'sub-generalpolice-3218f787-01', NULL, 'essay', '地方檢察署檢察官張三對於李四的案件提起公訴，法院諭知無罪判決，
張三不服，提起上訴。後張三調任高等檢察署，該案件輪分至張三，由
其辦理。請問，張三是否應迴避？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:29+00:00", "source_pdf_sha1": "a91534b7814d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "302", "s": "0604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "犯罪防治人員預防組"}'::jsonb, NULL),
  ('generalpolice-3218f787-moex-00004', 'generalpolice-3218f787', 'generalpolice-3218f787-moex-114-13504c0c', 'sub-generalpolice-3218f787-02', NULL, 'single_choice', '下列文句「」中用詞，何者最為妥切？', '["好友已值「從心所欲」之年，是拚搏事業的好時機", "土耳其大地震，死傷人數慘重，令人「忍俊不住」", "王生誤解了李生的好意，慚愧的登門「負荊請罪」", "他們兄弟感情深厚，真是「舉案齊眉」，令人稱羨"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:29+00:00", "source_pdf_sha1": "8e2479f19be0", "answer_pdf_sha1": "59c0340c3c3a", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "302", "s": "0102", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文(作文與測驗)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "犯罪防治人員預防組"}'::jsonb, NULL),
  ('generalpolice-3218f787-moex-00005', 'generalpolice-3218f787', 'generalpolice-3218f787-moex-114-13504c0c', 'sub-generalpolice-3218f787-02', NULL, 'single_choice', '「樹上的花是小說，有枝有幹地攀在縱橫交叉的結構上，那裡面有多層次、多角度 的說不盡的故事。草花是詩，由於矮，像是剛從土裡蹦上來的，一種精粹的、鮮艷 的、凝聚的、集中的美。散文是爬籐花，都有一種走到那裡就開到那裡的渾灑。如 果有什麼花可以稱之為舞台劇的，大概就是曇花了吧。它是一種徹底的時間藝術， 在絲帷的開闔間即生而即死。」 根據上文，下列選項，何者最接近文意？', '["小說是高高在上，像樹上的花必須仰望", "詩則俯拾即是，就像草花一樣隨處可見", "散文必須像爬籐，要旅行才能寫得渾灑", "舞台劇如曇花，在開幕謝幕間展演人生"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:29+00:00", "source_pdf_sha1": "8e2479f19be0", "answer_pdf_sha1": "59c0340c3c3a", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "302", "s": "0102", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文(作文與測驗)", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "generalpolice", "civil_category": "犯罪防治人員預防組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
