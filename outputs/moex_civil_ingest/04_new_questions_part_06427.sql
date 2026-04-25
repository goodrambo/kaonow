-- W1.6 questions batch 6427/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00004', 'locality-0c700c30', 'locality-0c700c30-moex-114-5bdf4977', 'sub-locality-0c700c30-01', NULL, 'essay', '簡單線性迴歸模型如下：
Y  X  , i1, ,n
ε
i 0 1 i i
其中 為 iid 且服從N(0,σ2)。今某高中老師收集 12 位學生的英文成績
ε
i
（ ）及數學成績（ ）如下：
65 63 68 65 66 65 68 67 72 67 70 63
X Y
63 65 71 64 68 63 65 66 70 68 69 67
X
請以此資料配適簡單線性迴歸模型。（10 分）
Y
以所配適的模型，預測當學生英文成績為69時，數學成績為何？（5分）
請以α0.05，進行雙尾檢定H : 0，H : 0。請寫出詳細檢定
0 1 1 1
過程與結果（註：t 2.2281；t 2.2010；t 2.1788）。
10,0.025 11,0.025 12,0.025
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "a9ba79543fab", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法與迴歸分析", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00005', 'locality-0c700c30', 'locality-0c700c30-moex-114-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '某人為瞭解稻米產量、耕作面積及氮肥用量間之關係，蒐集了 50 戶
農家的資料，得到敘述統計量如下：
產量 耕作面積 氮肥用量
（千公斤） （甲） （百公斤）
樣本平均 10.68 6.78 6.64
樣本變異數 10.30 4.18 6.24
（產量、耕作面積）：0.71
相關係數 （產量、氮肥用量）：0.52
（耕作面積、氮肥用量）：0.68
今若以簡單線性迴歸模型
產量ab耕作面積
研析產量與面積之關係，並以耕作面積為解釋變數，請問該模型中
a與b之估計值為何？本模式下之判定係數為何？（10 分）
請寫出本模型下之變異數分析（ANOVA）表，並檢定耕作面積在
95%之信心水準下是否與產量有顯著之關係。請詳列虛無以及對立
假設、檢定統計量、檢定原則及檢定結果。（10分）
若將氮肥用量加入以多元線性迴歸模型
產量ab 耕作面積b 氮肥用量
1 2
ˆ ˆ
分析結果得到b 及b 之估計值分別為b 1.04及b 0.1，請問該b
1 2 1 2 1
之估計值的解釋與之簡單線性迴歸中b的估計值之解釋有何異
同？（5分）
在的多元線性迴歸模型所得之變異數分析（ANOVA）表如下：
變異來源 平方和 自由度 均方 F值
迴歸 256.61 2 128.305 24.291
殘差 248.27 47 5.282
總變異 504.88 49
請檢定在耕作面積已經列為線性迴歸模型的解釋變數之情形下，當
信心水準為 95%時，氮肥用量是否為顯著之解釋變數。請敘述恰當
之虛無及對立假設、檢定統計量、檢定原則及檢定結果。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0747984ac7c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00006', 'locality-0c700c30', 'locality-0c700c30-moex-114-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '對便利商店所進行之經營狀況調查中，隨機選擇 100 家便利商店後
記錄其週營業額，但因原始資料遺失，僅存次數分配資料如下：
週營業額（萬元） 便利商店數
20≤ 週營業額 <25 35
25≤ 週營業額 <30 30
30≤ 週營業額 <35 20
35≤ 週營業額 <40 10
40≤ 週營業額 <45 5
請根據本表推算便利商店之週營業額樣本平均、樣本變異數以及樣本
中位數。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0747984ac7c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00007', 'locality-0c700c30', 'locality-0c700c30-moex-114-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '為鼓勵提升生育率，評估若要對甲鎮內家戶中有 12 歲以下之家戶成
員數目為 2 人或以上之家戶實施補助所需之資源，於鎮內隨機選取
200 家戶，各家戶中 12歲以下家戶成員數目如下表：
12 歲以下家戶成員數 0 1 2 3 4 5
家戶數 70 82 33 10 3 2
請問此一未成年家戶成員數資料在 95%之信心水準下是否服從卜
瓦松分配（Poisson distribution）？（15分）
請說明在95%之信心水準下是否有顯著之證據指出甲鎮內家戶12歲
以下未成年家戶成員數目大於或等於 2人之比例大於 15%。請敘述
恰當之虛無及對立假設、檢定統計量及檢定結果。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0747984ac7c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00008', 'locality-0c700c30', 'locality-0c700c30-moex-114-4b760c19', 'sub-locality-0c700c30-02', NULL, 'essay', '某人想要研析三種不同的灌溉方式對產量的影響，規劃了 15 塊面積
相同的農地，每種灌溉方式各隨機選擇 5 塊農地加以應用，三種灌溉
方式所得產量資料整理後如下表：
灌溉方式 A B C
樣本平均 15.4 18.4 28.4
樣本變異數 9.3 20.8 18.3
經一因子變異數分析後，發現三種灌溉方式之產量確有顯著之差距，
請回答下列問題：
請寫出一因子變異數分析之變異數分析表（含檢定三種灌溉方式之
產量是否相同之檢定統計量值）。（10 分）
因為一因子變異數分析顯示三種灌溉方式之產量顯著不同，請用費
雪之最小顯著差異法（Fisher’s Least Significant Difference），以單
一成對比較信心水準為 95%之基準下，判斷那幾組成對之兩種灌溉
方式產量比較有顯著之不同。（10 分）
承中之整體型一誤差機率為何（亦即產生至少一次型一誤差之機
率）？若用邦佛洛尼校正法（Bonferronicorrection）調整單一成對檢
定之顯著水準，調整後之單一成對檢定之顯著水準以及整體型一誤
差機率為何？（5 分）
t分配表
F分配表
卡方分配表
卜瓦松機率分配表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "0747984ac7c4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1106", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00009', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'essay', '假設只有 A 與 B 兩個小國，且其生產一單位產品 X 與一單位產品 Y 所
需的勞動投入數量如下表所示：
X Y
A國 2 6
B國 2 3
另外，假設勞動為唯一的生產要素，兩國的勞動數量分別為LA=24與LB=12。
畫出兩國直線型的生產可能曲線（PPF）。（6分）
P
如果兩國發生貿易，則國際的相對價格( X )t之範圍為何？（4分）
P
Y
假設兩國貿易後皆完全專業化生產其具有比較利益的產品。B 國貿易
後的產量組合為何？（8分）
P
假設( X )t=0.5，且 B 國貿易後的消費組合為（X, Y）=（2, 3），則 B
P
Y
國的進出口量各是多少？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00010', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'essay', '請用總合需求-總合供給（AD-AS）模型回答下列問題：（為簡化分析，
請不用考慮人們對物價預期水準的調整）
假設本國經濟一開始處在長期均衡且一般物價水準為 P ，實質 GDP
1
水準為 Y 。畫圖顯示此一長期均衡點（A點）。（4 分）
1
假設本國恆久性大幅調高進口原物料的關稅，且將增加的關稅稅收用
於補貼家戶的消費支出。在上述的圖上，畫出並說明在這些措施下，
總合需求曲線與短期總合供給曲線會如何移動，並顯示新的短期均衡
點（B 點，此時的一般物價水準為P，實質 GDP水準為 Y ）。（10分）
2 2
如果中央銀行要讓一般物價水準回復至 P，則該採取擴張性還是緊縮
1
性的貨幣政策？在上述的圖形，畫出並說明在中央銀行所採取的措
施下，本國經濟如何移至新的短期均衡點（C點）。（10分）
31860
50650', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00011', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '在生產要素及技術水準固定之下，有關一國進行國際貿易之優點，下列敘述何者正確？', '["該國的消費可以選擇在其生產可能線上的任一點", "該國的消費可以選擇在其生產可能線以內的一點", "該國的消費可以選擇在其生產可能線以外的一點", "該國可以將其生產可能線向外擴張"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00012', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '甲與乙都是咖啡的愛好者。甲每個月固定喝 30 杯咖啡，乙每個月固定花 1,000 元喝咖啡。甲乙 兩人的咖啡需求價格彈性各為何？', '["甲的咖啡需求價格彈性為0，乙的咖啡需求價格彈性為1", "甲的咖啡需求價格彈性為1，乙的咖啡需求價格彈性為0", "甲與乙的咖啡需求價格彈性均為0", "甲與乙的咖啡需求價格彈性均為1"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00013', 'locality-0c700c30', 'locality-0c700c30-moex-114-d3ff7f6b', 'sub-locality-0c700c30-03', NULL, 'single_choice', '假設其他條件不變，在兩期模型下，如利率上升造成第一期儲蓄減少，下列敘述何者正確？', '["對第一期的消費而言，利率上升的替代效果大於所得效果", "對第一期的消費而言，利率上升的替代效果小於所得效果", "對第一期的消費而言，利率上升的替代效果等於所得效果", "對第二期的消費而言，利率上升的替代效果等於所得效果"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:13+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "314", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
