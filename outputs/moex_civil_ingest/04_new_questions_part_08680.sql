-- W1.6 questions batch 8680/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-8ec6300d-moex-00254', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '下列何者不屬於網頁方面的攻擊行為？', '["ARP欺騙（ARPSpoofing）", "SQL注入攻擊（SQLInjection）", "跨站指令碼攻擊（Cross-siteScripting,XSS）", "釣魚攻擊（Phishing）"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 37, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00255', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '有關防火牆與入侵偵測系統，下列敘述何者錯誤？', '["入侵偵測系統可提供比防火牆更完整的網路封包檢查", "防火牆通常會架設在網路的唯一出入口（咽喉點（ChokePoint）），以便於檢查出入的封包", "入侵偵測系統也有可能發生漏報或是誤判的情形", "防火牆能檢查或阻擋由 Internet 進入區域網路（內部網路）的封包。但由內部區域網路通往Internet的 封包無法檢查"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 38, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00256', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '關於雜湊演算法（Hashfunction）的性質，下列何者正確？', '["RC4為一種雜湊演算法", "雜湊演算法可加密資料，提供保密性", "給定SHA3雜湊演算法的輸出值，目前尚無有效率的方法反推其輸入值", "目前尚無有效率的方法，找到兩個不同的輸入有相同的MD5值"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 39, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00257', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '下列何者不屬於創用CC（CreativeCommons）的授權要素?', '["姓名標示（Attribution）", "禁止改作（NoDerivativeWorks）", "非商業性（Noncommercial）", "禁止分享（NoSharing）"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "9db6b61603a4", "answer_pdf_sha1": "dcc7b4b972f9", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1216", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 40, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00258', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '求以下訊號之傅立葉轉換：（每小題 10 分，共20分）
x(t)tsinc(t)
x(t)rectt1rectt1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "bdfca84cf307", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00259', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '有一濾波器，其脈衝響應h(t)如下圖：（每小題 10分，共 20分）
h(t)
A
t
0 T/3 2T/3 T
tT /2
若該濾波器的輸入是x(t)rect ，繪出濾波器的輸出波形。
T
求該濾波器之頻率響應。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "bdfca84cf307", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00260', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '一個調頻（frequency modulation,FM）訊號可表示為：
u(t) A cos(2f t(t))
c c
其中 f 為載波頻率，(t)為相位訊號，表示為：
c
t
(t) 2k  m()d
f
其中m(t)為訊息信號（messagesignal）。（每小題 10分，共 20分）
若(t)很小，證明u(t)可以近似為u(t) A cos(2f t)A(t)sin(2f t)。
c c c c
根據之近似結果，畫出 FM調變器方塊圖。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "bdfca84cf307", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00261', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '令m(t)為訊息信號（message signal）如下圖所示，利用四種不同的類比
調變技術，產生四個不同的調變訊號A(t)、B(t)、C(t)及D(t)，如下圖：
m(t)
A(t)
B(t)
C(t)
D(t)
試問：（每小題 5分，共 20分）
A(t)為那種調變技術所產生的訊號？
B(t)為那種調變技術所產生的訊號？
C(t)為那種調變技術所產生的訊號？
D(t)為那種調變技術所產生的訊號？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "bdfca84cf307", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00262', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '一個 PCM系統使用 7 位元之量化器，該量化器範圍為−1到+1 間均勻量
2
化，量化區間為 。若該系統產生的資料率為56106 bits/sec。
27
（每小題 10分，共 20 分）
在可以回復被取樣訊號的情況下，求被取樣訊號的最大頻寬。
若被取樣訊號為 cos(2100t) ，並假設量化誤差均勻分布於
[/2,/2]。求訊號量化雜訊比（signal to quantization noise ratio,
SQNR）。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "bdfca84cf307", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1214", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00263', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-110-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '推導下圖電路之轉移函數 V (s)/V(s)。（5 分）
o i
當下圖電路之直流增益為 60 dB、3-dB 頻率為 10 kHz 且輸入阻抗為
200 ，求算 R 、R 、C 。（15分）
1 2 1
R
2
C
1
R
1
V
i V
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:43+00:00", "source_pdf_sha1": "a17796e07766", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "450", "s": "1207", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
