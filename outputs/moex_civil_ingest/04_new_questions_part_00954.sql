-- W1.6 questions batch 954/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aviation-f9fdcd58-moex-00082', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '請回答下列問題：（每小題 5 分，共 25 分）
說明如何用一個陣列（array）來實現 2 個堆疊（stacks）？
有一二元樹的中序追蹤（inordertraversal）為(a+(b*c))+(((d*e)+f)*g)，
其前序追蹤（preordertraversal）為 ++ a* b c* + * d ef g，請畫出此
二元樹。
畫出將3, 1, 4, 6, 9, 2, 5, 7 插入初始為空的二元搜尋樹（binary search
tree）中的結果。
有一 hash 函數 h(x)= x(mod()10)，假設 x 分別給定輸入{4371, 1323,
6173,4199,4344,9679,1989}，若使用 separatechaining hash table，請
畫出結果。
使用插入排序法（insertionsort）來對序列 3,1,4,1,5,9,2,6,5 進行由
小到大的排序，寫出排序過程。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "0379b55f291c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00083', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '取樣（Sampling）是將連續時間信號傳換為離散時間信號的一種過程。
假設取樣週期為T ，一連續時間信號x (t)經過一理想的連續/離散轉
s c
換器（Ideal C/D）取樣，如下圖所示，可得離散時間信號
x (t) x (nT )(tnT ) ， 其 中 (t) 為 脈 衝 函 數 （ Impulse
s n c s s
Function）。將取樣後的離散時間信號x (t)經過一低通重建濾波器
s
（Low-Pass Reconstruction Filter）h (t)，可得一連續信號x (t)。
r r
x (t)
x (t) C/D s h(t) x (t)
c r r
T
s
假設x (t) 2cos(100/4)cos(300t/3)， t ，而低通
c
重建濾波器h (t)的頻率響應（Frequency response）為
r
T , f  f /2;
H (f) s s
r 0, f  f /2.
s
若 f 1/T 500 Hz，請求x (t)以及其頻率響應X (f)。（6分）
s s r r
若 f 1/T  250 Hz，請求x (t)以及其頻率響應X (f)。（6分）
s s r r
如果我們希望獲得x (t) A Bcos(100/4)，其中 A、B 為常
r
數，請問 f 1/T 應該設定為多少 Hz？（6分）
s s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "063680ebdfe0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00084', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '傳統調幅（AM）之調變信號可以表示成u(t) A (1m(t))cos(2f t)，
c c
其中m(t)為欲傳送的信號，而c(t) A cos(2f t)為載波（Carrier）。
c c
假設
u(t)5cos(1800t)20cos(2000t)5cos(2200t)
請求出m(t)以及c(t)。（8分）
1 T 2
請計算u(t)的功率P  lim  u2(t)dt。（10分）
u T
T T 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "063680ebdfe0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00085', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '在比較不同的數位調變系統時，通常我們會從調變信號的分布圖
（constellation diagram）來評估該通訊系統的效能。我們可將一符元
（symbol）的兩個正交調變信號視為一向量，並在直角平面坐標上畫
成一點，則集合所有符元所構成之點即為該數位調變系統的信號分布
圖。從分布圖上，我們不僅可觀察信號整體分布，並可計算出該信號
分布圖中兩個符元間的最短距離d ，藉此評估此通訊系統之效能。
min
考慮以下五張不同信號分布圖：（a）,（b）,（c）,（d）,（e），每張分
布圖都包含八點信號，其中圖（e）為8-PSK，為了達到相同的傳輸效
能，我們假設五張信號分布圖其信號間的最短距離 d =2。
min
(2,2) (0,2) (2,2)
(3,1) (1,1) (1,1) (3,1)
(2,0) (2,0)
(3,1) (1,1) (1,1) (3,1)
(2,2) (0,2) (2,2)
(a) (b)
(0,B)
(A,A) (A,A)
2
(1,1) (1,1)
(1,1) (1,1)
(B,0) (B,0)
2
(1,1) (1,1)
(1,1) (1,1)
(A,A) (A,A)
(0,B)
(c) (d)
2
( 42 2,0)
(e)8-PSK
請求出圖（c）中的坐標A以及圖（d）中的坐標B的值為何？（8分）
根據信號分布圖（a）,（b）,（c）,（d）,（e），請計算五個不同數
位調變系統中其平均的傳輸功率P 。（15分）
av
請比較五個不同數位調變系統的優劣，那一個系統最好？那一個系
統最差？為什麼？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "063680ebdfe0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00086', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-111-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '頻率調變連續波（FrequencyModulatedContinuousWave,FMCW）雷
達由於體積小、距離量測解析度高、對雜訊靈敏度低、以及容易整合
的特性，已經被廣泛應用於先進汽車駕駛輔助系統（AdvancedDriver
AssistanceSystems,ADAS）中。一典型的 FMCW雷達傳送波x (t)是
tx
一個頻率為鋸齒波的 FM信號，如圖一所示，其頻率可表示成
B
f(t) f  t  f t , t nT t , 0t T, n0,1,2,
c s c s s s
T
其中 f 為起始頻率（或載波頻率），B 是掃頻範圍（或信號頻寬），T
c
是掃頻時間（SweepTime）（或週期）， B/T為斜率（或 ChirpRate）。
該鋸齒波的 FM信號即為 FMCW 雷達的傳送信號x (t)，也就是
tx
t  1
x (t) Acos(2 f tdt) Acos2 f t t2  Acos(u(t)),0t T
tx c 2
0
當傳送波碰到目標物反射後，其回波（Echo）由 FMCW接收器接收，
如圖一所示，其中實線表示傳送信號 x (t)，記為TX，而虛線表示回
tx
波信號x (t)，記為 RX。透過計算 TX 信號與 RX 信號的時間差 與
rx
都卜勒頻率位移f ，即可求得目標物與雷達源（Source）之間的相對
D
距離以及相對移動速度。
f
f B TX RX
c
f
b
f
f D t
c
T
圖一 鋸齒波FMCW傳送信號TX與迴波信號RX
FMCW的接收器設計非常簡單，只要將 TX信號與 RX信號相乘（或
稱 Mixing），如圖二所示，其中 t 為 TX信號的傳送時間，而 t 為 RX
1 2
信號的接收時間，再將所得到的混合信號x (t)經由低通濾波器（Low-
m
passFilter）處理後，即可求得t 與 f 。
d D
x (t)
tx 1
x (t)
B 1
x (t )
rx 2
x ()x (t)x (t )
m tx 1 rx 2
t t
2 1
圖二 FMCW雷達接收機
因為 RX 是迴波，因此我們可假設x (t )Bcos(u(t ))。假設目
rx 2 1
標物靜止，也就是圖一中的 f 0，請驗證圖二中低通濾波器（LP
D
Filter）的輸出為x (t )為
B 1
AB  1  AB
x t  cos2 t  f 2  cos2t ()。
B 1 2 1 c 2 2 1
（15分）
（Hint：先計算Acos(u(t ))Bcos(u(t ))，再將其高頻信號部分濾除，
1 1
即可得x (t )）
B 1
由得知，基頻信號x (t)是一單頻率 f 信號與一隨時而變的
B b
相位()所組成，FMCW 雷達的基頻信號x (t)又稱為拍頻（Beat
B
Frequency）。我們可以用拍頻x ()的頻率 f 計算出目標物與
B b
雷達源之間的相對距離。假設 f = 77 GHz，B = 4 GHz，而 T = 40
c
s，今有一雷達迴波測得其= 2 s，請問該目標物距離雷達源的
距離為何？（10分）
（Hint：雷達波以光速（c3108 m/s）傳遞，而2R/c，其中 R為
目標物與雷達源之間的相對距離）
由，假設 f =77GHz，B=4GHz，而 T=40s則此三角波 FMCW
c
雷達最小可測之距離（或稱為距離解析度）為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "063680ebdfe0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111150", "c": "403", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "111", "exam_name": "111年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、國際經濟商務人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00087', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '何謂機場時間帶？時間帶分配的目的為何？交通部民用航空局針對國
際航線機場如何分配或協調時間帶？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "8d9c1178eb21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00088', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '請說明飛安自願報告系統的目的、精神與特性為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "8d9c1178eb21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00089', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '請依據民用航空法，說明民用航空運輸業與普通航空業的差異？緊急醫
療專機屬於上述那一類？如經申請核准，普通航空業可經營其他那些航
空運輸業務？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "8d9c1178eb21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00090', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-81c058dd', 'sub-aviation-f9fdcd58-01', NULL, 'essay', '依據民用航空法，請說明民用航空運輸業欲申請新闢或增加航線並展開
營運，所必須完備之程序。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "8d9c1178eb21", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民用航空法", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00091', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '行程（Process）是電腦作業系統中重要的元素，請回答下列有關作業系
統行程之問題：
在作業系統中，行程以行程控制區塊（ProcessControlBlock,PCB）表
示，PCB 中除了 CPU 排程資訊和記憶體管理資訊外，還有那三個元
素？一個行程在電腦中執行時會有 New, Running, Waiting, Ready,
Terminated 等狀態，請完成下列程序狀態圖（Process State Diagram）
（I）~（VI）的狀態和轉換。（15分）
(I)
(II)
new exit
terminate
(IV) (V)
(III)
或 I/O或eventwait
I/O event
(VI)
請說明兩種程序間溝通（InterprocessCommunication,IPC）機制的基礎
模型：分享記憶體（SharedMemory）與訊息傳遞（MessagePassing），
在不同狀況下的優缺點。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "292970b79414", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
