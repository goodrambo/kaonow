-- W1.6 questions batch 5651/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('investigation-2b298e71-moex-00218', 'investigation-2b298e71', 'investigation-2b298e71-moex-110-44c4f898', 'sub-investigation-2b298e71-04', NULL, 'single_choice', 'WhichofthefollowingstatementsisTRUE,accordingtothetextabove?', '["Communitycollegesenrollmentisvocationallylimited", "Four-yearcollegegrowthwasaffectedbytheopen-enrollmentpolicyofjuniorcolleges", "Communitycollegesprovidelow-costpreparationfortransferstudentsintofour-yearinstitutions", "Communitycollegescontinuetoappealtoyoung,lesspreparedstudents"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:52+00:00", "source_pdf_sha1": "86167c73b112", "answer_pdf_sha1": "df3e6e4e372c", "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "404", "s": "0316", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "調查工作組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00001', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-bd2490ec', 'sub-investigation-a6b1e630-01', NULL, 'essay', '我們考慮一個雙變數純量場（scalarfield）：f(x,y)xexy。
f(x,y)在(1,3)這個點上面的梯度（gradient）為何？（8分）
1 2
f(x,y)在(1,3)這個點上面沿著( )這個單位向量之方向的方向
,
5 5
導數(directionalderivative)為何？（7 分）
1 1 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "9b632b3c72ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00002', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-bd2490ec', 'sub-investigation-a6b1e630-01', NULL, 'essay', '考慮一個矩陣A 0 2 2 。
0 0 3
請算出A的簡化列階梯形式（reducedrowechelon form）。（5 分）
請算出A之所有特性值（eigen-values）。（6 分）
針對每一個特性值，請找出對應之特性向量（eigen-vectors）。（9 分）
A是一個可對角化（diagonalizable）的矩陣嗎？（4 分）
有一個列向量（rowvector）y，已知它合乎這個方程式所描述的條件：
yA=3 2 1。請問，y ？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "9b632b3c72ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00003', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-bd2490ec', 'sub-investigation-a6b1e630-01', NULL, 'essay', '我們考慮一個二階常係數微分方程式：y(t)4y(t)3y(t)t2，其初始
條件為：y(0)2, y(0)1。
請寫出此微分方程式之齊次解（homogeneoussolution）的一般形式。（6分）
請找出此微分方程式的一個特定解（particularsolution）。（6分）
請找出此微分方程式（含初始條件）之完整解（completesolution）。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "9b632b3c72ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00004', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-bd2490ec', 'sub-investigation-a6b1e630-01', NULL, 'essay', '有一個公平的骰子，我們對它作了 10 次投擲；我們用A代表其中投擲結
果為奇數點（亦即 1 或 3 或 5）的次數，用B代表其中投擲結果為偶數
點（亦即 2或 4或 6）的次數。
A與B是否為互相獨立（independent）的隨機變數（randomvariable）？（4分）
請計算下列機率：Prob(A B3)？（8 分）
請計算A2的期望值（expectation）：E(A2)？（8分）
1 2 3 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "9b632b3c72ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00005', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-bd2490ec', 'sub-investigation-a6b1e630-01', NULL, 'essay', '考慮一個複變函數：f(z)1    5z2 (i 1)。
z z1 zi z(1i)
在本題目中，我們探討 f(z)在一些封閉曲線上作線積分（line integral）
的問題。假設線積分的方向為正向環繞（in positive orientation，也就是
逆時鐘旋轉）。（每小題 5 分，共15 分）
2 2
假設C：z  （亦即在複變平面上以原點為中心，以 為半徑作出的
1 5 5
圓）。試求出， f(z)dz ？
C
1
4
假設C：z  。試求出， f(z)dz ？
2
5 C2
6
假設C：z  。試求出， f(z)dz ？
3
5 C
3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "9b632b3c72ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00006', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-44c4f898', 'sub-investigation-a6b1e630-02', NULL, 'single_choice', '有關修憲程序，下列敘述何者正確？', '["修憲程序是否採記名投票，應由修憲機關依議事自律原則自行決定", "基於秘密投票原則，修憲程序應採無記名投票", "修憲程序應採記名投票，始符合正當修憲程序之要求", "僅在涉及基本國策之修改時，修憲程序始應採記名投票"]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "904ad8d12125", "answer_pdf_sha1": "7bd301720801", "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "0310", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": 1, "answer_corrected": true, "flags": ["answer_corrected_skip_v1"], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00007', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-44c4f898', 'sub-investigation-a6b1e630-02', NULL, 'single_choice', '依憲法法庭判決，對於大學教師評鑑規定之合憲性審查，應採何等審查標準？', '["因涉及大學教師職業執行自由之限制，應採寬鬆之審查標準", "因涉及大學教師職業選擇自由之主觀條件限制，攸關大學教師人格發展 ，應採較為嚴格之審查標準", "雖涉及大學教師職業選擇自由之主觀條件限制，但基於對大學自治之尊重，應採寬鬆之審查標準", "因涉及大學教師職業選擇自由之客觀條件限制，對於大學教師權益有重大影響，應採最為嚴格之審 查標準"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "904ad8d12125", "answer_pdf_sha1": "7bd301720801", "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "0310", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00008', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-44c4f898', 'sub-investigation-a6b1e630-02', NULL, 'single_choice', '下列何者非屬憲法集會自由保護之範圍？', '["參與政見發表會之群眾", "於夜市、鬧區街道逛街之人群", "參加社區管理委員會開會之區分所有權人", "參加元旦升旗之人群"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "904ad8d12125", "answer_pdf_sha1": "7bd301720801", "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "0310", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL),
  ('investigation-a6b1e630-moex-00009', 'investigation-a6b1e630', 'investigation-a6b1e630-moex-114-44c4f898', 'sub-investigation-a6b1e630-02', NULL, 'single_choice', '依憲法訴訟法第47條規定得聲請憲法法庭判決者，下列敘述何者錯誤？', '["總統雖為國家最高機關，但不得聲請憲法法庭判決", "地方自治團體辦理委辦事項時，得適用憲法訴訟法第47條第2項", "行政院、立法院、司法院均得聲請憲法法庭判決", "地方自治團體辦理自治事項時，不適用憲法訴訟法第47條第2項"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:42+00:00", "source_pdf_sha1": "904ad8d12125", "answer_pdf_sha1": "7bd301720801", "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "414", "s": "0310", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "綜合法政知識與英文(包括中華民國憲法、法學緒論、兩岸關係、英文)", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "investigation", "civil_category": "電子科學組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
