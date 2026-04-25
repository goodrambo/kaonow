-- W1.4 new questions batch 4068/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00434', 'structural-eng', 'structural-eng-moex-096-050f1447', 'sub-structural-eng-03', NULL, 'essay', '右圖單自由度系統受到 p(t) =p sinΩt 之激發力：
0
試列出位移 u 與p 間之轉換函數（transfer function）。（5 分）
0
試列出加速度&u&與p 間之轉換函數。（5 分）
0
若p = 0.1 W且限制最大加速度&u& ≤0.05 g， k
0 max
R  p
不考慮阻尼，試設計所需之勁度 k。（5 分）
m
若p = 10 kN，m = 1000 kg，Ω = 2 π，且限制最
0 c
大位移u ≤10 cm，不考慮阻尼，試設計所需
max
u
之勁度 k。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "5e599d27e1ba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00435', 'structural-eng', 'structural-eng-moex-096-050f1447', 'sub-structural-eng-03', NULL, 'essay', '試回答下列問題：
耐震設計時，工址地表加速度經常指回歸期 475 年之地表加速度，請問「475 年」
的依據為何？（5 分）
耐震設計時，如何確保柱為彎矩之韌性破壞而非剪力之脆性破壞？（10 分）
請分別說明隔震與消能二者的原理、適用條件並比較其優劣。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "5e599d27e1ba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00436', 'structural-eng', 'structural-eng-moex-096-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之桁架（truss），點 A、B 及 C 為鉸接（hinge）。若每根桿件之斷面積
A = 1000 mm2，楊氏係數 E = 200 GPa，當 E點有一水平載重 60 kN時，試計算支承
反力及各桿內力。（25 分）
E
D
60 kN
6 m
A  B C
4.5 m 4.5 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "9099d0e30001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00437', 'structural-eng', 'structural-eng-moex-096-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之剛架（frame），其構架高4 m，跨距為12 m，點A、B為固接（fixed），
E 點為鉸接（hinge）。若每根桿件之彈性模數 E 為常數；各桿件之慣性矩（I 或 2I）
分別標示如圖示，且 I 值亦為常數。則在圖示載重下，試求出每根桿件之結點彎矩。
（25 分）
2 kN/m
C  E
2I D 2I
2 m
8 kN
I  I
2 m
A  B
6 m 6 m
（請接背面）
96年專門職業及技術人員高等考試建築師、技師、法醫師考試暨普通考試記帳士考試、96年第 全一張
二次專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "9099d0e30001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00438', 'structural-eng', 'structural-eng-moex-096-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示桁架（truss）在卡車系列載重作用下，求最大可能之 A 點反力及 FG 桿件
內力。（25 分）
20  40 40 40  （kN）
E  F  G H I
1 2 3 4
5 m
C D
2.4 1.5 1.5    （m）
12 m
A  B
4 @ 12 m = 48 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "9099d0e30001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00439', 'structural-eng', 'structural-eng-moex-096-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之剛架（frame）系統，其構架高及跨距均為4 m，B點為滾支承（roller），
A 點為固接（fixed）。若每根桿件之彈性模數 E 與慣性矩 I 為常數，則當 C 點有一
水平載重 20 N 時，請以傾角變位法（slop-deflection method）分析此剛架，並繪製
其剪力圖及彎矩圖。（若以他法計算，則不予以計分）（25 分）
B C
20 N
4 m
A
4 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "9099d0e30001", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00440', 'structural-eng', 'structural-eng-moex-096-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一樓版系統，版厚12 cm，梁腹寬30 cm，梁全深60 cm（含版厚），有效深度53.5 cm，
梁間距為跨距6 m，M  = 12 tf-m，M = 35 tf-m， f′= 280 kgf/cm2， f = 4,200 kgf/cm2，
d l
c y
試以單筋梁設計，使用 D29（面積＝6.469 cm2），並依照鋼筋最大最小間距相關規定
排列鋼筋。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "53afafdeee61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00441', 'structural-eng', 'structural-eng-moex-096-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一簡支梁跨距8 m，斷面為30 cm×60 cm， f′= 280 kgf/cm2， f = 4,200 kgf/cm2，受拉鋼
c y
筋為8-D25（面積＝40.56 cm2）平均分列成兩排，受壓鋼筋為3-D19（面積＝8.55 cm2,
d'' = 6.5 cm），靜載重為自重加上0.1 tf/m，活載重為2 tf/m且其中20%為持續載重，
混凝土單位重 2.4 tf/m3，試求：
（25 分）
靜載重下位移(∆ )
i d
持續載重下位移(∆ )
i sus
活載重產生之瞬間位移(∆ )
i l
經過一年因乾縮潛變後之總位移
經過五年因乾縮潛變後之總位移', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "53afafdeee61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00442', 'structural-eng', 'structural-eng-moex-096-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一柱 45 cm×45 cm，其所受之靜載重 100 tf，活載重 80 tf，由一位於地表下 1.5 m處
之正方形獨立基腳支持，該基腳為 3  m×3  m，有效深度 50 cm， f′=  280 kgf/cm2，
c
f =  4,200  kgf/cm2，混凝土單位重 2.4  tf/m3，土壤單位重 2  tf/m3，土壤承載力為
y
25  tf/m2，在基腳內二垂直方向之鋼筋量均為50 cm2，試檢核該基腳承受彎矩與剪力
之適當性。（25 分）
（請接背面）
96年專門職業及技術人員高等考試建築師、技師、法醫師考試暨普通考試記帳士考試、96年第 全一張
二次專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "53afafdeee61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00443', 'structural-eng', 'structural-eng-moex-096-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一座跨距 20 公尺簡支 I 形預力梁橋，其梁與梁間距為 2.2 公尺，其斷面及數據如下
圖所示，預力梁上之橋面版厚 20 公分，預力梁之混凝土抗壓強度為 350  kgf/cm2，
橋面版之混凝土抗壓強度為280 kgf/cm2，容許壓應力為0.4 f′，容許拉應力為3 f′，
c c
預力鋼線容許應力為 13200 kgf/cm2，預力鋼線總斷面積為 21.7 cm2，假設預力損失
20%，鋼線中心離底部最小距離為 20 公分，除了梁及版自重外，還有其他靜載重為
750 kgf/m，混凝土單位重為 2,400 kgf/m3，試計算出中間梁在跨距中央能承受之集中
活載重。（25 分）
40 cm
17.5 cm
S t = 83,082 cm3      r 2 = 1,445 cm2
S  = 101,370 cm3      c = 62.8 cm
11.3 cm b t
I = 5.2×106 cm4      c  = 51.5 cm
o b
17.5 cm  47.5 cm  112.5 cm  2
A = 3,613 cm
18.7 cm
17.5 cm
55 cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "53afafdeee61", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "096250", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "096", "exam_name": "096年專技建築師、技師、法醫師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
