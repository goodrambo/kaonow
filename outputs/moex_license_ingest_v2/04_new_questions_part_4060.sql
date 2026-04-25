-- W1.4 new questions batch 4060/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00354', 'structural-eng', 'structural-eng-moex-099-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一砂土層厚度4 m，其土壤單位重γ = 17 kN/m3，γ = 18 kN/m3，摩擦角φ = 30°，
dry  sat
其下方為黏土層厚度10 m，土壤單位重γ = 17.5 kN/m3，凝聚力c = 30 kN/m2 。如
sat
擬在該地層建一 8  m高之擋土牆，其牆背為垂直。該地層之地下水位面位於地表以
下 2 m，利用倫金（Rankine）理論計算牆背所受主動土壓力，繪出牆背所受各項壓
力分佈圖並計算所有合力及作用位置。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "2cf01a934a6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "500", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00355', 'structural-eng', 'structural-eng-moex-099-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一厚2 m之黏土層，其下方為厚6 m之砂土層，地下水面位於地表下1 m處。今如在
該地層開挖至地表下 4 m後進行建築結構，為便利施工構築，將開挖面內之水位抽降
至與開挖面等高，開挖擋土壁貫入至深度5 m處。砂土之單位重為γ = 18 kN/m3；黏
sat
土層飽和單位重為γ = 17.5 kN/m3，請計算位於開挖擋土壁內側A點所受之滲流力；
sat
並檢核此時開挖底面是否有管湧問題？（25分）
2m
A
6m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "2cf01a934a6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "500", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00356', 'structural-eng', 'structural-eng-moex-099-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一方型放腳基礎（footing）置於地表下 2 m處，上方為厚 2 m之砂土層，位於地
下水位以上且單位重為γ = 16 kN/m3，砂土層下方為厚 16 m之過壓密黏土層，地下
t
水位於基腳所在深度。基腳之寬度為 4 m，黏土層飽和單位重為γ = 17.5 kN/m3，
sat
由試驗得其不排水剪力強度C = 60 kPa。採用安全係數為FS = 3，則其容許承載力為
u
何？以此容許承載作設計載重，如地下水位下降 4 m，則將對基礎之長短期承載力及
安全係數產生何種影響？（提示：F = 1+0.2(B/L)；F = 1+0.2(D/B)）（25分）
sc  dc  f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "2cf01a934a6c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "500", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00357', 'structural-eng', 'structural-eng-moex-099-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '試回答下列問題：（25分）
P
簡單說明壓力構件挫屈（buckling）之觀念。
π2EI
右圖構件在公式P = 中 k之值是多少？
c.r. 2
(kL) L, E, I
上式k之名稱是什麼？物理意義是什麼？
用積分法求出此 k值。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "274b925f0b03", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "400", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00358', 'structural-eng', 'structural-eng-moex-099-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '試畫下列斷面之剪力流：（25分）
若剪力由上而下通過下列斷面之剪力中心，請畫下列斷面之剪力流。
若受順時針方向扭矩作用，請畫下列斷面之剪力流。
(a)(c)(d)為薄壁構件
裂縫
(a)
(b) (c) (d)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "274b925f0b03", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "400", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00359', 'structural-eng', 'structural-eng-moex-099-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '試回答下列問題：（25分）
c
解釋平面應力狀態（plane stress state）並舉一例。
解釋平面應變狀態（plane strain state）並舉一例。
右圖為三片應變計貼法，貼在自由面上，若 b
45º
ε =1000μ ， ε =800μ ， ε =2000μ ， ν=0.3 ，
a b c
45º
E=2.1×106kg/cm2，求σ 、σ 及絕對τ 。
max min max
a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "274b925f0b03", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "400", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00360', 'structural-eng', 'structural-eng-moex-099-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '試回答下列問題：（25分）
y
彎曲理論中ε= 是基於什麼假設而成立？此公式是否適用於塑性範圍？為什麼？
R
一桿件其斷面為寬50 mm、高120 mm的矩形斷面，理想彈塑材料，σ = 240 MPa，
y
E = 200 GPa，求降伏彎矩M 及達到M 時對應之曲率半徑。
y y
若 M = 35 kN-m作用於該斷面，求曲率半徑。
其後又把 M = 35 kN-m移除，求最後沒有彎矩作用下之曲率半徑。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "274b925f0b03", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "400", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00361', 'structural-eng', 'structural-eng-moex-099-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖一剛性桿件 AB 長度為 L，B 端鉸承，A 端有一集中質量 m，另有一彈簧常數為 k
的線性彈簧與集中質量 m 連接。當 θ＝0 時，彈簧無伸長縮短。不考慮桿件 AB 的質
量，假設 θ甚小：
請問此系統在什麼條件下為穩定？（10分）
請列出此系統在穩定情況下的運動方程式及其振動頻率。（15分）
k
m
A
θ
L
B
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "fde14fa3c853", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "300", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00362', 'structural-eng', 'structural-eng-moex-099-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖二懸臂梁AB，其 EI值為常數，有一點質量（point mass）m從 B點上方h高度處
輕輕放開並落在 B點，不考慮懸臂梁 AB的質量，試求：
懸臂梁 AB的振動頻率。（10分）
此懸臂梁的最大振幅。（15分）  m
h
EI
A  B
L
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "fde14fa3c853", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "300", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00363', 'structural-eng', 'structural-eng-moex-099-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖三為簡支橋梁配置的示意圖，若上構單位長度質量為 m；墩柱之 EI 值為常數，不
考慮墩柱之質量，亦不考慮桿件軸向之伸長縮短。試選取橋梁振動單元，並應用橋
梁耐震設計規範公式（如下），計算橋梁周期T。（25分）
γ
β= w(x)U(x)dx，γ= w(x)[U(x)]2dx，T = 2π
∫ ∫
βg
其中 w(x)為橋梁結構單位長度靜載重，U(x)為橋梁變形。
L  L  L
EI  EI  EI  EI  L
圖三
（請接背面）
99年專門職業及技術人員高等考試建築師、技師 全一張
考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "fde14fa3c853", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "300", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
