-- W1.6 questions batch 583/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aboriginal-acfc4025-moex-00044', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-114-602f6e5f', 'sub-aboriginal-acfc4025-02', NULL, 'essay', '如圖 2 所示之歐文電橋（Owen bridge），電源E 之頻率為 1 kHz，
s
C 0.1 F、R 1k，當調變R 為1.5k、C 為1F時電橋達到平衡，
1 2 3 3
求待測線圈之電感值L （5分）、內阻 R （5分）以及品質因數（quality
x x
factor）Q （10 分）。
x
C1 R
2
檢知器
E C Rx 待
s 3
測
線
Lx 圈
R3
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:02+00:00", "source_pdf_sha1": "09f963850c01", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "615", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00045', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-114-602f6e5f', 'sub-aboriginal-acfc4025-02', NULL, 'essay', '以示波器測量一頻率為 60 Hz 之正負對稱正弦波，使用衰減比為 10：1
之探棒（probe），垂直刻度為 2 V/DIV。若整個螢幕上顯示三個完整週
期之正弦波形，其水平間隔共 10 格、波形峰對峰垂直間隔共 4 格，請
回答下列問題。
測量時所選的水平時基（timebase,Time/DIV）為何？（10分）
寫出所測得的正弦波函數（function）並求此波形之有效值為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:02+00:00", "source_pdf_sha1": "09f963850c01", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "615", "s": "1901", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子儀表概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00046', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-114-2c1c51c4', 'sub-aboriginal-acfc4025-03', NULL, 'essay', '如圖一所示電路為 BJT 放大器之小信號電路模型，其中電晶體參數為
100，r 1.2k。試求電路之小信號電壓增益V /V 及輸入電阻R。
o S i
（25分）
R
i
V
o
RR==00.5.5kkΩΩ I +
SS b
+ r V βI
π _π b
V + V
_ V RR ==2k2ΩkΩ
S inin RR ==101k0ΩkΩ CC
BB
_
RR ==00.4.4kΩkΩ
EE
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "1e5d2c06a2c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "615", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00047', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-114-2c1c51c4', 'sub-aboriginal-acfc4025-03', NULL, 'essay', '如圖二所示之共源極電路，其中V 24V，R 20。試求出 MOSFET
DD D
所需的電流、電壓及額定功率。（25 分）
V
DD
I R
D D
+
V V
i _DS
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "1e5d2c06a2c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "615", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00048', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-114-2c1c51c4', 'sub-aboriginal-acfc4025-03', NULL, 'essay', '如圖三所示電路，試推導電壓轉換函數（voltage transfer function）
T(s)V (s)/V(s)及 f 截止頻率（cutoff frequency）。（25 分）
o i 3dB
C RR
22
RR
11
__
OPA V
o
V
i ++
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "1e5d2c06a2c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "615", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00049', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-114-2c1c51c4', 'sub-aboriginal-acfc4025-03', NULL, 'essay', '如圖四所示 NMOS NOR 閘電路，其中V 1.8V，且電晶體參數為
DD
k 100μA/V2，V 0.4V，V 0.6V，(W/L) 5，(W/L) 1。
n TND TNL D L
忽略本體效應（bodyeffect），試求當輸入電壓v v 1.8V時的輸出電
A B
壓v 及電路的功率消耗。（25 分）
o
V
DD
M
L
v
o
v M v M
A DA B DB
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "1e5d2c06a2c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114140", "c": "615", "s": "1902", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00050', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-113-156cbda0', 'sub-aboriginal-acfc4025-01', NULL, 'single_choice', '一個8-bit加法器（adder）於進行加法運算時，亦會同時送出overflow flag訊號V：當相加的結果超 過8-bit有號數（以two’scomplement編碼）可表示的範圍時V=1，否則V=0。下列的加法運算， 何者會產生V=1的輸出？', '["70+(－80)", "25+45", "70+80", "(－70)+(－25)"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "fa676aee26b5", "answer_pdf_sha1": "dfcdcffa0279", "source_family": "moex-gov-tw", "moex": {"exam_code": "113140", "c": "514", "s": "1904", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00051', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-113-156cbda0', 'sub-aboriginal-acfc4025-01', NULL, 'single_choice', '某嵌入式微控制晶片上內建16 KByte的記憶體用於儲存程式碼，在運作時，所有指令皆需儲存於此 程式記憶體上執行。該晶片的處理器中，其programcounter寬度至少為何？', '["13", "14", "15", "16"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "fa676aee26b5", "answer_pdf_sha1": "dfcdcffa0279", "source_family": "moex-gov-tw", "moex": {"exam_code": "113140", "c": "514", "s": "1904", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00052', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-113-156cbda0', 'sub-aboriginal-acfc4025-01', NULL, 'single_choice', '將含有小數點的2進位數字0.0101轉換成10進位數字，其結果為：', '["0.1250", "0.3125", "0.3750", "0.4275"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "fa676aee26b5", "answer_pdf_sha1": "dfcdcffa0279", "source_family": "moex-gov-tw", "moex": {"exam_code": "113140", "c": "514", "s": "1904", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL),
  ('aboriginal-acfc4025-moex-00053', 'aboriginal-acfc4025', 'aboriginal-acfc4025-moex-113-156cbda0', 'sub-aboriginal-acfc4025-01', NULL, 'single_choice', '某計算機系統以paging的方式實現virtualmemory，其virtualmemory大小為232bytes，能支援的最大 physicalmemory大小為224bytes，每個page的大小為212bytes。該系統的pagetable至少需有多大？', '["220*12bits", "220*24bits", "212*20bits", "210*15bits"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:38:03+00:00", "source_pdf_sha1": "fa676aee26b5", "answer_pdf_sha1": "dfcdcffa0279", "source_family": "moex-gov-tw", "moex": {"exam_code": "113140", "c": "514", "s": "1904", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "113", "exam_name": "113年公務人員特種考試外交領事人員及外交行政人員考試、國際經濟商務人員考試、民航人員考試、原住民族考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "aboriginal", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
