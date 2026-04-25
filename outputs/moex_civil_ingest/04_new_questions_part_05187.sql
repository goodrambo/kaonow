-- W1.6 questions batch 5187/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00129', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '陣列與二元樹是撰寫程式常用的資料結構。
使用陣列（Array）結構儲存二元樹（BinaryTree）有何優點？（10分）
下面陣列Arr[0:14]表示一棵二元樹，陣列的元素代表該樹每個節點的鍵
值，請撰寫一個演算法重建出該二元樹。該樹是否為一棵二元搜尋樹
（BinarySearchTree）？（15分）
索引 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
鍵值 18 10 21 15 23 13 17 25', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00130', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '請回答以下問題：
若執行下列的C程式，且輸入整數10，則程式輸出的結果是什麼？說明
其計算過程。（10分）
如下列Python程式，其目的為何？如果執行該程式，並輸入整數6，則
輸出的結果是什麼？寫出其詳細步驟。（15分）
01 #include<stdio.h> 01 12
02 intmain() 02 defaloha(k): 13 i=0
03 { 03 if(k>0): 14 whilei<len(a):
04 inti,j,n,order; 04 rs=k+aloha(k-1) 15 a[i]=aloha(i)
05 scanf("%d",&n); 05 else: 16 i=i+1
06 order=0; 06 rs=0 17
07 for(i=0;i<n-1;i++) 07 returnrs 18 print(“theResults:”)
08 for(j=i;j<n-1;j++) 08 19 print(a,end=''\n'')
09 order=order+1; 09 n=int(input()) 20
10 printf("%d",order); 10 21
11 } 11 a=[0foriinrange(n+1)] 22
C程式 Python程式', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00131', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '關於通訊系統中類比調變部分：
請畫出正交多工（Quadrature-CarrierMultiplexing）系統傳送端的方塊圖。
（5分）
請畫出正交多工系統接收端的方塊圖。（5分）
請使用正交多工系統生成雙旁波帶抑制載波（Double-Sideband
Suppressed Carrier,DSB-SC）調變訊號。（5分）
請使用正交多工系統生成單邊帶（Single-Sideband,SSB）調變訊號，此
小題我們考慮上邊帶（UpperSideband）傳輸。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "ec0340a52435", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00132', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '關於調頻（FM）與調幅（AM）系統：（每小題5分，共15分）
請儘可能詳細的畫出 FM接收器的模型。
請解釋 FM系統中的捕獲效應（CaptureEffect）。
請描述 FM與AM系統相比的優點和缺點。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "ec0340a52435", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00133', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '考慮下列兩個信號星座圖（SignalConstellations），並假設圖中每個星座
訊息點（SignalPoints）傳送機率相等。（每小題10分，共20分）
請證明上圖所示的兩個信號星座圖具有相同的平均符號錯誤率
（AverageProbabilityof SymbolError）。
請問這兩個星座圖中那一個具有最低的平均能量？並請證明您的答案。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "ec0340a52435", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00134', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '考慮在加性高斯白雜訊（AWGN）通道下使用開關鍵控（On-Off Keying）
來傳送訊號 1 與0，也就是使用振幅偏移調變（ASK）傳送訊號。
請畫出對應的同調（Coherent）接收器系統方塊圖。（5 分）
請計算在同調接收器下的平均錯誤率，我們考慮送 0 與 1的機率一樣。
（10分）
請畫出對應的非同調（Non-coherent）接收器的系統方塊圖。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "ec0340a52435", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00135', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '有一線性區塊碼（Linear Block Code）其生成矩陣為G：（每小題5分，
共20分）
1 0 0 1 1 1 0
G = 0 1 0 1 1 0 1
0 0 1 1 0 1 1
請找出此線性區塊碼的奇偶校驗矩陣H。
請找出這個碼的最小距離（MinimumDistance）。
針對一接收向量[1 0 1 1 1 1 0]進行解碼，請找出其錯徵（Syndrome）。
根據的結果，其解碼過後的訊息（DecodedMessageWord）為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "ec0340a52435", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00136', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '對於增強型（EnhancementMode）P-channelMOSFET電晶體。（每小題10
分，共20分）
試說明閘源極電壓（Gate-source Voltage）和汲源極電壓（Drain-source
Voltage）與汲極電流（Drain Current）的關係。
繪製閘源極電壓和汲源極電壓與汲極電流關係的電流—電壓圖（i-v
curve）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00137', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '如圖一為了將原本數位信號之0V關閉與10V導通之閘極驅動信號輸入至
一轉換電路，該轉換電路會將0V關閉信號轉變成-5V且將10V導通信號轉
變成5V，該轉換電路只包含一個導通電壓為0.5V二極體、一個電容與無線
阻之連接線。（每小題10分，共20分）
於轉換電路中再增加一齊納二極體（Zenerdiode）下，設計該電路。
該電容與輸入電壓初始電壓皆為0V，繪製並標示輸出電壓、輸入電壓
與電容電壓的時間關係。
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00138', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-112-61c13555', 'sub-heelevel3-8ec6300d-03', NULL, 'essay', '如圖二之一個將輸入為v (t)，且在正負電壓之間變化的交流電壓輸入信號
in
轉換成一個正電壓輸出，其中操作放大器（OPAmp）為理想操作放大器。
（每小題10分，共20分）
推導該電路之v (s)4K G(s)v (s)中轉移函數G(s)與K增益。
o in
若電阻R=100 kΩ，計算電容C之值，使濾波頻寬為100 Hz。
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "375", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
