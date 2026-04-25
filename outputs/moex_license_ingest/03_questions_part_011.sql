-- moex_license_ingest questions batch 11/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00101', 'cpa', 'cpa-moex-113-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司於 X6 年初給與 100 位員工每人 1,000 單位認股權，認購價格
為$50，條件為員工必須服務至 X7 年底。此外，公司股價於 X7年底
超過$100時，員工仍在職，認股權為既得，員工可立即執行，執行期
間可至 X9 年底。甲公司於給與日估計每單位認股權之公允價值為
$30，並於給與日根據選擇權評價模式決定股價最有可能於 X7 年底
超過$100。X6 年底估計員工離職率為 10%，X6 年及 X7 年分別有 5
人及 7 人離職。甲公司股價於 X8 年 10 月初超過$100，當時尚有 85
位員工在職，X8 年有 60 位員工於公司股價為$120 時行使認股權。
X6 年、X7年及 X8 年年底甲公司普通股股價分別為$80、$95及$110。
依稅法規定股份基礎給付之員工薪資費用須於員工實際行使認股權
時才能申報減除，可減除金額為行使認股權時的內含價值。X6 年至
X8 年甲公司各年稅前淨利均為$5,000,000，稅前淨利與課稅所得間差
異，均為該股份基礎給付計畫所造成，所得稅率為 20%，所有可減除
暫時性差異在未來很有可能有課稅所得可供此差異使用。
試作：
計算甲公司 X6 年至 X8 年各年度課稅所得。（10 分）
作 X7 年及 X8 年之所得稅分錄。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "d04f51738b5c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00102', 'cpa', 'cpa-moex-113-78566e18', 'sub-cpa-01', NULL, 'essay', 'X9 年 1 月 1 日甲公司將一批於 X9 年 3 月 31 日到期之帳面金額
$6,030,000 之應收帳款，售予乙公司，取得現金$5,990,000，甲公司並
承擔最高帳款總額 10%之違約損失賠償，此項違約損失賠償保證之
公允價值為$60,000。此外，出售合約規定乙公司不得再將該應收帳
款出售予他人。X9 年 3 月 31 日該批應收款項發生呆帳$80,000，甲
公司支付現金$80,000 予乙公司，其餘帳款全數收回。甲公司並未移
轉或保留該應收帳款之幾乎所有風險及報酬，且乙公司無法自由出售
該應收帳款使甲公司能保留控制。
試作：X9 年度甲公司與上述應收帳款相關之所有分錄。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "d04f51738b5c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00103', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'essay', 'A股份有限公司（下稱 A公司）的實收資本額為新臺幣（下同）5,000 萬
元，每股面額 10元。A公司的董事登記資料如下：
序號 職稱 姓名 所代表法人 持有股份數（股）
001 董事長 甲 B股份有限公司 3,000,000
002 董事 乙 B股份有限公司 3,000,000
003 董事 丙 B股份有限公司 3,000,000
但甲因年事已高有意退休，B股份有限公司（下稱 B公司）因此將其代
表由甲改派為自然人丁。B公司另指定由丁繼任A公司董事長，A公司
亦辦妥公司變更登記將其董事長改登記為丁。丁就任後，代表 A公司與
C股份有限公司（下稱 C 公司）簽訂 1,800 萬元的採購契約，向C公司
購買相關電子設備。經查 C公司對 A公司上述董事長變更的過程並不知
情。請引述相關法規，附理由分析以下問題：
丁是否合法就任 A公司的董事長？（10分）
A公司是否可拒絕向 C公司給付採購價款 1,800 萬元。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00104', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'essay', 'A公司股票在臺灣證券交易所上市交易，該公司去年度稅後盈餘達新臺
幣（下同）8 億元，本年盈餘分派除現金分配股利之外，並於股東會決
議以部分盈餘轉增資無償配發新股之方式，分配股票股利予股東，試問
A公司本次盈餘轉增資發行新股應否向主管機關金融監督管理委員會申
報？（5 分）之後，A 公司擬再發行新股現金增資 3 億元，除保留 12%
由員工優先認購外，並提撥20%對外公開發行，再由原股東按原有持股
比例分認之，試問 A公司本次現金增資案是否合法？（10分）應否向金
融監督管理委員會申報？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00105', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'essay', '會計期間終了後，商業出資人對商業之決算報表是否公允表達經營績效
及其財務狀況，非常關心。試就商業會計法規定回答下列問題：
商業之決算報表至遲應於會計年度終了多少期間內，由誰提請承認？
如果不編決算報表，商業會計法有何罰則？決算報表若獲得承認，是
否即解除法律上之責任？（6分）
決算報表依規定應由何人簽名或蓋章負責？違反該規定，商業會計法
有何罰則？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00106', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '下列何種股東會決議事項，得適用公司法第175條假決議規定？', '["董事報酬之決定", "監察人之選任", "將應分派股息及紅利之全部或一部，以發行新股方式為之", "簽訂與他人經常共同經營之契約"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": "369b73c92d99", "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00107', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '對於有重建更生可能並符合法定要件之公司，欲進行重整時，下列何人有聲請重整之權？', '["繼續1年以上持有已發行股份總數百分之十以上股份之股東", "相當於公司負債總額百分之十以上之公司債權人", "同業公會", "公司三分之二以上之受僱員工"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": "369b73c92d99", "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00108', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'single_choice', 'A股份有限公司（下稱A公司）為從事營造之非公開發行股票公司，目前A公司共發行100萬 股，每股票面金額10元。依公司法之規定，下列敘述，何者錯誤？', '["A公司得經股東會特別決議，將已發行之票面金額股全數轉換為無票面金額股", "A公司得依章程之記載，發行對於特定事項具否決權特別股", "A公司若依章程之記載，發行複數表決權特別股，則持有複數表決權特別股之股東，於監察人 選舉，與普通股股東之表決權同", "A公司不得發行當選一定名額董事權利之特別股"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": "369b73c92d99", "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00109', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '甲投資A有限公司並擔任董事，甲因與其他股東意見不合，擬將出資轉讓，應採取下列何項方式？', '["依有限公司股東出資轉讓自由原則，甲得自行尋找受讓人轉讓", "其他股東表決權過半數之同意，始得轉讓他人", "其他股東表決權三分之二以上之同意，始得轉讓他人", "甲之出資不得自由轉讓，僅得轉讓予其他股東"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": "369b73c92d99", "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00110', 'cpa', 'cpa-moex-113-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '針對我國公司法中關於企業社會責任，下列敘述，何者錯誤？', '["公司係以營利為目的之社團法人", "公司經營業務，得採行增進公共利益之行為", "公司得對他人為贈與行為", "兼具營利與公益目的之企業目前尚不可採取公司的組織型態經營之"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:28:59+00:00", "source_pdf_sha1": "de36fb7a9031", "answer_pdf_sha1": "369b73c92d99", "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
