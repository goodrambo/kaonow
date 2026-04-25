INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('real-estate-appraiser-moex-00256', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '勘察日期：民國102年8月24日。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "6c1c050e0da9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00257', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '價格種類：正常價格。
六、估價目的：土地購買價格參考依據。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "6c1c050e0da9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00258', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '土地所有權人：雲端公司。
參、勘估標的相關市場資料：
比較法相關資料
㉑根據市場調查所得資料，甲不動產估價師蒐集近鄰地區相關案例並予以分析後
獲致下列比較法試算表格，其中各個案例之比較調整，優良代表99%（-1%）、
劣代表101%（+1%）、較劣代表102%（+2%），普通代表比較標的與勘估標
的條件相同100%無須加減（0%）。
比較主要項目  勘估標的  比較標的1  比較標的2  比較標的3
土地坐落    第五號道路  第五號道路  第五號道路
標的交易總價（元）    3億  3.04億  1.8億
交易日期    102年2月  102年7月  102年5月
土地面積（平方公尺）  780  630  660  410
使用分區  第三種住宅區 第三種住宅區 第三種住宅區  第三種住宅區
形狀  方整  長方形  狹長形  長方形
臨路情況  18M  18M  18M  10M
交易情況  一般正常情況 一般正常情況 一般正常情況  一般正常情況
區域因素  普通  劣  較劣  較劣
個別因素  普通  較劣  較劣  較劣
㉒民國102年土地交易價格指數
月  1  2  3  4  5  6  7  8
價格
105%  101%  100%  103%  100%  101%  102%  100%
指數
收益法相關資料
㉑根據甲不動產估價師調查當地的土地收益實例，獲致下表的三個近似收益實例
資料。其中各個案例之比較調整，優良代表99%（-1%），劣代表101%（+1%），
普通代表比較標的與勘估標的一樣100%無須加減（0%）。
收益實例  勘估標的  收益實例一  收益實例二  收益實例三
標的位置  第五號道路  第五號道路  第五號道路  第五號道路
收益標的面積（m2）  780  680  700  600
標的月租金（元/m2）    1,650  1,700  1,750
收益情況  正常  正常  正常  正常
價格日期  102年8月  102年3月  102年7月  102年7月
區域因素  普通  普通  普通  普通
個別因素  普通  普通  普通  優良
㉒民國102年租金價格指數
月  1  2  3  4  5  6  7  8
價格
105%  101%  102% 101% 100% 101% 100%  100%
指數
㉓本案如果採用收益法估算，甲不動產估價師調查當地的收益條件如下：
⑴一年期定存利率2.2%，土地收益資本化率為4%。
⑵押金為月租金三個月。
⑶估計每年閒置期一個月。
⑷土地租賃期間的其他費用如下：
①維修費：年租金的5%。
②管理費及保險費：每平方公尺每月9元計算。
③地價稅：每平方公尺每月20元計算。
成本法相關資料
㉑根據當地不動產市場調查得知，本案如果採取大樓興建，每平方公尺大約售價可
以在 46,000 元，另外，根據建築法規推估，本案可以興建之營建面積為基準容
積面積，至於本案可以銷售之面積則為基準容積面積的1.15倍。
㉒本案興建RC結構的建築物，其營造施工費為每平方公尺14,000元，規劃設計費
為營造施工費的2%，廣告銷售費為4%，管理費為3%，稅捐及其他負擔為2%，
預計施工年期為一年。
㉓根據甲不動產估價師調查得知當地的開發利潤率為15%，而且本案資金來源採取
自有資金 50%、借貸資金 50%，建物與土地的價值比例是 27%與 73%，金融機
構可以給予的利率條件是：自有資金利率2.2%、借貸資金利率4.5%。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "6c1c050e0da9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "七", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00259', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '請依不動產估價技術規則第 43 條規定，說明收益資本化率或折現率求取方法。若
某一不動產估價報告書同時運用直接資本化法與折現現金流量分析，請問依前述規
定評估之收益資本化率與折現率之數值是否相同？試評述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "f387cce17ed4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00260', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '於運用比較法進行區域因素及個別因素修正時，有關比較調整價格之定性分析與定量
分析之內容與價格調整方法為何？請詳予論述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "f387cce17ed4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00261', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '採用耐用年數估計建物折舊之主要方法有那幾種？請列舉三種，並比較其優缺點。
若以已經歷年數計算折舊，可能產生之問題為何？試評述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "f387cce17ed4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00262', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '設有一棟五層樓房屋，其中第三層樓在最近發生買賣，請問如何估計該棟樓房之基
地價格？又，如發生買賣的樓層不是第三層樓，而是地面層，則基地價格是否不同？
其理由為何？請評述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "f387cce17ed4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00263', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '若甲想在 A 大學附近投資興建套房，經其初步估計，總開發成本（含土地）約為
2,000 萬元，其中 1,000 萬元為營建成本，可於 25 年內定額折舊完畢，若甲打算出
資 500 萬元，其他 1,500 萬元則向銀行貸款，貸款利率為每年 9%，10 年內按月平
均攤還本息，規劃中之套房數共 60 間，每間之年租金為 5 萬元，但預估平均閒置
率為 5%，且每年之經營管理費用約為 10 萬元，則在營利事業所得稅率為 17%下，
試求：營運費用比率；（3分）現金兩平比率；（4分）債務保障比率；（3分）
淨收益乘數；（5 分）資本還原率；（5 分）及稅前股東權益報酬率之比率。
（5分）
利率因子參考表：
MC(0.75%,120)=0.01267  MC(0.75%,180)=0.01014  MC(1%,120)=0.01435  MC(1%,180)=0.012', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "308414c45fd8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00264', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '試就下列各子題予以申論：若公司需用不動產而優先採行租賃但非購買時，其可能
理由為何？（9 分）投資者或開發商要如何選擇收益型不動產的開發區位，以便
吸引潛在的承租戶？（8分）收益型不動產的租金調整方式有那幾種？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "308414c45fd8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00265', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '住宅抵押貸款有許多種風險，而這些風險當中，最主要的是借款者提前清償及違約
風險對整個貸款影響最大。一般而言，借款者在繳款期限到達時，有那四種付款行
為可以選擇？並請說明為何借款者提前清償如同執行美式選擇權的買權？以及借款
者違約如同執行歐式選擇權的賣權？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "308414c45fd8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00266', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '不動產投資的主要風險為何？若有不動產證券化基金 C 與 T，在景氣繁榮、景氣持平
及景氣衰退三種情況下，會產生下列報酬：
情況  發生機率  基金 C報酬率  基金 T報酬率
景氣繁榮  0.3  0.15  0.25
景氣持平  0.5  0.10  0.20
景氣衰退  0.2  0.02  0.01
請計算該基金 C 及 T 之期望報酬率、標準差及變異係數，並分析投資基金 C 或 T
何者風險較大？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "308414c45fd8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00267', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '今設在固定面積土地上投施資本興建辦公大樓，資本與產品市場屬完全競爭市場，
且沒有建築密度的限制，則基地開發的最適集約度、地價該如何決定？倘若政府實
施土地使用分區管制，而對建築密度限於較低的水準，則對該個別基地價值、該分
區地價的影響為何？試分別繪圖說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "8be091de5b1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0705", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00268', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '近年來，歐盟及經濟合作發展組織提出農業多功能性（multifunctionality  of
agriculture）的概念，以彰顯農業聯合生產（joint  production）的特性。試問，何謂
農業的聯合生產？有機農業和慣行農業的聯合生產的產出組合有何不同？如為追求經
濟效率，則社會福利最大的最適生產組合應如何決定？請分別繪圖解析之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "8be091de5b1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0705", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00269', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '近年來，工廠設置常引發不少排放廢污物的爭議。倘若僅靠市場機制運作，這種生
產活動的最適產出水準為何？然此在未管制之下恐將導致嚴重的負外部性，故政府
或可採取課徵污染稅的方式，以減緩此種負效應。試問，究應課徵多少額度的污染
稅，方可使該產業的產量限制於社會最有效率產出水準？又可能減少的社會福利損
失為何？請繪圖析論之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "8be091de5b1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0705", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00270', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '建物於興建一段時間後常會老舊衰頹而遭拆除重建，然此將對歷史建築的保存相當
不利。試問，一般土地再開發（redevelopment）的時機究竟如何決定？又如該建物
具有歷史文物價值之潛力，則此等建物坐落基地的再開發時機將起何種變化？請繪
圖闡述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "8be091de5b1c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0705", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00271', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '區段徵收經規劃整理後，被徵收土地所有權人領回抵價地之分配街廓選擇及抵價地
合併分配，區段徵收實施辦法有何規定？試說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "48bca4426504", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  (id);
