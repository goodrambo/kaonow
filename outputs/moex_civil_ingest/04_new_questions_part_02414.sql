-- W1.6 questions batch 2414/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('disabled-0f640084-moex-00116', 'disabled-0f640084', 'disabled-0f640084-moex-112-d87dd49a', 'sub-disabled-0f640084-04', NULL, 'essay', '請回答下列問題：
如下列 Program-1 的 Python 程式，其功用為何？如果執行該程式，並輸
入 24 與 18兩個整數，則輸出的結果為何？寫出其詳細步驟。（15 分）
如下列 Program-2 的 Python 程式，將該程式中第 01 行~第05 行的自定
義函數，使用遞迴（Recursion）函數寫出其程式碼。（10分）
01 def x(a,b): 12 If(b>a): 01 def x(n):
02 c=a%b 13 g=a 02 a=1
03 while(c!=0): 14 a=b 03 foriin range(1,n+1):
04 a=b 15 b=g 04 a=a*(i-1)+i
05 b=c 16 05 return a
06 c=a%b 17 p=a*b 06
07 return b 18 q=x(a,b) 07 n=int(input())
08 19 r=p//q 08 result=x(n)
09 a=int(input()) 20 print(q,r) 09 print(result)
10 b=int(input()) 21 10
11 22 11
Program-1 Program-2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "5482bb08f1c2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1407", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00117', 'disabled-0f640084', 'disabled-0f640084-moex-112-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '一每相阻抗為 21+j9 之平衡三角形連接之負載接到三相饋線的末端，
如圖一所示。饋線阻抗為每相 0.1+j0.4 。此線路係由線對線電壓為
190.53 V rms的三相電源供電，取 V 為參考，請決定負載端之電壓及
an
功率因數，以及三相饋線線路損失，若要改善負載之功率因數至 1.0，
要並聯Y型容抗，其每相容抗值為多少？此時負載端之電壓提升到多少？
三相饋線線路損失降至多少？（25 分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a6874e44a467", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00118', 'disabled-0f640084', 'disabled-0f640084-moex-112-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '三匯流排電力系統單線圖如圖二所示，發電機在匯流排 1 及 2，匯流排 1
電壓為 =1.0∠0°pu，匯流排 2 電壓調節在 =1.05pu，發電實功率為
300MW，匯流排 3 負載為 400MW與 300Mvar，輸電線阻抗之標示係以
 ||
100MVA為基準。利用快速解偶法，求電力潮流解，執行二次疊代。以起
始估計值為 =1.0∠0°pu 及 =0°、 =0° 開始。（25分）
  
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a6874e44a467", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00119', 'disabled-0f640084', 'disabled-0f640084-moex-112-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '圖三所示為三相系統，起初沒有負載，發電機均運轉在額定電壓，且電動
勢均同相位，發電機與變壓器的額定與它們的代表性百分電抗均標示於圖
三，所有電阻均忽略。線路阻抗為 j200。三相平衡故障發生在輸電線的
受電端。試決定短路電流（A）與短路容量 MVA。各項設備之阻抗標么需
做轉換，以 100MVA基準做轉換。（25 分）
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a6874e44a467", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00120', 'disabled-0f640084', 'disabled-0f640084-moex-112-44c05cdd', 'sub-disabled-0f640084-05', NULL, 'essay', '一個獨立的三相電力系統，具有如圖四所示之負載頻率控制（load frequency
control, LFC）系統，其中當頻率每變化1%時，負載變化1.6%，即D=1.6，
調速機速率調整率R=0.04pu，在公稱頻率（nominalfrequency）60Hz時，渦
輪機之額定輸出為200MW。若負載突然增加50MW（∆P =0.25pu），求穩
L
態頻率偏移若干 Hz？穩態時渦輪機輸出多少 MW？解釋其為何沒有增加
50 MW？（25 分）
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "a6874e44a467", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00121', 'disabled-0f640084', 'disabled-0f640084-moex-112-61c13555', 'sub-disabled-0f640084-06', NULL, 'essay', '如圖一所示的二極體電路，電路中每個二極體的切入電壓（cut-involtage）
V 皆為 0.7V。試求 I 、I 、I 、V 及 V 。（25分）
γ D1 D2 D3 A B
+14V
D I
1 D1
R =5kΩ
1
D
2
+5V V
A
I
D2 R =5kΩ
2
D
3
V
B
I
D3
R =5kΩ
3
−5V
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "899b3659bc9f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00122', 'disabled-0f640084', 'disabled-0f640084-moex-112-61c13555', 'sub-disabled-0f640084-06', NULL, 'essay', '如圖二所示的差動放大器電路，電晶體參數分別為 K =K =0.1mA/V2，
n1 n2
K =K =0.3mA/V2，λ =λ =0，λ =λ =0.02V-1，V =V =V =V =1V。
n3 n4 1 2 3 4 TN1 TN2 TN3 TN4
試求差模增益 A =v /v、共模增益 A =v /v 、及共模斥拒比（CMRR ）。
d o2 d cm o2 cm dB
（25分）
V+=10V
R R R
I D D I I 1
D1 D2 1
16kΩ 16kΩ 30kΩ
v v
o1 o2
v M M v
1 1 2 2
I
Q
M M
4 + 3
v
G_S4
V−=−10V
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "899b3659bc9f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00123', 'disabled-0f640084', 'disabled-0f640084-moex-112-61c13555', 'sub-disabled-0f640084-06', NULL, 'essay', '如圖三所示的 A類源極隨耦器電路，電路中所有的電晶體參數皆相同，參
數為 V = 0.5V，K =12mA/V2，λ=0。試求電路運作於線性區間之最大的
TN n
輸出電壓、最小的輸出電壓、及與它們（最大及最小的輸出電壓）相對應
的輸入電壓值。（25分）
+5V
v M
I 1
R
1kΩ
v
o
R
L
1kΩ
M M
3 2
−5V
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "899b3659bc9f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00124', 'disabled-0f640084', 'disabled-0f640084-moex-112-61c13555', 'sub-disabled-0f640084-06', NULL, 'essay', '如圖四所示的空乏型負載 NMOS反相器，其中 V =3V，且電晶體參數為
DD
'' 2， ， ， ， 。忽略
k =100μA/V V =0.4V V = −0.8 V (W/L) =6 (W/L) =2
n TND TNL D L
本體效應（bodyeffect）。試求反相器的最大功率消耗、電晶體 M 及 M
D L
分別工作於過渡點（transitionpoint）時的輸入電壓 V 、輸出電壓V 、及
It Ot
當輸入電壓 v =3V時的輸出電壓 v 。（25分）
I o
V
DD
i
DL
+
M v
L DSL
−
v
o
i
DD
+
v M v
I + D DSD
v −
GSD
−
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "899b3659bc9f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL),
  ('disabled-0f640084-moex-00125', 'disabled-0f640084', 'disabled-0f640084-moex-112-61c8fe92', 'sub-disabled-0f640084-07', NULL, 'essay', '請依節點電壓法（nodalanalysis）分析如下所示電路圖，試求：
V =？（10分）
o
3A電流源所提供/消耗之功率為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:39:03+00:00", "source_pdf_sha1": "3e0246d5a355", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "309", "s": "1605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "disabled", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
