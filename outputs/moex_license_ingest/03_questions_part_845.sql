-- moex_license_ingest questions batch 845/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('civil-engineer-moex-00005', 'civil-engineer', 'civil-engineer-moex-113-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '一般而言，變更設計的成本（Costofdesignchanges）將隨著工程專案的
進行逐漸增加，換言之，在工程專案設計的初期，良好的設計對工程專
案各個面向均有絕對性的影響力。倘若使用建築資訊模型（Building
InformationModeling,BIM）技術且運用得宜，請從變更設計成本的角度，
論述 BIM在設計與施工階段對於工程專案之界面整合的助益。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "74b7fd16927e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00006', 'civil-engineer', 'civil-engineer-moex-113-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '一建築工程之總承包商進行高度在七公尺以上且面積達三百三十平方
公尺以上之模板支撐構築及拆除作業，為防止模板倒塌危害勞工，其應
辦理事項為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "74b7fd16927e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00007', 'civil-engineer', 'civil-engineer-moex-113-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '公共工程之工程主辦機關辦理公告金額以上且適用營造業法規定之工
程時，應於招標文件內訂定那些有關營造廠商專任工程人員之事項？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "74b7fd16927e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00008', 'civil-engineer', 'civil-engineer-moex-113-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某公司過去以每年 3,500,000 元之成本委外製造瞬熱飲水機，於今年將
考慮自行生產，且該公司廠內之三個生產部門皆已完成評估，所有部門
的成本包含年度間接成本與工時，其直接材料成本和直接人工成本之估
計值如下表所示，表中的分攤時數欄代表生產所需之年度工時。設備的
外購尚需考量第一筆成本3,000,000 元，殘值 50,000 元，年限10 年，請
試以市場每年最低吸引投資報酬率（Minimum Attractive Rate of Return,
MARR）為 15%進行自製或外包的抉擇評估，並加以解釋說明。（25 分）
間接成本
分攤基礎 直接材料成本 直接人工成本
部門 每小時成本率 分攤時數
（工時）
A 機器 $20 10,000 $50,000 $100,000
B 人工 $5 25,000 $75,000 $100,000
C 人工 $10 20,000 $255,000 $220,000
$380,000 $420,000
因子符號 公式 因子名稱
F/P （1i）n 一次支付複利因子
1
P/F 一次支付現值因子
n
（1i）
（1i）n1
P/A   等額現值因子
（i1i）n
（i1i）n
A/P   資本回收因子
（1i）n1
（1i）n1
F/A   等額多次複利因子
i
i
A/F 沉入資金付款因子
n
（1i）1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "74b7fd16927e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00009', 'civil-engineer', 'civil-engineer-moex-112-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '公共工程於工程合約執行時，經常會發生工程變更，請問何謂工程變更，
工程變更常發生的原因可以分成那幾類，每類請試述其變更原因？如何
能減少工程變更？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "b7bee469c782", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00010', 'civil-engineer', 'civil-engineer-moex-112-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某工程所需作業項目、作業順序、作業工期如下表所示：（25分）
請用箭式法繪製工程網圖，並標示出要徑。
請列表計算每項作業之最早開始時間、最早完成時間、最晚開始時間、
最晚完成時間、總浮時、自由浮時、干擾浮時。
請解釋何謂要徑與浮時？
作業項目 前置作業 作業時間
A 無 3
B 無 7
C 無 3
D A 4
E B 5
F B 4
G C 4
H E 2
I E 4
J F,G,H 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "b7bee469c782", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00011', 'civil-engineer', 'civil-engineer-moex-112-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某混凝土工程試體抗壓強度試驗結果為 212、250、201、288、245、268、
199kg/cm2，請計算抗壓強度之統計量，包括樣本平均值、中位數、全距、
偏差平方和、樣本變異數、樣本標準差及變異係數。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "b7bee469c782", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00012', 'civil-engineer', 'civil-engineer-moex-112-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某公共工程建設計畫經費預估內容如下表，請用現值法評估下列兩方案
何者為佳？並請說明如何解讀你計算結果，取 i=10%。（25 分）
方案 A 方案 B
期初成本 40 億 65 億
服務年限 12 年 20 年
殘值 6 億 3 億
每年收益 5 億 5 億
每年維護費用 2.5 億 2 億', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:15+00:00", "source_pdf_sha1": "b7bee469c782", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00013', 'civil-engineer', 'civil-engineer-moex-111-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '試列舉設計圖說審查重點項目 4項，並解釋說明各項審查重點。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "ac6edd2ab6f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00014', 'civil-engineer', 'civil-engineer-moex-111-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '專案管理廠商應協助主辦機關於工程契約中明定工地安全衛生管理實
施要點，並要求承包商確實依約執行。請敘述實施要點內容應包括之重點。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "ac6edd2ab6f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
