-- W1.4 new questions batch 4070/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00454', 'structural-eng', 'structural-eng-moex-095-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '取一根斷面直徑d =200 mm之實心鋼棒，另取一橡膠環片，其內徑d稍微小於鋼棒
0
之直徑。已知橡膠環片之厚度t =2  mm，寬度b=20  mm。假設環片為線彈性，楊
氏模數E =4000  N/mm2。今將該橡膠環片用手稍撐開後套入鋼棒，假設鋼棒不變形
，試問橡膠環片之內徑d為何值時，可以讓兩者間之接觸壓力達3.3 N/mm2。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a355d0173276", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00455', 'structural-eng', 'structural-eng-moex-095-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖示之梁 AB 與二力桿 BC 組合之結構，兩者長度都為L，且為相同鋼材製，楊氏
模數為E，降伏強度為F ，材料假設為彈性完全塑性且具有極佳之韌性。梁之斷面
y
二次矩為I、彎矩強度（塑性彎矩）為M ；二力桿之斷面積為A。此外已知兩者勁
p
度與強度關係如下：EA/ L =36EI / L3  且AF =9M / L。若梁之軸向變形可忽略
y p
不計，且不考慮梁之軸力對彎矩強度M 之影響，試回答下列問題。
p
試求本結構恰好達降伏狀態時之外力P 及此時 B 點之向下位移∆。（答案須以
y y
EI,L及M 表示）（15分）
p
試求本結構恰好達極限狀態時之外力P 及此時 B 點之向下位移∆。（答案須以
u u
EI,L及M 表示）；此外也請繪出此時梁之彎矩圖與二力桿之軸力圖。（25分）
p
C
L
A 30o
B
L
P', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a355d0173276", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00456', 'structural-eng', 'structural-eng-moex-095-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列問題：
單自由度低黏滯阻尼系統的質量、阻尼係數和勁度分別為 m、c 和 k，初始位移和
速度分別為 d和 v，外力為p(t)，試以 Duhamel 積分式列出系統的位移和速度反應
歷時。（10分）
結構系統的振態週期和阻尼比可由實測紀錄來識別，而實測紀錄的振動源大致有
微動、激振器和地震等三種。試就此三種振動源的頻率內涵，說明識別所需的實
測紀錄有何不同（不用考慮識別技巧等細節），並比較三種實測紀錄所得振態週
期和阻尼比識別值的大小。（12分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "b8711225f291", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00457', 'structural-eng', 'structural-eng-moex-095-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟兩層樓均勻剪力屋架，每層樓之質量均為2000 kg，樓層側向勁度均為4×106 N/m。
試求結構物的各振態週期。（6分）
試求各振態的有效質量佔總質量的百分比。（6分）
此結構物承受基底振動，經由動力分析所得的第一振態等效樓層橫力之行向量為
(11358 N, 18377 N)T，其中上標T代表向量之轉置（transpose），第二振態等效樓
層橫力之行向量為(3997 N, -2470 N)T，試以 SRSS法則將所有振態反應組合，繪
出樓層剪力圖，並標示數值。（10分）
在承受同一基底振動和不考慮頂層外加集中橫力的前提下，試改以耐震規範靜力分
析方法的樓層橫力豎向分配法則，重新繪出樓層剪力圖，並標示數值。（5分）
此兩層樓建築物若非剪力屋架，試問尚需考慮何種變數，以計算勁度矩陣？此時
樓層剪力將變大或變小？為什麼？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "b8711225f291", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00458', 'structural-eng', 'structural-eng-moex-095-050f1447', 'sub-structural-eng-03', NULL, 'essay', '在不考慮用途和各種折減的前提下，試問現行「建築物耐震設計規範及解說」的工址
彈性水平譜加速度係數乃依據那五項因素來決定？並分別說明這些因素如何變動，才
可能提高工址彈性水平譜加速度係數。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "b8711225f291", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00459', 'structural-eng', 'structural-eng-moex-095-050f1447', 'sub-structural-eng-03', NULL, 'essay', '試述調頻質量阻尼器（Tuned Mass Damper）的減震原理。若阻尼器選用的質量過輕，
試問有何缺點？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "b8711225f291", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00460', 'structural-eng', 'structural-eng-moex-095-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之橋梁，試計算 J 點之垂直變位。圖中 AE 為梁（beam）構件，其餘為桁架
（truss）構件，支點A、B、D為滾支承（roller），而支點F與G為鉸支承（hinge）。
假設各構件之 E 值（彈性模數）、I 值（慣性矩）與 A 值（斷面積）皆為常數。不
計構件之自重與梁之深度。（25分）
10 kN 10kN
15m 10m 15m
A D E
B C
F G
10 m
H J K
4@10 m = 40 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "32eed00e5659", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00461', 'structural-eng', 'structural-eng-moex-095-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示之結構受垂直均佈載重 1  kN/m 之作用，試計算連桿（linkage）DB 與
DC 之張力。圖中 AC 為梁構件，A、B、C、D 點均為鉸接（hinge）。假設橫梁
之 EI = 1 kN-m2，連桿之 AE = 1 kN，其中 E為構件之彈性模數，I為斷面慣性矩，
A為斷面積。不計構件之自重與 AC構件之軸向變形，亦不計梁之深度。（25分）
D
12 m
A B C
1 kN/m
9 m 7 m
（請接背面）
高等考試建築師、技師考試暨
95年專門職業及技術人員 考試試題  代號：00360  全一張
普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "32eed00e5659", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00462', 'structural-eng', 'structural-eng-moex-095-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試以彎矩分配法（moment distribution method）計算圖中連續梁各結點處之彎矩，並
繪製彎矩圖。圖中除 A 點為鉸支承（hinge）外，其餘均為滾支承（roller）。已知
梁之 E 值（彈性模數）與 I 值（慣性矩）為常數。彎矩之計算精度取至 0.1 kN-m
以下。（25分）
5 kN-m  1.2 kN/m  1.2 kN/m  5 kN-m
B  C D E  F
A
6 m  8 m  4 m  8 m  6 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "32eed00e5659", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00463', 'structural-eng', 'structural-eng-moex-095-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖示，一建物結構受 100 kN之水平橫力。假設該建物之 AE構件為剛性梁（慣性
矩I =∞），HJLM 構件為剛性矮牆（I =∞）。各柱之彈性模數（E 值）與慣性矩
（I值）均為常數。試以傾角變位法（slope-deflection method）計算長柱AF與短柱
EL二者柱底彎矩之比值，以及二者柱底剪力之比值。不計構件之自重。（25分）
剛性梁
A  B  C  D  E
100 kN
22  m
J K  L
1m
F  G  H  M
剛性矮牆
4@5 m = 20 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "32eed00e5659", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
