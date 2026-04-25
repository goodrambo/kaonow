-- W1.6 questions batch 6760/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-77f8735d-moex-00014', 'locality-77f8735d', 'locality-77f8735d-moex-114-173e98ef', 'sub-locality-77f8735d-04', NULL, 'essay', '衛生福利部中央健康保險署於 113 年 7 月起推出「在宅急症照護試辦計
畫」，提供急症病患居家醫療服務，並配合遠距診療系統，長者在家中即
可接受醫療服務。目前試辦的目標、收治對象及給付方式為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "64d54713a3ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫療制度與品質管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00015', 'locality-77f8735d', 'locality-77f8735d-moex-114-173e98ef', 'sub-locality-77f8735d-04', NULL, 'essay', '美國國家醫學研究院（Instituteof Medicine,IOM）於 1990年提出了一個
廣泛被接受的醫療品質分析架構，請問其對醫療品質定義及其所提出的
六大面向指標為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "64d54713a3ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫療制度與品質管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00016', 'locality-77f8735d', 'locality-77f8735d-moex-114-173e98ef', 'sub-locality-77f8735d-04', NULL, 'essay', '運用數位科技來降低醫療成本、提升醫療效率、增進醫療品質，已是全
球醫療領域的共識。請說明 WHO 對於 eHealth 的定義，並舉例說明目
前的主要應用及進入醫療場域可能面對的問題與挑戰。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "64d54713a3ee", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "323", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "醫療制度與品質管理", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00017', 'locality-77f8735d', 'locality-77f8735d-moex-113-010ffe9d', 'sub-locality-77f8735d-01', NULL, 'essay', '下圖為美國1940～1990年各年粗死亡率（Crude death rate）與年齡校正
死亡率（Age-adjusteddeathrate）的數據，縱軸的單位是每10萬人口。請
說明：㉑粗死亡率與年齡校正死亡率的差距逐年增加的理由？㉒為了進
行年齡調整，請問分析者是用那一年的人口分布作為標準人口？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "4990014f6783", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00018', 'locality-77f8735d', 'locality-77f8735d-moex-113-010ffe9d', 'sub-locality-77f8735d-01', NULL, 'essay', '一個眼科治療的研究，共邀請 100 名符合研究收案條件的病人進行研究，
每位病人隨機選取一隻眼睛接受雷射治療，而另一隻眼睛則接受眼藥治療。
下表為兩種治療方法的治療結果。根據下表數據，請利用McNemar’s2Test
檢定（假設 α=0.05）雷射治療與眼藥治療結果對於眼睛疾病的改善狀況是
否有差異？檢定程序請列出假說、計算2 統計量、列出自由度、選擇臨界
值、以及敘述檢定結果。（註：Pr（2 >3.84）=0.05；Pr（2 >2.37）
df=1 df=3
=0.05；Pr（2 >5.02）=0.025；Pr（2 >9.35）=0.025）（25分）
df=1 df=3
點眼藥治療結果
雷射治療結果
改善 未改善
改善 15 10
未改善 50 25
33860
51150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "4990014f6783", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00019', 'locality-77f8735d', 'locality-77f8735d-moex-113-010ffe9d', 'sub-locality-77f8735d-01', NULL, 'essay', '以下為一個假想的生命表，請計算㉑表中 A細格的數值；㉒表中B 細格
的數值；㉓一名新生兒從出生（0 歲）可以活到2 足歲的機率。（25 分）
年齡組距 死亡機率 區間初始的 區間死亡 區間存活 累積存活 預期餘命
（區間） 存活人數 人數 人年數 人年數
0~1 0.005127 100,000 513 99,550 7,996,985 80.3
1~2 0.000412 99,487 B 99,467 7,897,408 79.4
2~3 A 99,446 27 99,433 7,797,941 78.4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "4990014f6783", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00020', 'locality-77f8735d', 'locality-77f8735d-moex-113-010ffe9d', 'sub-locality-77f8735d-01', NULL, 'essay', '一個研究觀察到，在 18 歲及以上感染 A 傳染病的成人中，32%接種過
預防 A 疾病的疫苗，與此相對的是，感染該疾病的 18 歲以下兒童中，
只有 16%接種過疫苗。研究者根據這些數據做以下結論：該疫苗的效力
在兒童族群中比在成人族群中為高。您同意該研究者的結論嗎？無論是
否同意都請說明理由。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "4990014f6783", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2210", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流行病學與生物統計學", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00021', 'locality-77f8735d', 'locality-77f8735d-moex-113-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '依據 113 年 6 月 19 日公布的再生醫療法，請說明本法之立法目的以及再
生醫療的定義。另外本法原則上規範醫療機構執行再生技術前，應進行並
完成人體試驗，但是在那些特定條件下可以免完成人體試驗？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "df5f37c9c1b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00022', 'locality-77f8735d', 'locality-77f8735d-moex-113-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '公共衛生實務與政策的落實上，常見到一般道德考量下個人自主與群體
利益間的衝突，為了減輕這樣的張力，國家在公衛政策形成的過程裡，
應該考量那些重要的決策條件？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "df5f37c9c1b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00023', 'locality-77f8735d', 'locality-77f8735d-moex-113-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '請說明衛生福利部疾病管制署組織成立的法制基礎為何？並請說明其
主要的業務職掌。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:56+00:00", "source_pdf_sha1": "df5f37c9c1b2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "323", "s": "2204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
