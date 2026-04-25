-- W1.6 questions batch 7629/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('promotion-0a2fc18c-moex-00031', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-112-4b760c19', 'sub-promotion-0a2fc18c-04', NULL, 'essay', '假設我們有 6 筆成對資料(x, y)，統計資料為x 21，x2 91，
i i
i1 i1
6 6 6
y 48，y2 496和x y 203，利用這 6筆資料建構簡單線性迴
i i i i
i1 i1 i1
歸模型y  x ，i 1,2, ,6，在滿足迴歸模型誤差項平均值
i 0 1 i i  i
為 0 及變異數為2之常態的基本假設下，試問利用最小平方法求取的
1
ˆ
估計量(estimator)，則：
1
ˆ
的抽樣分配(sampling distribution)為何？（20分）
1
的最小平方估計值為何？（5分）
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "4aa24c150c61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "132", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00032', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-112-4b760c19', 'sub-promotion-0a2fc18c-04', NULL, 'essay', '考慮兩生產線零件的不良率p 及p ，今要比較兩生產線零件不良率p
1 2 1
及p 的高低，取自兩生產線獨立樣本的結果如下:
2
樣本 1：n  250 pˆ 0.04
1 1
樣本 2：n  250 pˆ 0.03
2 2
n 、n 及pˆ 、pˆ 分別代表從兩生產線所抽樣的零件樣本數及樣本中的
1 2 1 2
不良率，假設檢定為:H : p  p 0, H : p  p 0，則：
0 1 2 a 1 2
（每小題 5分，共 25 分）
檢定統計量之值為何？
檢定統計量對應的 P值為何？
當顯著水準 0.1時，結論為何？
如假設檢定為左尾檢定，則 P值為何？
如假設檢定為雙尾檢定，則 P值為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "4aa24c150c61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "132", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00033', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-112-4b760c19', 'sub-promotion-0a2fc18c-04', NULL, 'essay', '常態分配及T分配在統計資料分析上是兩個常用到的資料分配，試比較常
態分配及T分配之機率密度函數曲線或資料結構的異同？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "4aa24c150c61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112170", "c": "132", "s": "1009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "112", "exam_name": "112年公務人員升官等考試、112年關務人員升官等考試、112年交通事業鐵路人員升資考試、112年交通事業港務人員升資考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00034', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-98fbe395', 'sub-promotion-0a2fc18c-01', NULL, 'essay', '社會中有三人（A,B,C），面臨三個可能的公共政策（1,2,3），要透過兩
兩表決的多數決，決定一個公共政策。這三個公共政策對這三人造成的效
用影響分別如下。（例如，政策1若通過，A和B的效用分別降低2及1，
C 的效用則會增加 2。）請利用此一表格說明投票矛盾（votingparadox），
及議程操控（agenda manipulation）。（25分）
A B C
1 -2 -1 +2
2 -3 +2 -1
3 -1 0 -5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "9551e4baf210", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00035', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-98fbe395', 'sub-promotion-0a2fc18c-01', NULL, 'essay', '含糖飲料的供給曲線是：P＝10Q，而需求曲線是：P＝160-30Q，其中 Q
是以公升為單位的飲料數量，P 是每公升飲料價格。因應含糖飲料造成
的肥胖問題，以及產生的醫療負擔外部性，假設政府決定對含糖飲料的
消費課單位稅每公升$8。
請分別算出消費者與廠商的租稅歸宿。（10分）
若碳酸飲料造成的外部成本是每公升$8，請說明此一單位稅造成的社
會福利影響。（10 分）
前述的答案和次佳定理（the theory of the second-best）有何關係？
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "9551e4baf210", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00036', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-98fbe395', 'sub-promotion-0a2fc18c-01', NULL, 'essay', '何謂資本化（capitalization）？請根據資本化理論分析房屋稅對房價的影
響。若地方政府將房屋稅收專款專用於興建公園，房屋稅對房價的影響
為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "9551e4baf210", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00037', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-98fbe395', 'sub-promotion-0a2fc18c-01', NULL, 'essay', '在相同的預算下，請比較根據財務（所得或資產）檢測發放的社會福利
（meanstestbenefit）與無條件基本收入（universalbasicincome），在執行
成本、所得重分配以及效率的影響。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "9551e4baf210", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00038', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-d7e58de3', 'sub-promotion-0a2fc18c-02', NULL, 'essay', 'A 股份有限公司前董事長甲於董事長任內不顧該公司遭遇財務缺口困
境，仍以明顯高於市場行情之價格，購買公司並無需求之土地，價格高
達 5 億元，令公司負擔不必要之支出，致造成 A公司遭受巨大損害。A
公司股東乙等人乃依公司法第 214 條規定對甲提起代表訴訟，惟甲現已
不具 A 公司董事身分，則股東乙等人可否對已非 A 公司董事的甲提起
代表訴訟？另 A公司之董事丙於前一屆董事任期間執行業務，有違反法
令之重大事項，但仍經 A公司股東會改選董事時，續任本屆董事，則 A
公司持股百分之三以上之股東可否依公司法第 200 條規定，以丙前次董
事任期期間所發生之解任事由，來訴請法院裁判解任其現任董事職務？
（40 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "548cb9e55a33", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "商事法", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00039', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-d7e58de3', 'sub-promotion-0a2fc18c-02', NULL, 'essay', '甲向乙購買一輛機車，簽發以 A為付款人，發票日為 110 年 1 月10 日，
到期日為 110 年 9 月 30 日之匯票予乙，乙將該匯票背書轉讓予丙。試
問：甲於簽發該匯票時，如記載「本匯票應於發票日後一個月，始得請
求承兌」，其效力如何？又甲為上述記載後，乙得否再為有關承兌期限之
限制？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "548cb9e55a33", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "商事法", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL),
  ('promotion-0a2fc18c-moex-00040', 'promotion-0a2fc18c', 'promotion-0a2fc18c-moex-110-d7e58de3', 'sub-promotion-0a2fc18c-02', NULL, 'essay', '甲於 106 年 3 月 1 日向 A 保險公司投保醫療保險時，甲當場向 A 保險
公司之業務員乙表示其患有心血管疾病，曾有就醫紀錄。但乙告訴甲沒
關係，公司還是會准予投保，乙並在要保書的被保險人告知事項欄中就
甲是否曾患有心血管疾病處選填「否」。甲因信賴乙之專業，便在要保書
及被保險人簽章處簽名。之後，甲於 109 年 8月進行冠狀動脈手術出院
後，檢具申請理賠資料向 A保險公司請求保險給付 35 萬元。惟 A 保險
公司主張甲在投保前曾因心血管疾病至醫院門診就醫，卻於投保時對書
面詢問事項未據實說明，故 A保險公司得解除契約並拒絕理賠。甲則認
為其未違反據實說明義務，A保險公司應向其為保險給付。試問：本件
應如何處理？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:29:15+00:00", "source_pdf_sha1": "548cb9e55a33", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110170", "c": "132", "s": "0510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "商事法", "year": "110", "exam_name": "110年公務人員升官等考試、110年關務人員升官等考試、110年交通事業公路人員升資考試、110年交通事業港務人員升資考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "promotion", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
