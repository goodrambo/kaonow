-- moex_license_ingest questions batch 70/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('cpa-moex-00691', 'cpa', 'cpa-moex-109-1cd83735', 'sub-cpa-06', NULL, 'essay', '甲公司 X2 年第三季之相關事項如下：
㉑ X1年1月1日以$110,000購入機器一部，估計耐用年限10年，殘值
$10,000，採用直線法提列折舊，X2年7月1日甲公司重新估計該機
器之耐用年限僅餘5年，無殘值，並將折舊方法改為年數合計法。
㉒ X2 年 4 月 1日預付一年期保險費$400,000。
㉓ X2 年 9 月 1日支付員工訓練費用$200,000。
㉔ X2 年初存貨數量 10,000單位，單位成本$2，並無任何備抵存貨跌
價損失。X2年全年無進貨，前三季之銷貨數量及各季末之每單位
淨變現價值如下（各季末預估年底每單位淨變現價值均為$1.5）：
銷貨數量 每單位淨變現價值
第一季 1,500 $1.3
第二季 2,500 1.4
第三季 1,000 1.1
試作：分別計算甲公司 X2 年第三季下列各項目之金額：（8分）
㉑折舊費用
㉒保險費
㉓員工訓練費用
㉔銷貨成本（含存貨跌價損失）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "33b1628d20f8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109140", "c": "803", "s": "0202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "高等會計學", "year": "109", "exam_name": "109年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00692', 'cpa', 'cpa-moex-108-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司於 X5 年初以公允價值$964,540 買入面額$1,000,000，票面利
率 4%，每年 12月 31 日付息之公司債，有效利率為 5%。X6 年初甲
公司改變其管理債券投資之經營模式，使該債券投資由按攤銷後成本
衡量之金融資產重分類為透過其他綜合損益按公允價值衡量之金融
資產。該債券未發生減損事項，各年年底之資料如下：
X5/12/31  X6/12/31  X7/12/31
市場利率  6%  4%  3%
公允價值  $946,540  $1,000,000  $1,009,708
總帳面金額  $972,768  $ 981,406  ？
估計預期信用損失金額
$ 10,000  $ 24,000  $ 20,000
試作：
X6 年有關該債券投資之相關分錄。（6 分）
X7 年有關該債券投資之相關分錄。（6 分）
X7 年綜合淨利之影響
為何？（應註明增減金額，不考慮所得稅影響。）（3分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "bedee372e6ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00693', 'cpa', 'cpa-moex-108-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司於 X1 年 1 月 1 日按面額發行可轉換公司債 1,000 張，每張面
額 1,000元，三年到期（到期日為 X3 年 12 月 31日），票面利率6%，
每年 12 月 31 日付息一次。公司債流通期間持有人可以每股$25 的轉
換價格，轉換為甲公司的普通股。該公司債發行時，相同條件但不可
轉換的公司債，其市場利率為9%。（3年期利率為9%：複利現值為
0.772183、年金現值為2.5313。）甲公司於X1年之會計利潤為20萬
元，無其他財稅差異。適用之營利事業所得稅稅率為25%。（費用四
捨五入計算至整數。）假設課稅上按票面利率認列利息費用。
試作：
3 分）
X1 年底利息及期末衡量分錄。（3分）
X1 年底必要之所得稅會計處理。（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "bedee372e6ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00694', 'cpa', 'cpa-moex-108-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司於 20X1 年初與多名客戶簽訂 100 份單獨合約，共收取現金
$1,200,000。每份合約以$12,000 提供一年之清潔服務，並約定每一
客戶於 20X2 年初及 20X3 年初均得再另行支付$12,000 續約以繼續
獲得一年之清潔服務。因為若該等客戶並未於 20X1 年初購買清潔
服務或於其後中斷購買清潔服務，而另於 20X2 年初或 20X3 年初要
求甲公司提供當年之清潔服務時，甲公司收取之年度清潔費用將分
別為$24,000 及$30,000；所以甲公司評估，此明顯優惠之續約價格
$12,000使於20X1年初簽訂該等合約之該等客戶具有取得未來清潔
服務之重要權利，該等客戶倘未簽訂該等合約則無法取得此重要權
利。甲公司決定以預期提供之所有清潔服務所換得之預期收取對價
來分攤交易價格，並判定以已發生成本相對於預期總成本為基礎認
列收入，能描述對客戶勞務之移轉。甲公司於 20X1 年初預期每一清
潔服務合約之各年估計成本分別為 20X1 年$4,608，20X2 年$8,640
及 20X3 年$12,000。以下為各自獨立之兩種情況：
情況一：甲公司於 20X1 年初預期 20X2 年初及 20X3 年初均各有前
一年客戶之 80%將選擇續約一年，此預期一直維持不變，
且 20X2年初及 20X3 年初之實際客戶續約狀況均如甲公司
於 20X1 年初所預期。
情況二：甲公司於20X1年初預期20X2年初及20X3年初均各有前一
年客戶之80%將選擇續約一年，20X2年初之實際客戶續約狀
況如甲公司於20X1年初所預期，但甲公司於20X2年底修正
預期 20X3 年初有前一年客戶之 60%將選擇續約一年。20X3
年初之實際客戶續約狀況如甲公司於20X2年底所預期。
試作：假設每一清潔服務合約各年所發生之實際成本均如甲公司於
20X1 年初所預期。所有答案須列示計算過程。
20X1 年、20X2 年及 20X3 年應認列之服務收入金
額，以及20X1年底及 20X2年底之合約負債帳面金額。（9分）
20X2 年及 20X3 年應認列之服務收入金額，以及
20X2 年底之合約負債帳面金額。（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "bedee372e6ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00695', 'cpa', 'cpa-moex-108-78566e18', 'sub-cpa-01', NULL, 'essay', '甲公司為買賣業，20X1年相關資料如下：
A.銷貨成本$51,000，存貨期初帳面金額$12,000（成本$15,000，評價
調整$3,000），存貨期末帳面金額$8,000（成本$12,000，評價調整
$4,000）。甲公司之購貨均為現購且未預付貨款，當期提列存貨跌
價損失$1,000。
B.淨確定福利負債再衡量數（利益）$2,000，確定福利計畫成本（含
淨利息）$9,000，確定福利計畫義務期初現值$20,000，確定福利
計畫義務期末現值$28,000，計畫資產期初公允價值$8,000，計畫
資產期末公允價值$12,000。甲公司對確定福利計畫之提撥均為現
金，且所有確定福利計畫成本均未分攤入任何資產。
試作：（不考慮所得稅之影響，說明計算過程。）甲公司編製 20X1
年之現金流量表時：
就資料 A，間接法下之本期淨利調整數與直接法下對存貨供應商
之付現數。（4分）
就資料 B，間接法下之本期淨利調整數與直接法下對提撥確定福
利計畫之付現數。（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "bedee372e6ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0206", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "中級會計學", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00696', 'cpa', 'cpa-moex-108-9023a44f', 'sub-cpa-02', NULL, 'essay', 'A 股份有限公司（下稱 A 公司）已發行股份為普通股 10 萬股，盈餘分
派優先無表決權特別股 5 萬股，A 公司訂於今年 6 月 15 日召開股東常
會。A公司雖未於該次股東常會召開前之停止股票過戶日前，公告受理
股東之提案、書面或電子受理方式、受理處所及受理期間，但持有 A公
司普通股一千股之股東甲，仍於 A公司寄發股東會開會通知前，向公司
提出「公司應捐助新臺幣一百萬元予受虐兒童保護團體」之議案。A公
司董事會研擬下列不將甲所提議案列為該次股東常會議案理由，請逐一
說明各該理由是否可行？
A公司已發行股份總數 1%。（7分）
6分）
A公司未公告受理股東提案相關事項時，行使股東提案權。
（7 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "899745575a22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00697', 'cpa', 'cpa-moex-108-9023a44f', 'sub-cpa-02', NULL, 'essay', 'A 上市公司欲辦理現金增資發行新股，惟本次增資對象僅限於其全體員
工與股東，並無計劃對外招募。本次增資計畫依法是否可行？又本次增
資依法是否應向證券主管機關申報？請附具體理由回答。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "899745575a22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00698', 'cpa', 'cpa-moex-108-9023a44f', 'sub-cpa-02', NULL, 'essay', '李君先設立甲精品店及乙商行，讓需錢孔急的不特定人刷卡借錢；其方
式，是借款人在形式上去甲精品店及乙商行「購物」；「購物人」的付
款方式，是刷自己的信用卡。這些「購物人」不拿商品，但會領到現金，
至於其金額，則是刷卡金額的八成，形同預扣利息 20%。
李君在借款人刷卡後，以甲精品店及乙商行之名義，持其上有「購物人」
簽署之信用卡簽帳單，向財團法人聯合信用卡處理中心請款；信用卡處
理中心則把款項（簽帳之金額，扣除 2%之手續費後的淨額）匯入甲精
品店或乙商行。請說明李君的上開行為是否違反商業會計法之規定？
（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "899745575a22", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公司法、證券交易法與商業會計法", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00699', 'cpa', 'cpa-moex-108-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '下列何者不是公司法明定之公司負責人？', '["", "", "", ""]'::jsonb, 3, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "899745575a22", "answer_pdf_sha1": "afac5c7d1a19", "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 1, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL),
  ('cpa-moex-00700', 'cpa', 'cpa-moex-108-9023a44f', 'sub-cpa-02', NULL, 'single_choice', '甲與乙為A有限公司之股東，其中甲並擔任該公司董事。依公司法之規定，下列敘述何者錯誤？ A公司每一股東不問出資多寡，均有一表決權。但得以章程訂定按出資多寡比例分配表決權 A公司之監察權，同時其辦理監察之事務，得代表公司委託律師、會計師審核之', '["", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:09+00:00", "source_pdf_sha1": "899745575a22", "answer_pdf_sha1": "afac5c7d1a19", "source_family": "moex-gov-tw", "moex": {"exam_code": "108140", "c": "803", "s": "0204", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "公司法、證券交易法與商業會計法", "year": "108", "exam_name": "108年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": 2, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "accountant", "db_exam_id": "cpa"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
