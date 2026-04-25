-- W1.6 questions batch 4540/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0a2fc18c-moex-00094', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-4b760c19', 'sub-heelevel3-0a2fc18c-02', NULL, 'essay', '有關於汽車碳氫化合物排放量（克/英里）的研究，記錄碳氫化合物排放
量Y（100克/公里），和相對應的累積里程數X（以1000公里為單位）。初步
整理樣本資料如下所示：
n11，n x 190.2356，n y 212.9375，n x2 4086.6461，
i1 i i1 i i1 i
n y2 4152.344，n x y 3808.8281。
i1 i i1 i i
使用以上資料回答下列問題，請詳細將所使用之公式及計算過程列出。
（每小題9分，共36分）
計算最小平方迴歸線。（計算至小數點後4位數）
迴歸判定係數（ ）為何？
顯著水準為0.05，檢定迴歸斜率是否顯著異於0.16。

在x=25時，求對應之反應變數Y預測值的95%預測區間。
（t 2.228，t 2.262，t 1.812，t 1.833）
10,0.025 9,0.025 10,0.05 9,0.05
33480', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "074bbabd4dbb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1117", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00095', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-4b760c19', 'sub-heelevel3-0a2fc18c-02', NULL, 'essay', '觀察記錄某一城市在最近三個月內（90天）每天汽機車意外事故的次數，
其次數分配如下所示：
意外事故次數 0 1 2 3 4
觀察天數 32 34 17 6 1
檢定每天汽機車意外事故次數是否服從波松（Poisson）分配。
寫出虛無假設與對立假設。（5分）
在顯著水準α=0.05時，寫出檢定統計量、棄卻域和結論。（須列出計算
過程）（15分）
（2 7.38，2 9.35，2 11.14，
2,0.025 3,0.025 4,0.025
2 5.99，2 7.81，2 9.49）
2,0.05 3,0.05 4,0.05
波松分配累積機率表
x
0.5 1.0 2.0
0 0.607 λ =0.3E6(8X) 0.135
1 0.910 0.736 0.406
2 0.986 0.920 0.677
3 0.998 0.981 0.857
4 1.000 0.996 0.947
5 1.000 0.999 0.983
6 1.000 1.000 0.995
7 1.000 1.000 0.999', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "074bbabd4dbb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1117", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00096', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'essay', '某一私有財的市場需求函數為 ，其中 、 分別是價格與
需求量。此私有財的市場供給是由兩群廠商所提供：每一家第1群廠商的
 = 1800−60  
邊際成本為 、每一家第2群廠商的邊際成本為 ，其中
（ ）是每一家第 群廠商的產量。個別廠商所生產的商品同質且沒
 = 5  = 10
有固定成本。假設每一群各由100家廠商所組成。請計算並回答下列問題：
  = 1,2 
（未提供詳細計算過程，不計分）
假設個別廠商都不能影響市場的交易價格及交易量。請問市場均衡時
的交易量與交易價格分別為何？（5分）市場均衡時，第1群及第2群廠
商的市場占有率分別為多少？（5分）又市場均衡時，第1群廠商總利潤
與第2群廠商總利潤分別為何？（5分）
假設兩群的廠商互相勾結、訂價以極大化利潤。兩群廠商勾結後同意，
第1群廠商市占率與第2群廠商市占率之比為2：1。請問在兩群廠商互相
勾結之下，市場均衡的交易價格及交易量分別為何？（5分）又市場均
衡時，第1群廠商總利潤與第2群廠商總利潤分別為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00097', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'essay', '以下為A國某一年度經濟活動的資料（單位：億元）：
民間消費：800 投資：1000
政府支出：700 政府稅收：800
出口：1060 進口：860
A國人民在國外的勞動所得：150 A國人民援助國外：30
A國贈與外國機器設備：10 A國人民持有國外證券的報酬：50
A國人民新增外國證券投資：250 外國人新增A國證券投資：300
A國人民出售專利給國外廠商所得：20
32460、32760
假設沒有其他項的交易，也沒有誤差與遺漏，請依國民所得會計帳與國際
收支帳定義，回答下列問題：
分別計算A國本年度的國民所得毛額（grossnationalincome,GNI）、民間
儲蓄毛額（ ）、經常帳餘額（CA）、資本帳餘額（KA）及央行準備與
相關項目增加或減少的金額（R）。（15分，未提供計算過程，不計分）
S
近3年來臺灣的超額儲蓄大幅增加，每年均超過新臺幣3兆元。請由國民
所得會計恆等式推導出一國超額儲蓄（ES）與其經常帳餘額的關係式
（4分，未提供推導過程不計分），並說明臺灣這幾年超額儲蓄大幅增加
的兩種可能原因。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00098', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '下表為A玩具廠在固定資源下的生產組合，下列敘述何者正確？ 玩偶 消防車 400 0 300 200', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00099', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '350', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 200, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00100', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '450', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 100, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00101', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '500', '["生產玩偶的機會成本遞減", "生產玩偶的機會成本不變", "生產玩偶的機會成本遞增", "沒有其他資訊下，不可能得知每增加1個玩偶所需的機會成本"]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 0, "answer_corrected": false, "flags": ["answer_missing"], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00102', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '臺灣從美國進口小麥，如果臺灣政府提高小麥進口關稅，下列敘述何者正確？', '["臺灣消費者剩餘增加", "臺灣生產者剩餘增加", "美國生產者剩餘增加", "臺灣社會福利增加"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00103', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-112-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '對於饅頭（M）和麵包（B），某消費者的態度是當吃很多饅頭之後，會想換吃麵包，而吃了很多 麵包之後，又會想換吃饅頭。下列何者可能是此消費者的效用函數？', '["U=3M+5B", "U=5M3/8B5/8", "U=3log(M)+5B", "U=min{3M,5B}"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:48+00:00", "source_pdf_sha1": "5ceaffa29b17", "answer_pdf_sha1": "455adc10cc30", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "331", "s": "1010", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
