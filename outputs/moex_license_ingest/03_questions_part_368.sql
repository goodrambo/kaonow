-- moex_license_ingest questions batch 368/1650 (10 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('real-estate-appraiser-moex-00042', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '何謂不良資產（DistressedProperties）？（5分）發生的原因為何？
（8 分）當要進行不良資產投資分析時，投資者會進行那三個階段的財
務架構分析？（12 分）試申論之。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "42b6d72e34f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00043', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '請申論：非住宅財產（NonresidentialProperties）可以分成那六大類，
請說明各類財產的內容。（12 分）假設有一家餐廳和一家倉儲業者，
都正在尋找某都市中數個替選區位（Location）要設置據點；假設兩個廠
商都以追求利潤（Profit）極大化為考量，請以銷售收入（SalesRevenue）
和營運成本（CostofOperations）進行分析，試問這兩個廠商應該要如何
進行區位選擇？（13分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "42b6d72e34f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00044', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '小黃購買一戶 5,000,000元房屋，銀行提供融資貸款條件如下：
銀行提供兩種融資貸款方案：
方案 A：貸款3,500,000元，年利率 2%。
方案 B：貸款4,000,000元，年利率 3%。
兩個方案都採固定還款抵押貸款（ConstantPaymentMortgage,CPM），
按月攤還，貸款攤還期限都是 20年。假設目前市場年利率為 6%，請
問小黃何種情況下會選擇方案 B？（12 分）
若方案 B 原貸款條件不變，只有貸款攤還期限更改為 25 年，請問小
黃何種情況下會選擇方案 B？（13 分）
（註：可應用以下利率因子：
MC(2%,5)=0.230975；MC(0.1667%,60)=0.017528；
MC(2%,20)=0.061157；MC(0.1667%,240)=0.005059；
MC(3%,20)=0.067216；MC(0.2500%,240)=0.005546；
MC(3%,25)=0.057428；MC(0.2500%,300)=0.004742；
MC(20%,5)=0.334380；MC(1.667%,60)=0.026494；
MC(20%,20)=0.205357；MC(1.667%,240)=0.016989；
PVIF(2%,20)=0.672971；PVIF(0.1667%,240)=0.670490；
PVIF(20%,20)=0.026084；PVIF(1.667%,240)=0.018928）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "42b6d72e34f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00045', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '在住宅的租買選擇（TenureChoice）中，請申論：
在考慮那些因素下，你認為選擇租屋比買屋好？（10 分）
小陳打算在 A市租屋或買屋，目前的替選方案如下：
㉑租屋：每月租金 15,000元。
㉒買屋：房價 5,000,000 元，小陳自備款 1,500,000 元，其餘金額向 B
銀行貸款，貸款年利率 3%，貸款期限 20年，按月本利均等
攤還，預估每年必須支付各式費用總計 5,000 元（含保險費
和維修費等）。
其次，預估租金、房價和各式費用等，自第 2年起每年都會增加3%；
假設小陳租屋後無須額外再支付任何費用，租屋和買屋也都不考慮稅
金和其他支出；若小陳選擇買屋後，分別打算在第 1 年年底或第 2 年
年底將房屋處分出售，銷售費用為出售當年房價的 5%。
⑴試問小陳買屋後，在第 1 年年底和第 2年年底將房屋處分出售後的
權益內部報酬率（IRRon equity）各是多少？（12分）
⑵如果小陳的需要報酬率是 5%，請問他第 1 年和第 2 年應該做出何
種投資決策（租屋或買屋）？（3 分）
（註：可應用以下利率因子：
PVIFA(3%,20)=14.877475；MC(3%,20)=0.067216；
PVIFA(3%,19)=14.323799；PVIFA(3%,18)=13.753513；
PVIFA(0.25%,240)=180.310914；MC(0.25%,240)=0.005546；
PVIFA(0.25%,228)=173.628861；PVIFA(0.25%,216)=166.743566）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "42b6d72e34f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00046', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '民眾通常認為，政府實施住宅補貼政策的用意良好，可使承租人受益；
而此舉對短期及長期的住宅租賃市場租金、供給的影響為何？又出租人
可否從中得利？試繪圖予以評述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "8e65619fe3ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00047', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '近年來，農電共構方案為政府合力推動的措施，並認為具有「農業多功
能性」（Multifunctionalityofagriculture,MOA），可提升農地利用的效率。
惟有學者專家指出，放寬土地使用管制，釋放農地供光電使用，偏離國
土計畫之精神，衝擊農漁民生計。請繪圖說明農電共構方案可能具有的
MOA，並闡述該方案的推行何以引起上述看法、能否達成 MOA效果，
以及試擬因應對策。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "8e65619fe3ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00048', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '假設市地營建業者只採用土地和資本兩種生產要素，興建不同樓層的建
築物。今不考慮建蔽率、容積率、建物高度限制，亦不考慮外部性問題，
則營建業者面臨建物造價下跌時，應該如何調整土地用量和樓層數的配
置以提升營建效率？其間產生的價格效果又該如何解釋？試繪圖說明之。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "8e65619fe3ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00049', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-ba81c82b', 'sub-real-estate-appraiser-04', NULL, 'essay', '土地開發為住宅社區往往涉及土地使用變更，而向申請開發者徵收開發
影響費，其用意為何？這種開發影響費的課徵，對於住宅不動產市場的
交易價格、數量產生的影響為何？又該開發影響費會否轉嫁給購屋者負
擔？請繪圖分項說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "8e65619fe3ce", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產經濟學", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00050', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '某甲欲於其所有坐落於第二級環境敏感地區之一筆約 1公頃的土地，設
置太陽能光電設施，諮詢不動產估價師乙。經乙告知其得以分區變更、
使用地變更編定或是容許使用等方式來設置。依現行非都市土地使用管
制規則之規定，甲應適用那一種方式設置太陽能光電設施？其申請程序
為何？其興辦事業計畫應說明那些事項？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "0237e6462766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00051', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-707b521e', 'sub-real-estate-appraiser-05', NULL, 'essay', '國土計畫法第 23條第 2項規定「應經申請同意使用項目」以及「免經申
請同意使用項目」，所指為何？某甲於其所有坐落於山坡地保育區林業
用地上，於102年依法興建A設施。如果其於國土功能分區圖公告之日，
該 A設施之使用，並不符合「應經申請同意使用項目」以及「免經申請
同意使用項目」，當地直轄市、縣（市）主管機關應如何處理？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "0237e6462766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0302", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土地利用法規", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
