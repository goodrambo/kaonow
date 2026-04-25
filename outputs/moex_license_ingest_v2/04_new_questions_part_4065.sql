-- W1.4 new questions batch 4065/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00404', 'structural-eng', 'structural-eng-moex-097-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '請繪出圖一（a）、（b）桿件 AB之剪力圖及彎矩圖。（20 分）
60kN
D 10kN/m
m
2
A B
C
6m 2m 2m A 5m C 3m B
圖一（a） 圖一（b）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "362317450d0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00405', 'structural-eng', 'structural-eng-moex-097-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖二 AD、BD、CD 桿件之斷面皆為半徑為 r 之圓形，使用材料之彈性模數皆為 E，
於D點受P力。試求：D點變位；欲使桿件皆不致發生挫曲，取安全係數為2，
試求此構造容許承受之最大 P力。（25 分）
A
B 30° D
30°
P
C
L
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "362317450d0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00406', 'structural-eng', 'structural-eng-moex-097-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖三（a）長方形斷面之梁，斷面寬 b，斷面高 h。梁之長度為 L，兩端固接，受 q 之
均佈載重。材料性質假設為完全彈塑性，如圖三（b）所示。若梁中心點之變位為 δ，
試繪 q（縱座標）與 δ（橫坐標）之關係圖。（30 分）
σ
σ
Y
Y
O
Y
σ
Y
圖三（a） 圖三（b）
（請接背面）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全一張
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "362317450d0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00407', 'structural-eng', 'structural-eng-moex-097-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '懸臂梁 AB 受圖四（a）所示之三角形載重，梁之斷面如圖四（b），其中 L＝12 m。
已知使用材料之容許應力 σ ＝80 MPa、τ ＝60 MPa，試求此梁能承受之最大 q
w w 0
值。（25 分）
圖四（a） 圖四（b）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "362317450d0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00408', 'structural-eng', 'structural-eng-moex-097-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一具傳統阻尼特性之二層樓平面剪力樓房結構，如下圖所示，u 及 u 為其自由度。
1 2
其中每層樓的質量均為 m＝1500kg，且每個樓層的側向勁度皆為 k（未知）。若經
由系統識別方式得知本結構各模態之自然振動週期為T ＝0.197sec及T ＝0.0752sec，
1 2
且各模態之阻尼比皆為 5%，請回答下列問題：
若樓層的側向勁度 k 可表示為 p×10q N/m，其中 p 為個位數整數而 q 為整數，請
問 p 及 q 值各為何？（10分）
請計算此結構系統各模態之振態向量（將自由度 u 相應之振態值正規化為 1）。
1
（5 分）
請計算此樓房結構之阻尼係數矩陣。（10分）
當應用「多振態反應譜疊加法」計算結構反應的分析過程中，是否必需建立此一
阻尼係數矩陣？（5 分）
m
u
1
m
u
2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "2b475313ac3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00409', 'structural-eng', 'structural-eng-moex-097-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列有關耐震設計規範中的相關問題：
若結構依「避免最大考量地震崩塌之設計地震力 V 」設計時，依規範原意，結
M
構於最大考量地震作用下應不致產生崩塌，但何以規範規定需再作「極限層剪力
強度之檢核」？請說明之。（10分）
許多建築物之抗側力垂直構件的斷面尺寸（及配筋）係由下樓層往上樓層每三至
五個樓層變換一次斷面設計，請從「極限層剪力強度之檢核」的觀點來評論此類
設計方式之缺點。（10 分）
（請接背面）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全一張
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "2b475313ac3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00410', 'structural-eng', 'structural-eng-moex-097-050f1447', 'sub-structural-eng-03', NULL, 'essay', '一含阻尼比 ξ 之單自由度結構系統（週期為 T ）受簡諧外力（週期為 T）作用下，
n f
2
其位移之放大係數為MF 1 1(T /T )2  2(T /T ) 2 。位移放大係數（MF）
n f n f
與週期比（T /T）在不同阻尼比（ξ＝2%、5%及 20%）條件下的關係圖（垂直軸為
n f
MF而水平軸為 T /T）如下所示，請回答下列問題：
n f
一具阻尼比 2%之單自由度結構承受 T /T ＝1 的簡諧外力作用，為降低其振動反
n f
應，故加裝被動消能元件使其整體結構阻尼比增加到 20%（假設 T 不變），請
n
問加裝消能元件後之位移反應與加裝前位移反應的比值為何？另若此結構係承受
T /T ＝1.5的簡諧外力作用時，在相同條件下其位移反應的比值又為何？（10分）
n f
請由「位移放大係數與週期比的關係圖」及問題之計算結果，說明在何種情況
下結構裝設被動消能元件，於受震時能獲得較大的減振效益。（10 分）
請利用「位移放大係數與週期比的關係圖」，說明當結構的阻尼比大於 5%時，
何以耐震設計規範中所訂定的短週期阻尼修正係數 B 大於長週期阻尼修正係數
S
B 。（10分）
1
2255
2200 -------------00..0022
1155
F
M
1100
-----------------00..0055
55
-----------------00..2200
00
00 00..55 11 11..55
T /T
n f', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "2b475313ac3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00411', 'structural-eng', 'structural-eng-moex-097-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列有關「隔震建築物設計」之相關問題：
於 耐 震 設 計 規 範 中 規 定 隔 震 結 構 於 設 計 位 移 下 之 有 效 振 動 週 期 為
T  2 W K g ，請推導此一公式，並說明此公式係在何種條件假設下方能成
eD eD
立。其中 W 為隔震系統上方之結構總靜載重，而K 為隔震系統在設計位移下的
eD
有效勁度。（10分）
若欲減少隔震建築物之隔震系統因受地震作用下的位移反應，請問應於隔震系統
裝設那一類被動消能元件（金屬降伏元件、摩擦消能元件、固態黏彈性元件、液
態黏彈性元件或液態黏滯元件），會有較佳的效果？並請說明其原因。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "2b475313ac3f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00412', 'structural-eng', 'structural-eng-moex-097-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示桁架（truss），A、D 兩點為滾支承（roller），E 點為鉸接（hinge）。若
每根桿件的彈性模數 E 與斷面積 A 為常數，當 B 點有一垂直載重 10 kN 時，計算
支承之反力及各桿件內力。（25分）
D
10kN
m
5
B
m
5
A
C E
10m 10m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "58cb4a64cc0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00413', 'structural-eng', 'structural-eng-moex-097-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試以傾角變位法（slope-deflection method）計算圖示連續梁各結點處之彎矩與剪力，
並繪彎矩圖與剪力圖。圖中 A、H 兩點為固接（fixed），其餘支承均為滾支承（
roller）。已知梁之彈性模數 E與慣性矩 I為常數。（25 分）
10kN 10kN
1.2kN/m 1.2kN/m
A B C D E F G H
3m 3m 6m 6m 6m 3m 3m
（請接背面）
97年專門職業及技術人員高等考試建築師、技師考試暨普通考試記帳士考試、97年第二次 全一張
專門職業及技術人員高等暨普通考試消防設備人員考試、普通考試不動產經紀人考試試題 （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:11+00:00", "source_pdf_sha1": "58cb4a64cc0a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "097250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "097", "exam_name": "097年專技建築師、技師、記帳士、第二次消防設備人員、不動產經紀人考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
