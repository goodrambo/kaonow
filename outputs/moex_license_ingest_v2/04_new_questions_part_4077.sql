-- W1.4 new questions batch 4077/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00524', 'structural-eng', 'structural-eng-moex-093-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依據我國鋼結構容許應力設計法規範及解說：
試述為何要採用C 係數？（5分）
m
原本C  = 0.6-0.4 (M /M )≥0.4的大於等於0.4為何我國規範不再採用？（5分）
m 1 2
一支懸臂鋼構材，自由端承受垂直力P = 2000 kg，構材長度L = 350 cm，構材為
結實斷面，強軸彈性斷面模數S  = 451 cm3，弱軸彈性斷面模數S  = 152 cm3，迴
x y
轉半徑r  = 8.81 cm，r  = 5.13 cm，斷面積A = 59 cm2，彈性模數E = 2.1×103 t/cm2，
x y
F  = 2.5 t/cm2，忽略自重與剪應力的影響，且強軸有充分側向支撐，構材僅會繞弱
y
軸彎曲，有效長度係數K = 2.1，C  = 127，F  = 0.66 F，F  = 0.75 F，C  = 0.85，
c bx y by y m
試求構材是否滿足容許應力設計法的規定。（15分）
主要公式提示如下：
⎡ 2⎤
1⎛KL⎞
⎢1− ⎜ ⎟ ⎥F
⎜ ⎟ y
⎢ 2 C r ⎥
⎝ c ⎠
⎣ ⎦
若KL/r＜C 則F = ；
c a 3
5 3⎛KL⎞ 1⎛KL⎞
+ ⎜ ⎟− ⎜ ⎟
⎜ ⎟ ⎜ ⎟
3 8 C r 8 C r
⎝ c ⎠ ⎝ c ⎠
12π2E
若KL/r≥C 則F =
c a 2
23(KL/r)
f f C f C f f f 12π2E
a bx mx by my 1.0； a bx by 1.0；F′
+ + ≤ + + ≤ =
F 0.6F F F e ( )2
⎛ f ⎞ ⎛ f ⎞ 23KL/r
a F ⎜1 a ⎟ ⎜ a ⎟ y bx by
− F 1−
bx⎜ ⎟ by
F′ ⎜ F′ ⎟
⎝ ex⎠ ⎝ ey⎠
f f f
a bx by 1.0
+ + ≤
F F F
a bx by', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "b239d84caedc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00525', 'structural-eng', 'structural-eng-moex-092-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '欲在一基地進行開發建築，初步規劃基礎開挖深度為地下8 m，基礎寬度為10 m。
該基地地層為厚度14 m之砂土層，下方為厚層黏土，地下水位於深度5 m處。說明
此時基地土壤之不擾動土樣之取樣應如何配置及所需進行之工程性質實驗與求取參
數為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "6282c1482499", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00526', 'structural-eng', 'structural-eng-moex-092-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一方形放腳基礎置於地表下1.5 m處，該處地層為厚度5 m之砂土層，下方為厚
6 m之黏土層，地下水位於深度1.5 m處。該基腳尺寸為2 m × 2 m，荷重Q = 1200 kN；
砂土之單位重γ  = 18.5 kN/m3，γ  = 18.5 kN/m3；黏土飽和單位重γ  = 18 kN/m3，
dry sat sat
初始孔隙比e  = 0.8，壓縮指數C = 0.25，C = 0.06，預壓密應力為90 kPa；此時黏
0 c s
土層受荷重所產生之壓密沉陷量為何？（可用2：1法計算應力）（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "6282c1482499", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00527', 'structural-eng', 'structural-eng-moex-092-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一黏土層厚10 m，飽和單位重γ  = 17.5 kN/m3，下方為受壓含水砂土層，壓力水
sat
頭為7 m，砂土之飽和單位重γ  = 18 kN/m3；現欲在黏土層內進行開挖，其開挖深
sat
度可達多少而不致引起隆起？此時開挖面下方兩土層界面處之有效應力為何？
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "6282c1482499", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00528', 'structural-eng', 'structural-eng-moex-092-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一正常壓密黏土其有效摩擦角為30°，如自該黏土之現地地層深度12 m處取不擾
動土樣，假設未受解壓影響，其不排水（UU三軸試驗）剪力強度為何？（黏土飽和
單位重γ  = 17.5 kN/m3，地下水位於地表）（25分）
sat', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "6282c1482499", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00529', 'structural-eng', 'structural-eng-moex-092-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '將一圓柱形鞭炮點燃爆裂，圖一 (a), (b), (c) 中短線段表示爆裂裂口之方向，試問那
一個圖中所表示的是最可能的爆裂方向？試推導數學式，證明您的選擇。（25分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "7fa6e9268d27", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00530', 'structural-eng', 'structural-eng-moex-092-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '設有如圖二所示之均勻斷面梁，
試繪該梁之剪力圖 (V-dia) 及彎矩圖 (M-dia)。（10分）
試求斷面C之上緣a點之軸向應力，σ 。（15分）
xc
y
ρP  a
q=   ρ
P  ．
λ 1 in
需
2 in
x
D  C  E  2 in
A
B  1 in
λ  λ  λ  λ
2 in 1 in 2 in
P = 3000 1b
梁斷面
λ= 40 in  圖二
E = 30 ×106 psi', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "7fa6e9268d27", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00531', 'structural-eng', 'structural-eng-moex-092-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '承上題，試求圖二所示均勻斷面梁中B點之轉角 (θ ) 及C點之垂直變位 (δ ) 。（25分）
B yc', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "7fa6e9268d27", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00532', 'structural-eng', 'structural-eng-moex-092-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '設有一受力如圖三所示之平面元素，試求其主應力σ ，σ ，及最大剪應力τ 。並
1 2 max
求主應力軸x''與x軸之夾角θ。（25分）
σ  = 6000 psi
y
τ = 4000 psi
y
σ    x
x σ  = 16000 psi
x
σ
y
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "7fa6e9268d27", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00533', 'structural-eng', 'structural-eng-moex-092-050f1447', 'sub-structural-eng-03', NULL, 'essay', '試回答下列問題：
挫屈拘束支撐(buckling restrained braces)或稱為無黏著支撐(unbonded braces)近年
來在地震頻繁國家常被用來取代傳統的斜撐，試由力學行為比較說明其優點。（7分）
現行建築物耐震設計規範中，地震橫力分配時在某些情形下要於頂層額外加一側
力F ，其餘依倒三角形做豎向分配。加F 的原因為何？（7分）
t t
現行建築物耐震設計規範中，動力分析法主要係以多振態反應譜疊加法為之，若
所關心的是一樓基底剪力，說明並解釋振態個數之選取原則為何？假設動力分析
模型含地下室，且地下室總重W ，地上層總重W 。（6分）
b a
地震動力分析時之擬加速度(pseudo-acceleration)反應譜與絕對加速度反應譜定義
為何？彼此有何關係？把地震動力分析模擬為等值水平靜側力所用的是前者還是
後者？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "b02c63aad15b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
