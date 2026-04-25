-- W1.6 questions batch 8119/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0c700c30-moex-00054', 'pukao-0c700c30', 'pukao-0c700c30-moex-114-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '財政部只有在下列何種情況下才能償還部分國債？', '["財政部能說服中央銀行從公眾手中購買政府債券", "財政部能發行新債券來替代即將到期的債券", "政府的稅收超過支出", "經濟處於充分就業產出水平"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "7f60f8d3aafd", "answer_pdf_sha1": "79d6a424ea53", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "416", "s": "0709", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00055', 'pukao-0c700c30', 'pukao-0c700c30-moex-114-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '有學者認為應以資本預算（capitalbudgeting）方式來衡量政府債務變化，較能確切顯示政府債務負擔。下 列何者與此概念相符？', '["以擴大稅基提高稅收的方式償還政府債務，有助改善政府債務", "以舉債的方式購置發展經濟的資本財，較不會影響政府債務", "以撙節政府支出之盈餘償還政府債務，有助改善政府債務", "以較低利率舉債以償還既有政府債務，不利於政府債務改善"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "7f60f8d3aafd", "answer_pdf_sha1": "79d6a424ea53", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "416", "s": "0709", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00056', 'pukao-0c700c30', 'pukao-0c700c30-moex-114-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '某一公司的採購資料如下所述：
每一位客戶包含有屬性客戶編號、姓名、電話、地址。在客戶中，客戶
編號具有唯一性。
每一張訂單包含有屬性訂單編號、購貨日期。在訂單中，訂單編號具有
唯一性。每一張訂單裡的每一項產品都有其訂購數量之屬性。
每一項產品包含有屬性產品編號、產品名稱、單價。而在產品中，產品
編號具有唯一性。
每一位客戶可能都沒下過訂單，也可能下過多張訂單。
每一張訂單必定為某一位客戶且也僅能為一位客戶所下訂的。
每一張訂單包含有至少一項以上產品；每項產品可能被多張不同訂單所
訂購過，也可能未被任何訂單所訂購過。（每小題 10 分，共40分）
試依上述說明，為該公司畫出一實體關聯圖（Entity Relationship
Diagram,ERDiagram）。該實體關聯圖需標出每一實體的名稱、屬性、
主鍵屬性（Key attribute）、每一關係（Relationship）及其基數性
（cardinality）。
試為該實體關聯圖（ERDiagram），決定出最簡化之各關聯表格。需描
述出每一表格的名稱、屬性（attribute）、主要鍵（primarykey）及外來
鍵（foreign key）。
試寫出一 SQL程式片段，為每一張訂單所採購之每一項產品，列印出
該訂單編號、產品名稱及採購金額。
試寫出一 SQL程式片段，為每一張訂單列印出該訂單編號及該訂單所
採購總金額。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "b25a5db89503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "416", "s": "0815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00057', 'pukao-0c700c30', 'pukao-0c700c30-moex-114-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', 'L 為一由小而大排序之資料串列，L 為一由大而小排序之資料串列，其
1 2
分別含有 N 與 N 筆資料，且 N ,N 0：（每小題 10分，共 20分）
1 2 1 2
請設計出一最佳演算法，以能最快速查詢一資料 D是否存在於資料串
≫
列 L 或 L 內。
1 2
並求出該演算法之時間複雜度（請越精確估算越佳）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "b25a5db89503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "416", "s": "0815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00058', 'pukao-0c700c30', 'pukao-0c700c30-moex-114-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '請撰寫一演算法，透過堆疊（stack）以計算出一後序式數學運算式（Postfix
Expression）（例如"E=23*5+"）之結果。假設運算式中只含加、減、乘、
除（+,-,*,/）四種運算子（operator），及0,1,…,9 十種運算元（operant）。
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "b25a5db89503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "416", "s": "0815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00059', 'pukao-0c700c30', 'pukao-0c700c30-moex-114-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '應用適當的密碼學機制，可確保資料的機密性（confidentiality）、完整性
（integrity）、鑑別性（authenticity）、不可否認性（non-repudiation）之安
全目標。
試解釋何謂機密性、完整性、鑑別性、不可否認性。（8分）
若 A欲將機密資料 D，透過網路傳送給 B。請透過雜湊（Hash）函式
及 RSA加密法，設計一資料加密機制，以確保機密資料之機密性、完
整性、鑑別性。（10 分）
若 A欲將一電子合約 D，透過網路傳送給 B簽章。請透過雜湊（Hash）
函式及 RSA 加密法，設計一數位簽章機制，以確保電子合約之機密
性、完整性、鑑別性、不可否認性。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "b25a5db89503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "416", "s": "0815", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00060', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', '目前核融合技術的重大突破，讓未來核融合發電可望成真。已知國內某
大學的實驗室有三座核融合反應爐，令變數T 為第 i 座反應爐的核融合
i
實際反應時間與目標反應時間之間的差異，i1,2,3。假設變數T,T ,T 彼
1 2 3
此相互獨立，且都服從平均數為0，變異數為 4之常態分配。
求出機率P[T2+T2 2]。（10 分）
1 2
令變數S  T2T2T2，請求出變數 S 之機率密度函數 f(s)。（10分）
1 2 3
T2
令變數W  1 ，請求出變數 W之機率密度函數 f (w)。（10分）
T2T2
1 2
求出題之變數 W的期望值E(W)。（10 分）
求出機率P[Min{Max{T,T },T}<0]，此處Max{a,b}代表取a,b之最大
1 2 3
值，Min{a,b}代表取a,b之最小值。（10 分）
假設每一座反應爐每次點火成功的機率為0.2，且假設三座反應爐點火
成功與否彼此相互獨立。令X 為第i座反應爐直到第一次點火成功前，
i
所需的點火（失敗）次數，i1,2,3。請求出機率P[X  X ]。（10分）
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "53a9b6615202", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0911", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00061', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-c4f12cde', 'sub-pukao-0c700c30-01', NULL, 'essay', 'ChatGPT的問世帶動了 AI商機的蓬勃發展，也促成了市場對 GPU需求
量的急遽增加。已知國內某生產GPU的工廠，所生產的 GPU之壽命服
從變異數為之指數分配。今由此公司之生產線隨機抽檢 n 筆 GPU樣本
並測驗其壽命，令Y,Y ,...,Y 表此 n 筆相互獨立樣本之觀測值。令
1 2 n
Min{Y,Y ,...,Y }代表取Y,Y ,...,Y 之最小值， Max{Y,Y ,...,Y }代表取
1 2 n 1 2 n 1 2 n
Y,Y ,...,Y 之最大值。
1 2 n
求出此GPU壽命分配之中位數的均勻最小變異不偏估計量（uniformly
minimumvariance unbiased estimator）。（10分）
求出機率 P[Min{Y,Y ,...,Y }1] 之最大概似估計量（ maximum
1 2 n
likelihood estimator）。（10 分）
求出機率P[Min{Y,Y ,...,Y }1, Max{Y,Y ,...,Y }2]。（10 分）
1 2 n 1 2 n
令F(y)為變數Y之累積分配函數（cumulativedistributionfunction）。請求出
i
機率P[Min{F(Y),F(Y ),...,F(Y )} 1, Max{F(Y),F(Y ),...,F(Y )} 1]。
1 2 n 4 1 2 n 2
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "53a9b6615202", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0911", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00062', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '機會成本會沿著生產可能曲線增加，是因為：', '["資源在經濟活動中的邊際生產力遞減", "有越來越多的需求被滿足", "為生產更多的某一種商品，必須減少另一商品生產的數量", "生產需要時間"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "95c3429fd606", "answer_pdf_sha1": "f2e9808a87be", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0808", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00063', 'pukao-0c700c30', 'pukao-0c700c30-moex-113-6948958a', 'sub-pukao-0c700c30-02', NULL, 'single_choice', '相對於乙國，甲國生產某商品具有比較利益，則下列何者正確？', '["甲國生產該商品的各種要素投入一定比較少", "乙國生產該產品的各種要素投入一定比較多", "甲國生產該產品的機會成本一定比較低", "乙國生產該產品的機會成本一定比較低"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:48+00:00", "source_pdf_sha1": "95c3429fd606", "answer_pdf_sha1": "f2e9808a87be", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "419", "s": "0808", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "經濟學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
