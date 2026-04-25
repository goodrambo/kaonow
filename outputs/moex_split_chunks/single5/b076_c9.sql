-- moex_license_ingest questions batch 76/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00167', 'real-estate-appraiser', 'real-estate-appraiser-moex-106-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '依不動產估價技術規則之規定，價格種類有那些？試分別舉例詳細說明之。另就可
繼續經營使用的廠房、設備連同土地一併出售時，應以何價格種類評估，試論述之。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "6dba75870ac5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00168', 'real-estate-appraiser', 'real-estate-appraiser-moex-106-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '試比較公告地價與公告土地現值二者之區別，並請說明政府辦理公告地價與公告土
地現值之查估程序。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "6dba75870ac5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00169', 'real-estate-appraiser', 'real-estate-appraiser-moex-106-bceca813', 'sub-real-estate-appraiser-02', NULL, 'essay', '不動產估價技術規則對於運用成本法估計建物價格有詳細規定，請舉其重點敘述
之。一般而言，對於建物常以成本法估價，對於銷售價格常以比較法估價，但常聽
到建物營造費用高則銷售價格應相對提高的說法，請問建物之營造費用與其銷售價
格間有何關聯性？（25 分）
（請接背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "6dba75870ac5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "905", "s": "0306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價理論", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00170', 'real-estate-appraiser', 'real-estate-appraiser-moex-106-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '小李目前無自用住宅，欲購置住宅一戶，總價1,000萬元，自備款300萬元，餘額則經
由房貸支付，貸款償還年限為30年，又按月本利均等攤還方式還款。這其中500萬元
適用於政府購屋優惠低利貸款，房貸利率採混合式固定利率計算，第一年年息 1.9%，
第二年年息 2%，第三年起年息 2.02%，機動計息。其餘則辦理銀行一般房貸，年息
3%，貸款償還年限為 30年。小李考量目前利率仍低，因此不選擇寬限期。試問：
第一年小李每月所需償還多少金額的貸款？（5分）
第三年年底小李還剩下多少本金未償還？（10分）
前三年政府低利優惠貸款相較於銀行一般房貸，能替小李省下之金額現值為多少？
（10分）
複利年金累加現值率因子PVIFA
PVIFA（年利率1.9%， PVIFA（年利率2%， PVIFA（年利率2.02%，PVIFA（年利率3%，
月利率0.1583%）  月利率0.1667%）  月利率0.1683%）  月利率0.25%）
12
11.877433 11.870979 11.869751 11.807254
月
324
253.313761 250.181524 249.591059 221.876815
月
336
260.428394 257.101680 256.474782 227.134679
月
348
267.409258 263.884894 263.220989 232.237341
月
360
274.258869 270.533876 269.832429 237.189382
月', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "23ff55a22d6a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00171', 'real-estate-appraiser', 'real-estate-appraiser-moex-106-5e22d328', 'sub-real-estate-appraiser-03', NULL, 'essay', '某商用不動產已知市價為15億元，貸款比例 75%，以每月本利均等攤還方式償還，
年利率 2%，貸款期限 20年，銀行要求的債務保障比例（DCR）為 1.4，若該不動產
總樓地板面積為 1,000坪，可出租的樓地板面積為 700坪，空屋損失占可能總收入的
5%，營運費用每坪每月 750 元，一年的地價稅、房屋稅合計為 3,500 萬元，要求的
權益報酬率為 6%，目前市場租金行情為每坪每月 6,000元。試問：
本案的房價租金指數（housing price to rent ratio）為何？其所代表之意義為何？
（10 分）
以前門法評估，投資者應否投資？（15分）
（註：得應用以下利率因子：
PVIFA(2%, 240)=49.569
FVIFA(2%, 240)=5744.437
PVIFA(2%/12, 240)=197.674
FVIFA(2%/12, 240)=294.797
MC(2%, 240)=0.0202
MC(2%/12, 240)=0.005059）
（請接背面）
106年 專 門 職 業 及 技 術 人 員 高 等 考 試   全一張
會計師、不動產估價師、專利師考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:31+00:00", "source_pdf_sha1": "23ff55a22d6a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "106140", "c": "905", "s": "0303", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產投資分析", "year": "106", "exam_name": "106年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
