-- W1.6 questions batch 5249/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-acfc4025-moex-00128', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-bd2490ec', 'sub-heelevel3-acfc4025-06', NULL, 'single_choice', '已知 f(t) ， f(t)ej5tdt之值為下列何者？（ j 1） t', '["j", "j", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": "0e25a0e0b0f7", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 20, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00129', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-bd2490ec', 'sub-heelevel3-acfc4025-06', NULL, 'single_choice', '2', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "d3b1e7a162c7", "answer_pdf_sha1": "0e25a0e0b0f7", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2801", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "工程數學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00130', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '電腦系統包含硬體、軟體與資料。
硬體由CPU、記憶體以及I/O設備互相連接所組成。I/O設備是否能直接
連接到CPU和記憶體的匯流排（Bus）？說明其理由。（10分）
使用「二補數」（2’sComplement）方法儲存整數資料有何優點？某電腦
系統使用「二補數」儲存整數，且配置8位元記憶體以儲存每個整數，
則該系統可以表示的整數範圍為何？請詳述其計算過程。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00131', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '回答以下關於網路與應用之問題：
在網際網路各個分層的資料傳輸，何謂「點對點」（Point-to-Point）傳
輸？點對點傳輸與端對端（End-to-End）傳輸有何差異？（10分）
住在臺南的Adam想傳送電子郵件給在美國的Bambi，分享他的工作現
況。一封典型的電子郵件從Adam傳送到Bambi的流程為何？詳細說明
流程中的關鍵組件，包含硬體、軟體以及使用到的協定等。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00132', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '陣列與二元樹是撰寫程式常用的資料結構。
使用陣列（Array）結構儲存二元樹（BinaryTree）有何優點？（10分）
下面陣列Arr[0:14]表示一棵二元樹，陣列的元素代表該樹每個節點的鍵
值，請撰寫一個演算法重建出該二元樹。該樹是否為一棵二元搜尋樹
（BinarySearchTree）？（15分）
索引 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
鍵值 18 10 21 15 23 13 17 25', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00133', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-d87dd49a', 'sub-heelevel3-acfc4025-02', NULL, 'essay', '請回答以下問題：
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
C程式 Python程式', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "84cee18862f3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00134', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '對於增強型（EnhancementMode）P-channelMOSFET電晶體。（每小題10
分，共20分）
試說明閘源極電壓（Gate-source Voltage）和汲源極電壓（Drain-source
Voltage）與汲極電流（Drain Current）的關係。
繪製閘源極電壓和汲源極電壓與汲極電流關係的電流—電壓圖（i-v
curve）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00135', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖一為了將原本數位信號之0V關閉與10V導通之閘極驅動信號輸入至
一轉換電路，該轉換電路會將0V關閉信號轉變成-5V且將10V導通信號轉
變成5V，該轉換電路只包含一個導通電壓為0.5V二極體、一個電容與無線
阻之連接線。（每小題10分，共20分）
於轉換電路中再增加一齊納二極體（Zenerdiode）下，設計該電路。
該電容與輸入電壓初始電壓皆為0V，繪製並標示輸出電壓、輸入電壓
與電容電壓的時間關係。
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00136', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖二之一個將輸入為v (t)，且在正負電壓之間變化的交流電壓輸入信號
in
轉換成一個正電壓輸出，其中操作放大器（OPAmp）為理想操作放大器。
（每小題10分，共20分）
推導該電路之v (s)4K G(s)v (s)中轉移函數G(s)與K增益。
o in
若電阻R=100 kΩ，計算電容C之值，使濾波頻寬為100 Hz。
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL),
  ('heelevel3-acfc4025-moex-00137', 'heelevel3-acfc4025', 'heelevel3-acfc4025-moex-112-61c13555', 'sub-heelevel3-acfc4025-03', NULL, 'essay', '如圖三所示的npn雙極性電晶體（BJT）共集極電路（Common Collector
circuit），i  I (exp(v /V )1)且β = 110，其中I 1pA，V 即熱電壓為
c s BE T s T
26 mV，試求準確至小數點第三位之v 值。（20分）
BE
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:59+00:00", "source_pdf_sha1": "c9e875e34e9a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "374", "s": "2808", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
