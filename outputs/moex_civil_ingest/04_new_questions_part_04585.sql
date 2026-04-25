-- W1.6 questions batch 4585/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00126', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '陣列與二元樹是撰寫程式常用的資料結構。
使用陣列（Array）結構儲存二元樹（BinaryTree）有何優點？（10分）
下面陣列Arr[0:14]表示一棵二元樹，陣列的元素代表該樹每個節點的鍵
值，請撰寫一個演算法重建出該二元樹。該樹是否為一棵二元搜尋樹
（BinarySearchTree）？（15分）
索引 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
鍵值 18 10 21 15 23 13 17 25', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00127', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '請回答以下問題：
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
C程式 Python程式', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00128', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '一部額定三相、380V、60Hz、200hp、定子繞組為連接之大型感應電動
機運轉於滿載條件下，經由一條三相輸電線連接至一個三相、380 V、60
Hz、負相序之平衡電源。已知該感應電動機之滿載效率為80%、滿載功率
因數為0.8 lagging，忽略輸電線的阻抗，試求：該電源所提供之電流峰
值、複數功率；該電動機轉軸輸出的功率。（註：1hp=746W）（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "6fab269ac284", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00129', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '一部額定500MVA、24kV、60Hz之三相同步發電機，以其額定做為基準
值，已知該發電機之次暫態電抗、暫態電抗、同步電抗分別為19%、26%、
130%，且忽略該發電機之電阻值。若該發電機經由一個5週波（cycles）之
三相斷路器連接至一個三相電力變壓器，並工作於開路之額定端電壓。當
該變壓器與斷路器之間發生三相短路故障時，試以安培(A)來表示斷路器
之：「持續短路電流」（sustainedshort-circuitcurrent）；「初始對稱均
方根電流」（initialsymmetricalrmscurrent）；「短路電流的最大可能直流
成分」（maximumpossibledccomponentofshort-circuitcurrent）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "6fab269ac284", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00130', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '一部大型蒸汽渦輪同步發電機組之額定為三相、100MVA、24kV、60Hz、
4極，該發電機在故障發生之前係以滿載發電運轉，其輸出功率因數保持
在0.9 lagging。當故障發生瞬間，致使該發電機之輸出實功降低50%。假
定該發電機之轉軸輸入機械功率保持不變且忽略發電機之損失，試求故
障發生時該發電機之加速轉矩（accelerating torque）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "6fab269ac284", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00131', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '一具雙繞組單相變壓器之額定為單相、220/110V、11kVA、60Hz，已知
該變壓器經基本實驗量測所獲得之鐵損（coreloss）、滿載銅損（full-load
copperloss）分別為250W、500W。當該變壓器之兩側繞組適當連接成為
一個單相自耦變壓器（autotransformer），該自耦變壓器的電源側連接至一
個單相、330 V、60 Hz之電壓源，其負載側則連接至一個單相、110 V、
60 Hz之負載。試求：單相自耦變壓器之額定容量；單相自耦變壓器
在額定容量運轉下且滿載功率因數為0.8 lagging時之效率。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "6fab269ac284", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00132', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '對於增強型（EnhancementMode）P-channelMOSFET電晶體。（每小題10
分，共20分）
試說明閘源極電壓（Gate-source Voltage）和汲源極電壓（Drain-source
Voltage）與汲極電流（Drain Current）的關係。
繪製閘源極電壓和汲源極電壓與汲極電流關係的電流—電壓圖（i-v
curve）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00133', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖一為了將原本數位信號之0V關閉與10V導通之閘極驅動信號輸入至
一轉換電路，該轉換電路會將0V關閉信號轉變成-5V且將10V導通信號轉
變成5V，該轉換電路只包含一個導通電壓為0.5V二極體、一個電容與無線
阻之連接線。（每小題10分，共20分）
於轉換電路中再增加一齊納二極體（Zenerdiode）下，設計該電路。
該電容與輸入電壓初始電壓皆為0V，繪製並標示輸出電壓、輸入電壓
與電容電壓的時間關係。
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00134', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖二之一個將輸入為v (t)，且在正負電壓之間變化的交流電壓輸入信號
in
轉換成一個正電壓輸出，其中操作放大器（OPAmp）為理想操作放大器。
（每小題10分，共20分）
推導該電路之v (s)4K G(s)v (s)中轉移函數G(s)與K增益。
o in
若電阻R=100 kΩ，計算電容C之值，使濾波頻寬為100 Hz。
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00135', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-112-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '如圖三所示的npn雙極性電晶體（BJT）共集極電路（Common Collector
circuit），i  I (exp(v /V )1)且β = 110，其中I 1pA，V 即熱電壓為
c s BE T s T
26 mV，試求準確至小數點第三位之v 值。（20分）
BE
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "373", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
