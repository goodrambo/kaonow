-- W1.6 questions batch 8669/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-8ec6300d-moex-00144', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '揭露一個組織（無論是私有的還是公共的）內部非法的、不誠實的或者不正當行為的人，稱為：', '["安全管理技術", "吹哨者保護條款", "網路主權", "吹哨者"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "0fd95dde2996", "answer_pdf_sha1": "12eeef66876e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2804", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 37, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00145', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '網路封包在傳送的過程中，由較高層往較低層傳送時，會加上標頭（Header），這動作稱為：', '["多工", "解多工", "封裝", "解封裝"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "0fd95dde2996", "answer_pdf_sha1": "12eeef66876e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2804", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 38, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00146', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '下列C程式以指標處理陣列，執行後會產生何種輸出？ inta[]={1,2,3,4},n=sizeof(a)/sizeof(int),*p=a,*q=&a[n-1],temp; while(p<q) { temp=*p; *p++=*q; *q--=temp; } printf("%d %d %d %d",a[0],a[1],a[2],a[3]);', '["1 2 3 4", "2 3 4 1", "3 4 1 2", "4 3 2 1"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "0fd95dde2996", "answer_pdf_sha1": "12eeef66876e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2804", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 39, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00147', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-156cbda0', 'sub-pukao-8ec6300d-01', NULL, 'single_choice', '下列何者為合法的 MediaAccessControl（MAC）位址？', '["01:23:45:67:89:AB:CD", "67:89:AB:CD:EF:GH", "01:23:45:67:89:AB", "01:23:45:67:89"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "0fd95dde2996", "answer_pdf_sha1": "12eeef66876e", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2804", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 40, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00148', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '矩形脈衝（RectangularPulse）x(t)定義如下：
其餘
 , 0 ≤  ≤ 
考慮一線性濾波器，其脈衝(響) 應（ImpulseResponse）如下：
x t = 
0,
將該矩形脈衝輸入至該濾波器，求出該濾波器輸出，並畫出濾波器輸出
h(t) = x(T−t)
波形。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "3fd32a82a505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00149', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '關於調幅（AmplitudeModulation,AM）以及雙旁波帶抑制載波
（Double-Sideband Suppressed Carrier,DSB-SC）傳輸：
畫出AM波封檢測器（EnvelopeDetector）電路圖。（5分）
畫出DSB-SC同調接收器（CoherentReceiver）方塊圖。（5分）
描述DSB-SC傳輸與AM傳輸相比的優點和缺點。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "3fd32a82a505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00150', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '一調頻調變器（FMModulator）輸出訊號為
，其中 。（每小題5分，共25分）
() = 100[2 +()]

假設輸出訊號 為矩形脈衝。
() = 2  (), = 20Hz/V
∫

以弧度（Radians）計算出相位偏移（PhaseDeviation）。
m() = 4Π[(−4)]
以赫（Hertz）計算出頻率偏移（FrequencyDeviation）。
以赫表示出峰值頻率偏移（Peak FrequencyDeviation）。
以弧度表示出峰值相位偏移（Peak PhaseDeviation）。
算出此調變器的輸出功率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "3fd32a82a505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00151', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-c978741a', 'sub-pukao-8ec6300d-02', NULL, 'essay', '對下列個別訊號給出奈奎斯取樣率（NyquistRate）與奈奎斯間距（Nyquist
Interval）：
。（5分）
。（5分）
() = (200)
，其中 。（5分）
() = (200)+(400)
。（10分） ()
() = (200) () = 

() =  (200)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "3fd32a82a505", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2816", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信系統概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00152', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '關於二極體，試說明：（每小題10分，共20分）
二極體的空乏區（Depletion Region）形成的原因。
空乏區的內建電位（Built-inpotential）的來由。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL),
  ('pukao-8ec6300d-moex-00153', 'pukao-8ec6300d', 'pukao-8ec6300d-moex-112-2c1c51c4', 'sub-pukao-8ec6300d-03', NULL, 'essay', '如圖一所示之全橋電路，由四個增強型NMOS構成，輸入信號為週期性方
波S 與其反置信號 ，使上下臂互鎖，如S 為使NMOS導通之高電位，則
1 1
為使NMOS關閉之低電位，反之亦然，負載為一電阻R=1 Ω串聯一電感
̅
L=10 mH。（每小題10分，共20分）
̅
初始電流 為零，S 與S 同為高電位，S 為低電位時，說明電流路徑且
1 3 2
推導輸出電流 (t)。

初始電流為 =10A， 、 與 同為低電位，說明電流路徑且繪製輸出

電流 波形，須標示時間終止時之電流，0t 2104 sec。
   

圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:42+00:00", "source_pdf_sha1": "dd3919689c0d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "445", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
