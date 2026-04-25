-- W1.6 questions batch 8468/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-77f8735d-moex-00070', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'single_choice', '都治計畫（directlyobservedtreatment,short-course,DOTs）是針對那項疾病的治療策略？', '["愛滋病", "禽流感", "肺結核", "日本腦炎"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": "bc389906415c", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00071', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'single_choice', '關於SWOT概念分析，下列何者錯誤？', '["S代表strength", "W代表weakness", "O代表objective", "T代表threat"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": "bc389906415c", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00072', 'pukao-77f8735d', 'pukao-77f8735d-moex-113-85716566', 'sub-pukao-77f8735d-03', NULL, 'single_choice', '醫院評鑑的工作，由下列那個機構負責執行？', '["衛生福利部醫事司", "衛生福利部醫療品質管理中心", "財團法人醫院評鑑暨醫療品質策進會", "財團法人醫改會"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "ac02d8f0ebe9", "answer_pdf_sha1": "bc389906415c", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "429", "s": "2105", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "衛生行政學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00073', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某病例對照研究，共收集50名病例組及100名對照組個案的危險因子A暴
露經驗資料，並依性別分組得到下列結果：
男性 5
有危險因子A暴露經驗
女性 25
病 例 組
男性 6
無危險因子A暴露經驗
女性 14
男性 16
有危險因子A暴露經驗
女性 4
對 照 組
男性 75
無危險因子A暴露經驗
女性 5
請依上述資料論述性別是否為危險因子A與疾病關係間的干擾因子？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f0f9a7ec49d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00074', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '請以下表資料計算並比較甲乙兩市的粗死亡率、年齡標準化死亡率（請以
兩市人口數總和為參考族群進行直接標準化）。（25分）
甲市 甲市 乙市 乙市
年齡
人口數 死亡數 人口數 死亡數
＜5 20,000 200 20,000 250
5-14 10,000 20 20,000 25
15-24 10,000 50 30,000 200
25-34 10,000 25 20,000 75
35-44 25,000 100 10,000 35
45-64 25,000 200 10,000 350
65＋ 50,000 4,000 10,000 450
總數 150,000 120,000
43850', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f0f9a7ec49d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00075', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某一個兒科研究擬探討種族與新生兒心跳數間的關係，收集218名高加索
裔新生兒及156名非裔新生兒的心跳資料如下表，請以適當的統計方法檢
定種族與新生兒心跳數間的關係。（若=0.05，F =1.3349，
155,217,0.975
t =1.98）（25分）
120,0.975
種族 人數 平均每分鐘心跳次數 標準差
非裔 156 133 12
高加索裔 218 125 11', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f0f9a7ec49d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00076', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-535684c7', 'sub-pukao-77f8735d-01', NULL, 'essay', '某團隊招募22,071名成年男子參與一項隨機雙盲試驗，其中11,036人分配
至實驗組，每兩天服用50mgbeta-carotene，另外11,035人則分配至控制組
服用安慰劑，20年後發現實驗組有1,273人罹患癌症，控制組則有1,293人
罹患癌症，請以適當的統計方法檢定這兩組人罹患癌症的情況有無不同。
（設=0.05，2 =3.84，2 =0.10，2 =0.45）（25分）
1,0.95 1,0.25 1,0.50
實驗組 控制組 總數
有癌症 1,273 1,293 2,566
無癌症 9,763 9,742 19,505
11,036 11,035 22,071', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "f0f9a7ec49d8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00077', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '請依據我國現行衛生相關法規之規範，說明下列專有名詞的意涵。（每小
題5分，共25分）
第二類傳染病
類菸品
醫療廣告
醫療器材單一識別系統（UniqueDevice Identification,UDI）
試驗用醫療器材', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "0a26e5bb1067", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00078', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '何謂食品安全的三級品管？我國現行的食品安全衛生管理法中有那些對
應的規範？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "0a26e5bb1067", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('pukao-77f8735d-moex-00079', 'pukao-77f8735d', 'pukao-77f8735d-moex-112-d3b35c4a', 'sub-pukao-77f8735d-02', NULL, 'essay', '2022年06月22日公布之醫療事故預防及爭議處理法，法案內容有著「即時
關懷」、「調解先行」、「事故預防」等三大原則，請說明該法針對上述原則
的規範內容有那些重點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:36:04+00:00", "source_pdf_sha1": "0a26e5bb1067", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "422", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
