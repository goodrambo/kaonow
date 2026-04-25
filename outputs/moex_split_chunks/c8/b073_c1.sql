-- moex_license_ingest questions batch 73/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('bookkeeper-moex-01837', 'bookkeeper', 'bookkeeper-moex-100-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依中華民國記帳士職業道德規範，記帳士對於委辦事項，應予保密，但下列何者除外？', '["報經財政部核准者", "經委託人同意或依法令規定者", "依記帳士專業判斷為不須保密者", "報經記帳士公會核准者"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:28+00:00", "source_pdf_sha1": "b74f913e06f7", "answer_pdf_sha1": "79fc2cc5e98c", "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "602", "s": "1101", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 47, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01838', 'bookkeeper', 'bookkeeper-moex-100-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依中華民國記帳士職業道德規範之前言，下列何者非為制定中華民國記帳士職業道德規範之目的？', '["建立本業信譽", "端正社會風氣", "維持記帳士之社會形象", "協助納稅義務人記帳及履行納稅義務"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:28+00:00", "source_pdf_sha1": "b74f913e06f7", "answer_pdf_sha1": "79fc2cc5e98c", "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "602", "s": "1101", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 48, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01839', 'bookkeeper', 'bookkeeper-moex-100-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依中華民國記帳士職業道德規範，下列敘述何者正確？', '["記帳士設立之分事務所，得委由助理員主持", "記帳士如聘雇他記帳士之現職人員，得徵詢他記帳士之意見", "記帳士事務所名稱得與已登錄之事務所名稱相同", "記帳士所有業務之對外文件，一律由記帳士簽名或蓋章"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:28+00:00", "source_pdf_sha1": "b74f913e06f7", "answer_pdf_sha1": "79fc2cc5e98c", "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "602", "s": "1101", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('bookkeeper-moex-01840', 'bookkeeper', 'bookkeeper-moex-100-12108af6', 'sub-bookkeeper-04', NULL, 'single_choice', '依中華民國記帳士職業道德規範，關於記帳士業務延攬，下列敘述何者錯誤？', '["不得利誘", "不得刊登廣告宣傳", "不得不正當抑價", "不得詆毀同業"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:28+00:00", "source_pdf_sha1": "b74f913e06f7", "answer_pdf_sha1": "79fc2cc5e98c", "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "602", "s": "1101", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "記帳相關法規概要", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "slug": "bookkeeper", "db_exam_id": "bookkeeper"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00001', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '若勘估標的為位於重劃區之土地，不動產估價師擬以比較法與土地開發
分析法評估其價格。
你認為合理的比較法個別因素調整表應包含那些內容？請以表格方
式完整呈現，並具體說明其理由。（15分）
若勘估標的與比較標的在上述個別因素有明顯的差異時，請以最重要
的五項個別因素為例，具體說明你認為合理的調整原則或方式（包括
影響方向、影響程度及函數關係），並說明其理論基礎。（15 分）
以土地開發分析法進行價格評估時，你認為最可能造成不同不動產估
價師在土地開發分析價格產生差異的原因為何？在兼顧不動產估價
師的獨立、客觀、公正立場下，又有那些方法可減少上述價格落差？
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "1ca10e85b6fe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00002', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '某一都市更新案之更新單元為兩面臨路之基地，依據其土地、建物及使
用執照狀況，大致可區分為 A、B、C三區，各區基地上各有數棟樓層數
不等的區分所有建築物。A 區臨主要道路（20 公尺），區位條件較優，
但土地總面積未達 100坪，且土地形狀呈狹長形，不利單獨興建，建物
現況一樓多為店面使用。B 區土地為位於次要道路（8 公尺）的長方形
土地，形狀方整，但總面積約 180坪，單獨興建無法規劃坡道平面車位，
建物現況一樓部分為店面使用、部分為住家使用。C 區土地總面積約為
500 坪，土地面積較大且方整，非未臨接道路之裡地，但臨路條件不佳，
本身單獨開發之人車動線不佳。因此，三區土地若單獨開發均有其限制，
即彼此整合開發最為有利，但如何合理且公平評估彼此的價值貢獻，影
響基地是否能成功整合甚鉅，以下為三區土地分布之示意圖（非地籍
圖）。
C
次要道路（8公尺）
B
A
主要道路（20公尺）
㉑更新前基本資料
⑴勘估標的內容
a.土地標示：**市**區**段**地號等 22筆
土地面積：2,536.63 平方公尺（767.33 坪）
b.建物標示：**市**區**段**建號等 36筆
建物門牌：**市**區**路**巷**弄**號等 36戶（部分建物有海砂
屋重建獎勵）
建物面積：3,030.45 平方公尺
c.權利種類：都市更新權利變換之權利價值
⑵產權分析：依據委託人提供之產權清冊資歷，整理土地、建物等產
權資料如下：（略）
㉒更新後基本資料
⑴建築形式：地上 24層、地下5 層之店面住宅大樓，共 155 戶，其中
店面 12戶、住宅 143戶，地下層規劃 155個坡道平面停車位。
⑵建物構造：鋼骨鋼筋混凝土造。
⑶更新後建物面積：更新後供分配之建築物及其土地應有部分面積，
即更新後建物（不含車位）總銷售面積為 5,888.18 坪（詳見更新後
各單元建築物之權利價值表，略）。
㉓評估內容：更新前後權利價值。
請依據上述資料擬定其權利變換估價之完整估價流程，並具體說明可
能的勘估標的、估價方法及估價結果於都市更新之用途。（20分）
為使未來都市更新案之估價結果更為公平且合理，請你先擬定適當的
估價條件。（10分）
都市更新權利變換估價有那些常見的爭議與其爭議原因？又你認為
有那些可能的方法解決？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "1ca10e85b6fe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00003', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '請說明土地開發分析法之估價原理、應用場合，並就法令對土地開發分
析法之定義，分析其與最有效使用之關連。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "53f528492dd2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00004', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '一幢辦公大樓供所有權人之企業總部使用，並未對外招租，請問這幢大
樓可否應用收益法評估其價格？請詳述理由。並請說明應如何對此辦公
大樓進行估價？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "53f528492dd2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00005', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '近鄰地區與類似地區有何不同？其與區域因素調整有何關係？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "53f528492dd2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00006', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '何謂素地估價？何謂附建物地估價？兩者有何不同？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "53f528492dd2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00007', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '不動產市場與傳統商品市場有很多不一樣的市場特徵，其中一項特徵便
是不動產市場具有很高的交易成本，何謂交易成本？不動產市場為何有
較高的交易成本？現今科技發展迅猛，是否能降低這些交易成本？請舉
例說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "cd6ae873dbd1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00008', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '市場的價格行情源自於市場的供需情況與大量的自願交易，然而像土地
徵收之非自願之交易，則會讓所有權人對於失去的土地與房產之評價，
可能會超過其客觀所獲得之評價，這是行為經濟學家所稱之稟賦效果
（EndowmentEffect）或損失厭惡（LossAversion），請說明何謂稟賦效果與
損失厭惡？這樣的效果對被徵收土地之所有權人之補償作業有何啟示？
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "cd6ae873dbd1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00009', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '影響不動產價格因素很多，一旦通貨膨脹發生便會驅動物價上漲，也會
推升不動產價格，何謂通貨膨脹？而不動產價格上漲是否也會推升物價
上漲？並請說明物價與不動產價格兩者之間的相互影響關係。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "cd6ae873dbd1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00010', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '利率的變化往往也會顯著影響房地產價格的漲跌，請說明利率的經濟意
義與它如何影響房價的漲跌。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "cd6ae873dbd1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00011', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '某甲不動產估價師針對一筆非都市土地進行土地開發之估價，其認為國
土計畫法功能分區公告之前後，適用之土地使用管制與土地開發規範並
不相同。請依現行規定，說明國土計畫法國土保育費與區域計畫法開發
影響費之意義與課徵基礎。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00012', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '某甲有一塊土地，屬於都市計畫公共設施保留地，某乙建設公司在同一
個主要計畫地區範圍內有一塊建築基地，請依現行都市計畫容積移轉之
規範說明，接受基地移入送出基地之容積應如何計算？接受基地之可移
入容積上限為何？若某乙建設公司欲以折繳代金方式移入容積，其程序
為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00013', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '某甲不動產估價師受到某乙地主之委託，協助評估某地都市更新案之財
務可行性評估。某甲查詢法規後，發現都市更新事業計畫範圍內之建築
基地，得視都市更新事業需要，給予適度之建築容積獎勵。請依都市更
新條例之規定，說明各級主管機關訂定獎勵之項目應考量那些因素？
獎勵後之建築容積的上限及其例外情形為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00014', 'real-estate-appraiser', 'real-estate-appraiser-moex-114-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '請依現行規定說明區段徵收土地時，應如何補償所有權人之地價，以及
其餘之各項補償費？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "dc0ad94c2728", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "114", "exam_name": "114年專門職業及技術人員高等考試會計師、不動產估價師、專利師、植物診療師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00015', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '比較法（30分）
㉑民國 113年 1月到民國113 年8 月價格日期指數無調整皆為 100%。
㉒勘估標的與比較標的位在同一個區域，區域因素一致。
㉓比較標的的價格為交易價格，無須進行情況調整。
㉔計算比較價格時，比較標的一的加權數 34%、比較標的二的加權數
33%、比較標的三的加權數 33%。
㉕勘估標的及比較標的資料，如下表。
項目 勘估標的 比較標的一 比較標的二 比較標的三
地址 中正路1號12樓 中正路1號17樓 中正路3號12樓 中正路5巷1號5樓
價格型態 交易價格 交易價格 交易價格
交易價格 2,180萬 3,370萬 3,180萬
勘察日期 113.8.16 113.8.16 113.8.16 113.8.16
價格日期 113.8.16 113.4.16 113.5.16 113.6.16
使用分區 第四種住宅區 第四種住宅區 第四種住宅區 第四種住宅區
屋齡 15年 15年 15年 17年
建物面積 133.56 m2 78.6 m2 134.4 m2 120.85 m2
結構 鋼筋混凝土 鋼筋混凝土 鋼筋混凝土 鋼筋混凝土
臨路情況 單面臨路 單面臨路 單面臨路 單面臨路
道路寬度 30 m 30 m 30 m 24 m
㉖勘估標的與比較標的個別因素比較調整率表，如下表。
主要 比較標的一 比較標的二 比較標的三
項目 調整百分率% 調整百分率% 調整百分率%
宗地條件 100 100 100
行政條件 100 100 106
建物個別條件 101 100 102
道路條件 100 100 103
接近條件 100 100 100
週邊環境條件 100 100 100', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "5f13c9e0cbaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00016', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '土地開發分析法（30分）
㉑基地面積為 600 坪，預計開發興建住宅社區。根據相關都市計畫法、
建築技術規則規定得知，基地興建樓地板面積為 1,200 坪，請依據不
動產估價技術規則土地開發分析法計算、分析，並將運算過程予以逐
一列出。
㉒有關可銷售房地產價格資料為如下所示：一樓可銷售面積 240坪，一
樓銷售價格每坪40 萬；二樓以上可銷售面積 960坪，二樓以上銷售價
格每坪 30萬。車位可銷售50 個，每個車位100萬。
㉓相關土地開發成本如下所示：
⑴營造施工費用：17 萬/坪，營造施工面積 1,200 坪。
⑵規劃設計費用：以營造施工費 2%計算。
⑶管銷費用：以總銷售金額 3%計算。
⑷稅捐及其他負擔費用：以總銷售金額3%計算。
⑸開發者之適當利潤率：20%。
⑹資本利息綜合利率：4%。
⑺開發計畫期間 2 年。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "5f13c9e0cbaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00017', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '收益法（40分）
㉑民國113年1月到民國113年8月價格日期房租指數無調整皆為100%。
㉒勘估標的與比較標的位在同一個區域，區域因素一致。
㉓比較標的為成交租金，無須進行情況調整。
㉔勘估標的與比較租賃標的租金案例分析表，如下表。
項目 勘估標的 比較租賃標的一 比較租賃標的二 比較租賃標的三
地址 中正路100號12樓中正路20號17樓中正路40號12樓 中正路50巷1號5樓
建物面積
133 145 77 180
（平方公尺）
年總租金
170,520 101,640 216,000
（元/年）
空置率 2個月 2個月 2個月
押金 2個月 2個月 2個月
屋齡 15 15 16 11
㉕勘估標的及比較租賃標的資料及調整率表，如下表。
結構 鋼筋混凝土造 鋼筋混凝土造 鋼筋混凝土造 鋼筋混凝土造
建物條件 相當 相當 相當 相當
區位條件 相當 相當 相當 相當
勘察日期 113.8.16 113.8.16 113.8.16 113.8.16
租金價格日期 113.8.16 113.3.16 113.4.16 113.7.16
交易型態 交易租金 交易租金 交易租金
價格日期
100% 100% 100%
調整率
區域因素
100% 100% 100%
調整率
個別因素
99% 103% 100%
調整率
㉖勘估標的其他相關資料說明：
⑴勘估標的面積：土地10.58平方公尺、建物面積為 133平方公尺。
⑵租賃空置損失 2 個月的閒置率。
⑶押金 2個月，押金利率為 1%。
⑷地價稅的申報地價 10,648 元/平方公尺，基本稅率 2‰。
⑸房屋稅核定現值 3,000 元/平方公尺，房屋稅率為 3.6%。
⑹房屋管理維修費每個月 2,000 元。
⑺收益資本化率請以加權平均資金法 WACC計算，自有資金 30%，自
有資金利率 1%，貸款 70%、貸款利率 3%。
⑻不動產估價師在製作收益法估價報告書時，請說明不動產估價技術
規則對於製作估價報告書要求應載明的事項。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "5f13c9e0cbaa", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00018', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '勘估標的之有效總收入的估計應包含那些事項？另外估價人員在估計
總收入及有效總收入時，應與那些資料做核對比較？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00019', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '估價人員進行農作改良物估價時，應考慮那些因素？農作改良物之估價
方式有那些？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00020', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '估價人員對某一上市保險公司之投資性不動產進行估價，請問投資性不
動產的定義為何？在撰寫估價報告書時，其估價目的與價格種類應為
何？在保險公司之投資性不動產中，一棟的租約在 1 年以上，另一棟的
租約則在 1年以下，請問所採用估價的方法有何不同？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00021', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '在土地徵收補償市價查估時，估價人員以買賣實例估計土地正常單價，
若土地上有區分所有建物，買賣實例為其中部分層數或區分單位者，以
及地上有建物，且買賣實例為全部層數者，其土地正常買賣單價的估計
程序各為何？請分別詳述之。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "6873525b1b4c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
