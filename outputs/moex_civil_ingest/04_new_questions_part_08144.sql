-- W1.6 questions batch 8144/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0f640084-moex-00008', 'pukao-0f640084', 'pukao-0f640084-moex-114-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖四所示之 CMOS電路，若 Q 、Q 之參數分別如下：
P N
W W 300A
V  V 0.4V，( ) 2( ) 3，C 4C  。
tn tp L p L n n ox p ox V2
試求：（每小題 5分，共 25分）
Q 操作在那一個工作區域？
P
i =？
D
Q 操作在那一個工作區域？
N
輸出電壓 V =？
OL
靜態功率損耗（staticpowerdissipation）P =？
D
1.8V
QP
1.15V iD V
OL
QN
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00009', 'pukao-0f640084', 'pukao-0f640084-moex-114-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '一單相變壓器的二次側電壓為 V (t)=155.6sin377tV，匝數比為 200:100。
s
如果二次側的電流為 I =14.1 sin(377t-30°) A，且此變壓器參考至一次側
s
的阻抗為 R =0.2 Ω，X =0.8 Ω，其激磁並聯分支忽略不計，試求：
eq eq
一次側電流 I 。（10分）
p
一次側電壓 V 。（15分）
p', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6e1776848cad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2508", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00010', 'pukao-0f640084', 'pukao-0f640084-moex-114-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '一 10hp，220V、1600rpm 之直流並激發電機，其並激場線圈的電阻為
180 Ω，電樞電阻（包含電刷之接觸電阻）為 0.2 Ω，當發電機於額定
輸出時，試求：
其電樞之電動勢為何？（15 分）
將此發電機改為電動機運轉，當外加電壓為 220 V，電樞電流為 60 A
時，此電動機的轉速為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6e1776848cad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2508", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00011', 'pukao-0f640084', 'pukao-0f640084-moex-114-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '一部三相、六極、50kVA、220V（線電壓）、60Hz，Y接之同步發電機
進行試驗，其相關數據如下：
開路試驗：激磁電流=2.8A時，線電壓=220V
短路試驗：激磁電流=2.3A時，電樞電流=122A
激磁電流=2.8A時，電樞電流=150A
此外由氣隙線得知：激磁電流=2.3A時，線電壓=205V，試求：
每相的未飽和阻抗。（15 分）
短路比。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6e1776848cad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2508", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00012', 'pukao-0f640084', 'pukao-0f640084-moex-114-09b8f1b1', 'sub-pukao-0f640084-03', NULL, 'essay', '一部 208V、20hp、四極、60Hz，Y接三相感應電動機，滿載轉差率為
5%，試求：
在額定負載時的轉子速度。（10 分）
在額定負載時的負載轉矩 N.m。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "6e1776848cad", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2508", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電工機械概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00013', 'pukao-0f640084', 'pukao-0f640084-moex-113-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '圖一為一個平衡三相配電系統單線圖，其中電源阻抗可忽略，三相配電
線的每相阻抗值如圖所示。此時負載在額定容量操作，負載額定如圖所
示，負載的線電壓為 3.3 kV。
繪出圖一的等效單相電路，並計算電源的實際線電壓，與此系統的電
壓調整率（V.R.%）。（15 分）
繪出圖一等效單相電路的相量圖，標示負載側電壓、電源側電壓、負
載電流、傳輸線電壓降之間的相量關係。（10分）
3.3kV
三相電源
3,000kVA,
3.45kV
Z 0.02 j0.2/ 相 pf =0.8落後
l
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "5975403c9526", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00014', 'pukao-0f640084', 'pukao-0f640084-moex-113-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '圖二為一個三相配電系統，其中3.45 kV/0.6 kV主配電變壓器 T1 的額定
參數示於圖中，主配電變壓器的漏電抗 X 為等效至低電壓側實際值，
T1
負載匯流排 Bus 2 在額定電壓 0.6 kV操作，負載吸收視在功率為配電變
壓器額定容量的80%，電源側短路容量假設為無限大。
計算無熔絲開關NFB1負載側的額定電流與對稱三相短路電流。（15分）
以主配電變壓器 T1 額定為基準值，計算此主配電變壓器漏電抗的標
么值。（10 分）
Bus1 Bus2
3.45kV, 負載
MVA
SC CB1 NFB1 pf=0.85落後
T1,2MVA,3.45kV/0.6kV
X 0.016/ 相
TT11
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "5975403c9526", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00015', 'pukao-0f640084', 'pukao-0f640084-moex-113-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '圖三為一個單相、480伏特、60Hz配電系統，供應兩組負載與一組功因
補償電容 C，其中負載 1 的輸入實功率為 30 kW、功率因數為 0.707 落
後，負載 2的輸入實功率為 40kW、電感性虛功率為 30kVAr。
計算負載 1 與負載 2 吸收的總複數功率、總功率因數、總負載電流I
L
大小。（15 分）
若規劃將總負載功率因數改善到 0.95 落後，計算此功因補償電容所需
的電容量（F）。（10 分）
I I
S L
480V (rms) C 負載1 負載2
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "5975403c9526", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00016', 'pukao-0f640084', 'pukao-0f640084-moex-113-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '圖四為一個主配電變壓器供電系統，圖中各斷路器裝置有過電流保護電
驛，各保護電驛的保護代碼為 50/51。
繪圖並說明過電流保護電驛使用的保護代碼50/51功能為何？（10分）
繪圖並說明圖四中 CB1 至 CB3如何進行過電流保護協調？（15分）
至負載2
CT3 CT2 CT1
CB3 500/1 CB2 2,000/1 CB1 1,000/1
三相
負載1
電源
保護電驛 保護電驛 保護電驛
50/51 50/51 50/51
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "5975403c9526", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2609", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00017', 'pukao-0f640084', 'pukao-0f640084-moex-113-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖一之二極體電路中，假設稽納（Zener）電壓V =12V，及其電阻r=0。
Z z
若欲使稽納二極體之電流，等於40V之電源所提供電流的十分之一時，試求
所需之負載電阻（R ）值。（25分）
L
120
+
+
40V V R
Z L
－ －
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "ae59753cd1a8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "452", "s": "2606", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
