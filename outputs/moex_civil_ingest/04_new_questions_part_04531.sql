-- W1.6 questions batch 4531/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0a2fc18c-moex-00004', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-98fbe395', 'sub-heelevel3-0a2fc18c-01', NULL, 'essay', '租稅理論認為政府對兩個以上的商品課稅時應依據 Ramsey Rule 之效
率原則。請以 RamseyRule說明「擴大稅基」之正當性。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "25c515c5154c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00005', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-4b760c19', 'sub-heelevel3-0a2fc18c-02', NULL, 'essay', '假設 X與 Y的二元機率密度函數為（每小題 4分，共 20分）
f(x,y)= C(x+2y) 0≦ x ≦ 1;0 ≦ y ≦ 1
=0 其他
計算 C值。
計算 X的期望值。
計算機率 P(X>0.5)。
計算 Y的期望值。
計算 Y大於 1/3 的機率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00006', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-4b760c19', 'sub-heelevel3-0a2fc18c-02', NULL, 'essay', '三家 A、B、C 品牌之洗衣機用戶，各隨機抽取 400、600 和 800 人，
調查其下次會再買同一品牌洗衣機之意願。調查數據如下：
意願\品牌 A B C
願意 100 300 600
不願意 300 300 200
總和 400 600 800
請檢定三家用戶下次購買相同品牌之洗衣機比例是否全部相等。
⑴列出虛無假設H 和對立假設 H 。（3分）
0 1
⑵寫出檢定統計量及其在 H 為真下的分配。（5 分）
0
⑶以臨界值方法決定檢定結果。顯著水準為 0.05。（3分）
⑷計算 p 值，並據以決定檢定結果。顯著水準為0.05。（5 分）
若只有 A和 B兩種品牌，請檢定 A和 B品牌用戶下次購買相同品
牌的比例是否相等。
⑴列出 H 和 H 。（3分）
0 1
⑵請使用和不同的檢定統計量，寫出其在 H 為真下的分配。請
0
說明何以為此分配。（6 分）
⑶計算 p 值，並據以決定檢定結果。顯著水準為0.05。（5 分）
23320
23420', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00007', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-4b760c19', 'sub-heelevel3-0a2fc18c-02', NULL, 'essay', '工程師想知道供應商生產的電池平均壽命是否小於 240 小時。隨機
抽取電池36 件（n=36），其樣本平均值為 235小時。
假設電池壽命服從常態分配且母體標準差為 12小時。
請檢定電池平均壽命是否低於240 小時。顯著水準為 0.1。（5分）
續上題，寫出檢定統計量分配的拒絕區之臨界值，並寫出此臨界值
對應之樣本平均值。（4 分）
若真實的電池壽命平均值分別為 236 和 235 小時，請分別計算他
們的型 II誤差機率及檢定力。（8分）
若只有隨機抽取的電池改為 100 件（n=100），其他不變。若真實的
電池壽命平均值分別為 236 和 235 小時，請分別計算他們的型 II
誤差機率及檢定力。顯著水準為0.1。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00008', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-4b760c19', 'sub-heelevel3-0a2fc18c-02', NULL, 'essay', 'A 和 B兩家公司皆生產相同規格之端子。分別自 A 和 B公司隨機抽
取端子並衡量其膜厚，數據如表所示。
公司 膜厚(單位：mm)
A 5 3 5 7 6 4
B 7 7 9 9 8 6
假設兩家生產的端子膜厚變異數相等，請寫出膜厚變異數之估計量
及估計值。（6 分）
請寫出兩家膜厚平均值差之估計量及估計值。（4 分）
續題，欲比較兩家膜厚之平均值是否有差異，請問該用什麼統計
方法？結論為何？顯著水準為 0.05。假設兩家膜厚皆服從常態分
配。（10分）
續題，請估計兩家膜厚平均值差之 95%信賴區間。（5分）
23320
23420
附表一：Z值表
23320
23420
附表二：t值表
23320
23420
附表三：X^2值表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00009', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'essay', '考慮兩家生產同質商品的廠商進行數量競爭（quantity competition），並
共同面對以下的市場反需求函數（inverse marketdemand）
p 120q q ，
1 2
其中p為商品的價格，q 為廠商1 的產量，q 為廠商2 的產量。另外，廠
1 2
商1及廠商2的邊際成本分別為10及20。根據以上設定回答下列問題。
假設這兩家廠商同時並獨立追求利潤最大。分別求出這兩家廠商的均
衡利潤，以及在均衡產量下所對應的消費者剩餘（consumersurplus）。
（10分）
假設廠商 2採用一種成本減量的新技術，但廠商 1 不採用此技術，且
廠商 2 的邊際成本會因而由 20 下降為 10。在此設定下，第小題的
答案將改變為何？若採用此新技術的成本為C0，在何種有關C的條
件下，廠商 2會願意採用此技術？（10 分）
定義某個廠商採用新技術的社會價值（social value）為採用此技術後
所造成兩家廠商均衡利潤的變化量加上消費者剩餘的變化量。請求出
廠商 2採用新技術的社會價值。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0708", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00010', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'essay', '在2025年4月2日，美國的川普政府宣布未來將對大部分進口商品至美
國的國家課徵對等關稅。為避免高關稅，各國的廠商都開始考慮將國內的
投資轉為赴美國投資。假設A國為一個開放經濟體系（openeconomy），
且採浮動匯率制度（floatingexchangerate）。在同時考慮A國國內可貸資
金市場及外匯市場的模型下，分析川普政府對A國課徵對等關稅對A國
的影響。
此事件會如何影響A國國內投資？請回答投資會因而增加或減少。（2分）
此事件會如何影響 A國的淨資本流出（net capital outflow）？請回答
淨資本流出會因而增加或減少。（2 分）
其他條件不變下，根據您以上兩小題的答案，分析川普政府對A國課
徵對等關稅對 A國的均衡實質利率、均衡實質匯率及淨出口金額所造
成的影響。（必須以圖形及文字說明，否則不計分）（21分）
22660
23160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0708", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00011', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '假設只有兩國各僅生產兩種商品，同時勞動是唯一的生產要素。在單位勞動投入（unit labor requirement，即生產一單位商品所需的勞動數量）為固定情況下，就同一商品而言，下列敘述何 者正確？', '["一國對於此商品之單位勞動投入高於另一國者，具有絕對利益（absoluteadvantage）", "一國對於此商品之單位勞動投入低於另一國者，具有絕對利益", "一國對於此商品之單位勞動投入高於另一國者，具有比較利益（comparativeadvantage）", "一國對於此商品之單位勞動投入低於另一國者，具有比較利益"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": "92e118424728", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0708", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00012', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '某產品每件售價為 1,000 元，剛好為該產品的成本，甲、乙、丙是三個可能的顧客，三人的願付 價格分別為1,500元、1,200元與1,000元，倘今政府對於產品交易課徵每單位300元的稅，該產 品賣方將售價提高為1,300元，則此稅所造成的無謂損失為何？', '["200", "300", "500", "600"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": "92e118424728", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0708", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00013', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-d3ff7f6b', 'sub-heelevel3-0a2fc18c-03', NULL, 'single_choice', '座標平面上，X軸為勞工數量，Y軸為資本數量。若等產量線為垂直線，下列敘述何者正確？', '["勞工與資本兩要素在此廠商的生產過程中可互相替代", "固定比例的勞工與資本必須同時使用以生產產品", "資本對此廠商的生產毫無作用", "勞工對此廠商的生產毫無作用"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": "92e118424728", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0708", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
