-- W1.6 questions batch 4553/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0c700c30-moex-00002', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-5bdf4977', 'sub-heelevel3-0c700c30-01', NULL, 'essay', '某市政府民政局制訂抽樣計劃，藉以估算所屬某項業務的每週申辦數
量。該民政局決定先對該市的 20個行政區隨機抽出五個區，然後再自抽
中的各區內的里進行隨機抽樣。此兩階段聚類樣本（two-stage cluster
sample）得到以下統計結果：
區 里數 抽樣里數
1 45 9 102 20
 
2 36 4 90 16
3 22 4 69 22
4 18 4 94 26
5 28 2 120 32
y與s2分別為第 i區該項業務的平均每週申辦數及樣本變異數
i i
估算該業務平均的每週申辦數量。（5 分）
計算 95%近似誤差界限。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "19c07023e582", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00003', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-5bdf4977', 'sub-heelevel3-0c700c30-01', NULL, 'essay', '某市政府工務單位欲瞭解其約聘僱人員的工作滿意度分數 Y（分數愈高
滿意度愈高）之影響因素，考慮以下解釋變數：
X ：工作年資（年）
1
X ：薪資（千元）
2
及學歷（分「高中及以下」、「大專」、「研究所及以上」等三類），並定義
變數如下：
1 大專學歷 1 研究所及以上學歷
X  ， X
3 0 其他 4 0 其他
若蒐集 30位約聘僱人員的資料，將 Y 對X、X、X 和X 進行迴歸分析，
1 2 3 4
得到以下迴歸模型的估計：
估計值 標準誤
截距項 13.24 7.29
X 8.69 2.56
1
X 1.35 0.38
2
X 4.92 2.10
3
X 5.89 4.10
4
SST=989.7，s=4.8
SST為總變異平方和（totalsumofsquares），s為迴歸誤差之標準差的估
計值。回答以下問題：
說明所建立的迴歸模型及其所需誤差的假設。（6 分）
分別說明X 與X 之估計的迴歸係數的意義。（6分）
3 4
以顯著水準為0.05，分別檢定X 與X 的迴歸係數之顯著性。（10分）
3 4
寫出此配適模型的變異數分析（analysis of variance）表，並詳細說明
計算過程。（10分）
以顯著水準為0.05，檢定此迴歸模型之所有解釋變數的係數是否皆等
於 0。（6 分）
計算調整的判定係數（adjustedcoefficientof determination）。（6分）
說明均方誤（mean squared error，MSE）的定義與意義，並計算此配
適模型的 MSE值。（6分）
附表一：
α
t
α
附表二：', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "19c07023e582", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00004', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '搭乘甲鐵路對號列車，因可歸責鐵路公司致誤點達 45 分鐘以上、或
是不可歸責鐵路公司的天災人禍致誤點達 2 小時以上，旅客皆可申
請免費搭乘同區間同等級列車一次。假設上述可歸責與不可歸責之誤
點機率分別為 3/4 與 1/4，而其對應的每年受影響旅客人數分別服從平
均數為50與100之波瓦松分配。（每小題 10分，共 30 分）
試問每年可申請免費搭乘同區間同等級列車旅客人次之機率分配
為何？
試問每年可申請免費搭乘同區間同等級列車旅客人次之期望值與
標準差。
若可歸責業者與不可歸責業者之誤點時間分別服從平均數為 1 小
時與 5小時之指數分配，試問誤點對號列車中，誤點時間超過 2小
時之比例約多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "09e770fc6211", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00005', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '育嬰津貼的實施是否提升各市鎮新生兒人數？隨機抽取 14 個市鎮，
得到實施前後之新生兒人數（單位：百人）統計如下：
（每小題10 分，共 40 分）
1 2 3 4 5 6 7 8 9 10 11 12 13 14
實施前 120 80 60 180 200 160 140 60 190 180 140 80 60 40
實施後 124 81 65 187 203 160 143 61 189 185 139 72 59 45
顯著水準為 0.05 之下，試以 t 檢定說明是否育嬰津貼實施後新生
兒人數增加。
若實施後各市鎮新生兒人數平均增加 360人，試問中檢定方法之
型二誤差為何？
試以直方圖判斷本題使用 t檢定所需的常態假設之合理性。
顯著水準為 0.05 之下，試以 Wilcoxon無母數方法進行檢定。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "09e770fc6211", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00006', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-4b760c19', 'sub-heelevel3-0c700c30-02', NULL, 'essay', '超過 5 成的企業預期未來幾年的 AI 人力需求將持續上升，特別
是在生成式 AI 的應用下，相關產業的職缺將大幅增加。過去
20 個月的資料顯示市場對於 AI 人才之需求呈線性成長趨勢，
今 考 慮 需 求 人 數 y 對 時 間 之 簡 單 線 性 模 型 ， 得 到
y 362,iy 4766,y2 7975,(y  yˆ )2 15.25。
i i i i i
（每小題10 分，共 30 分）
試求回歸方程式。
試寫出 ANOVA表。
試寫出此模型之假設，並根據以下殘差圖說明模型假設是否合理。
la
u
d
is
e
r
t
附表一：t表
Example:With
df=9and.10area
intheuppertail,
t=1.383
6 6
附表二
CriticalValuesfortheWilcoxonRank-SumTest
附表三
CriticalValuesfortheWilcoxonSigned-RankTest', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "09e770fc6211", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00007', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'essay', '考慮兩家生產同質商品的廠商進行數量競爭（quantity competition），並
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
廠商 2採用新技術的社會價值。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0708", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00008', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'essay', '在2025年4月2日，美國的川普政府宣布未來將對大部分進口商品至美
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
23160', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0708", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00009', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'single_choice', '假設只有兩國各僅生產兩種商品，同時勞動是唯一的生產要素。在單位勞動投入（unit labor requirement，即生產一單位商品所需的勞動數量）為固定情況下，就同一商品而言，下列敘述何 者正確？', '["一國對於此商品之單位勞動投入高於另一國者，具有絕對利益（absoluteadvantage）", "一國對於此商品之單位勞動投入低於另一國者，具有絕對利益", "一國對於此商品之單位勞動投入高於另一國者，具有比較利益（comparativeadvantage）", "一國對於此商品之單位勞動投入低於另一國者，具有比較利益"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": "92e118424728", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0708", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00010', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'single_choice', '某產品每件售價為 1,000 元，剛好為該產品的成本，甲、乙、丙是三個可能的顧客，三人的願付 價格分別為1,500元、1,200元與1,000元，倘今政府對於產品交易課徵每單位300元的稅，該產 品賣方將售價提高為1,300元，則此稅所造成的無謂損失為何？', '["200", "300", "500", "600"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": "92e118424728", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0708", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL),
  ('heelevel3-0c700c30-moex-00011', 'heelevel3-0c700c30', 'heelevel3-0c700c30-moex-114-d3ff7f6b', 'sub-heelevel3-0c700c30-03', NULL, 'single_choice', '座標平面上，X軸為勞工數量，Y軸為資本數量。若等產量線為垂直線，下列敘述何者正確？', '["勞工與資本兩要素在此廠商的生產過程中可互相替代", "固定比例的勞工與資本必須同時使用以生產產品", "資本對此廠商的生產毫無作用", "勞工對此廠商的生產毫無作用"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:03+00:00", "source_pdf_sha1": "c23316d7f2cb", "answer_pdf_sha1": "92e118424728", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "226", "s": "0708", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
