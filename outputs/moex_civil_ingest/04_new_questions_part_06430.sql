-- W1.6 questions batch 6430/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00034', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '依據實質景氣循環理論，下列何者不是造成短期經濟波動的原因？', '["自然災害", "技術進步", "發現新的可用資源", "財政與貨幣政策的改變"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00035', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '在景氣衰退時，增加政府支出屬於下列何種類型的政策？', '["積極型貨幣政策（activemonetarypolicy）", "積極型財政政策（activefiscalpolicy）", "消極型貨幣政策（passivemonetarypolicy）", "消極型財政政策（passivefiscalpolicy）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00036', 'locality-0c700c30', 'locality-0c700c30-moex-114-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '在資訊安全中，雜湊函數（HashFunction）與數位簽章（DigitalSignature）
常被用來確保資料的正確與完整。請敘述兩者的功能，並說明雜湊函數
的主要特性及數位簽章的運作過程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "7774d8030b3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00037', 'locality-0c700c30', 'locality-0c700c30-moex-114-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '請完成下列各小題，內容包含運算式轉換、樹狀結構走訪與最小堆積樹
（Min Heap），請寫出詳細步驟或畫出結果。（25分）
⑴將下列運算式由中序式（Infix）轉換為前序式（Prefix）：
(A-B)*(C+D)/F
⑵根據下列二元樹，寫出其後序（Postfix）走訪結果：
⑶依序將數字 12, 8, 20, 4, 15, 7, 3, 10 插入一個空的最小堆積樹，畫出
最後的堆積樹。
⑷承上題，刪除最小數字 3後的最小堆積樹，畫出其最後結果。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "7774d8030b3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00038', 'locality-0c700c30', 'locality-0c700c30-moex-114-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '正規化是為資料表的優化，而資料庫正規化有一些規則，每條規則都稱
為「正規形式」（NormalForm），請說明各階段正規化的規則（包含第一
正規化、第二正規化、第三正規化和 BCNF等）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "7774d8030b3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00039', 'locality-0c700c30', 'locality-0c700c30-moex-114-e1711217', 'sub-locality-0c700c30-04', NULL, 'essay', '請依照下列程式碼，當執行函數呼叫 Test(3)時，最後輸出結果為何？並
請寫出詳細過程。（25分）
StringTest(intn){
Strings=n+Test(n-1)+n+Test(n-2);
if(n<=0)return"";
returns;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "7774d8030b3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "2101", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00040', 'locality-0c700c30', 'locality-0c700c30-moex-113-5bdf4977', 'sub-locality-0c700c30-01', NULL, 'essay', '有母體如下：
i 1 2 3 4
y 10 30 10 50
i
考慮以下設計於該母體中選擇兩個樣本：
㉑將母體分為（1,2）及（3,4）兩組。
㉒以簡單隨機抽樣選擇一個母體單元 i，觀察得 y。
i
㉓若y>20，則以i所在該組之另一單元為第二個樣本單元，反之若y 20，
i i
則由另一組隨機選擇第二個樣本單元。例如若第一個被選到的單元是
≤
第 1 個單元，則下一個單元則從第 3 跟第 4 個單元中隨機選擇，若第
一個被選擇到的是第4個單元，則第二個被選單元必須是第3個單元。
請回答下列問題：（每小題 5 分，共 20 分）
請問單元 2 之包含機率（inclusion probability），亦即在本設計下選擇
之樣本組合中包含單元 2 之機率。
若以觀察值樣本平均y為母體平均 µ 之估計量，請問該估計量在本設
計及本母體下是否不偏？
請計算y之均方誤（mean squarederror）。
請計算y之變異數。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0322fbd83f26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "314", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00041', 'locality-0c700c30', 'locality-0c700c30-moex-113-5bdf4977', 'sub-locality-0c700c30-01', NULL, 'essay', '人行道垃圾筒的設置可以方便行人處理隨身垃圾，但也會因為附近住家
丟棄居家垃圾而造成髒亂，某里長為了解里民是否贊成增設人行道垃圾
筒，對里民進行一項問卷調查。該里家戶共 950戶，居住狀況可以分為
獨棟別墅 10 戶，每棟 4～5 戶之舊式公寓 50 棟共 240 戶，以及集合式
大樓 4座共 700戶三類。抽樣設計及觀察之樣本資料彙整如下：
㉑獨棟別墅之 10戶全查。贊成比例 0.2。
㉒以簡單隨機抽樣取出不放回選擇 5 棟舊式公寓，再調查所選公寓中之
全體住戶。各樣本公寓戶數及贊成之比例如下：
公寓編號 公寓戶數 贊成比例
15 4 1
27 4 0.5
35 5 1
39 5 0.6
47 5 0
㉓每座集合式大樓以簡單隨機抽樣取出不放回各選擇 20 戶。各大樓戶
數及贊成之樣本比例如下：
大樓編號 戶數 贊成比例
1 75 0.2
2 400 0.3
3 100 0.2
4 125 0.4
請回答下列問題：
請問舊式公寓住戶之抽樣設計為何？並請以不偏估計推估舊式公寓
住家贊成之比例，並推估該不偏估計量之變異數估計。（12 分）
請問集合式大樓住戶之抽樣設計為何？請以不偏估計推估集合式大
樓住家贊成之比例，並推估該不偏估計量之變異數估計。（12分）
請估計本里住家贊成之比例以及該估計量在 95%信心水準下之最大
誤差（z =1.96）。（6分）
0.025', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0322fbd83f26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "314", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00042', 'locality-0c700c30', 'locality-0c700c30-moex-113-5bdf4977', 'sub-locality-0c700c30-01', NULL, 'essay', '教師收集30 位學生考試成績（Y）與讀書時間（X）資料，用以了解兩者
之間的關係，得到以下的數據：
30 30 30 30
x 396,y 1,644.302,x2 5,852,y2 94,202.131,
i i i i
i1 i1 i1 i1
30
x y 23,255.832
*
i i
i1
以 Y 做為應變數（dependent variable），X 做為自變數（independent
variable），假設簡單線性迴歸模型為Y  X ，其中為相互
i 0 1 i i i
獨立且具常態分配N(0,2)的隨機誤差，試以最小平方法（leastsquares
method）求出 及的估計值。（8 分）
0 1
x x y  y
若以x*  i , y*  i 分別做為新的自變數及新的應變數（其中
i s i s
x y
x, y 為原本資料的樣本平均數，s ,s 為原本資料的樣本標準差），建
x y
立新的迴歸模型Y* * *X* *，試以最小平方法求出*及*的
i 0 1 i i 0 1
估計值。（8分）
若學生的居住地區分為北、中、南三個地區，今定義三個虛擬變數
（dummy variable）D , D , D ，其中 D =1 代表居住北部，D =0 代表
1 2 3 1 1
其他；D =1 代表居住中部，D =0代表其他；D =1代表居住南部，D =0
2 2 3 3
代表其他。如果以 Y 做為應變數，X, D , D , D 做為自變數建立複迴
1 2 3
歸模型，請問有何問題？（4分）
如果以 Y 做為應變數，X, D , D 做為自變數建立的複迴歸方程式為
1 2
Y 20.032.02X 1.03D 3.12D ，試求以 做為應變數，X,D ,D 做
1 2 2 3
為自變數建立的複迴歸方程式為何？（5分）
', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0322fbd83f26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "314", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00043', 'locality-0c700c30', 'locality-0c700c30-moex-113-5bdf4977', 'sub-locality-0c700c30-01', NULL, 'essay', '利用 20 個樣本，計算複迴歸模型Y  X  X X 參數估
0 1 1 2 2 3 3
計如下：
估計值（estimate） 標準誤（standarderror）
20.03 10.15
0
2.02 1.05
1
-1.03 2.01
2
3.12 1.56
3
並計算出複判定係數（coefficientof multipledetermination）為 R2=0.8。
計算並解釋調整複判定係數（adjusted coefficient of multiple
determination）。其與複判定係數的差異為何？（8 分）
在顯著水準α=0.05下，試檢定H :   0 vs. H :不全為0,
0 1 2 3 1 i
i=1,2,3。（10 分）
在顯著水準 α=0.05 下，試檢定H : 0 vs. H : 0。（7分）
0 3 1 3
參考之查表值：
F (3,16)=3.239, F (3,18)=3.160, F (3,20)=3.098
0.05 0.05 0.05
t (16)=1.746, t (18)=1.734, t (20)=1.725
0.05 0.05 0.05
t (16)=2.120, t (18)=2.101, t (20)=2.086
0.025 0.025 0.025', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0322fbd83f26", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "314", "s": "1111", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
