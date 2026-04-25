-- moex_license_ingest questions batch 21/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00201', 'cpa', 'cpa-moex-112-78566e18', 'sub-cpa-01', NULL, 'essay', '試回答下列獨立問題：
X8 年底甲公司某一現金產生單位進行減損測試，該現金產生單位
共包含一筆土地（帳面金額$800,000）、一項設備（帳面金額
$900,000）、一幢建築物（帳面金額$1,000,000）、一批存貨（帳面金
額$50,000）與一筆應收款項（帳面金額$10,000）。除已知建築物之
公允價值為$1,000,000，使用價值為$985,000，出售成本為$30,000
外，無法評估其他資產之使用價值或公允價值。X8 年底該現金產
生單位之出售成本為$40,000，使用價值為$2,490,000，公允價值為
$2,450,000。但是，甲公司於 X9 年底發現 X8 年底存在之減損跡象
已不復存在，此時該現金產生單位之公允價值為$2,450,000，使用
價值為$2,390,000，出售成本為$55,000。另外，除土地、設備及建
築物外，X9 年底該現金產生單位尚包含存貨（帳面金額$45,000）
以及應收款項（帳面金額$40,000）兩筆資產。假設 X8 年底減損後，
甲公司沒有變動先前之會計政策，所有應提列折舊之資產耐用年限
維持為 10年、無殘值以及以直線法提列折舊。（金額計算至整數，
小數點以下第一位四捨五入）
⑴試計算各項資產分攤減損損失後之帳面金額，並作 X8 年底應有
之分錄。（5分）
⑵試計算各項資產迴轉後之帳面金額，並作 X9 年底迴轉減損損失
之分錄。（5分）
甲公司於 X0年底以$680,583購入面額$1,000,000，有效利率8%之
五年期零息債券，並將其分類為按攤銷後成本衡量之債務工具投
資。該投資非屬購入或創始之信用減損金融資產，其按有效利率8%
所計算之 X1 年底、X2 年底、X3 年底與 X4 年底總帳面金額分別
為$735,030、$793,832、$857,339與$925,926。甲公司於 X0 年底與
X1 年底均評估該投資之 12 個月預期違約率為 0.5%，存續期間預
期違約率為 2%，違約損失率為 40%。
X2 年底，甲公司評估該投資自原始認列後信用風險已顯著增加，
其 12 個月預期違約率為 0.75%，存續期間預期違約率為 5%，違約
損失率仍維持 40%。X3 年底該投資實際發生違約，甲公司評估關
於該投資未來於 X5 年底將僅能收回$600,000，且 X4 年底仍維持
此評估不變。甲公司於 X5 年底如先前評估僅收回$600,000。
試作：關於該投資（須列示計算過程，金額計算至整數，小數點以
下第一位四捨五入，無須作分錄）
⑴X1 年、X2 年與 X3 年應認列於損益之預期信用減損損失金額。
（6 分）
⑵X4 年年底應列報之攤銷後成本。（2分）
⑶X5 年應認列之利息收入金額。（2 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "d975de5e1706", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00202', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'essay', 'A股份有限公司（下稱「A公司」）為一非公開發行公司，目前公司淨值
為新臺幣（下同）5,000 萬元。B會計師事務所為一合夥事業（下稱「B
合夥」），B合夥長期為 A公司提供相關服務。B合夥因經營不善而面臨
財務問題，面臨約 1,000 萬元的資金缺口。A 公司考慮出手相救，考慮
的選項包括：注資 B合夥 1,000 萬元而成為 B合夥的合夥人、貸與
B 合夥 1,000 萬元資金並設定清償期為 10 年、提供 A 公司的土地作
為 B合夥向 C銀行借款 1,000萬元的抵押物。請引述相關法規，附理由
分析上述三個選項各自可能須適用的法律限制。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00203', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'essay', 'A 上市紡織公司（下稱「A 公司」）章定資本總額為新臺幣（下同）200
億元，實收資本180 億元，全部發行普通股。A公司近年因景氣不佳，
股價均在 7至 9元間波動，2020年起再受新冠肺炎疫情影響，無法出貨
又迭遭砍單，庫存、餘布堆積如山，下游舊衣回收場亦幾乎被舊衣淹沒。
今為開發新循環紡織技術，經董事會決議私募普通股 5千萬股。試問，
A公司辦理本次私募應否經股東會決議？應否向主管機關金融監督管理
委員會申報？該批私募股票，自交付日起滿 3年後，是否即得於集中交
易市場交易買賣？請附理由申論之。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00204', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'essay', '甲、乙、丙分別為 A股份有限公司之董事長及董事，丁為該公司主辦會
計，甲、乙、丙基於個人資金調度需要，以「預付款項」方式挪用公司
資金，年度結束前為規避監察人之查核，除歸墊挪用金額外，並命丁將
挪用時之虛偽原始憑證及帳簿上相關記載之頁數予以毀損。請依商業會
計法規定，就「毀損會計帳簿頁數」回答下列問題：
刑事責任之處罰依據及對象。（5 分）
行政責任之處罰依據及對象。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00205', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', 'A公司因下列何種原因解散時，應行清算？', '["與他公司合併", "分割", "破產", "法院命令解散"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00206', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '有關股份有限公司董事及董事會之敘述，下列何者錯誤？', '["公開發行股票公司之董事不得少於5人", "非公開發行之非閉鎖性的非1人公司之董事依章程規定，不得少於3人", "非公開發行之非閉鎖性的1人公司得依章程規定不設董事會，僅置董事1人", "閉鎖性公司得依章程規定不設董事會，僅置董事1人"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00207', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '下列有關股份有限公司發行新股之敘述，何者正確？', '["公司於以公積抵充，核發新股予原有股東時，除經目的事業中央主管機關專案核定者外，應保 留發行新股總數百分之十至十五之股份由公司員工承購", "得發行限制員工權利新股者，以公開發行股票之公司為限", "關於公開發行股票公司限制員工權利新股之發行數量、發行價格、發行條件及其他應遵行事項， 由公司法之主管機關經濟部定之", "公司章程得訂明發行限制員工權利新股之對象，包括符合一定條件之控制或從屬公司員工"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00208', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', 'A 股份有限公司（下稱「A 公司」）為一家從事營建的非公開發行公司，該公司近期擬召開董事 會，討論公司投資東南亞事宜。依公司法之規定，下列敘述何者錯誤？', '["A公司過半數之董事得以書面記明提議事項及理由，請求董事長召集董事會。其請求提出後15 日內，董事長不為召開時，過半數之董事得自行召集", "A公司董事會之召集，除章程有較高之規定者外，應於3日前通知各董事及監察人", "A公司章程得訂明經全體董事同意，董事就當次董事會議案以書面方式行使其表決權，而不實 際集會", "A公司董事居住國外者，得以書面委託居住國內之其他股東，並向主管機關登記後，經常代理 出席董事會"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00209', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', 'A股份有限公司（下稱「A公司」）有三名董事，其登記的董監事資料如下： 序號 職稱 姓名 所代表法人', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 5, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00210', 'cpa', 'cpa-moex-112-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '董事長 甲', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:01+00:00", "source_pdf_sha1": "7e6267f2c8a0", "answer_pdf_sha1": "18299ad61349", "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
