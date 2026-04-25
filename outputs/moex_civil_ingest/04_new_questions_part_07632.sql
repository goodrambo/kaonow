-- W1.6 questions batch 7632/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-0c700c30-moex-00016', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-ec859484', 'sub-promotion-0c700c30-01', NULL, 'essay', '銘興大學以該校學生為對象，進行一項學校行政滿意度調查，抽樣設計
為依學制將學生分為大學部、碩士班及博士班三類，於各類學生中以簡
單隨機抽樣的方式各選擇200位學生作為樣本並加以訪談，記錄其對學
校行政效率是否滿意。其調查結果概要如下：
學制 學制樣本滿意比例 學制學生總數
大學部 0.25 3000
碩士班 0.65 1000
博士班 0.55 500
請回答下列問題：
請推估銘興大學學生對該校行政效率滿意之比例以及該推估量之標
準誤估計值。（10 分）
銘興大學校方為提升行政效率，每學期固定實施一次調查。請問在下
次調查時，於總樣本數為600的條件下，各學制皆為 200 位學生之樣
本數配置是否恰當？請敘述理由。若認為各學制學生樣本數應重新配
置，請提出配置結果（包含規畫樣本數配置應考慮之因素、如何計算
以及計算結果）。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "b0368a9e8c51", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00017', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-ec859484', 'sub-promotion-0c700c30-01', NULL, 'essay', '澄清里里長為瞭解里內 2000 位里民對里內公園設施的滿意程度，進行
一項調查，在全里的 20個鄰中，隨機選擇 5個鄰，再請鄰長在其鄰內里
民中隨機選擇 10位里民做為樣本，詢問其對鎮內公園設施是否滿意，調
查資料如下：
鄰編號 鄰內里民數 鄰內樣本滿意比例
3 100 0.3
6 80 0.5
11 100 0.3
12 200 0.5
17 50 0.2
請回答下列問題：
請問此一抽樣設計為何種抽樣設計？（5 分）
請根據此一調查資料，推估澄清里里民對里內公園設施的滿意比例，
並提出根據此一估計結果建構信賴區間所需之變異數估計。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "b0368a9e8c51", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00018', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-ec859484', 'sub-promotion-0c700c30-01', NULL, 'essay', '請說明何謂抽樣權重（sampling weight），說明其與包含機率（inclusion
probability）及母體數 之關係，以及如何利用抽樣權重建構母體總和
（ ）以及平均（ ）之不偏估計量。（10分）
N
τ μ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "b0368a9e8c51", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00019', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-4b760c19', 'sub-promotion-0c700c30-02', NULL, 'essay', '給定以下資料集（N=13）：
資料：[60,10,15,20,25,30,35,120,45,50,55,115,40]
請分別計算出3個四分位數Q1、Q2和Q3及內4分位距（Inter-Quartile
Range,IQR）。（20 分）
請問該組資料有沒有離群值？請說明判斷理由。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "1ef8c566afaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00020', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-4b760c19', 'sub-promotion-0c700c30-02', NULL, 'essay', '若已知下圖中兩分配機率密度函数（probability density function, PDF），
其一為 T分配（自由度 3），另一為標準常態 Z分配，則虛線應該是那一
個分配？請說明理由。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "1ef8c566afaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00021', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-4b760c19', 'sub-promotion-0c700c30-02', NULL, 'essay', '統計學是一個處理資料的科學，有老師因考量學生成績太低將成績開根
號後再乘以 10，今假設學生原始成績為X，介於 0到 100均勻分配的隨
機變數，令Y=10 X為調整後的成績，試問：（每小題15分，共 30分）
相較於原始平均成績，調整後的平均成績會產生何種變化？
調整後的成績Y，其變異數為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "1ef8c566afaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00022', 'promotion-0c700c30', 'promotion-0c700c30-moex-112-4b760c19', 'sub-promotion-0c700c30-02', NULL, 'essay', '某廠商要設計一款內含 10顆編號 1 到 10的搖球機，希望每顆球被搖出
來的機率是一樣的，工程師為了測試設計出來的搖球機滿足上述的需
求，故獨立連續搖出 100 顆球，並記錄搖出的號碼及其對應搖出的次數
如下：
編號 1 2 3 4 5 6 7 8 9 10
次數 11 9 8 9 11 7 10 12 9 14
試以顯著水準0.05檢定每個號碼出現的機率是否一樣？（請詳列
問題的虛無假設、對立假設、檢定統計量、臨界值和結論）（20分）
請問檢定統計量對應的 p值大約是多少？（10分）
2
表 分配右尾切點（cut-offpoints）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "1ef8c566afaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "122", "s": "1008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00023', 'promotion-0c700c30', 'promotion-0c700c30-moex-110-ec859484', 'sub-promotion-0c700c30-01', NULL, 'essay', '工廠領班想了解生產線上發生意外事件時，作業員的臨場反應及危機處
理能力；遂欲估計作業員在面臨生產線發生意外事件時的平均反應時
間。已知該工廠共有作業員 750人，其中早班作業員有 450人，晚班作
業員有 300人。因工廠領班認為早、晚班不同班別的作業員在反應時間
上可能有所差異；故決定以班別來進行分層調查，而每位作業員的調查
成本是相同的。以前的調查資料顯示早班作業員的反應時間為 4 到 19
秒，晚班作業員的反應時間為 10到 20 秒。
試決定早、晚班各層最佳的樣本配置率。（10分）
在信賴度為 95%且誤差界限為 1 秒下，現欲估計作業員在面臨生產
線發生意外事件時的平均反應時間，需要調查多少位早、晚班作業
員？（10 分）
若調查總費用的預算為2,000元，而每位作業員的調查成本是35 元，
為使估計式的變異數最小，則需調查多少位早、晚班作業員才能達到
此目的。（5分）
註：z 1.96，z 1.645；標準差約為全距的1/4。
0.025 0.05', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "32f29064a713", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "122", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00024', 'promotion-0c700c30', 'promotion-0c700c30-moex-110-ec859484', 'sub-promotion-0c700c30-01', NULL, 'essay', '甲大學共有 12 個系，120 個班級，7,450 名學生。為了解學生的平均體
重，該校學務處隨機自全校中抽出 15 個班級，且對班級內的所有學生測
量體重。請問此次調查是採用那種抽樣方法？參數（parameter）為何？
抽樣單位（samplingunit）為何？母體大小（populationsize）為何？樣本
大小（samplesize）為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "32f29064a713", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "122", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL),
  ('promotion-0c700c30-moex-00025', 'promotion-0c700c30', 'promotion-0c700c30-moex-110-ec859484', 'sub-promotion-0c700c30-01', NULL, 'essay', '某次資格考試共有 N 個考生報考，若考試分數大於 50 分即取得資格，
現欲了解此次考生取得資格的比例，遂自考生成績總表中抽出 n個成績
計算以估計之。已知考生成績總表有 2種形式：第一種是依考生准考證
的號碼列示，第二種是依考生成績的高低依序列示。試根據上述不同的
成績總表，說明適合採用何種抽樣方法來取得樣本，估計考生取得資格
的比例，並列出估計式。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:07+00:00", "source_pdf_sha1": "32f29064a713", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "122", "s": "1011", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "抽樣方法", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "統計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
