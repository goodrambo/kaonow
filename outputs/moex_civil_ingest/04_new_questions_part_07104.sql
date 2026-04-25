-- W1.6 questions batch 7104/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-d0d1b9a2-moex-00604', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-f6c431ec', 'sub-locality-d0d1b9a2-04', NULL, 'single_choice', '下列有關我國土地稅的敘述，何者錯誤？', '["地價稅採單一稅率課徵", "田賦已停徵", "土地增值稅的稅基為土地漲價總數", "根據我國現行土地稅法規定，土地稅不含房屋稅"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "6191ce00986c", "answer_pdf_sha1": "0b5d54786be4", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00605', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-f6c431ec', 'sub-locality-d0d1b9a2-04', NULL, 'single_choice', '將財政資源與決策權盡量下放給地方政府的現象稱為財政分權。下列有關財政分權的理由，何者 錯誤？', '["可提供地方政府競爭的誘因", "可鼓勵地方政府服務創新", "彌補地方性公共財所產生的外部性", "提供符合地方居民需要的公共財"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "6191ce00986c", "answer_pdf_sha1": "0b5d54786be4", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d0d1b9a2-moex-00606', 'locality-d0d1b9a2', 'locality-d0d1b9a2-moex-110-f6c431ec', 'sub-locality-d0d1b9a2-04', NULL, 'single_choice', '歐盟的馬斯垂克條約或「成長與穩定公約」（GrowthandStabilityPact），規範在非經濟重大衰退時， 一國的財政赤字不得超過GDP的多少比率？', '["3%", "5%", "10%", "60%"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:10+00:00", "source_pdf_sha1": "6191ce00986c", "answer_pdf_sha1": "0b5d54786be4", "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "313", "s": "1402", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "財政學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "會計"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00001', 'locality-d592fc58', 'locality-d592fc58-moex-114-4b760c19', 'sub-locality-d592fc58-01', NULL, 'essay', '藉由過去數年的資料蒐集與分析，某段道路發生交通事故的次數，為
每星期平均 2次的卜瓦松分配（Poisson distribution）。試問：（計算
至小數點後 4位）（每小題 10分，共 20分）
在 12 月第一個星期的時間內，此段道路上發生 2 次及 2 次以上交
通事故之機率。
在 12 月最後二個星期的時間內，此段道路上發生 1 次及 1 次以下
交通事故之機率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00002', 'locality-d592fc58', 'locality-d592fc58-moex-114-4b760c19', 'sub-locality-d592fc58-01', NULL, 'essay', '依據調查，臺灣 18 歲以下青少年近視比率為 87.2%。若對全國 18歲
以下青少年進行簡單隨機抽樣，試回答下列問題：
隨機抽取 8 人，隨機變數 X 代表近視的人數，寫出 X 的機率分配
函數。（6 分）
承，計算會抽到超過2人為近視的機率（亦即P(X>2)）。（6分）
隨機抽取 1000 人，剛好 880 人為近視的機率（請以常態分配機率
近似）。（12 分）
若隨機變數 Y 為抽到第十位為近視者的人數，寫出 Y 的機率分配
函數。（6 分）
31920
50620', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00003', 'locality-d592fc58', 'locality-d592fc58-moex-114-4b760c19', 'sub-locality-d592fc58-01', NULL, 'essay', '下表是全國姓名統計前五大姓氏（及其他）的全國占比，及從臺北市
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
的比例一致。（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00004', 'locality-d592fc58', 'locality-d592fc58-moex-114-4b760c19', 'sub-locality-d592fc58-01', NULL, 'essay', '某縣政府想評估四種流程（A、B、C、D表示之）辦理某一業務的效
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
F', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "b712799b3f30", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1107", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00005', 'locality-d592fc58', 'locality-d592fc58-moex-114-d3ff7f6b', 'sub-locality-d592fc58-02', NULL, 'essay', '假設只有 A 與 B 兩個小國，且其生產一單位產品 X 與一單位產品 Y 所
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
國的進出口量各是多少？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00006', 'locality-d592fc58', 'locality-d592fc58-moex-114-d3ff7f6b', 'sub-locality-d592fc58-02', NULL, 'essay', '請用總合需求-總合供給（AD-AS）模型回答下列問題：（為簡化分析，
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
50650', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL),
  ('locality-d592fc58-moex-00007', 'locality-d592fc58', 'locality-d592fc58-moex-114-d3ff7f6b', 'sub-locality-d592fc58-02', NULL, 'single_choice', '在生產要素及技術水準固定之下，有關一國進行國際貿易之優點，下列敘述何者正確？', '["該國的消費可以選擇在其生產可能線上的任一點", "該國的消費可以選擇在其生產可能線以內的一點", "該國的消費可以選擇在其生產可能線以外的一點", "該國可以將其生產可能線向外擴張"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:24+00:00", "source_pdf_sha1": "6852e28c95cc", "answer_pdf_sha1": "5696f1cd2c60", "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "318", "s": "1102", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "經濟學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "商業行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
