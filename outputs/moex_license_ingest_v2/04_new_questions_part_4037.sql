-- W1.4 new questions batch 4037/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00124', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '46346 1.24698 1.80194
振態向量 0.86379 0.55496 2.24698', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00125', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '00000 1.00000 1.00000
振態阻尼比 0.05 0.05 0.05
若依某設計規範要求，估計最大反應時需考量累積有效振態質量至少為
95%結構總質量的低頻振態反應之貢獻合。試以最少的振態數量估算本結
構頂樓的最大位移反應。其中，以SRSS法估算振態疊加最大反應。（25分）
有一個五自由度結構，各樓層質量均相等，各振態阻尼比都等於0.03。
若其振態頻率、振態向量以及地震譜位移皆為已知：
振態頻率（Hz）：
振態1 振態2 振態3 振態4 振態5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "1", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00126', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '285 0.831 1.31 1.682 1.919
振態向量：
樓層 振態 1 振態2 振態3 振態4 振態5
1 0.160 -0.455 0.597 0.549 0.326
2 0.326 -0.597 0.170 -0.455 -0.549
3 0.455 -0.326 -0.549 -0.170 0.597
4 0.549 0.170 -0.326 0.597 -0.455
5 0.597 0.549 0.455 0.326 0.170
地震譜位移：
頻率（Hz） 譜位移（m）
<0.1 0.01', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00127', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '1-0.5 0.01+0.15*（-0.1）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00128', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '5-1.5 0.07
>1.5 0.105/
若設計規範要求必須考慮累積有效振態質量比達95%以上，則最少應採
計多少個振態反應？接著請分別以 SRSS（Square Root of Square Sum
Method）及 CQC（CompleteQuadraticCombinationMethod）法估計頂樓
最大位移為何？（25分）
參考公式：
1/2
8   r r3/2
N N
r   S r r  ， j k j k ，
S
a  j1 k1 jk j k  jk  2
1r2 4r 1r2 4 2 2 r2
j k j k
r  k
j
建築結構耐震設計規範規定，規則性之建築物，不須進行動力分析者，可
以靜力法進行結構分析。其中有關於地震力的規定分為設計地震、中小度
地震與最大考量地震等三種。一般工址之檢核總橫力的規定如下：
I S
設計地震水平總橫力：V  aD W', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "0", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00129', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '4 F
y u m
IF S
中小地震水平總橫力：V*  u aD W', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "1", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00130', 'structural-eng', 'structural-eng-moex-109-050f1447', 'sub-structural-eng-03', NULL, 'essay', '2 F
y u m
I S
最大考量地震水平總橫力：V  aM W
M 1.4 F
y uM m
試回答下列問題：
考量建物 50 年設計年限，三種地震對應的年超越機率為何？其結構
分別應該達到何種性能（破壞程度）？此規定的目的為何？這三個地
震力的大小次序一定是 嗎？為什麼？（10分）
震區、工址地盤種類、結構韌性、結∗ 構基本週期、近斷層等如何在設
 >  > 
計地震水平總橫力中被考慮？計算中小地震有何差異處？（儘量以公
式解釋說明，公式可以不完整，重點在說明計算上的邏輯）（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "bd432c46eab8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0319", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "4", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00131', 'structural-eng', 'structural-eng-moex-109-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '2 m
60 kN d e f
∆ ,F
2 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "6173d741b9a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0320", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "3", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00132', 'structural-eng', 'structural-eng-moex-109-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '2 m
g h', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "6173d741b9a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0320", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "3", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00133', 'structural-eng', 'structural-eng-moex-109-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '2 m
(a) (b)
圖4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "6173d741b9a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0320", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "3", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
