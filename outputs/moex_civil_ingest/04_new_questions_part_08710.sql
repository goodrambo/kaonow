-- W1.6 questions batch 8710/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-acfc4025-moex-00215', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '電路如圖三所示，電容初始電壓為v (t 0)1V，兩開關分別於時間為
C
0 秒時與 1000 秒時閉合。（每小題 5 分，共 20分）
請計算電容上的初始電荷（庫倫）。
請計算S 閉合後流過 2 Ω電阻之瞬間電流i (t 0)（A）。
1 R
請計算S 閉合後流過 2 Ω電阻之瞬間電流i (t 1000)（A）。
2 R
請計算該電路最終電容電壓v (t )（V）。
C
1 2
i (t)  i (t)
C R
v (t)
6V  0.1F  3V
C
S S
2 1
t 1000sec t 0sec
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b12a72c40952", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00216', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '穩態電路如圖四所示，虛線內為電路負載。（每小題 5 分，共 20分）
請計算各電容之阻抗（Ω）。
請計算穩態電流i (t)。
ss
請計算各 1 Ω電阻之平均功率。
請計算負載之複數功率。
1 0.01F
0.01H
) 0.01F 1
t0
0
1
(
n
i i (t)
s
0 ss
1
圖四
|
45020', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b12a72c40952", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00217', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-6fd7282b', 'sub-pukao-acfc4025-04', NULL, 'essay', '某理想變壓器繞線方向、匝數與電路圖如圖五所示，利用示波器所量到
的二次側電壓v (t)與二次側電流i (t)穩態波形如圖六所示，已知
2 2
v (t)300sin(at/4)(V)。（每小題 5 分，共 20 分）
1
請根據波形計算電阻 R之消耗功率（W）。
請根據波形計算係數 a。
請根據波形寫出電流i (t)之數學函式。
2
請根據波形計算電抗X （Ω）。
L
v 1ms/div
2
i(t) i (t)
1 2
i
2
jX
L
v(t) v (t)
1 2 R
Z
Load
50V/div 5A/div
圖五 圖六', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "b12a72c40952", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1202", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "基本電學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00218', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '有一循序電路如下圖。依據晶圓代工廠所提供的元件庫（celllibrary），各元件的訊號延遲時間如下：AND gate的延遲時間為2ns，XORgate的延遲時間為4ns，Dflipflop的setuptime為3ns，clock-to-outputtime 為1ns。該電路能正確運作的最短時脈週期（clockperiodtime）為何？', '["6ns", "8ns", "10ns", "12ns"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00219', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '下列程式將新增幾個process（不含原process）？ main () { fork (); fork (); }', '["2", "3", "4", "5"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00220', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '在布林（Boolean）代數中，下列何者是DeMorgan''sLaw？（+為OR，．為AND，'' 為NOT）', '["X+Y．Z=(X+Y)．(X+Z)且X．(Y+Z)=X．Y+X．Z", "X+Y=Y+X且X．Y=Y．X", "X+X．Y=X且X．(X+Y)=X", "(X+Y)''=X''．Y''且(XY)''=X''+Y''"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00221', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '下列那一個作業系統與其他三者最不相關？', '["FreeBSD ∙", "Linux", "DOS", "Solaris"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00222', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', 'X=11111011 和Y=00000111 都是以二補數表示法（2''s complement）所呈現的8位元二進位（Binary）數', '["", "", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00223', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '2 字，若將X+Y轉換為十進位（Decimal）數字，結果應為下列何者？', '["-254", "-253", "2", "258"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00224', 'pukao-acfc4025', 'pukao-acfc4025-moex-110-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '某處理器以two''scomplement編碼紀錄有號數（signednumber），且每個暫存器寬度為8bits。下列數值中， 何者無法以一個暫存器紀錄？', '["128", "127", "-127", "-128"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:41+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "449", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
