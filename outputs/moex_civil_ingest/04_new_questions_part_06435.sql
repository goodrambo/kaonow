-- W1.6 questions batch 6435/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00084', 'locality-0c700c30', 'locality-0c700c30-moex-112-ec859484', 'sub-locality-0c700c30-05', NULL, 'essay', '025 0.05
計算題的答案要求：
㉑平均數取兩位小數（算到第三位小數然後四捨五入）。
㉒次數或個數的答案取整數（算到第一位小數然後四捨五入）。
㉓變異數取三位小數（算到第四位小數然後四捨五入）。
某一民調公司在 12 月 1 日針對 1,200 位 20 歲以上民眾進行訪問，並發
布其民意調查結果：甲候選人為38%支持度，乙候選人為34%支持度，
尚未決定為 28%。請求出甲候選人和乙候選人支持度之間差異的95%信
賴區間。（10分）
將母體按照某一標準分成 N 個集群（m 為集群 i 中的元素個數，
i
N
M  m），再由這 N 個集群中用簡單隨機抽樣法抽出 n 個集群，被
i1 i
抽中的集群中的每一個元素均被調查。假設 y 為第 i 個集群中所有觀測
i
值的總和，欲估計母體的總和。母體總和τ的估計量有：
n
y
比率估計量⑴：ˆ M i1 i
n
m
i1 i
N
n
不偏估計量⑵：ˆ y
n i1 i
或是由這 N 個集群中用 pps（sampling with probabilities proportional to
size）抽出 n個集群，被抽中的集群中的每一個元素均被調查。則母體總
和τ的估計量：
M y
n
pps估計量⑶：ˆ  i
pps n i1m
i
請說明此三估計量之使用時機。（15 分）
某公司在臺灣一共有100個廠區，因最近疫情關係供貨吃緊，總經理想要
估計所有 100 個廠區員工未來一年請病假的總天數。100 個廠區可細分
為70家小廠及30家大廠。從過去經驗，小廠員工請假天數約在0～100天
病假，大廠員工請假天數約在10～210天病假，估計誤差界限設為500天。
請找出可達到這個界限的適當樣本大小及各層配置樣本大小。（15 分）
表一為臺灣 60大城市之 11月份降雨量（單位：公厘 mm）。城市 1至城
市 60 排列方式是依地理位置從北到南依序排列。城市號碼愈小所在位
置也就愈偏臺灣北部，城市號碼愈大所在位置也就愈偏臺灣南部。
假設用簡單隨機抽樣法抽出n 10個臺灣大城市（10 個樣本的號碼如
下：2、12、16、20、24、27、32、40、47、56），試估計臺灣 60大城
市之 11月份平均降雨量(ˆ)及其估計變異數 ˆ ˆ ？（10 分）
(V())
選擇一組 10個樣本的系統樣本，為統一起見，一律採用起始號碼 3。
試以此組系統樣本估計臺灣 60 大城市之 11 月份平均降雨量(ˆ)及其
估計變異數 ˆ ˆ ？假設母體為隨機排列。（10分）
(V())
如果採重複系統抽樣，抽出兩個"12 取 1"的系統樣本，為統一起見，
一律採用起始號碼 1 及 6。試以此兩組重複系統樣本估計臺灣 60大城
市之 11月份平均降雨量(ˆ)及其估計變異數 ˆ ˆ ？（15 分）
(V())
表一 臺灣 60大城市之 11月份降雨量
單位：mm
城市 1 2 3 4 5 6 7 8 9 10
降雨量 4.9 4.7 4.8 4.4 4.7 4.8 3.7 3.6 4.5 3.0
城市 11 12 13 14 15 16 17 18 19 20
降雨量 4.2 3.5 3.9 3.0 4.3 3.4 3.5 3.6 2.9 4.8
城市 21 22 23 24 25 26 27 28 29 30
降雨量 4.2 7.4 2.9 3.4 1.8 2.2 2.9 1.2 1.5 2.7
城市 31 32 33 34 35 36 37 38 39 40
降雨量 2.9 1.8 2.7 2.0 2.6 1.1 3.2 1.8 2.6 4.5
城市 41 42 43 44 45 46 47 48 49 50
降雨量 2.7 2.4 1.9 0.8 2.1 0.6 0.6 0.6 1.7 1.3
城市 51 52 53 54 55 56 57 58 59 60
降雨量 1.4 0.7 0.5 1.0 0.3 0.8 0.5 0.3 0.7 0.5
針對新移民做的一項抽樣調查，想獲得他們對於臺灣移民政策的看法。
從政府的登記資料知道新移民中有 60%的女性與40%的男性。一共抽樣
1,000 人，有 87%（870 位）是女性，13%（130 位）是男性。在 870 位
回答的女性中有566 位贊成，在 130 位回答的男性中有 102 位贊成。由
此事後分層，請估計新移民贊成此移民政策的比例(pˆ )及其估計的變異
st
ˆ ˆ
數(V (p ))。（10分）
p st
請比較簡單隨機估計、比率簡單估計、差異估計、迴歸估計的相對有效
性。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "ca7554b62dbb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00085', 'locality-0c700c30', 'locality-0c700c30-moex-112-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '設X 、X 、X 為互相獨立的標準常態隨機變數。令Y (X  X )/ 2，
1 2 3 1 1 2
Y (X  X 2X )/ 6與Y (X  X  X )/ 3。試求：
2 1 2 3 3 1 2 3
Y 、Y 、Y 是否分別具有相同的機率密度函數，須完整求出各自的機
1 2 3
率密度函數。（15 分）
求Y 、Y 和Y 之聯合分配函數。（10分）
1 2 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "e30846f4b68b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00086', 'locality-0c700c30', 'locality-0c700c30-moex-112-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '令X , ,X 為抽取自 f(x;)ex，x0之隨機樣本。求下列參數的齊
1  n
一最小變異不偏估計（Uniformly Min.Variance UnbiasedEstimator）：
。（10分）
1
。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "e30846f4b68b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00087', 'locality-0c700c30', 'locality-0c700c30-moex-112-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '某公司須從三種退休計畫方案選擇一種方案。該公司想研究的問題為：喜
愛那一種方案的員工與其工作性質有無關係？經調查得結果如下表所列，
令p 為第i種方案受第 j類員工喜愛的母體比例，i 1,2,3， j 1,2,3,4。
ij
觀察個數
方案 1 方案 2 方案 3 總和
第 1 類員工 160 30 10 200
第 2 類員工 140 40 20 200
第 3 類員工 80 10 10 100
第 4 類員工 70 20 10 100
合 計 450 100 50 600
試以p 陳述虛無與對立假設（H 和H ）。（8分）
ij 0 1
試執行本題的檢定（含檢定統計量、棄卻域及結論），令顯著水準
0.05。（17分）
2 15.51、2 12.5916、2 9.4877
0.05,8 0.05,6 0.05,4
2 17.5346、2 14.4494、2 11.1433
0.025,8 0.025,6 0.025,4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "e30846f4b68b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00088', 'locality-0c700c30', 'locality-0c700c30-moex-112-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '一家消費者雜誌想要比較三個不同品牌的手電筒電池的壽命。該雜誌對
三個不同品牌的電池抽取獨立隨機樣本，得出以下使用壽命（以小時為
單位）。
BrandA Brand B Brand C
38 32 24
36 27 25
31 28 29
42 26
29
檢定此三個品牌的手電筒電池的平均壽命是否有差異？須列出虛無
與對立假設、建構變方分析表（ANOVAtable）、棄卻域和結論。（令顯
著水準0.05）（10分）
f 3.8625、 f 3.7083、 f 3.5874
0.05,3,9 0.05,3,10 0.05,3,11
f 4.2565、 f 4.1028、 f 3.9823
0.05,2,9 0.05,2,10 0.05,2,11
試以顯著水準0.05，執行 Tukey的多重全距檢定（Tukey’smultiple
rangetest），比較三個不同品牌的手電筒電池的平均壽命。須列出Tukey
多重全距檢定的信賴區間公式，計算三對平均差之 Tukey全距信賴區
間，最後做結論。（15分）
q 3.08、q 3.11、q 3.15、q 3.20
0.05,2,12 0.05,2,11 0.05,2,10 0.05,2,9
q 3.77、q 3.82、q 3.88、q 3.95
0.05,3,12 0.05,3,11 0.05,3,10 0.05,3,9', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "e30846f4b68b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00089', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'essay', '就資訊不對稱產生的問題而言，全民健保有何優缺點？可採那些政策以
防止其弊端？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00090', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'essay', '何謂負面生產外部性？何謂正面生產外部性？各會導致什麼結果？試
各舉一例並繪圖說明之。面對此兩種情況，政府可各採何種政策工具匡
正之？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00091', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'essay', '梭羅（Solow）成長模型的絕對收斂（absoluteconvergence）與條件收斂
（conditionalconvergence）現象，所指為何？模型中什麼樣的機制產生此
現象？提高人口成長率和提高儲蓄率各會有何影響？長期經濟能不能
成長？為什麼？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00092', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '假設A國只生產汽車與電腦兩種產品，在不能與其他國家進行貿易的情況下，如果100萬部汽車 與2,000萬部電腦正好落在A國的生產可能線上，則A國不可能生產下列那一個商品組合？', '["80萬部汽車與1,600萬部電腦", "80萬部汽車與2,000萬部電腦", "100萬部汽車與1,600萬部電腦", "120萬部汽車與2,000萬部電腦"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00093', 'locality-0c700c30', 'locality-0c700c30-moex-112-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '若財貨X的需求函數為Q＝100+aP+bP+cI+dN，其中Q與P分別是財貨X的市場需求量與市 場價格，P是另一財貨Y的市場價格，I 表示所得，N表示財貨X的消費人數。若已知財貨X是 正常財貨，與財貨Y互為替代品，則下列敘述何者正確？', '["a>0，b>0，c>0，d<0", "a<0，b<0，c<0，d>0", "a<0，b>0，c>0，d>0", "a>0，b<0，c>0，d>0"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:14+00:00", "source_pdf_sha1": "876ca4244349", "answer_pdf_sha1": "494374bd7a58", "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "315", "s": "1502", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
