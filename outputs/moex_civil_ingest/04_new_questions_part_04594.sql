-- W1.6 questions batch 4594/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00216', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c13555', 'sub-heelevel3-0f640084-03', NULL, 'essay', '圖五為一數位電路的狀態圖（state diagram），圖中箭頭表示狀態改變的
方向，並以①②③④編號。先依編號順序畫出此電路的輸入 A、B 與輸
出 Q對應的狀態改變時序圖（timingdiagram），再以 NAND邏輯閘設計
此電路，以真值表說明工作原理。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "3d6fb3b5914d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00217', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '圖一為變壓器於二次低壓側進行開路試驗，一次高壓側進行短路試驗，
並將試驗量測數據運算得到參考至一次側之近似等效電路圖。若高、低
V
壓側額定電壓比為a  H ，敘述如何進行開路試驗與短路試驗的程序，
V
L
以取得那些試驗的數據，直接推算等效電路上 R 、X 、R 及 X 的參數
c m eq eq
值，並說明等效電路上每一參數在變壓器運轉時所代表的意義。（25分）
I
L
I R jX a
H eq eq
+ +
V R jX aV
H c m L
- -
圖一 變壓器近似等效電路圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "015a7f8684df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00218', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一部感應繞線式轉子運轉電動機在額定電壓與頻率下運轉，滑環短路並
且負載是電動機額定值的 100%，如果在轉子電路中插入額外的電阻，
使得電動機的轉子電阻可以調變。試由感應繞線式轉子電阻變動之轉矩
與速度特性曲線，詳細說明轉子電阻增加時，對以下各項參數的影響：
（每小題 5分，共 25 分）
轉差率 s
電動機速度 n
m
轉子的感應電壓
電動機啟動轉矩
電動機最大轉矩（脫出轉矩,Pull-outtorque）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "015a7f8684df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00219', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '一部三相 Y連接同步發電機之額定為 60 MVA、13.8 kV、0.8 PF落後，
60 Hz。其每相同步電抗為1.2 Ω，電樞電阻可忽略。
此同步發電機之電壓調整率為何？（10分）
發電機若維持在額定狀況下運轉。但內部生成電壓 E 因激磁調整而
A
下降 10%，則激磁調降 10%後的電樞電流 I 將為何？（15分）
A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "015a7f8684df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00220', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '如圖二所示之單相全控式固態直流機驅動系統，含一部額定輸入電壓
180 V、輸出功率 5 馬力的它激式直流馬達，電樞電阻 R =0.25 歐姆，
a
電樞電感 L，磁場電流 i，額定滿載電樞電流 20安培，由一單相全控式
a f
相位控制整流器驅動。以交流電源正弦波由負轉正之零交越點為基準的
觸發角零度，當開關S1與S3觸發角為時，則S2與S4的觸發角為+。
若其交流側弦波電源電壓之均方根值為 V =220 V，假定電樞電感 L 夠
s a
大且足以使電樞電流連續，可忽略漣波，且開關元件壓降亦可忽略。此
時整流器的輸出電壓 E 與觸發角的關係式如下：
A
E (2 2V cosα)/π
A s
在額定激磁場電流及滿載電樞電流運轉時，觸發角為 45°，轉速為
800 rpm。此時的平均電樞電壓 E 與反電勢電壓（Back electromotive
A
force）E 應是多少？（10分）
g
若在額定激磁場電流及額定滿載下，欲使馬達轉速控制為 1000 rpm，
此時的平均電樞電壓E 、反電勢電壓E 與觸發角應為多少？（15分）
Ａ g
S1 S2 ia
is Ra
交流電源VS
EA e La
La
if
S4 S3 E
g
Lf Vf
圖二 單相全控式固態直流機驅動系統圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "015a7f8684df", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00221', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '某電路圖(a)及其等效電路圖(b)，如下圖所示，試計算：
該電路中圓形及菱形符號各是屬於那一種電源？（5分）
電路圖(a)中 v 、i 、i 及 i 之值？（8分）
1 2 a b
等效電路圖(b)中 R 、R 及 v 、i 之值？（7分）
a b a 1
5 Ω
i i
8Ω 2Ω 2 R 1
a
v
1
v
a
20Ω
2i 2i R
6V a 12Ω 24Ω 6V a b
i i
a b
(a) (b)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00222', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '某開關電路如下圖所示，此開關在時間 t=0 前已經關閉很長一段時間，
試計算：（hint：ν(t)=V +(ν(0)V )et/(RC)）
oc oc
該電路中電容器兩端之初始電壓 v(0)、儲存於電容器之初始能量 W(0)
及開關打開後之穩態電壓 V 值？（10分）
oc
該電路在時間t>0 後之時間常數（timeconstant）值？（5 分）
該電路在時間t>0 後電容器之響應函數 ν(t)？（10 分）
該電路中電容器之能量釋放至原初始能量之25%所需要的時間？（5分）
t>0
20kΩ
7.5mA 80kΩ 0.2mF (t) 50kΩ
ν
37140', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00223', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '某具有弦波輸入之電路圖如下圖所示，此開關在時間 t=0 前已經關閉很
長一段時間，試計算該電路中之流經電容器之電流 i 值。（20分）（hint：
x
可將電路之元件轉換至頻域）
10Ω 1H
i
x
0.1F 5H
20cos4tV 2i
x', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00224', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-111-61c8fe92', 'sub-heelevel3-0f640084-05', NULL, 'essay', '下列所示(a)、(b)及(c)三個電路為運算放大器（OPA）加上 RC選頻網路
所組合而成之主動濾波器電路，請分別計算三個電路之輸入 V 與輸出 V
i o
之轉移函數及截止頻率，並說明其為何種濾波器電路及其原因？（30 分）
R
C R
V 1
i V
i
A V A V
o o
R
R 1
C V
i
R R A
1 1 V
R o
R R
2 2 C
(a) (b) (c)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:57+00:00", "source_pdf_sha1": "5f820fcb0aa0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "370", "s": "2602", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00225', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-110-bd2490ec', 'sub-heelevel3-0f640084-06', NULL, 'essay', '求y8xy+16y1+e4x的通解（generalsolution）。（15分）
求 z2dz ti2t  1 （10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:58+00:00", "source_pdf_sha1": "8af2c276482d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "376", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
