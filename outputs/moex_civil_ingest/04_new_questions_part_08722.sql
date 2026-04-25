-- W1.6 questions batch 8722/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-b0f95c3f-moex-00066', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-7e79a2d7', 'sub-pukao-b0f95c3f-04', NULL, 'essay', '下圖為ㄧ行星齒輪系示意圖，右側為輸入軸，左側為輸出軸，所有齒輪
都是壓力角 20度的正齒輪，齒輪 2、4、5的齒數分別為 T =75、T =40、
2 4
T =50。齒輪 2 為固定不動，其模數為 2公厘（mm），齒輪 5 的模數為 4
5
公厘，輸入軸轉速為 200 轉／每分鐘，請問：
齒輪3的齒數是多少？其基圓直徑與節圓直徑各為多少？齒輪4與齒
輪 5 的中心距離為多少？（15 分）
輸出軸轉速為多少？轉動方向與輸入軸轉向相同嗎？（10分）
4 3
5 2
Output Input
Fixed', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "24b28b4d6385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械原理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00067', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-7e79a2d7', 'sub-pukao-b0f95c3f-04', NULL, 'essay', '下圖為一組四連桿機構的示意圖，連桿 1 為固定桿，連桿 2為輸入桿，
附表則列出甲、乙兩組四連桿的4 根連桿長度，r 、r 、r 、r 分別代表
1 2 3 4
桿 1、桿 2、桿 3及桿 4的長度（單位為公分），請問：
這兩組四連桿是否都可以組成四連桿機構？對可以組成的四連桿機
構組，是否至少有一根連桿可以旋轉 360 度？若有，是那幾根連桿？
（13 分）
對可以組成的四連桿機構組，請找出連桿 4可以旋轉到的兩個極限位
置，並分別畫出連桿 4在極限位置的四連桿機構的構型，且計算出連
桿 4 在這兩個極限位置間可轉動的角度。（12分）
D
r r r r
3 1 2 3 4
r3
r4
4 甲 20 45 15 90
B
r2
2
r1
O O 乙 25 10 25 20
2 4
1 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "24b28b4d6385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械原理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00068', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-7e79a2d7', 'sub-pukao-b0f95c3f-04', NULL, 'essay', '下圖為帶式制動器示意圖，鼓輪半徑為 40公分，與摩擦帶的接觸角 θ為
210 度，摩擦係數為 0.25、a=50公分、L＝120公分，對制動桿末端施予
P公斤力進行制動，請問：
鼓輪逆時針旋轉時，摩擦帶左邊張力、還是右邊張力較大？兩邊張力
比值（F /F ）為何？（10分）
1 2
當施力 P值固定，對逆時針旋轉鼓輪產生的制動扭矩較大、還是對順
時針旋轉鼓輪產生的制動扭矩較大？還是都一樣？請寫出估算方式。
（8 分）
鼓輪逆時針旋轉時，若要產生制動扭矩200公斤力-公分（kgf-cm），P
應該要多少公斤力？（7分）
帶
摩擦材料
鼓輪
制動桿
支點', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "24b28b4d6385", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1306", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械原理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00069', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '描述金屬切削加工中可能出現的四種切屑類型。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "7a47377ff12b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00070', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '何謂比切削能（specificenergyinmetalmachining）？其會有尺寸效應
嗎？若有，是如何改變呢？（8分）
為什麼磨削的比切削能值較車削、銑削等加工高得多？（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "7a47377ff12b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00071', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '鑄造的模型可分為開模（openmold）和閉模（closedmold），請說明其
有什麼區別？（8 分）
將金屬從室溫升高到鑄造溫度所需的熱量是那三個能量成分的總
和？（6分）
在開模鑄造（無澆注系統）操作中由純鋁鑄造而成直徑=50 cm、厚
度=2.5cm 的圓盤。已知鋁在 660C 熔融，但澆注溫度為 760C。鋁
的熔融熱=398 J/g，比熱=0.879 J/gC，密度=2.7 g/cm3。假設固體鋁
和熔融鋁的比熱值相同。計算從室溫 25C 開始將金屬加熱到澆注溫
度所需的（a）單位質量的能量，（b）總能量。（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "7a47377ff12b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00072', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '比較硬焊（brazing）和軟焊（soldering）製程的異同。（4分）
硬焊和軟焊分別有那些缺點或局限性？（8分）
硬焊或軟焊在什麼情況下優於熔接（welding）？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "7a47377ff12b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00073', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '請說明何謂擠製（extrusion）製程，並如何區分直接擠製和間接擠製？
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "7a47377ff12b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00074', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-4995b7fd', 'sub-pukao-b0f95c3f-02', NULL, 'essay', '百（千）分表是一種既簡單又容易操作的測量工具，常見有針盤指示量
表（dialindicators）和槓桿式量表（leverindicators），請分別說明其構成
與使用時應注意事項。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "7a47377ff12b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "六", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL),
  ('pukao-b0f95c3f-moex-00075', 'pukao-b0f95c3f', 'pukao-b0f95c3f-moex-110-a8bf1277', 'sub-pukao-b0f95c3f-03', NULL, 'essay', '請分別說明下列加工符號的意義，並繪圖示意說明。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:34+00:00", "source_pdf_sha1": "50d8c954c899", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "452", "s": "1308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
