-- moex_license_ingest questions batch 82/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-moex-00189', 'real-estate', 'real-estate-moex-113-629c9966', 'sub-real-estate-03', NULL, 'single_choice', '依所得稅法規定，個人以自有土地與營利事業合作興建房屋，自土地取得之日起算五年內完成並 銷售該房屋、土地者，其所得稅稅率為何？', '["百分之十", "百分之十五", "百分之二十", "百分之二十五"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:33+00:00", "source_pdf_sha1": "64710a5e50e5", "answer_pdf_sha1": "26b2395307c1", "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "601", "s": "1303", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "土地法與土地相關稅法概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 25, "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00190', 'real-estate', 'real-estate-moex-113-a7c7609b', 'sub-real-estate-04', NULL, 'essay', '甲於民國112 年2 月 23 日經由不動產經紀人員居間，以新臺幣 1,098 萬
元向乙購買某建物二樓 A屋，並簽立不動產買賣契約書。乙於簽約當時
告知甲臥室原有滲漏水已修復，並保證 A屋並無任何間隙裂痕情形，水、
電管線亦均已更新等。詎料，同年 5 月底樓下鄰居通知甲其地板及浴室
龜裂、漏水，已影響該鄰居住處天花板，雙方會同水電師傅勘查A屋，
發現漏水原因為廚房排水管年久失修堵塞導致積水，進而造成全屋積水
並滲漏至樓下一樓建物內。試問：甲能否對乙主張花費之修繕費用共計
30 萬元，以及終日憂心建物修繕情形之精神損害賠償 2萬元？法律上依
據為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:33+00:00", "source_pdf_sha1": "326f92027184", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "601", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00191', 'real-estate', 'real-estate-moex-113-a7c7609b', 'sub-real-estate-04', NULL, 'essay', '甲乙簽訂一般委託銷售契約書，甲委託乙出售其所有之 A廠房土地，委
託契約之報酬為委託銷售總價 2%，同日乙即媒介甲與丙公司簽立不動
產買賣意向書，丙交付 100萬元支票為定金，由乙保管作為嗣後丙履約
時價金之一部或違約時之賠償；三週後，甲與丙公司以總價 7500萬元簽
訂不動產買賣契約書，惟丙公司並未依約給付第一期款，亦未開設履約
專戶，甲丙簽訂和解契約，乙未得甲同意逕將作為定金之100萬支票退
還給丙公司。試問：甲乙之法律關係為何？乙得否向甲主張服務報酬？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:33+00:00", "source_pdf_sha1": "326f92027184", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "601", "s": "1301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00192', 'real-estate', 'real-estate-moex-113-a7c7609b', 'sub-real-estate-04', NULL, 'single_choice', '甲就其所有之A地，先與乙訂立買賣契約，後與丙訂立買賣契約，均未辦理所有權移轉登記。關 於二個買賣契約之效力，下列敘述，何者正確？', '["前契約有效，後契約無效", "前契約無效，後契約有效", "前契約有效，後契約有效", "前契約無效，後契約無效"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:33+00:00", "source_pdf_sha1": "326f92027184", "answer_pdf_sha1": "a024a70a8d12", "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "601", "s": "1301", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL),
  ('real-estate-moex-00193', 'real-estate', 'real-estate-moex-113-a7c7609b', 'sub-real-estate-04', NULL, 'single_choice', '有關行為能力之敘述，下列何者正確？', '["年滿30歲患有精神疾病致無法處理自己事務之甲，當然沒有行為能力", "年滿19歲之乙可以獨自訂立買賣汽車之契約", "受輔助宣告之丙可以不經輔助人丁之同意贈與使用過之筆電給戊", "15歲之庚可以不經法定代理人允許擅自丟棄自有之平板電腦"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:33+00:00", "source_pdf_sha1": "326f92027184", "answer_pdf_sha1": "a024a70a8d12", "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "601", "s": "1301", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法概要", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "brokers", "db_exam_id": "real-estate"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
