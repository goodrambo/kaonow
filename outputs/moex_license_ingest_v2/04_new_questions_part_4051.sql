-- W1.4 new questions batch 4051/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00264', 'structural-eng', 'structural-eng-moex-103-050f1447', 'sub-structural-eng-03', NULL, 'essay', '設兩層樓之平面剪力樓房結構及其位移自由度設定如圖一所示，其中各樓層質量皆
相同為m1500kg，而各振態之相關參數如下：T 0.20sec，T 0.075sec，
1 2
0.05， 0.62 1.00T， 1.62 1.00T。假設此一樓房結構承受某
1 2 1 2
一地震（5%阻尼比所相應之水平加速度反應譜係數為S ）作用下能維持在線彈性。
a
T
0.20.4  ,   T0.12sec
0.2
S 0.2 ,   0.12secT0.6sec
a
0.12
,   T0.6sec
T
請回答下列問題：
計算各振態所相應之有效振態質量比，並說明其所代表的意義。（10 分）
以 SRSS 振態組合律計算該結構受此地震作用下之基底剪力V ，以 Tf 表示。（10 分）
b
以 SRSS 振態組合律計算該結構受此地震作用下之屋頂加速度u ，以m sec2表示。
2
（10分）
m
u
2
m
u
1
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "2ae29912e0b9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00265', 'structural-eng', 'structural-eng-moex-103-050f1447', 'sub-structural-eng-03', NULL, 'essay', '假設某五層樓房屋結構採用鉛心橡膠支承墊設計為基礎隔震建築，其上部結構總重為
W。此一房屋結構共有 n 根柱，每一根柱下方皆裝設相同的鉛心橡膠支承墊。鉛心橡
膠支承墊材料之力與位移關係假設為雙線性（初始勁度k 、降伏強度F 及降伏後勁
o y
度k ）。假設此一隔震建築在設計地震（回歸週期為 475 年）作用下，其上部結構
o
可維持在線彈性。阻尼比為5%時設計地震所相應之水平加速度反應譜係數為S ，且
aD
短週期與長週期結構之阻尼比修正係數分別為 B 與 B 。當假設上部結構為剛性體時，
S 1
為計算其隔震系統之設計位移D ，請詳列其分析步驟（含計算式）。（30分）
D
g  W 1  A
（提示：D  S T2 B，T  2 ，  TD ）
D 2 aD eD eD eD 2
4  K g 2 K D
eD
eD D
（請接背面）
103年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "2ae29912e0b9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00266', 'structural-eng', 'structural-eng-moex-103-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列有關「耐震設計規範」之相關問題：
耐震設計規範中規定：構造物動力分析所得任一主軸方向之總橫力，應依靜力分
析所得最小設計水平總橫力來作不同方式的調整，請問其原因為何？（10分）
隔震建築物設計規範中規定：S 在長週期不受不得小於0.4S 之限制，請問其
aD DS
原因為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "2ae29912e0b9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00267', 'structural-eng', 'structural-eng-moex-103-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列有關「含被動消能系統建築物設計」之相關問題：
請說明「挫屈束制消能元件」及「液態黏滯消能元件」作為建築結構耐震補強時
之優缺點。（10分）
含速度型元件之建築物的等值線性分析中，規範規定建築物內構材的設計力需考
慮三個不同變位情況（最大變位情況、最大速度情況及最大加速度情況）來計算，
並採用最大值進行設計，請說明原因。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:08+00:00", "source_pdf_sha1": "2ae29912e0b9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0315", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00268', 'structural-eng', 'structural-eng-moex-103-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖一所示之桁架結構，其 A點為鉸支承，而 G點為滾支承：
當 C 點承受垂直向下載重 P 時，請計算 CD、ID 與 IJ 等三根桿件之軸力（註明
拉力或壓力，答案可用分數或根號表示）。（15分）
若此垂直向下載重 P 可能分別作用於 B、C、D、E 或 F 中任何一點，請計算 CD
桿件所可能產生的最大軸力，並指出其對應之作用點。（10分）
22 m  J
17 m  I  K
12 m  H  L
B  C  E  F  G
A
D
6@12 m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "55967c378568", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00269', 'structural-eng', 'structural-eng-moex-103-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖二所示之複合結構，AB 構件為梁結構，A 點為固接支承，B 點為滾支承；而
CD 構件為軸力桿件，C 點為鉸支承，且 D 點與梁交接處為外部鉸接。另外，AB
構件之彈性模數與慣性矩乘積為 E I = 10000 kN-m2，而 CD構件之彈性模數與斷
AB AB
面積乘積為 E A  = 40000 kN。請以諧合變位法計算當 AB構件承受垂直向下均佈
CD CD
載重 8 kN/m 時之最大彎矩（絕對值最大者）及其發生處。 （若以其他方法計算不
予計分）（25 分）
C
4.5 m
A  B
D
6 m  6 m
圖二
（請接背面）
103年專門職業及技術人員高等考試建築師、技師、第二次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題    （背面）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "55967c378568", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00270', 'structural-eng', 'structural-eng-moex-103-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖三所示之剛架結構，其 A、C 與 E 點均為固接支承，同時每根構件之彈性模數
均為常數值 E； AB、BC、BD 及 DE 四根構件之長度分別為 L、L、 3L/2 與 L
（L = 8m），而慣性矩分別為 2I、2I、 3I與 I。當 B點承受水平向右集中載重 P =
66 kN 時，請以傾角變位法計算 A、B、C、D、E 各點彎矩。（若以其他方法計算
不予計分）（25分）
A
L  2I
3I
P
B  D  I
L/2
E
L  2I
C
3L/2 3L/2
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "55967c378568", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00271', 'structural-eng', 'structural-eng-moex-103-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖四所示之剛架結構，其 A 點為固接支承，D 點為滾支承，構件 AC 與 CD 之彈
性模數與慣性矩乘積分別為 EI 及 2EI，且 EI = 1000 kN-m2。請以最小功法計算當 B
點承受一垂直向下載重20 kN時C點之轉角。（若以其他方法計算不予計分）（25 分）
6 m  6 m
A  C
B
12 m
D
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "55967c378568", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0318", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00272', 'structural-eng', 'structural-eng-moex-103-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '於建築物評估時，已知一梁，b=30 cm，d=50 cm，A=6根D25=30.4 cm2，f=140 kgf/cm2、
s c
f =4,200 kgf/cm2，假設規範之計算公式仍然適用，試求M 。若因該梁強度不足，將
y n
其寬度向兩側各擴大 15  cm，成為 b=60  cm，d 不變，新增加之混凝土強度 f 350
c
kgf/cm2，鋼筋量為 8 根 D25，A =40.54 cm2，試求其M 。（25分）
s n', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "1eca5924a062", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00273', 'structural-eng', 'structural-eng-moex-103-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一單筋梁斷面 30×60  cm，有效梁深 d=53.5  cm，材料強度 f=210  kgf/cm2、
c
f =4,200  kgf/cm2，並取混凝土之比例限度應變為 =0.00055，若該斷面之鋼筋量為
y el
A =30.4  cm2，試計算並列表下列各值：在開裂時之 、M ；最大彈性變形之 、
s cr cr el
M ；在達規範所訂計算強度時之、M ；並計算 / 與M /M 之比值及說明其
el u n u cr n cr
意義。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "1eca5924a062", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "103170", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "103", "exam_name": "103年專門建築師技師第二次食品技師考試不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
