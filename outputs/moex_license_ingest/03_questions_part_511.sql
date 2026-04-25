-- moex_license_ingest questions batch 511/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('land-agent-moex-00023', 'land-agent', 'land-agent-moex-113-d8627c1a', 'sub-land-agent-02', NULL, 'essay', '土地、建物所有權人王大明申辦建物第一次測量，請敘明辦理程序及應
備文件。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "b1d9d7fedc59", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地登記實務", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00024', 'land-agent', 'land-agent-moex-113-d8627c1a', 'sub-land-agent-02', NULL, 'essay', '甲有 A地之所有權，立下遺囑將該地遺贈與乙，並指定丙為遺囑執行人。
請依土地登記規則之規定，說明後續應如何辦理該地之所有權移轉登
記？若是甲以遺囑將該地辦理信託，應如何辦理該地之信託登記？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "b1d9d7fedc59", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地登記實務", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00025', 'land-agent', 'land-agent-moex-113-c44544c9', 'sub-land-agent-03', NULL, 'essay', '甲於112年4月8日死亡，甲名下的土地一筆，係一般農業區的農牧用地，
面積為2,000m2，作農業使用，112年1月1日之公告現值為1,200 元/m2。
甲之法定繼承人為配偶乙、女兒丙、兒子丁共三人。112 年 8月 20 日辦
竣繼承登記，上述農業用地繼續作農業使用。假設嗣經政府辦理農地重
劃，於 115 年 7 月 31 日辦理重劃分配土地完竣，丙、丁各獲配一宗土
地，均無需繳納或領取差額地價。之後，丙於 116年 6 月 18日將其獲配
之上述農業用地（面積 850m2）訂立買賣契約出賣予戊，丙戊兩人於 116
年 6 月 25日向稅捐稽徵機關申報土地移轉現值，未檢附直轄市、縣（市）
農業主管機關核發之農業用地作農業使用證明書予稅捐稽徵機關，請問
此時丙戊之間之買賣是否適用農業用地移轉不課徵土地增值稅之規定？
又已知 116年 1月 1 日公告現值為 1,500元/ m2，物價指數為 105%，重
劃負擔總費用證明書所載之金額為 120,000 元，請列出土地漲價總數額
之計算方法及其結果？並列出土地增值稅應徵稅額之計算方法及其結果？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "4ad8de88e8b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地稅法規", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00026', 'land-agent', 'land-agent-moex-113-c44544c9', 'sub-land-agent-03', NULL, 'essay', '甲因為事業繁忙，將其名下的不動產信託給信託公司乙經營管理，在信
託契約中約定信託的利益歸屬於甲。經數年後，甲鑑於其孩子丙已成家
立業，於是跟信託公司乙合意修改原信託契約，將信託利益之歸屬變更
為丙。請問信託財產依規定在那些情形下，課徵贈與稅？甲將信託利益
之歸屬變更為丙，是否可課徵贈與稅？試申述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "4ad8de88e8b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地稅法規", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00027', 'land-agent', 'land-agent-moex-113-c44544c9', 'sub-land-agent-03', NULL, 'essay', '最近俗稱囤房稅 2.0 的房屋稅條例修正通過，預計 113 年 7 月上路、反
映於 114 年房屋稅課徵，請問修正後的房屋稅條例第 5條，關於住家用
房屋，就自住、單一自住、出租、起造人待銷售、非自住，課稅之規定
分別為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "4ad8de88e8b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地稅法規", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00028', 'land-agent', 'land-agent-moex-113-c44544c9', 'sub-land-agent-03', NULL, 'essay', '林君擁有一自住房地，最近計畫換屋，林君請教地政士欲了解若先出
售自住房地後購入另一自住房地，或是先購入一自住房地後出售其他
自住房地，對於申請退還或抵扣已繳納之房地合一所得稅額的規定為
何？請分別詳述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "4ad8de88e8b4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地稅法規", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00029', 'land-agent', 'land-agent-moex-113-1ee8220b', 'sub-land-agent-04', NULL, 'essay', '甲為購買屬意區域之不動產，乃委託具有不動產交易專業經驗之乙代為
尋找在一定金額以下之適當物件，並授與乙於尋得適當物件時即辦理相
關締約及辦理移轉登記手續之代理權。乙為獲取甲應允之高額報酬，於
尋找過程中詐騙丙，以低於市價甚多之金額購得丙所有之 A地。甲、丙
雙方履行各自支付價金及交付 A地及移轉登記義務後，丙始得知受乙詐
騙之情事。丙得如何主張以取回A地所有權？甲得否以自身並未為任何
詐騙行為、且全然不知乙之詐騙行為，主張丙之請求無理由？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "e6bf9f3ca9e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法概要與信託法概要", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00030', 'land-agent', 'land-agent-moex-113-1ee8220b', 'sub-land-agent-04', NULL, 'essay', '甲將 A地移轉登記予乙，並成立信託契約，由受託人乙管理運用。未料
信託存續期間，乙因意外身故。乙之子丙主張 A 地已移轉登記於乙名
下，故應由其繼承；甲則主張因受託人乙死亡，故信託關係消滅。請依
信託法規定說明甲、丙之主張有無理由。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "e6bf9f3ca9e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法概要與信託法概要", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00031', 'land-agent', 'land-agent-moex-113-1ee8220b', 'sub-land-agent-04', NULL, 'essay', '甲、乙、丙、丁、戊、己 6人共有 A地，於民國36 年 6 月辦理總登記，
甲、乙、丙、丁、戊、己每人的應有部分均為 6 分之 1，丙、丁、戊三
人在 A 地上各自蓋 B1、B2、B3 房屋，各自使用的基地面積大致符合
丙、丁、戊三人各自的應有部分，甲、乙和己都未干涉。甲、乙、丙、
丁、戊、己的應有部分之後都由其各自繼承人所繼承，丙、丁、戊三人
的繼承人為丙 1、丁 1、戊 1，各自繼承了丙、丁、戊三人在 A地的應有
部分及 B1、B2、B3 房屋所有權，己的 A地應有部分由其繼承人己1、
己 2、己 3、己 4 所繼承，各繼承應有部分 24 分之 1。民國 107 年 7 月
己 1 將其應有部分 24 分之 1 出賣並辦理移轉登記給庚，庚於民國 108
年 6 月以丙 1、丁 1、戊 1 三人為被告，請求法院命被告拆除 B1、B2、
B3 房屋，將 A地返還給全體共有人。請問法院應如何判決？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "e6bf9f3ca9e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法概要與信託法概要", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL),
  ('land-agent-moex-00032', 'land-agent', 'land-agent-moex-113-1ee8220b', 'sub-land-agent-04', NULL, 'essay', '甲喪偶，於民國 113 年 5 月 10 日召集子女乙丙丁三人商議並告知遺產
分配，所有人皆無異議，隨後當場自立一紙未記載日期之遺囑，為求慎
重，一行人隔日至公證人處請求公證，公證人認證時註記認證日期為民
國 113 年 5月 11日，數日後甲死亡，乙因當時分配較少遺產心生不滿，
主張該遺囑無效，是否有道理？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:40+00:00", "source_pdf_sha1": "e6bf9f3ca9e0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113050", "c": "201", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法概要與信託法概要", "year": "113", "exam_name": "113年專技人員高等考試大地工程技師考試分階段考試(第一階段考試)、驗船師、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通考試地政...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "land", "db_exam_id": "land-agent"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
