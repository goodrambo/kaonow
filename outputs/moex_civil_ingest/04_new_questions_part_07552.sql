-- W1.6 questions batch 7552/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('police-f3743df6-moex-00060', 'police-f3743df6', 'police-f3743df6-moex-114-15a7b19c', 'sub-police-f3743df6-01', NULL, 'single_choice', 'Whatdoesthearticlesuggestabouttheroleoflawenforcementandgovernments?', '["TheyarepromotingtheuseofmoreAIchatbots", "TheyareresponsibleforreplacinghumanrelationshipswithAI", "TheyshouldhelpcreaterulesandmonitorAIusetoprotectusers", "TheyaredevelopingnewAIchatbotsforchildren"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "cb62bb60fb06", "answer_pdf_sha1": "3fccc3dc4215", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "0206", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中華民國憲法與警察專業英文", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 60, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00061', 'police-f3743df6', 'police-f3743df6-moex-114-ded0dfad', 'sub-police-f3743df6-02', NULL, 'essay', '檢察官基於「無罪推定原則」的遵守，如何依照刑事訴訟法所規範之程
序要件，實施「偵查不公開原則」與「起訴法定原則」，請分別說明之。
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "e8af6b32c7dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "偵查法學與刑事司法作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00062', 'police-f3743df6', 'police-f3743df6-moex-114-ded0dfad', 'sub-police-f3743df6-02', NULL, 'essay', '甲涉嫌販賣大麻，承辦檢察官從警方對於本案監聽到的通訊監察譯文
中，查到毒販甲與乙部分的談話內容，因而取得乙涉及與本案有關運送
毒品的證據。檢察官在偵訊過程中，乙坦承自己多次駕駛漁船一艘，自
臺灣地區往返大陸地區某外海，與大陸漁船來回接駁運輸大麻皆已經交
給甲。經警方查扣大麻毒品共計519 包，重達 260 餘公斤，數量龐大，
並有扣案之漁船。案經檢察官偵查終結，以甲涉嫌販賣大麻（第二級）
毒品罪，乙涉嫌運輸大麻（第二級）毒品罪，一併起訴。以下問題，請
依照相關條文並附理由說明之：
本案檢察官以通訊監察譯文做為起訴證據，有無證據能力？（20 分）
該扣案之漁船，應否予以沒收？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "e8af6b32c7dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "偵查法學與刑事司法作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00063', 'police-f3743df6', 'police-f3743df6-moex-114-ded0dfad', 'sub-police-f3743df6-02', NULL, 'essay', '檢察官甲為調查某誣告案件，傳訊某乙，並要求乙留存指紋以供鑑定之
需。該檢察官於傳訊乙的半年後將該誣告案件偵查終結，提起公訴。旋
即，乙於是向起訴之管轄法院聲請發還留存之指紋卡片三張，並聲稱：
本案無提供個人指紋之義務，並非其真正同意提出，當時留存係因尊重
檢察官偵查權責。上開指紋卡片既未經起訴書列為證據提出，又非屬法
院審理之案內證據，自無調查之必要。故為避免個人指紋供作其他用途，
衍生其他相關資料之疑慮，應予以發還。若不予發還或銷毀，恐有違反
偵查比例原則與偵查不公開原則。然而檢察官認為：要求乙留存指紋列
檔，係從事本案犯罪偵查進行鑑定之用，且該指紋卡片上載有「地檢署
法警室法警捺印，檢察官甲之交辦」等文字，係屬檢察官職務上製作之
公文書之一部分，該指紋卡片與該公文書具有不可分割性，且偵查後該
檔案已封存於偵查卷宗之中，不生留存物發還之問題。況且本案偵查中
乙同意留存在先，檢察官基於權責範圍留存乙的指紋以供鑑定之用，並
無違反偵查比例原則與偵查不公開原則，應屬合法取證。以下問題，請
依照相關條文並附理由說明之：
本案檢察官有無違反偵查比例原則與偵查不公開原則？（15 分）
法院對於乙之指紋卡片三張聲請發還乙節，可否依據刑事訴訟法第
143 條規定留存物準用扣押之規定，為准駁之裁定？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "e8af6b32c7dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "偵查法學與刑事司法作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00064', 'police-f3743df6', 'police-f3743df6-moex-114-ded0dfad', 'sub-police-f3743df6-02', NULL, 'essay', '甲為 A童（年齡為 2 歲半）的生母與乙同居在某一處所。不料，乙非常
討厭 A，經常毆打（傷害）、虐待A，時間長達二個月，在此時間，乙因
A睡在他的床鋪位置，一再尿床，乙異常大怒，竟徒手毆打 A腹部及臀
部，再將 A抱入浴室，以毛巾塞住 A嘴巴，用鞋帶綁住 A，並在浴室使
用淋浴之水龍頭沖水，接續徒手毆打，並對 A稱：你那麼想死，就送你
見閻王，直至 A氣息微弱始罷手。甲雖然無任何積極之侵害行為，卻也
僅是口頭制止乙毆打 A，並無任何採取阻止或保護之措施，A終於遭乙
虐打死亡，甲明明看見乙把 A的屍體置入袋內，於深夜攜出丟棄在河邊，
竟默默的無言以對。案經檢察官偵辦本案，送請法醫師鑑定死亡原因確
認係：A頭部持續遭到某硬物大力揮打造成腦水腫，最終導致神經性休
克死亡。試問：甲與乙構成之刑事責任為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "e8af6b32c7dc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "1209", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "偵查法學與刑事司法作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00065', 'police-f3743df6', 'police-f3743df6-moex-114-10caca02', 'sub-police-f3743df6-03', NULL, 'essay', '駕駛人違反道路交通管理處罰條例第 43條第 1項各款之規定，同條第 4
項規定，「汽車駕駛人有第 1 項或前項行為者，並吊扣該汽車牌照 6 個
月」。若汽車駕駛人與汽車所有人非同屬 1 人，請問：可否依同條第 4 項
規定，對於汽車所有人處以吊扣汽車牌照 6個月之處罰？（25 分）
＊參閱道路交通管理處罰條例第43條（民國113年5月29日修正）：「（第一項）
汽車駕駛人駕駛汽車有下列情形之一者，處新臺幣六千元以上三萬六千元以下罰
鍰，並當場禁止其駕駛：一、在道路上蛇行，或以其他危險方式駕車。二、行車速
度，超過規定之最高時速四十公里。三、任意以迫近、驟然變換車道或其他不當方
式，迫使他車讓道。四、非遇突發狀況，在行駛途中任意驟然減速、煞車或於車道
中暫停。五、拆除消音器，或以其他方式造成噪音。六、在高速公路或快速公路迴
車、倒車、逆向行駛。（第二項）……………。（第三項）二輛以上之汽車共同違反
第一項規定，或在道路上競駛、競技者，處汽車駕駛人新臺幣三萬元以上九萬元以
下罰鍰，並當場禁止其駕駛及吊銷其駕駛執照。（第四項）汽車駕駛人有第一項或
前項行為者，並吊扣該汽車牌照六個月；經受吊扣牌照之汽車再次提供為違反第一
項第一款、第三款、第四款或前項行為者，沒入該汽車。」', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "888dec08f6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "0407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法與警察行政違規調查裁處作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00066', 'police-f3743df6', 'police-f3743df6-moex-114-10caca02', 'sub-police-f3743df6-03', NULL, 'essay', '警察人員於執行公務緝捕嫌疑犯時，違反警械使用條例規定使用警械，
致侵害人民自由或權利。請問：有無國家賠償法之適用？試申論其理由。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "888dec08f6fb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "0407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法與警察行政違規調查裁處作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00067', 'police-f3743df6', 'police-f3743df6-moex-114-10caca02', 'sub-police-f3743df6-03', NULL, 'single_choice', '稅務機關乙以大數據比對，認為甲公司短漏開發票，作成補稅處分並處罰鍰。乙僅以「資料保密」 為由，拒絕提供比對算法及原始資料，無說明理由。下列敘述何者正確？', '["乙得以資料保密為由拒絕說明理由", "依行政程序法該處分須記明理由，不得僅列規制內容", "乙僅得於甲提起訴願前補正理由", "該處分乙有判斷餘地，毋庸揭露演算法"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "888dec08f6fb", "answer_pdf_sha1": "42e70242ba91", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "0407", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法與警察行政違規調查裁處作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00068', 'police-f3743df6', 'police-f3743df6-moex-114-10caca02', 'sub-police-f3743df6-03', NULL, 'single_choice', '授予利益之行政處分，其內容係提供一次之金錢給付，經撤銷而有溯及既往失效之情形時，下列 敘述何者正確？', '["行政機關請求受益人返還範圍適用民法有關不當得利之規定", "行政機關不得以書面行政處分確認返還範圍，並限期命受益人返還", "書面行政處分命受益人限期返還，未提起行政爭訟救濟，逾越期間不履行，移送行政執行", "命受益人返還之書面行政處分不因提起行政爭訟救濟而停止執行"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "888dec08f6fb", "answer_pdf_sha1": "42e70242ba91", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "0407", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法與警察行政違規調查裁處作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL),
  ('police-f3743df6-moex-00069', 'police-f3743df6', 'police-f3743df6-moex-114-10caca02', 'sub-police-f3743df6-03', NULL, 'single_choice', '關於行政規則之敘述，下列何者正確？', '["不會間接對外發生法律效果", "均應刊載於政府公報", "僅須依據職權即可為之", "必須以機關名義作成"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:28:17+00:00", "source_pdf_sha1": "888dec08f6fb", "answer_pdf_sha1": "42e70242ba91", "source_family": "moex-gov-tw", "moex": {"exam_code": "114060", "c": "512", "s": "0407", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法與警察行政違規調查裁處作業", "year": "114", "exam_name": "114年公務人員特種考試警察人員考試、一般警察人員考試、國家安全情報人員考試、移民行政人員考試、退除役軍人轉任公務人員考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "police", "civil_category": "警察法制人員"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
