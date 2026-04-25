-- W1.4 new questions batch 4061/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00364', 'structural-eng', 'structural-eng-moex-099-050f1447', 'sub-structural-eng-03', NULL, 'essay', '圖四(a)及圖四(b)皆為剛性樓版構成的剪力房屋，剛性樓版總質量為 M，柱為鋼柱，
材料性質如圖四(c)所示，柱斷面為邊長b的正方形，EI值為常數，不考慮柱的質量。
試分析：
比較圖四(a)及圖四(b)之剪力房屋之振動頻率。（8分）
比較圖四(a)及圖四(b)之剪力房屋崩塌時之側力 V。（8分）
參考前述之分析結果、塑鉸（plastic  hinge）發展情形、柱剪力、可能的變位等，
從耐震設計觀點比較圖四(a)及圖四(b)兩者之優劣。（9分）
M  M
V  V  σ
σ
y
EI  EI  L  EI  EI  L
ε
圖四(a) 圖四(b) 圖四(c)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "fde14fa3c853", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "300", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00365', 'structural-eng', 'structural-eng-moex-099-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之桁架（truss）結構，其支承點 B 為滾支承（roller），而支承點 G 則為
鉸支承（hinge）。當H點承受一垂直向下載重30 kN時，請計算AC、BF與 DE三
根桿件之軸力。（20分）
A  B
2 m
D
C  F
E
2 m
G
H
30 kN
2 m  2 m  2 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7c9dbb3310c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "600", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00366', 'structural-eng', 'structural-eng-moex-099-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之剛架（frame），其支承點A為固定端（fixed  end），而支承點D則為滾
支承。另外，構件AC與構件CD之彈性模數與慣性矩乘積分別為EI及 2EI，且EI  =
1000 kN-m2。請計算：當B點承受一水平向左載重200 kN時，C點之轉角；當C點
承受一逆時針方向力矩 50 kN-m時，B點之水平變位。（30分）
10 m
D  C
2EI
5 m
EI B
5 m
A
（請接背面）
99年專門職業及技術人員高等考試建築師、技師 全一張
考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7c9dbb3310c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "600", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00367', 'structural-eng', 'structural-eng-moex-099-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之剛架，其支承點 A 與 D 均為固定端，同時每根構件之彈性模數與慣性
矩乘積均為常數值 EI。當 B 點承受一水平載重 P 且 E 點承受一垂直載重 2P 時，請
以傾角變位法（slope-deflection method）計算 A、B、C、D 各節點之彎矩。（若以
其他方法計算不予計分）（25分）
2P
P
B  E  C
3L/2
A  D
L/2  L/2  L/2  L/2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7c9dbb3310c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "600", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00368', 'structural-eng', 'structural-eng-moex-099-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之桁架結構，其三個支承點 B、C、D 均為鉸支承，且 A 點承受一垂直向下
載重 225 kN 及一水平向右載重 100 kN。假設各桿件之彈性模數與斷面積乘積均為常
數值EA = 10000 kN，請以直接勁度法（direct stiffness method）計算A點之水平變位
與垂直變位，並解出桿件BA之軸力。（若以其他方法計算不予計分）（25分）
225 kN
A  100kN
3 m
4 m
D
B  C
3 m  4 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7c9dbb3310c1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "600", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00369', 'structural-eng', 'structural-eng-moex-099-3783d3a6', 'sub-structural-eng-05', NULL, 'single_choice', 'cm  75 cm', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "38eeb5bb7a95", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "100", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": 68, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00370', 'structural-eng', 'structural-eng-moex-099-3783d3a6', 'sub-structural-eng-05', NULL, 'single_choice', '.33  ccmm淨淨間間距距 5500  ccmm', '["", "", "", ""]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "38eeb5bb7a95", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "100", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": 99, "answer_corrected": false, "flags": ["answer_missing", "incomplete_options"], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00371', 'structural-eng', 'structural-eng-moex-099-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一斷面如圖一所示，使用SS540鋼料（降伏強度F ＝4.0 tf/cm2），求此斷面強軸之：
y
降伏力矩M （tf-cm）。（10分）
y
塑性力矩M （tf-cm）。（10分）
p
2
2
2
2
2    2    2
（單位為公分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "94e183deb9cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "200", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00372', 'structural-eng', 'structural-eng-moex-099-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '鋼結構材料在其設計生命年限內，須做好防銹蝕之處理，以免影響結構物之安全。
依瑞典標準協會 SIS-05-5900 或美國鋼結構塗裝協會（SSPC），鋼材表面之銹蝕度
如何分類？（10分）
詳述「熱浸鍍鋅除銹」之原理、施工方式及預期成效。（10分）
（請接背面）
99年專門職業及技術人員高等考試建築師、技師 全一張
考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "94e183deb9cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "200", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00373', 'structural-eng', 'structural-eng-moex-099-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一受壓桿件，斷面由四個不等肢角鋼（L150×100×15）以繫板和繫條穩固組合而
成（如圖二），柱的有效長度為 25 m，若繫板和繫條之斷面積不計，鋼料降伏強度
F ＝2.52 tf/cm2，E＝2,040 tf/cm2。
y
以容許應力設計法（ASD），求組合斷面之挫屈載重（tf）。（15分）
以極限設計法（LSD），求組合斷面之設計強度（tf）。（15分）
Y
L 15 cm × 10 cm × 1.5 cm
X X
C.G. c = 5.0 cm，c = 2.53 cm
40 cm c x y
x
I = 782 cm4，I = 276 cm4
x y
c
y A = 35.3 cm2
Y
40 cm
單角鋼斷面尺寸及性質
組合斷面
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "94e183deb9cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "200", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
