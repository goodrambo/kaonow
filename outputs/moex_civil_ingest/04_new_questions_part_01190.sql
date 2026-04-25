-- W1.6 questions batch 1190/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00198', 'customs-d7421644', 'customs-d7421644-moex-110-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '某部三相，15 馬力，4 極，線-線電壓為 460 伏特，60 赫芝，額定轉速 1728
轉/分的感應電動機，運轉在滿載狀態下，且該部電動機的風損及摩擦損合
計為 750 瓦特，試計算該部電動機的：（每小題5 分，共 20分）
滑差（slip）為若干。
轉軸功率（shaftpower）為若干仟瓦。
氣隙功率（airgappower）為若干仟瓦。
轉子銅損為若干瓦特。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b06932b56aba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00199', 'customs-d7421644', 'customs-d7421644-moex-110-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '某部三相，5 仟伏安，線-線電壓 220 伏特，4極，60赫芝，Y接的同步發
電機。此部發電機的電樞電阻可忽略不計，且其同步電抗（synchronous
reactance）為每相 8 歐姆。若此部發電機並聯到三相，220伏特，60 赫芝
的電壓源以便進行供電。適當地調整同步機的激磁電流，使該部發電機運
轉在額定的 5仟伏安，功率因數為 0.8 落後，進行供電。試：
（每小題 5分，共 20 分）
計算發電機每相的激磁電壓（excitation voltage）E 為若干伏特。
f
計算功率角（powerangle）δ為若干。
計算每相的電樞電流I 為若干安培。
a
繪出此發電機相關電壓及電流關係的相量圖，包括每相的端電壓V，電
t
樞電流I ，激磁電壓（excitation voltage）E 及功率角δ。
a f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b06932b56aba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00200', 'customs-d7421644', 'customs-d7421644-moex-110-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '某部額定轉速 1000 轉/分的他激式直流電動機，激磁場固定且額定，其電
樞電阻R 為 0.1 歐姆，且將該部直流電動機連接到100 伏特的直流電源供
a
應器（DCpowersupply），且此部直流電源供應器的輸出電流沒有任何限
制。（每小題 5分，共 20分）
若不加任何的起動電阻時，試求此部電動機在起動瞬間的起動電流為若
干安培。
計算此部電動機在額定轉速下，且輸入功率為 10 仟瓦時的電樞電流為
若干安培。
若欲使此部電動機，在起動瞬間的起動電樞電流限制在200安培，試計
算需串接多少歐姆的起動電阻。
試求在上述題中，在起動瞬間的起動電阻功率損失為若干仟瓦。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b06932b56aba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00201', 'customs-d7421644', 'customs-d7421644-moex-110-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '試回答下列問題：（每小題 5分，共 20分）
說明內藏式永磁同步電動機（interior permanent magnet synchronous
motor）與表面黏著永磁同步電動機比較，有那些優點及缺點。
說明變頻器（inverter）的功用為何。
說明單相感應電動機的起動方法。
說明步進馬達（stepper motor）的優點及缺點。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b06932b56aba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-f19eb2bd-moex-00001', 'customs-f19eb2bd', 'customs-f19eb2bd-moex-113-34c7f7f6', 'sub-customs-f19eb2bd-01', NULL, 'single_choice', '下列文句「」中的成語，何者運用最恰當？', '["他是「一絲不苟」的人，一向粗心大意，所以做事常常出紕漏", "我們專業貼心的居家清潔服務，保證讓您的居室「充棟汗牛」", "他努力克服各種挑戰，最終達成任務，便「志得意滿」的笑了", "您的言論真是「拋磚引玉」，為我將來的研究提供了不少幫助"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:25+00:00", "source_pdf_sha1": "d56e2c7fb363", "answer_pdf_sha1": "6c38fc9e000a", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "161", "s": "0105", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "船舶駕駛"}'::jsonb, NULL),
  ('customs-f19eb2bd-moex-00002', 'customs-f19eb2bd', 'customs-f19eb2bd-moex-113-34c7f7f6', 'sub-customs-f19eb2bd-01', NULL, 'single_choice', '下列新聞標題，沒有出現贅詞的選項是：', '["冬季流感嚴峻 致死率果然唯恐上升", "樂透有望加碼 或許獎金可能加碼一億", "新春憾事 超商店員遭疑似酒駕嫌疑人撞傷", "消失的年夜飯 未收到預訂年夜飯者高達百人"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:25+00:00", "source_pdf_sha1": "d56e2c7fb363", "answer_pdf_sha1": "6c38fc9e000a", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "161", "s": "0105", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "船舶駕駛"}'::jsonb, NULL),
  ('customs-f19eb2bd-moex-00003', 'customs-f19eb2bd', 'customs-f19eb2bd-moex-113-34c7f7f6', 'sub-customs-f19eb2bd-01', NULL, 'single_choice', '下列選項，何者沒有冗贅字詞或用詞不當等現象？', '["子女不服父母管教，有時偶爾會登上新聞", "我只能權充一日翻譯，無法總是義務幫忙", "這間餐廳菜餚滋味淳厚，用餐時間顧客往往經常絡繹不絕", "非洲野生動物的數量極為滂薄，且一直不斷發現新的物種"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:25+00:00", "source_pdf_sha1": "d56e2c7fb363", "answer_pdf_sha1": "6c38fc9e000a", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "161", "s": "0105", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "船舶駕駛"}'::jsonb, NULL),
  ('customs-f19eb2bd-moex-00004', 'customs-f19eb2bd', 'customs-f19eb2bd-moex-113-34c7f7f6', 'sub-customs-f19eb2bd-01', NULL, 'single_choice', '下列文句，用詞最為妥適、沒有語病的是：', '["我方在這場冠軍賽以凌厲的攻勢大敗對手，高舉金盃", "短時間之內要您拜讀本人的拙作，真是不勝犬馬怖懼之心", "陳先生熱心擔任銀行的白手套，幫忙處理大眾的慈善捐款", "老闆愛擺架子，藉此贏得屬下的敬重，此舉值得管理階層效法"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:25+00:00", "source_pdf_sha1": "d56e2c7fb363", "answer_pdf_sha1": "6c38fc9e000a", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "161", "s": "0105", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "船舶駕駛"}'::jsonb, NULL),
  ('customs-f19eb2bd-moex-00005', 'customs-f19eb2bd', 'customs-f19eb2bd-moex-113-34c7f7f6', 'sub-customs-f19eb2bd-01', NULL, 'single_choice', '某大樓發生深夜噪音的困擾，管理委員會張貼告示內容如下，那一選項的 用詞完全正確？', '["敝大樓諸位芳鄰您們好", "頃接獲敬啟者通報噪音", "茲考量彼此應敦睦邦誼", "敬祈深夜放輕腳步為禱"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:25+00:00", "source_pdf_sha1": "d56e2c7fb363", "answer_pdf_sha1": "6c38fc9e000a", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "161", "s": "0105", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "船舶駕駛"}'::jsonb, NULL),
  ('customs-f19eb2bd-moex-00006', 'customs-f19eb2bd', 'customs-f19eb2bd-moex-113-34c7f7f6', 'sub-customs-f19eb2bd-01', NULL, 'single_choice', '下列各政府機關宣傳標語的使用，何者最適當？', '["財政部：節約能源做得好，後代子孫沒煩惱", "法務部：飛來大獎莫驚喜，讓你掏錢洞無底", "勞動部：反貪不分你我他，廉能政府靠大家", "文化部：友善校園有正義，拒絕霸凌無畏懼"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:25+00:00", "source_pdf_sha1": "d56e2c7fb363", "answer_pdf_sha1": "6c38fc9e000a", "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "161", "s": "0105", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "國文", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "船舶駕駛"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
