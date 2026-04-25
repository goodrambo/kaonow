-- W1.6 questions batch 6404/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0489de64-moex-00104', 'locality-0489de64', 'locality-0489de64-moex-110-5e00ff89', 'sub-locality-0489de64-04', NULL, 'essay', '重力模式（Gravity Model）被廣泛應用於旅次分布分析。有一重力模式
其空間阻抗因素為 t -α，試計算第 1 區至其他各區的旅次數。t 為 i 區
ij ij
至 j區的旅行時間，令 α=1.80。（25 分）
各區至第 1區
交通分區 旅次產生（P） 旅次吸引（A）
旅行時間（分） i j
1 - 5,000 1,000
2 10 2,000 4,000
3 20 4,000 5,000
4 15 3,000 4,000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:04+00:00", "source_pdf_sha1": "5cee6b519d4e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "320", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "交通行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00001', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '藉由過去數年的資料蒐集與分析，某段道路發生交通事故的次數，為
每星期平均 2次的卜瓦松分配（Poisson distribution）。試問：（計算
至小數點後 4位）（每小題 10分，共 20分）
在 12 月第一個星期的時間內，此段道路上發生 2 次及 2 次以上交
通事故之機率。
在 12 月最後二個星期的時間內，此段道路上發生 1 次及 1 次以下
交通事故之機率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00002', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '依據調查，臺灣 18 歲以下青少年近視比率為 87.2%。若對全國 18歲
以下青少年進行簡單隨機抽樣，試回答下列問題：
隨機抽取 8 人，隨機變數 X 代表近視的人數，寫出 X 的機率分配
函數。（6 分）
承，計算會抽到超過2人為近視的機率（亦即P(X>2)）。（6分）
隨機抽取 1000 人，剛好 880 人為近視的機率（請以常態分配機率
近似）。（12 分）
若隨機變數 Y 為抽到第十位為近視者的人數，寫出 Y 的機率分配
函數。（6 分）
31920
50620', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00003', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '下表是全國姓名統計前五大姓氏（及其他）的全國占比，及從臺北市
隨機抽取2694人，其姓氏之分布情形。
姓氏 全國比例（%） 臺北市（人）
陳 11.21 304
林 8.33 217
黃 6.00 143
張 5.30 147
李 5.13 146
其他 64.03 1737
總計 100.00 2694
試問：
建構臺北市姓氏為陳者的母體比例之 99%區間估計。（8 分）
在顯著水準為0.05 下，檢定臺北市姓氏為黃者的母體比例是否小於
全國姓氏為黃者的比例。（10 分）
在顯著水準為0.05 下，檢定臺北市各姓氏的比例是否與全國各姓氏
的比例一致。（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00004', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-4b760c19', 'sub-locality-0a2fc18c-01', NULL, 'essay', '某縣政府想評估四種流程（A、B、C、D表示之）辦理某一業務的效
率，在申請該項業務的民眾中，各隨機抽取 6位民眾至每一種流程，
觀測其完成程序所需的時間，彙整於下表：
程序完成所需時間（分）
辦理流程
平均 標準差
A 132.0 21.10
B 141.5 19.89
C 149.0 6.22
D 151.5 7.14
在顯著水準為0.05 下，檢定各辦理流程完成程序的平均所需時間是
否相等。（15 分）
詳細說明進行之分析所需的假設。（5 分）
31920
50620
卡方分配表
Tableof theChi-squareDistribution
31920
50620
標準常態分配表
31920
50620
表
率
機
配
分
F', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00005', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'essay', '假設只有 A 與 B 兩個小國，且其生產一單位產品 X 與一單位產品 Y 所
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
國的進出口量各是多少？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00006', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'essay', '請用總合需求-總合供給（AD-AS）模型回答下列問題：（為簡化分析，
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
50650', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00007', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '在生產要素及技術水準固定之下，有關一國進行國際貿易之優點，下列敘述何者正確？', '["該國的消費可以選擇在其生產可能線上的任一點", "該國的消費可以選擇在其生產可能線以內的一點", "該國的消費可以選擇在其生產可能線以外的一點", "該國可以將其生產可能線向外擴張"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00008', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '甲與乙都是咖啡的愛好者。甲每個月固定喝 30 杯咖啡，乙每個月固定花 1,000 元喝咖啡。甲乙 兩人的咖啡需求價格彈性各為何？', '["甲的咖啡需求價格彈性為0，乙的咖啡需求價格彈性為1", "甲的咖啡需求價格彈性為1，乙的咖啡需求價格彈性為0", "甲與乙的咖啡需求價格彈性均為0", "甲與乙的咖啡需求價格彈性均為1"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL),
  ('locality-0a2fc18c-moex-00009', 'locality-0a2fc18c', 'locality-0a2fc18c-moex-114-d3ff7f6b', 'sub-locality-0a2fc18c-02', NULL, 'single_choice', '假設其他條件不變，在兩期模型下，如利率上升造成第一期儲蓄減少，下列敘述何者正確？', '["對第一期的消費而言，利率上升的替代效果大於所得效果", "對第一期的消費而言，利率上升的替代效果小於所得效果", "對第一期的消費而言，利率上升的替代效果等於所得效果", "對第二期的消費而言，利率上升的替代效果等於所得效果"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:16+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
