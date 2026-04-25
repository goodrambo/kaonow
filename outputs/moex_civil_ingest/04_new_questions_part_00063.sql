-- W1.6 questions batch 63/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-0f640084-moex-00061', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-44c05cdd', 'sub-aboriginal-0f640084-04', NULL, 'essay', '一部兩極同步發電機，250 MVA，60 Hz，慣量常數 H = 5.4 MJ/MVA，
發電機軸輸入為331100hp，並以同步轉速穩定運轉。輸出電功率突然從
其正常值改變到200 MW，試決定轉子的加速度或減速度。假設所計算
之發電機加速度在 9 週期內是定值，試決定在 9週期的終點時電力角和
2H d2
rpm值。（提示：搖擺方程式 P P ，其中P 、P
dt2 m(pu) e(pu) m(pu) e(pu)
s
分別為機械功率及電功率之標么值。）（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "604d90db5c3e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00062', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-44c05cdd', 'sub-aboriginal-0f640084-04', NULL, 'essay', '三個匯流排（3-bus）電力系統的單線圖如圖 2 所示，各發電機以暫態
電抗後接一電動勢（emf）表示，所有阻抗均以共通的 100MVA 為基準
的標么值表示，且為簡化計算，所有電阻均予以忽略，並做下列假設：
㉑忽略並聯電容抗，且系統處於無載狀況；㉒所有發電機均運轉在額定
電壓與額定頻率下，且它們的電動勢均同相位。當故障阻抗為 Z=j0.2pu
f
的平衡三相故障發生在匯流排 2時，決定故障期間來自發電機 1的故障
電流、匯流排電壓與線路電流。（25 分）
圖 2 三個匯流排（3-bus）電力系統', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "604d90db5c3e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00063', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c13555', 'sub-aboriginal-0f640084-05', NULL, 'essay', '圖一(a)所示稽納（Zener）二極體D之 I -V 特性如圖一(b)，R  = 100 Ω，
D D L
在 0 t 1 sec 時，V (t)由 0 V直線上升至+18 V，試求此時間內輸出電
s
壓 V 之波形數學式。（20分）
o
≤  ≤', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "1b53853b4384", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00064', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c13555', 'sub-aboriginal-0f640084-05', NULL, 'essay', '圖二所示之振盪器使用理想運算放大器，分析電路時，由v 經過雙RC網
o
路到v 定義為回授（feedback）β = v /v，且v 經過運算放大器與 R -R 網
i i o i 1 2
路定義為增益A = v / v。試寫出A與β之數學式，並由振盪條件βA 1
o i
推導振盪頻率以及R /R 之值以確認產生振盪，且均以R、C、R 、R 、角
1 2 1 2
≥
頻率ω表示。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "1b53853b4384", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00065', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c13555', 'sub-aboriginal-0f640084-05', NULL, 'essay', '圖三所示之電晶體 β =120>>1（β +1 β），V =+5V，熱電壓（thermal
EE
voltage）V = 25 mV，r ∞，R  = 36 kΩ，R  = 1.5 kΩ，R  = 4 kΩ，
T o B C E
≈
R  = 6 kΩ。試求偏壓電流 I 以及小訊號電壓增益 A =v /v，在交流分
L CQ v o i
→
析時，所有耦合電容均視為短路。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "1b53853b4384", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00066', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c13555', 'sub-aboriginal-0f640084-05', NULL, 'essay', '圖四所示運算放大器之直流增益A =89，3-dB頻寬500rad/sec，輸出電阻
vo
R  = 100 Ω，其他特性均為理想值，C =10nF，C =90nF，R  = 1 kΩ，若
o 1 2 L
圖四之完整電路電壓增益函數A (s)=v (s)/v (s)A /[(1+s/ω )(1+s/ω )]，
v o i vfo a b
其中A 為常數，試求A 、ω 與ω 。（20分）
vfo vfo a b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "1b53853b4384", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00067', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-61c13555', 'sub-aboriginal-0f640084-05', NULL, 'essay', '圖五(a)所示為七段式數字顯示器，以邏輯變數 X、Y 同時決定 a ~ g 等七
個邏輯變數之值為1或0，1為黑（亮），0為白（不亮），例如a=1時，
則a段呈現黑色。設計以XY = 00、10、01、11時分別顯示如圖五(b)所示
之0、1、2、3。試以X、Y為變數，寫出a~g之最簡布林數學式。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "1b53853b4384", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00068', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-bdd26e86', 'sub-aboriginal-0f640084-06', NULL, 'essay', '一個鐵芯磁路上繞有 100 匝繞組，如圖一所示，鐵芯內磁通函數(t)如
下式：
(t)0.05sin(377t)Wb
試計算瞬時感應電壓函數 v(t )。（15分）
試計算此感應電壓有效值與頻率。（10分）
(t)
+
v(t) N=100
-
鐵芯
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "47aefae1de76", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00069', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-bdd26e86', 'sub-aboriginal-0f640084-06', NULL, 'essay', '一個兩極、三相交流發電機如圖二所示，轉子磁場磁通密度 B=0.2 T，
轉子轉速3,600rpm。定子線圈直徑 0.5m，定子線圈長 0.3m，每一相繞
組有 15匝，定子三相繞組為 Y接線：
試計算發電機的時域三相感應電壓函數e (t)、e (t)、e (t)。（15 分）
aa'' bb'' cc''
試計算此發電機相電壓有效值、線電壓有效值、電氣頻率。（10 分）
a''
b
c
B
c''
b''
a
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "47aefae1de76", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL),
  ('aboriginal-0f640084-moex-00070', 'aboriginal-0f640084', 'aboriginal-0f640084-moex-112-bdd26e86', 'sub-aboriginal-0f640084-06', NULL, 'essay', '一部三相、2,300V、60Hz、4 極、Y接線感應電動機有下列等效到定子
側的單相等效電路參數，額定運轉的轉差率為 1%，機械與鐵心等損失
不計、激磁電抗X 忽略。
M
R  = 0.04 Ω，R  = 0.04 Ω，X  = 0.3 Ω，X  = 0.3 Ω
1 2 1 2
計算啟動電流、啟動轉矩（N-m）、啟動功率因數。（10分）
計算額定運轉時感應轉矩（N-m）、額定轉速（rpm）、轉子感應電流頻
率。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:08+00:00", "source_pdf_sha1": "47aefae1de76", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112150", "c": "516", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
