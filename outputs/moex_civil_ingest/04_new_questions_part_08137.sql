-- W1.6 questions batch 8137/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0c700c30-moex-00234', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '關於貨幣需求，下列敘述何者正確？', '["根據流動性偏好理論，貨幣流通速度具反景氣循環（counter-cyclical）特性", "根據流動性偏好理論，貨幣流通速度與名目利率呈反向關係", "當民眾持續預期高且波動大之通貨膨脹率時，貨幣需求會下降、並使貨幣流通速度下降", "古典二分法意指長期時貨幣數量之變動完全反應在物價上，對實質經濟活動沒有影響"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "3d16c42cf235", "answer_pdf_sha1": "a2c37693d48b", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "0909", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00235', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '若原經濟體已存在緊縮缺口，根據奧肯法則（Okun’sLaw），當此緊縮缺口擴大，在其他條件不變下，循環 性失業率會：', '["上升", "不變", "下降", "難以判定"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "3d16c42cf235", "answer_pdf_sha1": "a2c37693d48b", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "0909", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00236', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '一個 m×n 的二維矩陣 A ，其中列數 m=5，行數 n=4，A 矩陣大部
m×n
分的元素值為 0，屬於稀疏矩陣，請試述：
稀疏矩陣的缺點？（10分）
使用一個二維密集矩陣 B表現稀疏矩陣 A。A矩陣的非零元素分別為
A(0,0)=1,A(1,1)=2,A(2,2)=3,A(3,0)=4,A(4,3)=5，如圖，請畫出 B
矩陣。（20 分）
1 0 0 0
0 2 0 0
0 0 3 0
4 0 0 0
0 0 0 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00237', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '有一資料表 R，以 R(A, B, C, D, E, F)表示，A～F為資料表 R的欄位名
稱，功能相依以X→Y表示，表欄位 Y依賴欄位 X。資料表 R存在下列
功能相依：
A→(E, F)
B→C
(A, D)→(B, C, E, F)
請問：
R資料表的主鍵為何？（10 分）
將資料表 R正規化為符合三階正規資料表，其中必須將三階正規化後
的所有資料表，標出主鍵(P)和外部鍵(F)。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00238', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '容錯式磁碟陣列（Redundant Array of Independent Disks; RAID）的使用
對於資料的儲存策略影響深遠，請試述何謂 RAID 0、RAID 1？假設共
有 n 顆硬碟，每顆硬碟規格皆相同，請就組成 RAID 0、RAID 1 最少
硬碟數、最大容錯硬碟數、可用容量硬碟數三方面，比較它們的差異。
（10 分）
44630', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00239', 'pukao-0c700c30', 'pukao-0c700c30-moex-111-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '網際網路上的應用，如全球資訊網（World Wide Web）的應用已蓬勃發
展，有所謂的 WEB1.0、WEB2.0、WEB3.0 世代的演進，其中 WEB3.0
有學者認為是語意網的發展，另一派學者認為是去中心化的發展，目前
尚無定論。請以資訊提供者、資訊品質、資訊互動性，試述比較WEB1.0
和 WEB2.0 的差異。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "245e3a79a44a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "417", "s": "2618", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00240', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '006 0.01 0.025 0.05 0.1
t =2.31，t =2.26，t =1.86，t =1.83，', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "365a0d42078e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1116", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00241', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '025,8 0.025,9 0.05,8 0.05,9
χ2 =9.35，χ2 =11.14，χ2 =12.83，χ2 =7.81，χ2 =9.49，χ2 =11.07
3,0.025 4,0.025 5,0.025 3,0.05 4,0.05 5,0.05
χ2 =6.25，χ2 =7.78，χ2 =9.24
3,0. 4,0.1 5,0.1
1
X 族人之平均身高為 160 公分，標準差為 10 公分。某製造商欲生產一
款長度為 200 公分之床墊。假設床墊之長度必須比身長多出至少 15 公
分方能讓使用者感覺舒適。
若不知 X族人身高之分配為何，試問約有多少比例族人使用此床墊感
覺舒適？（10 分）
若 X族人之身高服從常態分配，試問感覺舒適之比例為何？（10 分）
甲公司有 4名員工，月薪分別為4 萬、6萬、8萬、8 萬。經由簡單計算
已經求出母體平均數( )為 6.5 萬，母體變異數( )為 2.75 萬。今擬以抽
後不放回的方式抽取 2 名員工，得樣本平均數  。將 的平均數與變
 
異數分別記為 與 。
  
試寫出 之機率分配，並依此計算 與 。（10 分）
 
 ( )
假設母體個數為 ，以抽後不放回的方式抽取個值，將樣本平均數之
  
  ( )
變異數記為 。在考量有限母體修正係數之下，試寫出 與
N n
之關係式。（5 分）  
 
( ) ( ) 
當樣本數 遠小於母體數 時，試問中之修正係數近似何值？（5分）
n N
甲乙丙為三名職棒左打者，下表為去年此三名打者面對左投手與右投手
時之表現。
打數（左投） 安打數（左投） 打數（右投） 安打數（右投）
甲 224 63 532 116
乙 245 49 567 238
丙 231 35 525 147
棒球打擊率之計算公式如下：打擊率＝安打數/打數
試分別計算甲乙丙於左投時之打擊率的95%信賴區間，並依此兩兩比
較（甲、乙）、（乙、丙）、（甲、丙）面對左投手時之打擊率是否不同？
（10 分）
在顯著水準0.1下，試檢定甲打者面對左投與右投時，打擊率是否不同？
（10 分）
A辦事處使用抽號機供訪客抽取號碼，並使用叫號機呼叫訪客前往櫃檯
接受服務。根據過去一週抽號機與叫號機之紀錄，製作訪客到訪之等候
時間（分鐘）與人次如下：
等候時間 （0,5） [5,10） [10,15） [15,20） [20,30）
人次 147 65 22 9 7
試求平均等候時間。（5分）
在顯著水準 0.1 下，試檢定等候時間是否服從指數分配。（期望值為
的指數分配之機率密度函數為 ；累積機率分

配函數為 。）（10 分）/
() = (1/) ,  ≥ 0
/
() = 1−  ,  ≥ 0
賈先生欲購買一輛油電混合二手車。他蒐集一組隨機樣本，其中車齡
（年）與價格（萬元）之資料如下：
X：車齡 8 3 6 5 5 2 8 10 9 8
Y：價格 55 145 82 68 100 140 35 40 65 70
已經算出 ， ，
。 
 = ( −¯) = 62.4  = (−¯) = 12948
(在 −顯著¯)(水準−0¯).0=5下−，80試8檢定車齡與價格之相關係數是否為負值。（5分）
考慮以價格為依變數、車齡為因變數之線性回歸模型。試求出回歸方
程式，並於顯著水準 0.05下，試檢定斜率係數是否為負值。（10分）
試比較之檢定統計量之異同。（5 分）
試求出判定係數，並說明其意義。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:49+00:00", "source_pdf_sha1": "365a0d42078e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1116", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00242', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '如果小強收到他的工資率增加的通知，並決定增加他的工作時數，可得知工資率增加時，下列敘述何者 正確？', '["他的所得效果大於他的替代效果", "他的替代效果大於他的所得效果", "他的所得效果和替代效果相同", "他的所得效果和替代效果都增加"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00243', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '臺灣中央銀行目前最常採行的是下列何種貨幣政策工具？', '["重貼現率（re-discountrate）", "存款準備率（requiredreserveratio）", "公開市場操作（openmarketoperation）", "扭轉操作（operationtwist）"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "c4d2194ea576", "answer_pdf_sha1": "b28a0b151639", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1009", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
