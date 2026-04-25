-- W1.6 questions batch 4572/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0c700c30-moex-00192', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '資料庫系統的備份方式包含有：完整備份（full image copy backup）、差
異備份（incrementalimagecopybackup）與交易紀錄備份（transactionlog
backup）。如下圖，我們在 T0 時執行完整備份，T4時執行差異備份，T1、
T2、T5 與 T6 時執行交易紀錄備份。
完
整
備
份
差異備份
交易紀錄 交易紀錄 交易紀錄 交易紀錄
備份 備份 備份 備份
T0 T1 T2 T3T4 T5 T6
請說明這三種備份方式的特點與適用或不適用時機。（15 分）
如果系統在 T6 時間點過後沒多久發生系統故障，請說明執行還原的
順序。（10 分）
請問是否可以將系統還原到T3這個時間點？（4分）請說明理由。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:06+00:00", "source_pdf_sha1": "b88fc62141a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00193', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '請詳細說明何謂 HTTPS 與其技術？（5 分）何謂 CA（certification
authority）？（5分）並說明 HTTPS與 CA的關係。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:06+00:00", "source_pdf_sha1": "b88fc62141a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00194', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-e1711217', 'sub-heelevel3-0c700c30-04', NULL, 'essay', '有一個數列其第n 項，a ，可以由前兩項計算得到，公式為：
n
a a (a a )，其中 a =1 且a =2。
n n1 n1 n2 1 2
請使用 C語言完成以遞迴（recursion）方式完成函數 intnewseq(intn)，
函數回傳值為該數列第 n 項 a 。（10 分）
n
使用上述函數，寫一個 C 語言程式，計算該數列中滿足大於 10 且小
於108條件的數共有幾項，且其和為多少。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:06+00:00", "source_pdf_sha1": "b88fc62141a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1218", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00195', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-41d43525', 'sub-heelevel3-0c700c30-06', NULL, 'essay', '某地區房屋成交紀錄包括了房價及坪數等資訊共 70 筆，以坪數為預
測變數，簡單線性迴歸預測房價的殘差顯示，變異數並不是常數，如
圖 1-1：
圖1-1轉換前殘差圖
圖1-2轉換後殘差圖
將資料依房價排序後，每5筆計算房價平均數及標準差，並分別取其自然
對數（LN）值，共14筆，其敘述性統計及相關係數如表1-1a、1-1b。
表1-1a敘述統計
個數 平均數 標準差
房子坪數 70 57.7 22.5
房價 70 4197207.0 2574255.1
平均房價 14 6191190.0 3441255.7
房價標準差 14 3383348.3 2156645.7
LN(平均房價) 14 15.471 .640
LN(房價標準差) 14 14.809 .729
有效的N(完全排除) 14
表1-1b相關
房子 平均 房價 LN(平均 LN(房價
房價
坪數 房價 標準差 房價) 標準差)
房子坪數 Pearson相關 1 .859** .379 .279 .469 .368
個數 70 70 14 14 14 14
房價 Pearson相關 .859** 1 .975** .772** .984** .803**
個數 70 70 14 14 14 14
平均房價 Pearson相關 .379 .975** 1 .766** .951** .785**
個數 14 14 14 14 14 14
房價標準差 Pearson相關 .279 .772** .766** 1 .779** .973**
個數 14 14 14 14 14 14
LN Pearson相關 .469 .984** .951** .779** 1 .811**
(平均房價) 個數 14 14 14 14 14 14
LN Pearson相關 .368 .803** .785** .973** .811** 1
(房價標準差)個數 14 14 14 14 14 14
**.在顯著水準為0.01時（雙尾），相關顯著。
運用上述資訊，Box-Cox 轉換函數進行房價轉換後，以坪數預測房價
轉換的殘差，如圖 1-2，迴歸模式的變異數分析表及係數預測的推論
如表 1-2a、表 1-2b。
表1-2aAnovaa
模式 平方和 df 平均平方和 F 顯著性
1 迴歸 17.418 1 17.418 262.236 .000b
殘差 4.517 68 .066
總數 21.935 69
a.依變數：房價轉換
b.預測變數：（常數），房子坪數
表1-2b係數a
標準化
未標準化係數 相關
係數
模式 t 顯著性
B之 標準 Beta
零階 偏 部分
估計值 誤差 分配
1 (常數) 13.803 .085 161.874 .000
房子
.022 .001 .891 16.194 .000 .891 .891 .891
坪數
a.依變數：房價轉換
請運用表 1-1a、1-1b 的資訊，說明將使用的統計方法，並提出您建
議的 Box-Cox 轉換函數為何？（20 分）
轉換後的模式適切性，有那些假設需要驗證？圖 1-2 可以驗證那一
項假設？（10 分）
假設轉換後的模式適切性完全符合，請運用表 1-2a、表 1-2b 的資
訊，寫出房子坪數對房價轉換的預測模式，並依照您在第題的建
議，改寫出房子坪數對於房價的預測模式，並說明坪數每增加一單
位對房價的影響。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:06+00:00", "source_pdf_sha1": "64924352c908", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1113", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00196', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-110-41d43525', 'sub-heelevel3-0c700c30-06', NULL, 'essay', '某研究團隊隨機觀察兩歲內男童的月齡（Month）與體重（weight）
的數據共 125 筆，0~24 月齡各 5 筆。月齡 vs 體重的散布圖如下。
研究團隊考慮以月齡的 4 次多項式迴歸模式來預測體重。預測變數為
中心化月齡（ （ ）），考慮一~四
次多項式模式，如下：
 = Month_c = Month−mean Month
：
：
M1 weight =  ++ε
： 
M2 weight =  ++ +ε
：  
M3 weight =  ++ + +ε
  
M4 weight =  ++ + + +ε
各模式的變異數分析表如下：
係數
ANOVA 未標準化係數 標準化係數
平方和 df 平均平方和 F 顯著性 B之估計值 標準誤 Beta分配 t 顯著性
M1 Mmoonntthh__cc .296 .009 .944 31.759 .000
M1 迴歸 567.658 1 567.658 1008.633 .000
((常常數數)) 9.356 .067 139.427 .000
殘差 69.224 123 .563
M2 Mmoonntthh__cc .296 .007 .944 41.028 .000
總數 636.883 124 Month_c22 -.010 .001 -.210 -9.125 .000
Month_c
M2 迴歸 594.740 2 297.870 862.311 .000 ((常常數數)) 9.887 .078 126.726 .000
殘差 42.143 122 .345 M3 Mmoonntthh__cc .227 .017 .724 13.446 .000
總數 636.883 124 MMoonntthh__cc22 -.010 .001 -.210 -9.805 .000
迴歸 601.539 3 200.513 686.460 .000 MMoonntthh__cc33 .001 .000 .240 4.456 .000
M3
殘差 35.344 121 .292 ((常常數數)) 9.887 .073 136.166 .000
M4 Mmoonntthh__cc .227 .016 .724 14.207 .000
總數 636.883 124
MMoonntthh__cc22 .003 .003 .058 .802 .424
M4 迴歸 605.486 4 151.371 578.540 .000
MMoonntthh__cc33 .001 .000 .240 4.708 .000
殘差 31.397 120 .262 Month_c44 -9.787E-05 .000 -.279 -3.884 .000
Month_c
總數 636.883 124 ((常常數數)) 9.685 .086 112.476 .000
在 5%的顯著水準下，請依序檢定下列虛無假說， ：
、 ： 、 ： ，直到不拒絕 ，以確定
  =  =
多項式迴歸模式的最高次為何。（30 分）（提示：若拒絕
 = 0   =  = 0   = 0 
，且不拒絕 ，則多項式模式最高
次為 ）
,  ≤  ,  > 
請根據上述結果寫出多項式預測模式，並預測月齡為 10 月的男童

體重，假設月齡為 10 月的男童體重估計變異數為 2 ˆ ，請
s (Y)0.298
求出該男童體重的 95%預測區間。（15分）
由於每個月齡都有 5 筆資料，純誤差平方和（pure error sum of
square, SSPE）為 25.54，請根據的結果，在 5%的顯著水準下，
完成該模式適合度檢定（testforlack of fit）。（15分）
附表
F分配的百分位點
F v ,v
分子自由度 0.05 1 2
∞
分
母
自
由
度
∞', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:06+00:00", "source_pdf_sha1": "64924352c908", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "327", "s": "1113", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00001', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '如果任何布林函數（Boolean function）可以藉著重複使用一種邏輯閘或
一組邏輯閘來建構，則稱該邏輯閘或該組邏輯閘為通用的（universal）。
例如，集合{AND,OR,NOT}是一組通用的邏輯閘。請寫出 AND,OR, 與
NOT邏輯閘的真值表。然後使用這三種邏輯閘設計與畫出一個 2 對1 多
工器，並說明其動作。所謂的 2對 1 多工器為一個組合邏輯模組，它由
兩個資料輸入端（I 與 I ）、一個標的選擇線（S）與一個資料輸出端（Y）
0 1
組成。當選擇線（S）為邏輯 0 時，輸入資料端 I 的值即傳送到資料輸
0
出端（Y）；當選擇線（S）為邏輯 1 時，輸入資料端 I 的值即傳送到輸
1
出端（Y）。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00002', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '目前固態硬碟（SSD，solid-statedisk orsolid-state driver）已經廣泛地使
用在計算機（或稱電腦）系統或是當作資料儲存的隨身碟。目前用來生
產固態硬碟的 NANDFlash 有四種，分別是單層式儲存（SLC）、多層式
儲存（MLC，通常用來指稱雙層式儲存）、三層式儲存（TLC）、四層式
儲存（QLC）。請說明這四種 NANDFlash 的差異，再由使用者觀點，比
較它們的讀寫速度、使用壽命與成本。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00003', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '在計算機（或稱電腦）系統或是計算機網路中，資訊傳輸的安全性倍受
重視。為此，許多不同的加密與解密技術（或稱演算法）廣泛的應用於
此等系統中，研究這些技術的專門學問則稱為密碼學（cryptography）。
然而這些技術可以歸納為兩大類：對稱式密碼學（symmetric
cryptography）與非對稱式密碼學（asymmetriccryptography）。請說明這
兩者的區別。又公鑰（publickey）與私鑰（privatekey）與上述兩種密碼
學有何關連？請說明之。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00004', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '欲將桌上型計算機（或稱電腦）連接到網際網路時，必須設定下列四個
TCP/IP 通訊協定的項目：IP（internet protocol）位址、子網路遮罩
（subnetworkmask）、預設閘道（defaultgateway）IP 位址、DNS（Domain
Name System或是 Domain Name Server）IP位址。請說明上述各項目的
功能。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00005', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-114-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '在計算機系統中，搜尋（search）資料為一個常用的演算法。今有一個 N
個元素的陣列。請先由計算機科學的觀點定義什麼是演算法，再說明循
序搜尋（sequentialsearch）與二元搜尋（binarysearch）的適用時機，並
使用運算的次數為時間單位，比較兩種搜尋方式在搜尋上述 N個元素的
陣列時的最小搜尋時間、平均搜尋時間與最大搜尋時間。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "c691bb8a32ab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "274", "s": "2503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
