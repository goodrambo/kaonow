-- W1.6 questions batch 2392/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-0a2fc18c-moex-00244', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '記錄一個月（約四周）平日上班期間，每日搭公車的等候時間的次數分配
如下：
等候時間 少於 3分鐘 3~6 分鐘 6~9 分鐘 9 分鐘以上
次數 9 7 2 2
假設等候時間服從指數分配，請用上述資料以等距組中點估計平均等候
時間，並計算等候時間在 5分鐘內的機率。（10分）
請利用卡方適合度檢定，檢定上述資料是否服從指數分配。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "a5ecf9a67b0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00245', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '為了解中小企業數位化的情形，研究單位隨機抽出 64 家中小企業，調查
結果顯示有 39家已數位化。
欲檢定母體數位化比例是否超過目標值（60%），請寫出適當的檢定假
說，並根據樣本資料計算檢定 p-值。（12分）
為掌握數位化比例估計的精準度，請問在 95%的信賴度之下，抽樣誤差
控制在 10%之內，隨機抽樣的樣本數至少應該有多少？（8 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "a5ecf9a67b0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00246', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '一項行動支付使用率調查顯示，500 位受訪者，中高齡（45～55歲）有150
位，其中有 105位曾使用行動支付，非中高齡受訪者中，則有 210 位表示
曾使用行動支付。
在 5%的顯著水準下，請寫出檢定中高齡層與非中高齡層在行動支付的
使用率是否相同的假說，並完成檢定。（13分）
請寫出兩年齡層在行動支付的使用率差之 95%信賴區間。（9分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "a5ecf9a67b0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00247', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-4b760c19', 'sub-disabled-0a2fc18c-03', NULL, 'essay', '為評估溝通技巧課程上課方式是否會影響業績，某保經公司將 30 位新進
業務員，隨機分成 3 組，分別接受以互動式、傳統講授及錄影片觀看等三
種方式完成溝通技巧課程。三個月後檢視 3 組業務員的業績平均值與標準
差，如下（單位為萬元）：
組別 互動式 傳統講授 錄影片觀看
平均數 35.2 30.7 25.9
標準差 4.86 6.25 7.81
請完成變異數分析表，寫出檢定不同的上課方式業績是否有差異的檢定
假說，並在 5%的顯著水準下完成檢定。（19分）
請說明使用變異數分析模式的假設條件為何？（9 分）
附表：
Z分配臨界點表：P(Z>z )=α
α
0.001 0.005 0.01 0.025 0.05
z 3.0902 2.5758 2.3263 1.96 1.645
α
2 2
自由度為 v的2分配臨界點表：P(  )
v v,
df 2 3 4
2
5.9915 7.8147 9.4877
v,0.05
2
7.3778 9.3484 11.1433
v,0.025
自由度為 v ,v 的 F分配臨界點表：P(F  F )
1 2 v ,v v ,v ,
1 2 1 2
v1 2 2 2 2 3 3 3 3
v2 27 28 29 30 27 28 29 30
F 3.3541 3.3404 3.3277 3.3158 2.9604 2.9467 2.9340 2.9223
v ,v ,0.05
1 2
F 4.2421 4.2205 4.2006 4.1821 3.6472 3.6264 3.6072 3.5894
v ,v ,0.025
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "a5ecf9a67b0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00248', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'essay', '一個僅有兩人（1,2）的小型經濟體中有一個兩人共享的公共財 Q，且其
固定之邊際生產成本為 C=30。
令消費者 1源自此公共財消費之邊際效益為：MB1(Q)= 100 – 2Q
而消費者 2源自此公共財消費之邊際效益為：MB2(Q)= 50 – Q
請問：
此公共財之最適提供量 Q*應是多少？（15分）
若此公共財是由兩人依其自願性提供，則均衡之公共財總量 Q’會是多
少？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "2d98a20a2928", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "0906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00249', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'essay', '請以圖型說明，政府對一完全競爭商品課稅與補貼時所分別會造成之社
會無謂損失。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "2d98a20a2928", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "0906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00250', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', '甲是一位成功的企業家，他用英文交談做生意的能力很強，且他的書寫與打 英文書信的速度也非常快。假設他做生意每小時可以賺 3000 元，而打字每 小時只能賺400元。由於工作的需要，他每天需要花4小時做生意與4小時 打英文書信，因此每天可淨賺13600元。然而，由於工作量過大，甲聘請了 乙幫忙，乙做生意每小時能賺200元，而打字也是每小時能賺200元。根據 上述，下列何者正確？', '["甲在做生意與打字上具絕對利益", "乙在做生意具比較利益", "甲在打字上具比較利益", "乙在做生意與打字上具絕對利益 30560"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "2d98a20a2928", "answer_pdf_sha1": "0f20895e9ec9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "0906", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00251', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', '顯示器價格大幅上漲將導致桌上型電腦主機的供需產生何種變化？', '["需求增加", "需求減少", "需求不變", "供給增加"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "2d98a20a2928", "answer_pdf_sha1": "0f20895e9ec9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "0906", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00252', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', '規模經濟為何？', '["遞增的邊際報酬", "遞減的平均成本", "遞增的平均成本", "遞減的邊際報酬"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "2d98a20a2928", "answer_pdf_sha1": "0f20895e9ec9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "0906", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL),
  ('disabled-0a2fc18c-moex-00253', 'disabled-0a2fc18c', 'disabled-0a2fc18c-moex-110-d3ff7f6b', 'sub-disabled-0a2fc18c-04', NULL, 'single_choice', 'A廠商生產10單位產量時的總成本為550元，且生產第11單位產量的邊際 成本為60元。下列何者正確？', '["生產11單位產量時的平均變動成本為45元", "生產11單位產量時的平均總成本為50元", "生產11單位產量時的平均總成本為55.4元", "生產第10單位產量時的邊際成本為55元"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:26+00:00", "source_pdf_sha1": "2d98a20a2928", "answer_pdf_sha1": "0f20895e9ec9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "305", "s": "0906", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
