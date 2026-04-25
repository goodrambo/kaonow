-- W1.6 questions batch 5685/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-b89e2ba5-moex-00072', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-77052518', 'sub-investigation-b89e2ba5-01', NULL, 'essay', '人工智慧（ArtificialIntelligence）是當前最熱門新興技術之一，請討論
將人工智慧引入需求分析（RequirementsAnalysis）的可能性及其影響。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:40+00:00", "source_pdf_sha1": "74b6bbe0ddc6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1002", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00073', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', 'SQL 資料庫和 NoSQL 資料庫做比較，就資料模型的靈活性、資料庫的
可擴展性、資料庫的可用性、資料的一致性和完整性、查詢效率、維護
性等六方面，敘述優缺點並申論之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "8f91baf7d8cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00074', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '有一長照機構收容有需要被照顧的長者多名，每一名被照顧的長者在機
構內皆需登記身分證字號、姓名、性別和生日，且須登記與其他長者的
關係（如夫妻、兄弟、姊妹…等）。同時，還需有至少一名緊急聯絡人，
緊急聯絡人在機構內需留有身分證字號、姓名和電話等資料，不同長者
可以有相同之緊急聯絡人。機構擁有許多房間，分為 2 床型房（A 床
和 B 床）和 4 床型房（A 床、B 床、C 床和 D 床），每一房間皆有
房號，每一名被照顧的長者會被分配到一張床，分配的原則為 2床型房
可以分配給夫妻或同性別的長者，4 床型房僅可以分配給同性別的長者。
長照機構聘請多名照護員，照護員需記載員工編號、員工身分證字號、姓
名、性別、住址、E-mail 和電話，其中員工編號和員工身分證字號是唯
一的，電話則可以有多支。每一照護員皆須照顧長者，以房間為照顧單
位，每一男性照護員照顧一間 4床型房男性長者的房間或兩間 2床型房
男性長者的房間，每一女性照護員照顧一間 4 床型房女性長者的房間
或兩間 2 床型房非男性長者的房間。
機構還有一項服務，即被照顧的長者需要看醫生時，機構會為其預約，
因此，機構記錄有每一位長者的最近看診日期、下次預約日期、看診醫
生，看診醫生紀錄有醫院名稱、醫生編號、醫生姓名和科別，醫院名稱
和醫生編號合起來是唯一的。
根據以上敘述，分析資料需求，畫出實體關係圖（ER-diagram）。圖中必
須標明實體型態（Entity Type）、弱實體型態（Weak Entity Type）、關係
型態（RelationshipType）、識別關係型態（IdentifyingRelationshipType）、
屬性（Attribute）等，亦需呈現基數比（Cardinality ratio）和參與度
（ParticipationConstraint）兩種結構上的限制。若有需要，可自行假設需
求，但必須寫清楚。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "8f91baf7d8cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00075', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '假設一個交易（transaction）有五種基本運算，分別是⑴begin（T）：交易
T 開始；⑵read（Y, y）：將硬碟資料項 Y 讀到主記憶體變數 y；⑶write
（y,Y）：將主記憶體變數 y 寫到硬碟資料項 Y；⑷commit（T）：交易 T
提交，表示 T 成功結束；⑸rollback（T）：交易 T 被駁回。
假設資料庫紀錄檔（database log）中用五種方式記錄交易的運算，分別
為：⑴[start,T]：交易T開始；⑵[read,T,Y]：交易T讀取資料項Y；⑶
[write,T,Y, 更新前的值, 更新後的值]：交易T更新資料項Y；⑷[commit,
T]：交易T提交；⑸[rollback,T]：交易T被駁回。
在 WAL（Write-AheadLogging）機制下，考慮交易T0、T1、T2 和 T3 四
個交易及以下的排程，
假設資料項之初始值 X=100、Y=425 和 Z=800，且記憶體夠大，作業系
統不主動將記憶體緩衝區的資料或 LOG紀錄寫回硬碟，回答以下問題。
（每小題 10分，共 30 分）
執行時間序 8 之後（時間序 9 之前），記憶體和硬碟中資料項和紀錄
檔的內容各為何？
執行時間序 16 之後（時間序 17 之前），記憶體和硬碟中資料項和紀
錄檔的內容各為何？
發生系統當機，系統復原後硬碟中資料項X、Y和Z的值為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "8f91baf7d8cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00076', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '全國高中籃球聯賽記錄球員資料的關聯綱目（Schema）為球隊編號, 球
隊名稱, 學校名稱, 比賽場次, 球員編號, 球員姓名, 位置, 球員學號,
年級, 得分數, 犯規數，如範例：（''T105'',''火球隊'',''冠軍高中'',5,23,''王小
明'',''得分後衛'',''B2123456'',2,28,3），其功能相依（FunctionalDependency，
簡稱 FD）集合 F如下：
{ 球隊編號 }→ { 球隊名稱, 學校名稱 }
{ 學校名稱, 球員編號 }→ { 球員姓名, 球員學號, 年級 }
{ 學校名稱, 球員學號 }→ { 球員姓名, 球員編號, 年級 }
{ 球隊編號, 比賽場次, 球員編號 }→ { 位置, 得分數, 犯規數 }
求 F的最小集合（minimalset）。（5分）
關聯鍵（RelationalKey）或候選鍵（CandidateKey）為何？（5 分）
分解成滿足 3NF的關聯綱目和每一關聯綱目之FD。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "8f91baf7d8cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00077', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請回答下列有關數位鑑識之問題：
在數位鑑識（DigitalForensics）標準作業程序中，何謂資料採集（Data
Acquisition）？（15 分）
在某次數位鑑識調查中，資安事件調查員成功從犯罪現場獲取了數位
證據，調查人員現在必須保存這些數位證據以便進一步分析。為了確
保數位證據的完整性，調查人員應優先考慮採取那些行動？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "665d63f24289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00078', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請回答下列問題：
資安調查人員正在對從受害系統取得的某惡意程式之可執行檔進行
分析，該調查人員是否可以在無原始程式碼的情況下對可執行檔進行
逆向工程？如果是，其步驟為何？（15 分）
說明軟體逆向工程（SoftwareReverseEngineering）之目的為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "665d63f24289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00079', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請回答下列問題：
在網路安全攻擊中，何謂 SessionHijackingAttack？何謂 IPSpoofing？
以上兩者之關係為何？（15分）
說明什麼是 sniffing？其目的為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "665d63f24289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00080', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '請回答下列關於資訊安全之問題：
攻擊者不斷尋找利用傳送訊息進行破壞的新威脅。請說明 phishing、
vishing 與 smishing之差異。（15分）
簡述何謂 S/MIME（Secure/MultipurposeInternetMailExtensions）？
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "665d63f24289", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00081', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-113-c178e015', 'sub-investigation-b89e2ba5-05', NULL, 'essay', '在網際網路中，host的通訊協定堆（protocolstack）具有那些層（layer）？
（10 分）
在網際網路中，host可因功能和角色分為 client 和 server，這兩者的功
能差異為何？且對網路的要求有何差異？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:41+00:00", "source_pdf_sha1": "01568e4b02c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "415", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
