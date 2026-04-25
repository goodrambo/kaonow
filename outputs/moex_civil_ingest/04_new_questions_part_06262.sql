-- W1.6 questions batch 6262/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('judicial-d3df8a4a-moex-00021', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-114-f4e99c62', 'sub-judicial-d3df8a4a-06', NULL, 'essay', '某銀行資本總額為新臺幣（下同）120億元，風險加權資產為1,600億元。
請寫出「資本適足率」（CapitalAdequacyRatio,CAR）的公式，並解釋
其在銀行監理中的作用。（5分）
根據上述資料，請計算該銀行的 CAR。（5分）
若該銀行新增放款使風險加權資產增加為 1,700 億元，請重新計算
CAR並評估變動情形。（5分）
假設主管機關規定最低 CAR為 10.5%，請說明該銀行的資本水位是否
充足，並分析可能面臨的監理措施或經營限制。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "3b7b931cd8a4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "109", "s": "0903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "銀行實務", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00022', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-114-f4e99c62', 'sub-judicial-d3df8a4a-06', NULL, 'essay', '某銀行辦理房貸業務，某筆放款本金為 800萬元，因借款人無力償還已
進入法拍程序，並於拍賣後回收600 萬元。
請說明此筆房貸從逾期至認列呆帳的標準程序與條件。（10分）
請計算呆帳損失金額並說明原因。（5 分）
上述損失會如何具體呈現在銀行損益表與資產負債表上？請明確指
出科目與會計性質。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "3b7b931cd8a4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "109", "s": "0903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "銀行實務", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00023', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-114-f4e99c62', 'sub-judicial-d3df8a4a-06', NULL, 'essay', '有關銀行風險管理，請回答下列問題：
請說明銀行流動性風險的定義及其產生原因。（5 分）
同業拆款市場如何協助銀行因應短期流動性壓力？（5分）
銀行若大量依賴拆入資金，可能面臨那些潛在風險？（5 分）
巴塞爾協議第三版（BaselIII）提出 2項關鍵流動性監理指標：流動性
覆蓋比率（Liquidity Coverage Ratio, LCR）與淨穩定資金比率（Net
StableFundingRatio,NSFR），請分別說明其意義與管理目的。（10分）
10960', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "3b7b931cd8a4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "109", "s": "0903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "銀行實務", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00024', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-114-f4e99c62', 'sub-judicial-d3df8a4a-06', NULL, 'essay', '請定義並說明下列名詞及其關係：⑴逾期放款（NPL）⑵呆帳⑶備抵呆
帳費用（LLP）⑷備抵呆帳準備（LLR）⑸呆帳覆蓋率（CoverageRatio）。
（10分）
某銀行期末資料如下：放款總額 1,000 億元、逾期放款 40億元、呆帳 10
億元（已沖銷）、LLR32 億元、當年度 LLP5 億元。請回答：
LLP與 LLR 於財報中的性質與關係。（3分）
計算呆帳覆蓋率並解釋。（3 分）
LLP增加對淨利與資本適足率之影響。（3分）
維持高覆蓋率的優缺點。（3 分）
評析該銀行之放款品質與風險吸收能力。（3 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "3b7b931cd8a4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "109", "s": "0903", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "銀行實務", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00025', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-113-78566e18', 'sub-judicial-d3df8a4a-01', NULL, 'essay', '甲公司於 X0 年6 月 1 日的董事會決議，員工獎酬辦法訂定如下：
獎酬辦法⑴：現金增資保留由員工認購。董事會於 X1 年 9 月 16日決議
辦理現金增資，保留供員工認購股數 30,000 股，每股面額$10，認購價
格每股$25，甲公司已於該日告知員工得認購股數及價格，當日，甲公司
依據選擇權定價模式估計認購新股權利的每單位公允價值為$6。此外，
增資基準日 X1 年 11 月 25 日，員工繳款截止日 X1 年 11 月 15 日。其
後，員工共計認購 25,000 股，惟甲公司於 X1 年 11 月 22 日宣告現金增
資失敗，退回員工股款。
獎酬辦法⑵：庫藏股票轉讓員工。由於上述現金增資由員工認購的獎酬
辦法，並未達到激勵員工的預期，因此，甲公司於 X2 年 2 月 1 日經董
事會決議，以 60,000 股庫藏股票轉讓員工，轉讓價格每股$16，當日，
甲公司依據選擇權定價模式估計轉讓員工認股權的每單位公允價值為
$1.05。甲公司已於 X2 年 2 月 1 日董事會決議之前，以每股$15 買回之
庫藏股票，共計100,000股。此外，認股基準日為X2 年 2 月 20 日，甲
公司於 X2 年 3月 31 日實際轉讓員工總股數為 55,000 股，收取股款時，
繳納證券交易稅千分之三，員工未認購之庫藏股票，視同其放棄認股權
的行使。
試作：（註：若無分錄，請以「無分錄」作答）
請以獎酬辦法⑴進行下列日期的必要分錄：X1 年 9 月 16 日，X1 年
11 月 15日，X1年 11 月 22日以及 X1 年 11 月 25 日。（12分）
請以獎酬辦法⑵進行下列日期的必要分錄：X2年2月1日，X2年2月
20日以及X2年3月31日。（13分）
41150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "bc24caf44188", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "108", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00026', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-113-78566e18', 'sub-judicial-d3df8a4a-01', NULL, 'essay', '乙公司 X1 年 1 月 1 日以$2,000,000 發行複合金融工具，此金融工具為
三年期，票面利率 5%，面額$2,000,000之轉換公司債，每年 12 月31 日
支付利息，乙公司另行支付轉換公司債的印刷以及承銷商佣金等直接成
本$16,000。此外，發行日時，與上述公司債相同條件惟不可轉換的公司
債，市場利率為 6%。公司債持有者的轉換權得於公司債到期前的任何
時間進行轉換，轉換條件為公司債面額$1,000轉換為普通股 10股，每股
面額$10。其後，公司債持有者於X2 年 1 月 1 日將面額$800,000公司債
轉換為普通股，當日每股股價為$25。
試作：請分別作答乙公司的下列項目的金額或餘額：X1 年 1 月 1 日
「資本公積－認股權」餘額（請註記：借方或貸方）？X1 年度「利
息費用」金額？X2 年 1 月 1 日「資本公積－普通股股票溢價」
餘額（請註記：借方或貸方）？X2 年度「利息費用」金額？X2
年 12 月 31 日「應付公司債折價」餘額（請註記：借方或貸方）？
（註：⑴複利現值因子：5%，3 期＝0.863838；6%，3 期＝0.839619；
7%，3 期＝0.816298；普通年金現值因子：5%，3 期＝2.723248；
6%，3 期＝2.673012；7%，3 期＝2.624316。⑵百分比請以四捨
五入後的小數點兩位為表達及計算依據，例如：xx.xx%）（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "bc24caf44188", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "108", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00027', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-113-78566e18', 'sub-judicial-d3df8a4a-01', NULL, 'essay', '丙公司於 X1 年 9 月 1 日購買丁公司 30,000 股普通股票作為投資，當日
每股市價為$30，手續費$1,283，原始認列時，丙公司將其分類為透過其
他綜合損益按公允價值衡量之金融資產。至X1年12月31日，丙公司仍
持有丁公司股票30,000股，該日的股票市價為每股$32。丙公司於X2年
6月1日以每股$31賣出丁公司股票20,000股，隨後，丁公司宣告X2年
度的現金股利，每股股利$2，除息基準日為X2年10月15日，股利發放
日為X2年11月15日，X2年12月31日的丁公司股票市價為每股$28。
試作：請分別作答丙公司的下列項目的金額或餘額：X1年9月1日「透過
其他綜合損益按公允價值衡量之權益工具投資」餘額（請註記：借方
或貸方）？X1年12月31日「其他權益－透過其他綜合損益按公允
價值衡量之權益工具投資未實現評價損益」餘額（請註記：借方或貸
方）？X2年度「處分投資（損）益」金額？X2年度「股利收入」金
額？X2年12月31日「透過其他綜合損益按公允價值衡量之權益工
具投資評價調整」餘額（請註記：借方或貸方）？（25分）
41150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "bc24caf44188", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "108", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00028', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-113-78566e18', 'sub-judicial-d3df8a4a-01', NULL, 'essay', '丙公司去年銷售商品予丁公司，至 X1 年 12 月 31 日的應收帳款餘額為
$800,000，此時，丁公司的財務困難，丙公司同意丁公司進行債務整理。
債務整理存在下列兩種獨立情況：
情況⑴：丙公司同意丁公司以發行普通股 40,000 股，每股面額$10，進
行債務清償，當日，丁公司普通股每股公允價值為$15。X1年12月31日，
丙公司於上述應收帳款在存續期間預期信用損失之備抵損失餘額為
$80,000，對於其後清償債權而取得的丁公司普通股，將其分類為透過其
他綜合損益按公允價值衡量之權益工具投資。
情況⑵：丙公司同意丁公司以帳面金額$750,000，公允價值$700,000 的
投資性不動產予以清償債務。X1年 12 月 31日，丙公司於上述應收帳款
在存續期間預期信用損失之備抵損失餘額為$80,000。
試作：分別依據情況⑴及情況⑵，進行丙公司及丁公司於X1年12月31日
的債權及債務清償的必要分錄。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "bc24caf44188", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "108", "s": "0905", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00029', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-113-de0a21a2', 'sub-judicial-d3df8a4a-02', NULL, 'essay', '甲、乙為朋友，乙在賣場銷售手錶，某日甲在乙工作時探望乙，且在兩人
聊天過程中，知悉某 X 款錶外形酷似潛水錶實質上只有輕度防水功能，
由於多數買家都知道其沒有潛水功能，因此也最不好賣，為了推銷該款手
錶，賣場以六折賣出。不久有顧客 A 上門，指定要買潛水錶，甲竟突發
奇想佯裝普通顧客跟A搭訕，宣稱該X款錶潛水功能好又有折扣，物超
所值。甲與 A 的對話皆被乙聽到，乙假意要上廁所請隔壁專櫃的店員 B
幫其照料生意，隨即離開。乙回到櫃位後，B告知乙，A買了該X款錶，
已經由其結帳賣出。甲在乙身邊悄聲說明，並向乙邀功，乙瞪了甲一眼，
但沒有多說話。試問甲、乙的行為依刑法如何論處？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "b2530dec04cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "108", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL),
  ('judicial-d3df8a4a-moex-00030', 'judicial-d3df8a4a', 'judicial-d3df8a4a-moex-113-de0a21a2', 'sub-judicial-d3df8a4a-02', NULL, 'essay', '甲、乙為戀人，某日甲發現乙將兩人合意拍攝的性私密影片給甲的好友
丙觀覽，甲極為生氣，覺得自己不受尊重。某日甲趁乙不注意，以乙的
手機拍攝自己洗澡的影片，並報警宣稱被乙偷拍，乙在警詢時否認。由
於乙否認，甲說服丙出庭作證，謊稱乙有將該偷拍情事告知丙，丙在檢
方傳喚時具結宣稱乙確實有甲所陳述的偷拍行為，檢方採信丙的描述，
將乙起訴。試問甲、乙、丙的行為依刑法如何論處？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:25:53+00:00", "source_pdf_sha1": "b2530dec04cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113120", "c": "108", "s": "0501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "113", "exam_name": "113年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-財經實務組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
