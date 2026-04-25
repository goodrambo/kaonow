-- W1.6 questions batch 5359/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-d0d1b9a2-moex-00105', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'essay', '甲公司於 X1 年1 月 1 日獲銀行核撥 2年期之借款 5 千萬元，用以支
應建造化學原料儲存設備之資金需求，該專案借款利率為10%，每年
年底付息一次。甲公司於 X1 年1 月 1 日開始建造該設備，並於1 月
1 日、7 月 1 日及 10 月 1 日，各分別支付$30,000,000 工程款。甲公
司曾利用該項專案借款尚未動用前進行投資，X1 年度獲得$200,000
之投資收益。該儲存設備於 X2 年 3 月 1 日支付最後一筆工程款
$12,000,000後，於 4 月 1 日正式完工啟用。
甲公司除專案借款外，於 X1 及 X2 年度有以下 2 筆付息債務（均於
X1 年初前即已存在）：
⑴A長期借款$10,000,000，年利率 7%。
⑵B長期借款$20,000,000，年利率10%。
試作：
請問甲公司 X1 年度及 X2 年度應行資本化之利息支出分別為若
干？（8分）
假設甲公司並無任何負債，前述儲存設備建造支出均以自有資金支
應。甲公司於 X2 年 4 月 1 日估計該設備耐用年限 5 年，無殘值，
然依環保法規，於報廢時尚須支付$5,000,000進行復原。公司採年
數合計法提列折舊，折現率為10%。請作 X2 年12 月 31 日該設備
應有之折舊與除役負債分錄。（p =0.6209）（8分）
5,10%
承第小題，若因 X3 年 12月31 日新的環保法規生效，該儲存設
備於報廢時公司已無需進行任何復原工作，請作X3 年底該設備應
有之折舊與除役負債分錄。（9 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00106', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'essay', '甲公司於 X1 年1 月 1 日起向乙公司承租土地一塊，租約條件如下：
⑴租期 10 年，不可取消，於租期屆滿時甲公司得再續租 8 年，但至
遲應於租期屆滿前一年正式通知乙公司是否將續租。
⑵前 10 年之每年租金為$10,000,000，若甲公司租期屆滿選擇續租 8
年，則續租期間每年租金調整為$12,000,000。租金於每年 1 月 1日
支付。
⑶該租賃隱含利率為 10%，惟甲公司無法知悉。於租賃開始日甲公司
之增額借款利率為 8%，且甲、乙公司均合理預期承租人將不會行
使租賃延長之選擇權。乙公司判斷此租約屬於營業租賃。
⑷甲、乙公司於X1 年 1 月 1 日均分別支付$200,000 給房仲公司作為
此租賃交易之佣金。
複利現值與年金現值資料如下：
$1複利現值 $1普通年金現值
期數 8% 10% 8% 10%
1 0.92593 0.90909 0.92593 0.90909
2 0.85734 0.82645 1.78327 1.73554
3 0.79383 0.75131 2.57710 2.48685
7 0.58349 0.51316 5.20637 4.86842
8 0.54027 0.46651 5.74664 5.33493
9 0.50025 0.42410 6.24689 5.75902
10 0.46319 0.38554 6.71008 6.14457
17 0.27027 0.19785 9.12164 8.02155
18 0.25025 0.17986 9.37189 8.20141
試作：
甲、乙兩公司於 X1 年 1 月 1日及 12月 31日有關此租賃之應有分
錄（不用作相關資產之折舊分錄）（15分）
假設甲公司於X8 年 1 月 1 日營運策略改變，當日可合理確信將行
使其租賃延長之選擇權，亦即該土地於原租賃期間結束後甲公司
將再行續租 8年。甲公司於 X9 年1 月 1 日始將此決定正式通知乙
公司。甲公司於X8 年 1 月 1 日及 X9 年 1 月 1日之增額借款利率
分別為 10%及 8%。
請問甲公司 X9 年 1 月 1 日支付該期租金後之租賃負債餘額應為
若干？並為乙公司作 X9 年 12月31 日應有之分錄。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00107', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲公司上年度遞延所得稅資產科目餘額為$1,800,000，適用稅率為20%，本年度及以後年度適 用稅率改為 17%。本年度公司對設備計提累計減損$6,000,000，但減損損失於報稅上不能減 除，而且亦不允許調整課稅基礎。上年度已經計提的備抵存貨跌價於本年度轉回$2,000,000， 存貨跌價損失於報稅上亦不能減除，也不允許調整課稅基礎。假設未來年度有足夠課稅所得 使遞延所得稅資產得以實現，則本年度遞延所得稅資產增加或減少之金額為何？', '["減少$610,000", "增加$410,000", "減少$950,000", "增加$1,090,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00108', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲公司於X2年初給與10位員工各10,000股面額$10之普通股，給與日每股股價為$72，增 資基準日為X2年1月31日，既得期間為3年，自X5年才可以轉讓該股票。在既得期間內 仍享有投票權及股利分配權，員工若於既得期間離職，應返還該股票，但無須返還已領取之 股利（包括現金股利及股票股利），該限制型股票於給與日之公允價值為$60。甲公司於X3年 6月1日宣告於7月15日發放每股$3現金股利及$1股票股利，考慮除權息影響後，股票股 利之公允價值為每股$75。X2年與X3年皆無員工離職，X2年底甲公司估計將共有2位員工 於X4年底前離職，X3年底甲公司則估計將共有3位員工於X4年底前離職，試問甲公司X3 年度應認列之員工薪資費用是多少？', '["$1,200,000", "$1,470,000", "$1,515,000", "$1,600,000"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00109', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲公司於 X3 年初以$1,100,000 發行可買回公司債，另加$12,000 交易成本，甲公司得自 X4 年12月31日起，以$1,000,000另加應計利息買回該公司債，發行時嵌入式買回權資產之公 允價值為$50,000。公司認為買回權與公司債兩者之經濟特性及風險並未緊密關聯，因此單獨 認列嵌入式衍生工具，並對公司債採攤銷後成本法處理。試問甲公司 X3 年初發行此可買回 債券時屬於公司債負債組成部分之入帳金額為何？', '["$1,061,455", "$1,063,652", "$1,138,500", "$1,161,500"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00110', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', 'X4年5月1日甲公司經董事會決議關閉化學部門之營運，公司已提出詳細正式之重組計畫， 並對受影響之客戶與員工發布該計畫的主要內容，估計將發生之成本如下：', '["部門設備之長期租賃合約尚未到期，公司估計若終止該合約需支付違約金$600,000，若繼 續承租，則後續租金折現值為$720,000", "因企業重組資遣部分員工之資遣費約$2,000,000", "公司評估停止化學部門後，總管理處分攤至其他部門之製造費用會增加$1,800,000", "公司委託人力銀行幫忙因企業重組而解散之員工介紹工作，估計支付之仲介費約$400,000。 ⑤有部分員工將會分派至其他部門，重新培訓員工之成本估計為$300,000。 ⑥公司估計將繼續使用之設備由化學部門移至其他部門之搬遷費約$250,000。 試問甲公司企業重組之負債準備金額為何？"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00111', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲公司於X3年初以$2,400,000 取得乙公司普通股股權30%，並對乙公司有重大影響力。當 時乙公司普通股股東權益為$7,000,000，投資成本與取得股權淨值之差額係因乙公司機器設備 帳面金額低估所致，該設備剩餘耐用年限為 5 年。乙公司 X3 年度淨損$900,000，未發放股 利，且有客觀證據顯示該投資可能發生減損，經評估甲公司該筆對乙公司投資 X3 年底之可 回收金額為$1,980,000，則甲公司X3年度應認列投資減損損失為何？', '["$90,000", "$150,000", "$270,000", "$330,000"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00112', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲公司於 X1 年底以$965,349 購入乙公司發行之四年期公司債，面額$1,000,000，票面利率 5%，每年底付息一次，發行當時市場利率為 6%，甲公司將該投資分類為按攤銷後成本衡量 之金融資產。X1年底當日認列12個月預期信用損失$8,000，X2年底乙公司發生財務困難， 預期剩餘期間每年只能收取利息$30,000，到期本金只能收回$800,000。若 X2 年底市場利率 為7%，則甲公司X2年底應認列投資減損損失為何？ （P3,6%=2.67301;P3,7%=2.62432;p3,6%=0.83962;p3,7%=0.81630）', '["$213,384", "$221,384", "$233,500", "$241,500"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00113', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲公司於X1年12月31日開立票據一紙向乙銀行借款$1,000,000，票面利率5%，每年年底 付息一次，X4年12月31日到期，有效利率5%。X2年甲公司面臨財務危機，在支付X2年 利息$50,000 之後，向乙銀行申請債務協商。雙方於 X2 年 12 月 31 日同意到期本金降為 $900,000，利率降為2%，到期日延長至X5年12月31日，每年年底支付利息。甲公司另支 付乙銀行協商費用$5,000。若債務整理當時有效利率為4%，則X2年12月31日甲公司應認 列多少債務清償損益？ （P3,5%=2.72325；p3,5%=0.86384；P3,4%=2.77509；p3,4%=0.88900）', '["$168,525", "$163,525", "$149,948", "$144,948"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 7, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL),
  ('heelevel3-d0d1b9a2-moex-00114', 'heelevel3-d0d1b9a2', 'heelevel3-d0d1b9a2-moex-113-78566e18', 'sub-heelevel3-d0d1b9a2-01', NULL, 'single_choice', '甲工程公司於X4年10月初與客戶簽訂大樓翻新並安裝新電梯之合約，總價$8,000,000，該 合約承諾為隨時間逐步滿足之履約義務，預期合約總成本為$6,400,000，包括電梯成本 $2,400,000。甲公司未參與電梯之設計及製造，惟其以主理人身分購買該電梯。電梯已於X4 年12月運至該場址，客戶已取得對該電梯之控制，但直至X5年2月才安裝。截至X4年12 月31日其他已投入工程成本（不包括電梯成本）為$800,000，則甲公司X4年應認列之工程 損益是多少？', '["利益$200,000", "利益$320,000", "利益$600,000", "利益$800,000"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:58+00:00", "source_pdf_sha1": "fa663c9680b3", "answer_pdf_sha1": "567fe22a3c0b", "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "321", "s": "0901", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": 8, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "會計"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
