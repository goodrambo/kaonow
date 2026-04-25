-- W1.6 questions batch 8143/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-0c700c30-moex-00294', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '在 MicrosoftAccess中，建有「老師資料表」與「課程資料表」，兩個表
格皆有四個欄位，內容如下圖：
老師資料表 課程資料表
老師ID 姓名 電話 年紀 課程ID 課程名稱 老師ID 人數
1 張三 123 30 1 國文 1 58
2 王武 456 56 2 英文 2 63
3 劉丹 897 42 3 數學 1 42
4 陳河 658 39 4 物理 2 89
5 高樂 756 60 6 化學 3 67
7 微積分 4 75
8 音樂 5 30
9 美術 5 36
10 電子學 4 69
其資料庫關聯圖如下圖所示，
老師資料表 課程資料表
老師 1 課程
ID ID
姓名 課程名稱
∞ 老師
電話 ID
年紀 人數
在「課程資料表」中，PK與 FK的欄位名稱為何？（5分）
請說明上圖 1 ∞關聯的特色與優點。（8分）
寫一個 SQL指令查詢來得到下表，其中欄位「人數總和」為該老師所
開所有課程的↔人數總和。（10分）
姓名 人數總和
王武 152
高樂 66
張三 100
陳河 144
劉丹 67
寫一個 SQL 指令查詢來得到課程老師的年紀小於 55 歲，且人數大於
50人的課程資訊表，如下表所示，且該資料需以人數遞減排序。（12分）
課程ID 課程名稱 姓名 電話 人數
7 微積分 陳河 658 75
10 電子學 陳河 658 69
6 化學 劉丹 897 67
1 國文 張三 123 58
45130', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb049019bf9c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1219", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00295', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '有一筆資料的鍵值依序為32，17，85，16，51，60。使用除法雜湊函數
h(k)k mod7來建立 7 個桶（buckets）且每個桶只有一個槽（slot）的
雜湊表（hash table）。當發生碰撞（collision）與溢位問題時，
如果使用開放定址（openaddressing）中的線性探測法（linearprobing），
請寫出產生的雜湊表格。（5分）而此方法的主要缺點為何？（5分）
如果使用開放定址（open addressing）中的平方探測法（quadratic
probing），新的雜湊函數為：Hk,ihki2mod7，其中 i為目前
進行的探測次數。請寫出產生的雜湊表格。（10分）
請說明何謂連結串列法（chaining）。（8分）
請寫出使用連結串列法而產生的雜湊表格。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb049019bf9c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1219", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0c700c30-moex-00296', 'pukao-0c700c30', 'pukao-0c700c30-moex-110-1f134407', 'sub-pukao-0c700c30-03', NULL, 'essay', '電腦無線網路的標準為 IEEE802.11 系列，常見的包含有 802.11ac
802.11b  802.11n  802.11g 802.11ax，
請問 WiFi5 與 WiFi6 各指的是那一個標準？（10 分）
請問何謂 MIMO？（10分）
上述標準中，支援 MIMO的標準有那幾個？（5 分）
上述標準中，工作頻率可為 2.4kHz或 5 kHz標準有那幾個？（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb049019bf9c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "416", "s": "1219", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "統計"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00001', 'pukao-0f640084', 'pukao-0f640084-moex-114-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '有一 60 Hz 之三相三線單迴路輸電線採正三角形配置，線路長度為
110 km，導線線間距離為 2.5 m，導線平均幾何直徑為 18.5 mm（單
位電阻為 0.091 Ω/km）。已知受電端線電壓為 66 kV，供應平衡三相
負載，其功率為 21 MW，功率因數 0.8 滯後，試回答以下問題：
此輸電線路之每線電感抗（單位：Ω）與線對中性點電容導納（單位：S）
約為何？（10分）
若以 π型等效線路模型計算，則送電端供應之複功率為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b7b0d658e5e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00002', 'pukao-0f640084', 'pukao-0f640084-moex-114-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '如圖一所示，某製造廠設置專用三相配電系統，供應一台三相交流同步
電動機運轉之用，假設電源側（11.4kV）之短路容量為 250MVA，其他
各設備規格請參閱圖一。當此配電系統於1.5kV側匯流排（F點）發生
三相短路故障時，若選擇 3MVA為容量基準值，請使用阻抗標么法，試
計算其瞬時短路對稱故障電流約為何？（假設 1HP≒1 kVA）（25分）
變壓器
電源側
11.4kV F
250MVA
11.4kV/1.5kV 1.5kV,2000HP
SM
3MVA,7% X”=15%,X’=20%
d d
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b7b0d658e5e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00003', 'pukao-0f640084', 'pukao-0f640084-moex-114-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '有一單相兩線式低壓配電系統，頻率為 60 Hz，經由一專用線路供電給
單相負載，已知線路長度為 300 m，單位阻抗為 0.184+j0.098 Ω/km，負
載阻抗為1.4+j1.05 Ω。若負載側電壓固定為400V，擬採用並聯電容器，
將負載功率因數校正至 0.95 滯後，則需使用多少 μF 之電容器？當功率
因數校正後，電源側可節省多少視在功率（VA）？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b7b0d658e5e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00004', 'pukao-0f640084', 'pukao-0f640084-moex-114-10dccaf5', 'sub-pukao-0f640084-01', NULL, 'essay', '輸配電系統中，為了運轉上的需要，常會將斷路器（CB）與隔離開關（DS）
如圖二配置。請說明斷路器與隔離開關之啟斷功能主要差異為何？此
外，若要對斷路器進行檢修，於停電與復電過程中，請說明斷路器與隔
離開關之操作順序應為何？（25分）
隔離開關 斷路器 變壓器
電網 (DS)
(CB) (Tr)
負載
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "b7b0d658e5e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "輸配電學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00005', 'pukao-0f640084', 'pukao-0f640084-moex-114-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖一所示之電路，其中電壓源V+上有10V的直流電壓，及頻率為60Hz，
峰值為1V的弦波電壓變動，假設二極體在1 mA時的跨壓約為0.7V，溫
度伏特當量V =25mV。試求：
T
二極體直流電流 I =？（5 分）
D
二極體之小信號電阻（small-signalresistance）r =？（5分）
d
繪出圖一之小信號等效電路。（10 分）
計算小信號等效電路中二極體之電壓峰值 v （peak）=？（5 分）
d
V+
I
D
10kW
+
v
D
-
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00006', 'pukao-0f640084', 'pukao-0f640084-moex-114-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖二所示BJT電路，v 為輸入的交流小信號，BJT操作在作用區（active
s
region），若=99，V =0.7V，請計算下列各項參數：V ，r，R ，
BE B e in
R ，v /v。（25分）
o o s
+3V
100kW
10kW
vs vo
1kW 1kW
Rin R
ib Ro
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL),
  ('pukao-0f640084-moex-00007', 'pukao-0f640084', 'pukao-0f640084-moex-114-2c1c51c4', 'sub-pukao-0f640084-02', NULL, 'essay', '如圖三所示之差動放大電路，試求下列各項參數：
v
當 v =v /2，v =-v /2，v 是一個均值為零的小信號，請計算A  0。
B1 id B2 id id d
v
id
（10分）
v
當 v = v = v ，v 是一個均值為零的小信號，請計算A  0 。
B1 B2 icm icm cm
v
icm
（10分）
請計算共模拒斥比（CMRR）。（5 分）
+5V
2kW 2kW
v
o
v Q Q v
B1 1 2 B2
4.3kW
-5V
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:38+00:00", "source_pdf_sha1": "9d230d7d129c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "445", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
