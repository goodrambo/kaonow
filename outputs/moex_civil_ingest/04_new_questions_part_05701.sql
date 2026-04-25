-- W1.6 questions batch 5701/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-b89e2ba5-moex-00232', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-44c4f898', 'sub-investigation-b89e2ba5-02', NULL, 'single_choice', 'WhichofthefollowingstatisticsisTRUE?', '["Before1919,therewerealreadymorethan170juniorcolleges", "Inthe1920s,therewereabout140privately-operatedjuniorcolleges", "In1949,thereweretotally180juniorcollegeswith108independentnon-profit", "Thepeakyearforprivatecommunitycollegeexpansioncameattheyearof1922"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "86167c73b112", "answer_pdf_sha1": "df3e6e4e372c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "0316", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00233', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-44c4f898', 'sub-investigation-b89e2ba5-02', NULL, 'single_choice', 'WhichofthefollowingstatementsisTRUE,accordingtothetextabove?', '["Communitycollegesenrollmentisvocationallylimited", "Four-yearcollegegrowthwasaffectedbytheopen-enrollmentpolicyofjuniorcolleges", "Communitycollegesprovidelow-costpreparationfortransferstudentsintofour-yearinstitutions", "Communitycollegescontinuetoappealtoyoung,lesspreparedstudents"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "86167c73b112", "answer_pdf_sha1": "df3e6e4e372c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "0316", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00234', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '有一銀行委予資料庫設計，做完系統分析後，得到如下需求
（Requirements）：
⑴一銀行（BANK），有銀行代碼（Code），銀行名稱（Name）和地址（Addr），
銀行代碼用以區別不同的銀行。
⑵一銀行有許多分行（BANK-BRANCH），每一分行有地址（BranchAddr）
和分行代碼（BranchNo），分行代碼用以區別不同的分行，一分行不能單
獨存在，一定要隸屬於某一銀行，但一銀行可以沒有分行（例如籌備中）。
⑶一分行可以有許多的帳戶（ACCOUNT），每一帳戶有帳戶編號
（AcctNo），餘額（Balance），和帳號種類（Type），帳戶編號用以區別
不同的帳戶，一帳戶必須隸屬於某一分行，但分行可以沒有帳戶。
⑷一客戶（CUSTOMER）可以擁有多個帳戶（ACCOUNT），每一客戶有
客戶代碼（SSN），名字（CustName），手機號碼（Phone）和地址
（CustAddr），客戶代碼用以區別不同的客戶；一帳戶（ACCOUNT）也
可以由多個客戶（CUSTOMER）所擁有，一帳戶必須要有客戶所擁有，
但客戶可以沒有帳戶。
⑸一分行可以有許多的貸款（LOAN），每一筆貸款有貸款編號
（LoanNo），種類（LoanType）和貸款金額（Amount），每一貸款必須
隸屬於某一分行，但分行可以沒有貸款。
⑹一客戶可以有多筆貸款，一筆貸款也可以由多個客戶來共同借貸，一
貸款必須隸屬於一客戶，但客戶可以沒有貸款。
請畫出此銀行資料庫的實體關係圖（ERDiagram），此實體關係圖裡應包
括有強實體型態（StrongEntityType）與弱實體型態（WeakEntityType）
的設計，並請標示各項限制（Constraints）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "e6bf3f13e4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00235', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '給予一關聯綱要（Relation Schema）EMP-PROJ（SSN, Pnumber, Hours,
Ename,Pname,Plocation），主鍵為（SSN,Pnumber），此關聯綱要記錄員
工的識別碼與名字，與所參與的計畫名稱及計畫所在位置，一個員工可參與
多個計畫，每一參與的計畫會記錄參與的時數，此外，此關聯綱要給予一組
功能依附性（Functional Dependences）：{{SSN, Pnumber} → {Hours},
{SSN} → {Ename},{Pnumber} → {Pname},{Pnumber} → {Plocation}}，
EMP-PROJ 關聯綱要有更改異常（UpdateAnomalies）問題嗎？試舉一例
說明插入更改異常（Insertion Anomalies），EMP-PROJ 關聯綱要是 2NF
格式嗎？如不是，請將 EMP-PROJ關聯綱要分割（Decompose）到 2NF
的關聯綱要，並論述分割的原理。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "e6bf3f13e4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00236', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '在資料庫處理，交易處理的資料庫存取指令（AccessOperations）包括那
些？何謂交易（Transactions）？何謂行程（Schedules）？一行程由多個
交易組成，一行程的執行會產生那些問題？在資料庫管理系統（DBMS）
的並行控制和回復機制要強制交易處理達到那些特性（Desirable
PropertiesofTransactions）？請論述之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "e6bf3f13e4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00237', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-804ba136', 'sub-investigation-b89e2ba5-03', NULL, 'essay', '給予下列四個行程 A、B、C、D，依優先序圖形（Precedence Graph），
請論述那一行程不具序列性（Serializability）。（25 分）
ScheduleA ScheduleB
T T T T
1 2 1 2
read_item(Y); read_item(Y);
Y:=Y-N; Y:=Y+M;
write_item(Y); write_item(Y);
read_item(X); read_item(Y);
Time X:=X+N; Time Y:=Y-N;
write_item(X); write_item(Y);
read_item(Y); read_item(X);
Y:=Y+M; X:=X+N;
write_item(Y); write_item(X);
ScheduleC ScheduleD
T T T T
1 2 1 2
read_item(Y); read_item(Y);
Y:=Y-N; Y:=Y-N;
write_item(Y); read_item(Y);
Y:=Y+M;
read_item(Y);
Time
Time Y:=Y+M; write_item(Y);
write_item(Y); read_item(X);
read_item(X); write_item(Y);
X:=X+N; X:=X+N;
write_item(X); write_item(X);', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "e6bf3f13e4a1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1006", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料庫應用", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00238', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '試說明資料傳輸之對稱式（Symmetric）加密法與非對稱式（Asymmetric）
加密法以及二者之間的差異性。並說明 TCP/IP網路上傳輸層（Transport
Layer）和網際網路層（InternetLayer）所提供的資訊安全機制之通訊協
定與其功能。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "980fb01e6c6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00239', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '試寫出下列無線區域網路（WirelessLAN）相關的名詞之定義與其功能：
什麼是 AP？此外，並寫出其功能。（10分）
什麼是 WPA2？此外，並寫出其功能。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "980fb01e6c6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00240', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '試寫出下列雲端運算（CloudComputing）相關的名詞之定義與其資訊安
全問題：
什麼是 VM？此外，並寫出其功能。（10 分）
於雲端運算平台上，目前常見的網際安全攻擊（CyberSecurityAttacks）
有那些並說明其特性？請列舉三項。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "980fb01e6c6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL),
  ('investigation-b89e2ba5-moex-00241', 'investigation-b89e2ba5', 'investigation-b89e2ba5-moex-110-acc7fe0d', 'sub-investigation-b89e2ba5-04', NULL, 'essay', '什麼是SOC？於SOC風險管理中，執行其風險評估以衡量威脅（Threats）
與弱點（Vulnerabilities）的發生機率（Likelihood）時，可能會衍生那兩
項主要的問題？此外，請提出策略以解決此問題。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "980fb01e6c6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "414", "s": "1007", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊安全實務", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "資訊科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
