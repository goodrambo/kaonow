-- W1.4 new questions batch 4071/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00464', 'structural-eng', 'structural-eng-moex-095-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一懸臂梁，跨度 4.5 m，全梁承受均布靜載重及均布活載重。其斷面如圖一所示，
下方為受壓面，A ＝40  cm2，A''＝24  cm2， f''＝280  kgf/cm2， f ＝4200  kgf/cm2，
s s c y
E ＝2.04×106 kgf/cm2。剪力鋼筋採用#3 垂直肋筋且全梁均勻分布，#3 鋼筋之斷面
s
積為 0.71  cm2。此梁所能承受之設計載重由斷面撓曲強度所控制，若須考慮壓力鋼
筋對斷面撓曲強度之貢獻，試問此梁剪力鋼筋所能容許之最大間距為何？（40分）
（註：撓曲設計之強度折減因數φ採用 0.9，剪力設計之強度折減因數φ採用 0.75）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "2194d4a28b93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00465', 'structural-eng', 'structural-eng-moex-095-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一無側移柱，淨高6 m，其斷面如圖二所示， f''＝280 kgf/cm2， f ＝4200 kgf/cm2，
c y
E ＝2.04×106 kgf/cm2，#10 鋼筋之斷面積為 8.14 cm2。此柱承受軸向壓力及對 Y 軸
s
之單向彎矩，柱之有效長度因數 k＝0.9。此柱之設計軸力 P ＝400 tf，最大設計軸向
u
靜載重與設計軸力之比值β＝0.3，柱頭之設計彎矩 M ＝15  tf-m，柱腳之設計彎矩
d u
M ＝27  tf-m，且柱成單曲率彎曲，試以彎矩放大法求設計此柱時所應採用之放大彎
u
矩M 值為何？（20分）
c
圖二
（請接背面）
高等考試建築師、技師考試暨
95年專門職業及技術人員 考試試題  代號：00310  全一張
普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "2194d4a28b93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00466', 'structural-eng', 'structural-eng-moex-095-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一簡支梁及其斷面如圖三所示， f''＝280  kgf/cm2， f ＝4200  kgf/cm2，
c y
E ＝2.04×106 kgf/cm2，n＝8，#9鋼筋之斷面積為6.47 cm2。若於梁上先施加0.8 tf/m
s
之均布靜載重 w （含自重），再於梁中央施加一 5  tf 之集中活載重 P ，試求施加
D L
集中活載重 P 後於梁中央所增加之即時撓度為何？（20 分）（註：可不考慮壓力
L
筋之影響）
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "2194d4a28b93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00467', 'structural-eng', 'structural-eng-moex-095-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一簡支預力梁，其跨度為20 m，梁寬為30 cm，梁全深為80 cm，梁之f''＝350 kgf/cm2。
c
在此梁中，預力損失後預力鋼鍵之有效預力為 210 tf。此梁在預力損失後開始吊裝，
並在其上澆置 15 cm 厚樓版，澆置樓版時利用梁作為支撐，澆置後跨度中央梁與樓版
之斷面如圖四所示，樓版之 f''＝280 kgf/cm2。當樓版硬化並與梁結合為一體後，再於
c
樓版上施加 1.0  tf/m2之均布活載重。試求施加均布活載重後，跨度中央斷面預力梁
上緣及下緣之混凝土所承受之應力為何？（20分）
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "2194d4a28b93", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00468', 'structural-eng', 'structural-eng-moex-095-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請回答以下有關鋼結構挫屈（Buckling）之問題：（每小題 5分，共 20分）
請說明鋼骨結實斷面（Compact Section）與局部挫屈（Local Buckling）有何相關性？
影響鋼柱發生彎曲挫屈（Flexural Buckling）之主要參數為何？
請說明鋼梁發生側向扭轉挫屈（Lateral Torsional Buckling, LTB）之原因為何？
影響鋼梁發生側向扭轉挫屈之主要參數為何？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "076c07b56f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00469', 'structural-eng', 'structural-eng-moex-095-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請回答以下有關鋼結構高強度螺栓接合與銲接之相關問題：（每小題5分，共20分）
進行螺栓接合時，對高強度螺栓施加預拉力之意義為何？
何謂螺栓接合之塊狀剪力失敗（Block Shear Failure）？試繪圖說明之。
寫出鋼結構銲接縮寫名詞「FCAW」之英文全名及中文譯名。
依據我國鋼結構施工規範之要求，除非有適當的防護，在何種相對溼度環境與多
大的風速之下，不得進行工地現場銲接？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "076c07b56f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00470', 'structural-eng', 'structural-eng-moex-095-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一 H型鋼梁，斷面標示為H 600 × 300 × 12 × 20（mm），試求出︰（每小題5分
，共 20分）
斷面強軸之慣性矩 I  =？mm4
x
斷面弱軸之迴轉半徑 r  =？mm
y
斷面強軸之塑性斷面模數Z  =？mm3
x
斷面強軸之塑性彎矩強度M =？tf-cm（若鋼材降伏應力 F = 3.5 tf/cm2）
p  y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "076c07b56f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00471', 'structural-eng', 'structural-eng-moex-095-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請回答以下有關鋼結構之板梁（Plate Girder）設計問題：（每小題 5分，共 20分）
板梁的主要特色及使用時機為何？
為何板梁可能發生剪力挫屈（Shear Buckling）？試繪圖說明之。
如何避免板梁發生剪力挫屈？
何謂板梁的張力場效應（Tension Field Action ）？試繪圖說明之。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "076c07b56f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00472', 'structural-eng', 'structural-eng-moex-095-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '在國內的鋼結構大樓建築中，常採用銲接組合箱型鋼柱（Box Column）與 H型鋼梁
，請回答以下問題：（每小題 10分，共 20分）
繪出一組箱型鋼柱與 H 型鋼梁接合之抗彎矩梁柱接頭（Beam-to-Column
Connection）之立面細部圖，並詳細標示相關銲接符號。
說明梁柱接頭區箱型鋼柱內之連續板（Continuity  Plate）的功能為何？若未於接
頭區箱型鋼柱內配置連續板，大地震來襲時接頭區可能發生何種破壞情形？（試
繪圖說明可能的破壞情形）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "076c07b56f02", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "095240", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "095", "exam_name": "095年建築師、技師考試暨不動產經紀人、地政士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00473', 'structural-eng', 'structural-eng-moex-094-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一版樁(sheet pile)使用於地下水位以上之
開挖支撐，開挖面高 9m，其背後為砂性
3 o  1.5m
土壤，單位重γ =18 kN/m ，摩擦角φ =32
s s
m 地錨
，凝聚力 c =0，開挖面以下為黏土層，單
s 5
.1
位重γ =20 kN/m3，摩擦角φ =0o，凝聚力
c c m
9m
c =45kPa。若版樁自頂部下 1.5m 設置有  9
c 砂土
一排水平地錨，且版樁深入黏土層底部為
自由土壤支撐（free earth support）形式：
試繪出作用於版樁之土壓力分佈情形。
（10 分）  黏土
版樁深入黏土層之最少入土深度及地錨  free earth support
預力為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "323ee240de3d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
