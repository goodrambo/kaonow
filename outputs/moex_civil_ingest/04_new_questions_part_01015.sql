-- W1.6 questions batch 1015/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-03ec2c8b-moex-00031', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-114-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '某一出租影印機業者，欲研究維護影印機的時間Y（分鐘）與所出租的影
印機數量X（台）之間的關係，經業者抽樣調查蒐集了 10 組維護影印機
的時間與出租影印機數量的資料，如下表所示：
X 20 23 27 24 19 22 18 19 21 25
i
Y 520 547 594 551 509 513 495 511 527 534
i
若業者想利用這些資料建一個迴歸模型Y  X 作為未來估計與預測
0 1
之用，請回答下列問題：（每小題 6 分，共 30分）
請以最小平方法（leastsquaremethod）求參數 與之估計值。
0 1
求參數 與之 95%信賴區間。
0 1
針對所算出來的之 95%信賴區間，請解釋其意涵。
1
若欲檢定由所蒐集的資料中是否足以顯示影印機維護時間受到出租影
印機數量的影響，可以怎麼做？結論為何？（顯著水準設為0.05）
針對某一個月份影印機出租數量為 26 台時，求其維護影印機時間的預
測值之 95%的信賴區間。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "dbefc97e6f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "106", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00032', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-114-4b760c19', 'sub-customs-03ec2c8b-03', NULL, 'essay', '隨機選取 A、B兩廠牌的輪胎各10 個，以成對的方式置入10 部車子的後
輪中，以測試這兩種輪胎的耐磨程度，並記錄其耐磨的里程數（里程數越
多代表輪胎越耐磨）。數據資料（單位：千公里）如下表所示：
輪胎 車子 1 2 3 4 5 6 7 8 9 10
A廠牌 23 20 26 25 48 26 25 24 15 20
B廠牌 20 30 16 33 23 24 8 21 13 18
請回答下列的問題（顯著水準皆設為0.01）：（每小題 5 分，共15 分）
若已知母體為常態分配，根據上表的資料，請問 A 廠牌的輪胎平均耐
磨度是否較 B廠牌好？
若已知母體分配未知，請以符號檢定法（The Sign Test）再檢定之
結果。
若已知母體分配未知，請以 Wilcoxon 符號等級檢定法（The Wilcoxon
Signed-Rank Test）再檢定之結果。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "dbefc97e6f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "106", "s": "1010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00033', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-114-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '賴總統提出雙軸轉型政策，其中數位轉型部分如果在中長期造成臺灣產業
生產力的提升，請分析：
請以總供給曲線AS與總需求曲線AD分析對臺灣總產出與物價的影響。
（10分）
政府部門對廠商在數位轉型上的投入，應該採取怎樣的政策。（10分）
請分析廠商投入數位轉型對社會福利的影響。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "6ce4bd721411", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "106", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00034', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-114-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '因應淨零碳排的趨勢，歐盟訂定「碳邊境調整機制」（Carbon Border
AdjustmentMechanism,CBAM），臺灣則課徵碳費，這些將造成短中期廠
商生產成本的提高，一些文獻稱此為綠色通膨（GreenInflation）；針對綠
色通膨請分析：
請以總供給曲線AS與總需求曲線AD分析對臺灣總產出與物價的影響。
（10分）
請分析中央銀行進行擴張性貨幣政策對臺灣總產出與物價的影響。（10分）
如果中央銀行以緊縮性的貨幣政策來紓解綠色通膨，請分析對臺灣就業
市場的影響。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "6ce4bd721411", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "106", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00035', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-114-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '近期美國啟動關稅戰，在其他情況不變下，請分析：
對全球經濟成長率的影響。（10 分）
對美國物價上漲率的影響。（10 分）
對美國股價指數的影響。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "6ce4bd721411", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "106", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00036', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-114-d3ff7f6b', 'sub-customs-03ec2c8b-04', NULL, 'essay', '我國中央銀行於 2024 年下半年起進行一序列的房地產選擇性信用管制政
策，請分析：
對房價和房屋交易量的影響。（10分）
對不動產類股股價的影響。（10 分）
對臺灣房地產相關產業就業景氣的影響。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "6ce4bd721411", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "106", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "經濟學", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00037', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-113-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '請說明「抽樣誤差」與「非抽樣誤差」之意義？並比較兩者之差異。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "7265e1418dde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00038', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-113-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '某布料工廠的 1項產品規格為長度 400公分之大型布匹，工廠的品管部門
為掌握布匹之品質，會定期進行產品規格檢驗，例如：從 1件大型布匹隨
機裁剪 5 處布料進行化學檢驗，以確保布料產品符合標準規格。如果你身
為工廠之品管人員，要在布匹上隨機裁剪 5個檢驗點，請分別以系統抽樣
法、簡單隨機抽樣法及分層隨機抽樣法進行裁剪，請問你所設計之 5 個樣
本檢驗點位置（以公分為單位）為何？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "7265e1418dde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00039', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-113-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '假設有個四面體的公正骰子，骰子的四面體分別有數字{1, 2, 3, 4}，某人
丟擲此 1 公正骰子 2 次（即為 n=2 樣本），令 表示第i次骰子出現的點
x +x
數， 1,2，則樣本平均數為x= 1 2，請問x 與x 的聯合機率分配為何？
1 x 2
2
x的抽樣分配為何？x的平均數與變異數為何？（30分）
i =', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "7265e1418dde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL),
  ('customs-03ec2c8b-moex-00040', 'customs-03ec2c8b', 'customs-03ec2c8b-moex-113-ec859484', 'sub-customs-03ec2c8b-02', NULL, 'essay', '某電影院行銷經理想要瞭解當前大學生每月觀看電影之次數，經調查後有
3 個觀看電影之集群資料，集群A有 3 位大學生本月觀看電影次數之資料
為{3,6,3}；集群B有 4 位大學生本月觀看電影次數之資料為{4,2,6,8}；
集群 C有 5位大學生本月觀看電影次數之資料為{4, 3, 5, 2, 6}。運用機率
比例抽樣（probability proportional to size, PPS）方式從上述集群中抽出 2
個集群為樣本，假設抽出的 2個集群分別為集群A和集群 C，請分別計算
群體總和（ ）、群體平均數（ ）之估計數及其變異數為何？（30分）
pps pps

 ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:23+00:00", "source_pdf_sha1": "7265e1418dde", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "307", "s": "1110", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "關稅統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
