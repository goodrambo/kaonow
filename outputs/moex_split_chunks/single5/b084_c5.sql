-- moex_license_ingest questions batch 84/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-moex-00269', 'real-estate', 'real-estate-moex-112-ec2e292a', 'sub-real-estate-02', NULL, 'single_choice', '關於輸入商品或服務之企業經營者，下列何者錯誤？', '["視為該商品之設計、生產、製造者或服務之提供者", "於提供商品流通進入市場，或提供服務時，應確保該商品或服務，符合當時科技或專業水準可 合理期待之安全性", "消費者保護團體主張企業經營者不符合當時科技或專業水準可合理期待之安全性者，就其事實 應負舉證責任", "企業經營者違反相關規定，致生損害於消費者或第三人時，應負連帶賠償責任"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:34+00:00", "source_pdf_sha1": "ef2334c92e98", "answer_pdf_sha1": "819236f00ee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "601", "s": "1204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "不動產經紀相關法規概要", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 24, "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00270', 'real-estate', 'real-estate-moex-112-ec2e292a', 'sub-real-estate-02', NULL, 'single_choice', '關於消費者保護團體，下列何者正確？', '["消費者保護團體以社團法人、財團法人或行政法人為限", "消費者保護團體之任務為監督消費者保護主管機關及指揮消費者保護官行使職權", "消費者保護團體從事商品或服務檢驗，發表檢驗結果而有錯誤時，應使相關企業經營者有澄清 之機會", "消費者保護團體為商品或服務之調查、檢驗時，請求政府予以協助時，政府不應允許"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:34+00:00", "source_pdf_sha1": "ef2334c92e98", "answer_pdf_sha1": "819236f00ee2", "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "601", "s": "1204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "不動產經紀相關法規概要", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00271', 'real-estate', 'real-estate-moex-112-629c9966', 'sub-real-estate-03', NULL, 'essay', '甲所有位於某號都市計畫農業區內土地一筆農地（其上建有一間合法農
舍），該農業區多年前因實施都市計畫定期通盤檢討變更而變更為住宅
區（但未發布實施），其土地開發方式於日前始經核定採取「先行區段徵
收」，甲之農地於此次都市計畫通盤檢討變更時變更為公共設施保留地
（道路），其土地登記簿上載有積欠地價稅新臺幣10 萬元之「禁止處分登
記」。甲於獲悉上述資訊後隨即委託 A 仲介公司代為出售其地，乙對該
地有承買意願。若你為 A仲介公司之經紀營業員，依法應以該地之「不
動產說明書」向乙為「解說」，請你從該地所涉及地用與地權法規及其影
響之觀點，各提出一點以作為解說之重要內容，以利乙作為承買該地與
否之重要依據。又上文所述「先行區段徵收」之意涵與目的各為何？又
依法你亦有協助甲與乙公平合理地完成該地買賣契約簽約作業之義務，
則應如何處理其上「禁止處分登記」？試依法分述之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:34+00:00", "source_pdf_sha1": "20e8c3806567", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "601", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地法與土地相關稅法概要", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00272', 'real-estate', 'real-estate-moex-112-629c9966', 'sub-real-estate-03', NULL, 'essay', '按「房屋現值」為課徵房屋稅之稅基，而「房屋標準價格」又為「房屋
現值」核計之基礎，則影響「房屋標準價格」之因素為何？有何問題？
又若以「非自住住家用」之房屋為例，其徵收房屋稅之稅率為何？直轄
市及縣（市）政府對該房屋稅「徵收率」應如何處理？有何問題？請依
房屋稅條例等規定分述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:34+00:00", "source_pdf_sha1": "20e8c3806567", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "601", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地法與土地相關稅法概要", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00273', 'real-estate', 'real-estate-moex-112-629c9966', 'sub-real-estate-03', NULL, 'single_choice', '都市計畫公共設施保留地，未作任何使用並與使用中之土地隔離者，其地價稅之計徵，下列何者 正確？', '["免徵", "按千分之六稅率計徵", "按千分之十稅率計徵", "按千分之二稅率計徵"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:34+00:00", "source_pdf_sha1": "20e8c3806567", "answer_pdf_sha1": "0df227660007", "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "601", "s": "1203", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "土地法與土地相關稅法概要", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
