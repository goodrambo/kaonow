-- moex_license_ingest questions batch 846/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('civil-engineer-moex-00015', 'civil-engineer', 'civil-engineer-moex-111-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '公共工程可能遭遇各種不同工程界面管理問題，為減緩工程界面爭議，
請列舉並詳述 3項作業（或流程）之整合。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "ac6edd2ab6f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00016', 'civil-engineer', 'civil-engineer-moex-111-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某工廠考慮購入新設備，其 2022年市值為100,000 元。若該工廠之最低
吸引投資報酬率（MinimumAttractive Rate of Return, MARR）為 10%，
下表為該新設備之詳細資訊：
年度 殘值 借貸利息攤提成本 營運成本
2022 100,000 - -
2023 75,000 10,000 1,000
2024 55,000 7,500 3,000
2025 40,000 5,500 6,000
2026 25,000 4,000 10,000
2027 10,000 2,500 15,000
試算出該設備之最低成本出現在那一年度？為多少？最低等值年
均成本（EquivalentUniformAnnualCost,EUAC）為多少？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "ac6edd2ab6f1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00017', 'civil-engineer', 'civil-engineer-moex-110-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '公共工程承包廠商於工程開工前，必須提送整體施工計畫書給業主審查
通過，請問依行政院公共工程委員會要求之建築工程整體施工計畫書主
要內容項目有那些？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "780df39a58a2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00018', 'civil-engineer', 'civil-engineer-moex-110-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某工程基地依照設計圖面要進行土方開挖量為實方 9800 M3，業主給予
的施工工期為 6天。依施工規劃如下：挖土機進行開挖，傾卸卡車進行
運棄，棄土場配置推土機進行整平，請依據以下機具數據及施工條件，
進行本工程各項施工機具數量組合之規劃？（25分）
挖土機挖斗為1 M3鬆方，作業循環時間為每次30 秒。
傾卸卡車每車可運送土方體積為 12 M3鬆方，運棄作業循環時間為每
趟 30 分。
棄土場推土機推土量為每分鐘可推平 2 M3鬆土。
假設土方體積膨脹係數為 1.2，每天工作只有 8小時，不得加班。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "780df39a58a2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00019', 'civil-engineer', 'civil-engineer-moex-110-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '某公共工程已進行 50 組混凝土強度試驗，並據以計算混凝土強度之平
均值為 350 KG/CM2，標準差為 35 KG/CM2，施工廠商必須繪製製程管
制圖之管制界限（涵蓋機率約 95%），以進行混凝土品控。（25分）
請計算並繪製本工程之平均強度管制圖上限及管制圖下限。
若後續3顆混凝土試體強度為450 KG/CM2、390 KG/CM2、420 KG/CM2，
請問後續 3顆混凝土試體之混凝土品質控管是否良好？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "780df39a58a2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00020', 'civil-engineer', 'civil-engineer-moex-110-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '大型公共工程基礎建設，例如高速公路建設，這些基礎建設之生命週期
中，可分為那 6 個計劃執行階段？每個階段主要工作項目為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "780df39a58a2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "001", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00021', 'civil-engineer', 'civil-engineer-moex-108-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '依據最新修訂之政府採購法第 70條之 1規定：機關辦理工程規劃、設計，應依工程
規模及特性，分析潛在施工危險。而勞動部職業安全衛生署亦已函頒「營造工程施
工風險評估技術指引」，透過行政指導說明不同生命週期各階段施工風險評估之方
式。若您是一位土木工程技師，請具體說明設計成果風險評估該如何進行。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "f02c5f963ad6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00022', 'civil-engineer', 'civil-engineer-moex-108-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '國內工程技術性服務的計費方法，依「機關委託技術服務廠商評選及計費辦法」（簡
稱技服辦法）內容規定，其一為「服務成本加公費法」。請回答以下問題：
服務成本加公費法的組成，所有費用主要區分為那些細項。（15 分）
依技服辦法之規定，請詳述機關得給付廠商獎勵性報酬的情形與方式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "f02c5f963ad6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00023', 'civil-engineer', 'civil-engineer-moex-108-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '設計施工界面整合是提升工程品質必須進行的一項基礎工作。請回答以下問題：
請說明何謂可施工性（Constructability）。（5 分）
請舉例說明，如何善用 BIM（Building Information Modeling）技術進行可施工性的
分析。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "f02c5f963ad6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL),
  ('civil-engineer-moex-00024', 'civil-engineer', 'civil-engineer-moex-108-1ca4f053', 'sub-civil-engineer-01', NULL, 'essay', '工程專案面臨展延工期幾乎無法避免。請詳述一般契約中通常約定可以展延的情
境。（25分）
（請接背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:30:16+00:00", "source_pdf_sha1": "f02c5f963ad6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108180", "c": "001", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理", "year": "108", "exam_name": "108年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "civilengineering", "db_exam_id": "civil-engineer"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
