-- moex_license_ingest questions batch 78/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00237', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '資本化率（Cap Rate或 Capitalization Rate）為收益型不動產定價之重要衡
量指標，假設某公正調查單位公布的 Cap Rate 結果如表一與表二，請回
答下列問題：
資本化率的定義與其投資分析中的意涵。（5分）
就一特定次市場類型的不動產而言，影響該次市場資本化率的因素。（5分）
選擇表一中 2013 年強勢辦公室市場的前三名，並根據的因素，討論
可能的原因。（5分）
討論表一中臺北在 2012與 2013年差距可能代表的意義。(5分)
討論表二中 C 城市各商用不動產類型的情形，並以的因素提出合理
的解釋。（5分）
表一、各大都市A級辦公室市場的平均Cap Rate(%)
2013年1月  2012年1月
北京  4.41  6.13
香港  2.77  3.42
洛杉磯  7.36  7.49
倫敦  4.10  4.20
巴黎  4.60  4.70
新加坡  3.90  4.50
臺北  2.60  3.00
東京  4.50  4.80
表二、2012年C城市各不動產類型之平均Cap Rate(%)
旅館  8.20
出租公寓  4.85
辦公室  3.80
零售不動產  6.85', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7b5bff66aad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00238', 'real-estate-appraiser', 'real-estate-appraiser-moex-103-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '某大樓社區共有住戶 30 戶，使用 2 座電梯，住戶每年初繳付提存「電梯
更新基金」，俟電梯使用年限（10 年）到期後供更換新電梯之用，每年
所提基金存入銀行專戶（年利率 3%），請問：
若十年後電梯每座更換須 200萬元，請問該社區住戶每戶每年須向該基
金繳交若干元？（10分）
至提滿 5年後，該基金之餘額為若干？（5分）
承上，此時預期第十年更換電梯時，電梯價格將較原預估價格上漲百分
之十，請問該社區住戶對電梯更新基金繳納方式應如何改變，以資因
應？（10分）
利率因子參考值
PVIFA(3%, 5)  4.5797
年金現值利率因子  PVIFA(3%, 6)  5.4172
PVIFA(3%, 10)  8.5302
FVIFA(3%, 5)  5.3091
年金終值利率因子  FVIFA(3%, 6)  6.4684
FVIFA(3%, 10)  11.464
FVIF(3%, 5)  1.1593
終值利率因子  FVIF(3%, 6)  1.1941
FVIF(3%, 10)  1.3439', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "7b5bff66aad0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
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
降低其價格，此方式是否可達到預期之成效？請繪圖分析之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "cb153058dc79", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103130", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "103", "exam_name": "103年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
