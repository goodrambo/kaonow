INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('real-estate-appraiser-moex-00239', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '假設某君購屋的成交價為$5,000,000，某君僅支付頭期款$500,000，其餘向
甲銀行貸款$4,500,000，而這$4,500,000 中區分為二種貸款：$3,600,000 為
主貸款，貸款期限20年，年利率為2.5%；剩下的$900,000為次貸款（非次
級房貸），貸款期限20年，年利率6.5%。假設在固定本息攤還下，請回答
下列問題（請計算到小數點下兩位，四捨五入）：
月應付款各為何？（5分）
倘若某君持有貸款直至到期日皆能如期付款，那麼總貸款金額隱含的貸
款利率為多少？（8分）
倘若 10 年後，某君得到一筆獎金，進而將利率高的次貸款餘額全部提
前清償，但主貸款仍如期付款至到期日，那麼總貸款金額隱含的貸款利
率為何？（12分）
複利因子：
年利率2.5%月利率0.2083%
FVIF  FVIFA PVIF PVIFA
月
終值利率因子 年金終值利率因子 現值利率因子 年金現值利率因子
120  1.2837  136.1719  0.7790  106.0784
240  1.6479  310.9747  0.6068  188.7138
年利率6.5%月利率0.5417%
FVIF  FVIFA  PVIF PVIFA
月
終值利率因子 年金終值利率因子 現值利率因子 年金現值利率因子
120  1.9122  168.4032  0.5230  88.0685
240  3.6564  490.4209  0.2735  134.1250
年利率3.2%月利率0.2667%
FVIF  FVIFA  PVIF PVIFA
月
終值利率因子 年金終值利率因子 現值利率因子 年金現值利率因子
120  1.3765  141.2030  0.7265  102.5781
240  1.8949  335.5748  0.5277  177.0968
年利率3.4%月利率0.2833%
FVIF  FVIFA  PVIF PVIFA
月
終值利率因子 年金終值利率因子 現值利率因子 年金現值利率因子
120  1.4043  142.6843  0.7121  101.6073
240  1.9720  343.0520  0.5071  173.9632
年利率3.6%月利率0.3%
FVIF  FVIFA  PVIF PVIFA
月
終值利率因子 年金終值利率因子 現值利率因子 年金現值利率因子
120  1.4326  144.1857  0.6981  100.6492
240  2.0522  350.7400  0.4873  170.9076', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7b5bff66aad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00240', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '某壽險業者擬投資購買商辦大樓，今有兩個投資標的，其相關資料如下
（償還規劃為每年償還一次，故可應用年貸款常數），假設只考慮投入年
期第一年之現金流量，請問：
兩投資標的之綜合資本報酬（還原）率、稅前自有資金報酬率分別為多
少？（16分）
該壽險業者應投資那一標的？另該案是否滿足金融監督管理委員會對
最低租金收益率（2.875%）之要求？（5分）
又在此租金收益率下，此二大樓之合理價格分別為何？（4分）
相關資料內容  忠孝大樓  信義大樓
可出租戶數（戶）      100      80
投資成本（元）  $100,000,000  $85,000,000
毛租金（元）     $144,000      $162,000
抵押貸款金額（元）  $60,000,000  $55,000,000
貸款利率      6%      6%
貸款年數（年）      30      30
貸款常數      0.07265      0.07265
空置率      5%      7%
地價稅及房屋稅額（元）      1,730,000      1,300,000
營運費用率      30%      30%', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7b5bff66aad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00241', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '目前房地產價格高漲，若政府欲以擴大都市計畫或變更其他土地為住宅區方式以期
降低其價格，此方式是否可達到預期之成效？請繪圖分析之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "cb153058dc79", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00242', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '政府現正執行「實價登錄」，而土地徵收條例規定以市價徵收補償，請問實價登錄
之價格與市價是否相同？請詳細說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "cb153058dc79", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00243', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '目前各地方政府均大力推行大眾運輸系統（捷運、BRT…），請問此建設對商業區
及其用地需求有何影響？請繪圖詳細說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "cb153058dc79", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00244', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '請應用競價地租（Bid  Rent）理論，繪圖說明在所得水準相同下，家庭成員多寡對
住宅區位之選擇有何差異。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "cb153058dc79", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00245', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '請分別回答下列二問題：
土地徵收條例第 21 條規定：「被徵收土地或土地改良物之所有權人，對於其土
地或土地改良物之權利義務，於應受之補償費發給完竣時終止。」試問：本條所
稱「應受之補償費發給完竣時」，係指何時點？請依土地徵收條例之規定，彙整
說明之。（15分）
土地徵收條例第 34 條之 1 規定：「徵收公告一年前有居住事實之低收入戶或中
低收入戶人口，因其所有建築改良物被徵收，致無屋可居住者，或情境相同經直
轄市或縣（市）政府社會工作人員查訪屬實者，需用土地人應訂定安置計畫，並
於徵收計畫書內敘明安置計畫情形。前項安置，包括安置住宅、購置住宅貸款利
息補貼、租金補貼等。」試問：本條所稱「安置」因包括「購置住宅貸款利息補
貼、租金補貼等」，則其性質是否屬被徵收人「應受之補償費」？請就己見申述
之。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7aef37d1af99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00246', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '以權利變換方式實施都市更新事業時，依都市更新條例規定，「合法建築物所有
權」、「地上權」、「典權」及「基地租賃權」等權利係如何處理？就各權利之內
涵而言，都市更新條例之規定是否有問題？試析論之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7aef37d1af99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00247', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '區域計畫法第 6 條規定：「區域計畫之擬定機關如左︰一、跨越兩個省（市）行政
區以上之區域計畫，由中央主管機關擬定。……。」試問：中央主管機關擬定之區
域計畫經核定公告後，其計畫之效力為何？試依區域計畫法及其施行細則之規定，
說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7aef37d1af99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00248', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '非都市土地使用管制規則第 27 條規定：「土地使用分區內各種使用地，除依第三
章規定辦理使用分區及使用地變更者外，應在原使用分區範圍內申請變更編定。前
項使用分區內各種使用地之變更編定原則，除本規則另有規定外，應依使用分區內
各種使用地變更編定原則表如附表三辦理。……。」試問：準此規定，非都市土地
得不受「使用分區內各種使用地變更編定原則表」之限制，例外變更為丁種建築用
地之情形為何？請依非都市土地使用管制規則之規定，說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7aef37d1af99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00249', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-9cd45b90', 'sub-real-estate-appraiser-06', NULL, 'essay', '甲公司（下稱甲）就其產品與乙商行（下稱乙）訂立經銷契約，為擔保嗣後各筆貨
款之清償，由乙提供土地一筆為甲設定抵押權作擔保，其最高限額為新臺幣 500 萬
元。10 年後，甲請求確定原債權，請問原債權於何時確定？最高限額抵押權所擔保
之原債權確定後，發生那些法律效果？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "b10d9bce8c55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法物權與不動產法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00250', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-9cd45b90', 'sub-real-estate-appraiser-06', NULL, 'essay', '請就「處分」之含意，說明土地法第 34 條之 1 第 1 項所謂「共有土地或建築改良
物，其處分」與民法第 819 條第 2 項所謂「共有物之處分」，二法條中之「處分」
有何不同？設甲、乙、丙三人共有 A 地，甲、乙未經丙同意，將 A 地出售於丁，
現行土地法規對丙有何保護措施規定？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "b10d9bce8c55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法物權與不動產法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00251', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-9cd45b90', 'sub-real-estate-appraiser-06', NULL, 'essay', '甲將基地一筆出租於乙，供乙在其上建築別墅。嗣後，乙依土地法第 102 條規定請
求甲會同申請地上權登記，甲在何種情形下得予拒絕？另請比較土地租賃權與地上
權之異同。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "b10d9bce8c55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法物權與不動產法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00252', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-9cd45b90', 'sub-real-estate-appraiser-06', NULL, 'essay', '何謂地價區段？何謂區段地價？依地價調查估計規則之規定，估計區段地價之方法
如何？請分別說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "b10d9bce8c55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法物權與不動產法規", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00253', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '委託人：○○公司。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "6c1c050e0da9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00254', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '勘估標的土地坐落於❒❒市第一段第一小段，地號 0001，土地使用分區為第
三種住宅區，建蔽率60%容積率300%，面積780平方公尺。勘估標的面臨第
五號道路，道路寬度為18公尺，基地地勢平坦，附近生活機能尚可。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "6c1c050e0da9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00255', 'real-estate-appraiser', 'real-estate-appraiser-moex-102-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '價格日期：民國102年8月24日。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:32+00:00", "source_pdf_sha1": "6c1c050e0da9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "102130", "c": "905", "s": "0704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "102", "exam_name": "102年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL);
