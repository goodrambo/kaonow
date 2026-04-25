-- W1.4 new questions batch 3699/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('fire-eq-eng-moex-00293', 'fire-eq-eng', 'fire-eq-eng-moex-112-990845ec', 'sub-fire-eq-eng-04', NULL, 'essay', '某一地下停車場設計自動滅火系統時，依各類場所消防安全設備設置標
準，可選擇水霧滅火設備，亦可選擇泡沫滅火設備。請就滅火機制、放
射區域、放水量以及水源容量等項目，比較地下停車場選用水霧滅火設
備及泡沫滅火設備之異同。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:14+00:00", "source_pdf_sha1": "dfa054eb4b24", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "水系統消防安全設備", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00294', 'fire-eq-eng', 'fire-eq-eng-moex-112-990845ec', 'sub-fire-eq-eng-04', NULL, 'essay', '某汽車修護廠空間為長 30公尺、寬 20 公尺、高 6公尺，廠區中央之防
護對象物尺寸為長 5 公尺、寬 4 公尺、高 1.5 公尺，設計採用局部放射
膨脹倍率為 100 倍之高發泡泡沫系統防護，泡沫原液濃度為 3%，請計
算防護面積、泡沫水溶液放射量、水源容量及原液量。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:14+00:00", "source_pdf_sha1": "dfa054eb4b24", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "水系統消防安全設備", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00295', 'fire-eq-eng', 'fire-eq-eng-moex-112-990845ec', 'sub-fire-eq-eng-04', NULL, 'essay', '依各類場所消防安全設備設置標準之規定，自動撒水設備可分為密閉濕
式、密閉乾式、開放式及預動式等類型，請繪出此四種類型之示意圖，
並說明各類型之動作流程及適用場所型態選擇原則。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:14+00:00", "source_pdf_sha1": "dfa054eb4b24", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "水系統消防安全設備", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00296', 'fire-eq-eng', 'fire-eq-eng-moex-112-990845ec', 'sub-fire-eq-eng-04', NULL, 'essay', '某建築物內每層配置第一種室內消防栓2支，消防栓配管示意圖如附圖。
配管採螺紋式接法，管徑尺寸資料為：AB 段 100 A，BC 段 80 A，CD
段 40 A，假設每段管長如圖面標示，配管公稱尺寸與內徑相同，水帶每
百公尺摩擦損失水頭為 12公尺，配管配件等價管長如表一，每百公尺配
管摩擦損失水頭如表二，泵揚程餘裕度為10%，效率為 60%，請計算幫
浦的額定揚程及電動機馬力。（假設室內消防栓出水量以 130 公升/分鐘
計算，且幫浦出水量以 2 支室內消防栓出水量計算，幫浦與電動機的連
結係數為1.1）。（25 分）
CD=3mm
D
C
15mm
B
10mm AB=100AA
BC=80AA
40mm 10mm CD=40AA
P
Ａ
表一 配管配件等價管長摘錄表（單位：公尺）
管配件 尺寸 40 A 80 A 100 A
T分流或十字接頭 2.5 4.9 6.3
90o彎管 1.3 2.4 3.2
角閥 7.0 -- --
閘閥 0.3 0.5 0.7
逆止閥 3.5 6.7 8.7
底閥 7.0 13.5 17.6
表二 配管每百公尺之摩擦損失水頭（單位：公尺）
流量 管徑
l/min 40 A 80 A 100 A
130 11.43 0.39 0.13
260 41.20 1.41 0.48', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:14+00:00", "source_pdf_sha1": "dfa054eb4b24", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "水系統消防安全設備", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00297', 'fire-eq-eng', 'fire-eq-eng-moex-112-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'essay', '依各類場所消防安全設備設置標準規定，公共危險物品等場所有那
些？該等場所之滅火設備分類有那些？請詳述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:15+00:00", "source_pdf_sha1": "dd6f3dcd0b73", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "消防法規", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00298', 'fire-eq-eng', 'fire-eq-eng-moex-112-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'essay', '請依消防法規定，詳述下列問題：
工廠發生火災時，工廠之管理權人應辦理之事項及相關之罰則。（12分）
消防設備師或消防設備士為消防安全設備不實檢修報告者之罰則。
（8 分）
防火管理人因業務過失致人於死或傷之罰則。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:15+00:00", "source_pdf_sha1": "dd6f3dcd0b73", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "消防法規", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00299', 'fire-eq-eng', 'fire-eq-eng-moex-112-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'single_choice', '依消防安全設備檢修及申報辦法之規定，對於所謂各類場所所在之建築物整棟已無使用情形 之認定基準，可分為使用狀態或管理狀態等，下列何者不屬於使用狀態之認定基準？', '["建築物於避難層開向屋外之出入口及車輛出入口均已全日上鎖或封閉，且各出入口明顯處 所張貼禁止進入之告示", "建築物內部之場所均已歇業、停業或現場無實際使用情形", "因地震、水災、風災、火災或其他重大事變，致建築物毀損無法使用", "因違反相關法規，經有關機關採取停止供水、供電或封閉等措施"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:15+00:00", "source_pdf_sha1": "dd6f3dcd0b73", "answer_pdf_sha1": "993bbcb4aefe", "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "消防法規", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00300', 'fire-eq-eng', 'fire-eq-eng-moex-112-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'single_choice', '依消防法、消防法施行細則，有關製定消防防護計畫之規定，下列敘述何者正確？', '["地面樓層達10層以上建築物，其管理權有分屬時，各管理權人應協議製定共同消防防護 計畫", "地下建築物應製定共同消防防護計畫", "一定規模以上供公眾使用建築物，應由管理權人，遴用防火管理人，責其製定消防防護 計畫", "建築物管理權有分屬無法互推召集人時，防火管理人得申請直轄市、縣（市）消防機關指 定之"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:15+00:00", "source_pdf_sha1": "dd6f3dcd0b73", "answer_pdf_sha1": "993bbcb4aefe", "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "消防法規", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00301', 'fire-eq-eng', 'fire-eq-eng-moex-112-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'single_choice', '依消防設備師及消防設備士管理辦法第 14 條之 3 之規定，各級消防設備師公會及消防設備 士公會之組織及活動，應依下列那一項法規辦理？', '["消防法", "各類場所消防安全設備設置標準", "人民團體法", "工會法"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:15+00:00", "source_pdf_sha1": "dd6f3dcd0b73", "answer_pdf_sha1": "993bbcb4aefe", "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "消防法規", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00302', 'fire-eq-eng', 'fire-eq-eng-moex-112-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'single_choice', '依消防法施行細則第21條之規定，直轄市、縣（市）政府對轄內無自來水供應或消防栓設置 不足地區，應籌建或整修蓄水池及其他消防水源，並由當地何者機關列管檢查？', '["消防機關", "自來水事業單位", "水資源局", "經濟部"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:15+00:00", "source_pdf_sha1": "dd6f3dcd0b73", "answer_pdf_sha1": "993bbcb4aefe", "source_family": "moex-gov-tw", "moex": {"exam_code": "112060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "消防法規", "year": "112", "exam_name": "112年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
