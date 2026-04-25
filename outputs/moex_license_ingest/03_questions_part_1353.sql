-- moex_license_ingest questions batch 1353/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('food-tech-moex-00026', 'food-tech', 'food-tech-moex-114-6a6e5047', 'sub-food-tech-06', NULL, 'essay', '什麼是雪卡毒素（Ciguatoxin）？雪卡毒素的來源與其中毒症狀為何？如
何預防雪卡毒素食物中毒？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "c6c0b969d407", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114050", "c": "101", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品衛生安全與法規", "year": "114", "exam_name": "114年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00027', 'food-tech', 'food-tech-moex-114-6a6e5047', 'sub-food-tech-06', NULL, 'essay', '食物中含有的硫代葡萄糖苷（Glucosinolates）可能引起食物中毒。那些
食物含有硫代葡萄糖苷？硫代葡萄糖苷的中毒機制與症狀為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "c6c0b969d407", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114050", "c": "101", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品衛生安全與法規", "year": "114", "exam_name": "114年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00028', 'food-tech', 'food-tech-moex-113-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '衛生福利部食品藥物管理署在實驗室品質管理規範化學領域測試結果
品質管制中，指出品管樣品分析包括空白樣品、查核樣品及重複樣品之
分析；請說明這三種樣品之分析目的及做法。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "0c2caf998d9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00029', 'food-tech', 'food-tech-moex-113-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '乾燥金針花為了防止變黑，業者常會浸泡漂白劑亞硫酸鹽，經化學作
用後會轉為二氧化硫；目前二氧化硫分析方法常使用蒸餾法測定，請
詳述二氧化硫分析原理。（10分）
火腿製造過程常會加入保色劑亞硝酸鹽，一般會利用比色法來定量火
腿中亞硝酸鹽含量，請詳述其分析原理。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "0c2caf998d9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00030', 'food-tech', 'food-tech-moex-113-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '凱式定氮法（Kjeldahlmethod）常用來測定食品中之總氮含量，實驗得到
的總氮數值，再乘上特定的氮-蛋白質轉換係數（Conversionfactor），即
可得該食品之蛋白質含量。
請詳述凱式定氮法（Kjeldahl method）主要步驟及原理。（15分）
氮-蛋白質轉換係數會隨不同種類食品而不同，通常一般食品之轉換係
數為 6.25，此數值訂定依據為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "0c2caf998d9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00031', 'food-tech', 'food-tech-moex-113-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '利用液相層析法分析市售雞精胺基酸含量、飲料單/雙糖組成及拿鐵咖
啡因含量，請配對選擇下列合適的偵測器：折射率偵測器（refractive
indexdetector）、螢光偵測器（Fluorescencedetector）及紫外/可見光偵
測器（Ultraviolet-visibledetector），並詳述此三種偵測器之偵測原理及
特色。（18 分）
樣品經高效率液相層析分離後，如何進行定性和定量？（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "0c2caf998d9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00032', 'food-tech', 'food-tech-moex-113-9af4f2a0', 'sub-food-tech-01', NULL, 'essay', '請說明下列溶液如何配製：（已知原子量 H=1.0, O=16.0, Na=23.0,
S=32.0,P=31.0）（有效數字至小數點以下 1 位）（每小題 5分，共20分）
如何用固體藥劑製備 50 mL0.4 mol/L 的 NaH PO 溶液？
2 4
如何用18 NH SO 製備 250 mL2 mol/LH SO 溶液？
2 4 2 4
如何將市售 95%的酒精配製成 500 mL之 75%酒精溶液？
39.2克的 Na CO ．5H O溶於 500 克水中，求此溶液之重量百分率濃
2 3 2
度為多少？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "0c2caf998d9e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00033', 'food-tech', 'food-tech-moex-113-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '請說明液蛋（liquidegg）之加工目的、製程、衛生品質管理，以及液蛋
食品加工廠可採取那些措施或策略因應淨零排放目標（請至少列出 3 項
詳細說明之）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "695a63a43f47", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00034', 'food-tech', 'food-tech-moex-113-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '何謂組織化植物蛋白（Texturedvegetableprotein,TVP）？請舉出 2種生
產組織化植物蛋白之加工技術，並說明其產品特性、設備需求，以及加
工控制系統有何異同。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "695a63a43f47", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL),
  ('food-tech-moex-00035', 'food-tech', 'food-tech-moex-113-52d5a1a7', 'sub-food-tech-02', NULL, 'essay', '請說明低酸性罐頭食品之定義與其殺菌製程管理原則，包括殺菌方式、
殺菌指標菌，以及殺菌值的計算（包括溫度與時間所累積之熱致死總效
應）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:31:03+00:00", "source_pdf_sha1": "695a63a43f47", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "101", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品加工學", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "food", "db_exam_id": "food-tech"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
