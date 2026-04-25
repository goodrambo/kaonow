-- W1.6 questions batch 1074/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-6f0ba476-moex-00098', 'customs-6f0ba476', 'customs-6f0ba476-moex-112-3082b5f1', 'sub-customs-6f0ba476-03', NULL, 'essay', '關於行政罰的裁處，主管機關原本應在法定之罰鍰下限額度內裁罰，不得
更輕，但依行政罰法之規定，在那些情形，得減輕或免除法定之處罰？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "274fbddd51e3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "101", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00099', 'customs-6f0ba476', 'customs-6f0ba476-moex-112-3082b5f1', 'sub-customs-6f0ba476-03', NULL, 'essay', '某甲因營業稅事件，不服財政部北區國稅局復查決定，於 104 年 2 月 25
日提起訴願。經該局認：復查決定書乃於同年 1 月 14 日寄存送達地之郵
局，即於同日送達某甲，訴願之 30 日不變期間，自送達次日之同年 1 月
15 日起算，應於同年 2 月13 日屆滿，某甲遲至同年月 25日始提起訴願，
已逾訴願期間，不予受理。某甲不服，續提行政訴訟請求救濟，分別遭臺
北高等行政法院以起訴不合法及最高行政法院以抗告無理由而裁定駁回，
某甲認確定終局裁定所適用之行政程序法第 74 條寄存送達之規定牴觸憲
法，依司法院大法官審理案件法第 5 條第 1 項第 2 款規定，聲請憲法審
查。試問：司法院大法官就本案有關行政程序法規定行政文書之送達及寄
存送達之規定有何闡釋？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "274fbddd51e3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "101", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00100', 'customs-6f0ba476', 'customs-6f0ba476-moex-112-f6c431ec', 'sub-customs-6f0ba476-04', NULL, 'essay', '社區中有三個人，分別是甲、乙、丙，採多數決（majorityvoting）決定社
區花園的大小。目前有三個方案，大小分別是10坪、20坪及30 坪。表決
方式為先取兩個方案表決，獲多數的方案再和第三個方案表決，以決定最
後實施的方案。若三人的偏好順序描述如下：甲：10 坪>20坪>30坪，乙：
20 坪>30 坪>10 坪，丙：30 坪>10 坪>20 坪，三人的偏好是單峰（single-
peaked）還是多峰（multipeaked）？此一政策決定會有投票矛盾（voting
paradox）的問題嗎？請說明之。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5c2ccb984b1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "101", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00101', 'customs-6f0ba476', 'customs-6f0ba476-moex-112-f6c431ec', 'sub-customs-6f0ba476-04', NULL, 'essay', '一個人的效用函數為U y = y，其中 y是所得，他的所得為$100，但有1/4
的機率生病，需付出$36的醫藥費。
( ) 
請問這個人的預期效用多少？（10分）
請問這個人保險的精算公平費率是多少？（10分）
若因為逆向選擇問題，此人無法購得私人保險。此時，若政府提供精算
公平費率的社會保險，且此人購買完全保險，他的預期效用會增加多
少？（開根號數字不用展開）（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5c2ccb984b1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "101", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00102', 'customs-6f0ba476', 'customs-6f0ba476-moex-112-f6c431ec', 'sub-customs-6f0ba476-04', NULL, 'essay', '若需求為 P=110-Q，邊際成本為 MC=1.2Q，請問均衡的價格與數量是多
少？政府若對此一商品課徵 20%的內含稅（tax-inclusivetax），請問課稅
後的消費量為多少？消費者與廠商的租稅歸宿各自多少？超額負擔多
少？政府的稅收多少？（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5c2ccb984b1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "101", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00103', 'customs-6f0ba476', 'customs-6f0ba476-moex-112-f6c431ec', 'sub-customs-6f0ba476-04', NULL, 'essay', '地方政府為何往往以土地房屋的財產稅做為地方主要自主財源？臺灣「地方
稅法通則」為何禁止地方政府對經營範圍跨越轄區之公用事業課稅？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5c2ccb984b1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "101", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "財政學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00104', 'customs-6f0ba476', 'customs-6f0ba476-moex-111-9b7ab1bb', 'sub-customs-6f0ba476-02', NULL, 'essay', '甲之受僱人乙於駕駛甲所有之車輛執行職務途中，因未注意路口交通號誌，
撞擊行經路口之丙。因而身體健康受損之丙於與甲、乙交涉如何賠償其所受
損害過程中，知悉乙負擔沈重家計，乃表示拋棄對乙請求賠償，並轉而僅向
甲請求賠償其所受全部損害，但甲則主張因丙已拋棄對乙之請求權，自己即
不須賠償丙所受任何損害。請附理由說明甲之主張是否有理？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5a68230e7f1a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "101", "s": "0401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00105', 'customs-6f0ba476', 'customs-6f0ba476-moex-111-9b7ab1bb', 'sub-customs-6f0ba476-02', NULL, 'essay', '甲、乙締結由乙為甲染整甲所有之一批布料、甲應支付乙報酬之契約，契
約中並包含乙應交付染整完成之布料予甲的確定期限、運送成品予甲之運
費由甲負擔、乙遲延交付時應支付甲違約金等事項。約定交付期限將屆至
時，乙聯絡甲無法如期交付成品，請求寬限交付期限，接獲乙之請求後，
甲告知因乙遲延交付而增加之運送費用，甲將不負擔。其後，乙交付成品
予甲、並經甲受領。試問：甲受領後得否向乙請求減少報酬、增加之運送
費用及違約金？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5a68230e7f1a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "101", "s": "0401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00106', 'customs-6f0ba476', 'customs-6f0ba476-moex-111-9b7ab1bb', 'sub-customs-6f0ba476-02', NULL, 'essay', '經營事業之甲婚後與配偶以外之第三人乙共同生活一段時間後，甲為發展
事業將事業及生活重心移轉至國外。甲移居國外前不久，乙產下一子丙，
而因乙收入有限，僅能以維持溫飽的程度獨力扶養丙。丙成長至 15 歲時
經甲認領，並開始接受甲之扶養。雖甲在國外之事業發展有成累積不少資
產，但卻僅願以其在國內所剩有限之資產扶養丙。試問：丙得否請求享有
與甲其他子女相同待遇之生活費用，並以相同標準請求甲給付出生後至認
領前之扶養費？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5a68230e7f1a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "101", "s": "0401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL),
  ('customs-6f0ba476-moex-00107', 'customs-6f0ba476', 'customs-6f0ba476-moex-111-9b7ab1bb', 'sub-customs-6f0ba476-02', NULL, 'essay', '甲、乙間約定以未定期限方式將甲所有之 A 地出租予乙，雙方並約定租金
應按A地申報地價之固定比率計算。事經數十年後，因A地周邊環境、工
商繁榮程度已有極大發展，甲可否向法院聲請調高租金？法律依據何在？
甲之請求是否有理？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:16+00:00", "source_pdf_sha1": "5a68230e7f1a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111050", "c": "101", "s": "0401", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法", "year": "111", "exam_name": "111年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "財稅行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
