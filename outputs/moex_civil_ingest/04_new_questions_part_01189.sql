-- W1.6 questions batch 1189/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00188', 'customs-d7421644', 'customs-d7421644-moex-110-d87dd49a', 'sub-customs-d7421644-02', NULL, 'essay', '下列為一個 C++程式，請問：
其目的為何？（6 分）
詳述執行流程。（7分）
寫出程式的輸出。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "0eb3e4d056bc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00189', 'customs-d7421644', 'customs-d7421644-moex-110-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一部三相、Y 連接、440 V、60 Hz 之感應電動機連接至一個三相平衡電
源，已知該感應電動機的線電流大小為 40A。當一個連接之理想電容器
組與該感應電動機並聯連接後，三相電源之總線電流大小降低為34.1A，
三相電源之總功率因數則升高至0.9 落後（lagging）。試求：感應電動機
的輸入實功率與輸入虛功率、理想電容器組之每相電容值與每相電流值、
合併感應馬達與理想電容器組之連接每相等效阻抗值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00190', 'customs-d7421644', 'customs-d7421644-moex-110-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '一部三相、Y連接、額定2GVA、24kV、60Hz、同步電抗 1.0標么之大
型同步發電機，經輸電線傳送 1 GVA、功率因數 0.85 落後的功率到一個
電壓大小為 23 kV的無限匯流排（infinite bus）。假設忽略輸電線的阻抗
及該同步發電機的電樞電阻，並以該同步發電機之端電壓相角為 0做參
考。當同時調整該同步發電機之場電流（fieldcurrent）下降 20%且調整其
蒸氣渦輪機輸入機械功率後，致使該發電機之輸出虛功為零。試求：該調
整工作的前、後，同步發電機的內電勢電壓大小（kV）、功率角（power
angle）以及傳送至無限匯流排的實功（MW）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00191', 'customs-d7421644', 'customs-d7421644-moex-110-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '三部三相、60 Hz 的同步馬達分別具有 0.5 標么、0.25 標么、0.15 標么的
次暫態電抗（以2MVA、440V為基準值），同時並聯至電力系統的匯流
排 A，該匯流排 A 再經由三條具有相同 0.05 電抗的輸電線連接至該電
力系統的匯流排B，匯流排 B所具有的短路容量為三相、20MVA（以三
相、440 V為標稱值）。若匯流排 A故障前的電壓為 430 V，忽略兩部馬
達故障前的負載電流，試求匯流排 A 發生三相短路故障的初始對稱均方
根值電流（initialsymmetrical rms current）的標么值與實際值。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00192', 'customs-d7421644', 'customs-d7421644-moex-110-44c05cdd', 'sub-customs-d7421644-03', NULL, 'essay', '兩部三相、60 Hz的蒸氣渦輪機-同步發電機組 A、B，其額定功率與速度
調整率（speedregulation）分別為（以個別機組之額定為基準值）：300MW
與 5%（機組 A）、250MW與 7%（機組 B），兩部機組同時連接至60Hz
的電力系統。當系統頻率突然由60Hz上升至60.15Hz時，試分別求出這
兩部蒸氣渦輪機組 A、B之輸出功率變化值（MW）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "a57bed4ccf69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1502", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00193', 'customs-d7421644', 'customs-d7421644-moex-110-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖一 Q 偏壓於主動區，I = 0.24 mA，熱等效電壓（thermal equivalent
1 C
voltage）V =25mV，R =3k，R =540 ，=24，r =，基極電
T C EE o
壓 v 含輸入小訊號 v 以及必要的直流電壓 V ，耦合電容 C。先算出
B in B
電晶體小訊號參數 g 與r ，畫出整個放大器的小訊號模型電路，再求算
m
小訊號輸入電阻R 、輸出電阻 R 及電壓增益 v /v 。（25 分）
in o o in', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "ed11d271c6b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00194', 'customs-d7421644', 'customs-d7421644-moex-110-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖二(a)與圖二(b)均為線性電路，R =R =R =2k，R =3k，R =4k，
1 2 6 3 4
R =R =1k。對電路 N而言，圖二(a)與圖二(b)虛線框內電路完全等效，
5 7
求算 R 之值及 V 與 V 之關係。（25 分）
x x s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "ed11d271c6b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00195', 'customs-d7421644', 'customs-d7421644-moex-110-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖三網路 R =R =1，L=1H，C=1F，時間 t0– 時，L與 C無儲
s L
存能量，輸入電壓 V (t)=u(t)單位步級函數（t<0 時，u(t)=0V；t>0 時，
s
u(t)=+1V）。先說明 L與 C阻抗與頻率的關係，再據之說明理由以判斷
在 t=0+與 t 時，V (t)分別為何值。（25分）
o', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "ed11d271c6b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00196', 'customs-d7421644', 'customs-d7421644-moex-110-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '畫出轉換函數（transferfunction）H(s)=3104s/[(s+10)(s+100)]，s=j，
相位頻率響應（以度(o)表示）的直線近似波德圖（Bodeplot）。橫軸角頻
率對數範圍至少包含= 10–2至 104 rad/sec，縱軸須涵蓋H()在上述頻
率範圍內的角度，必須標註橫座標軸與縱座標軸之變數與單位、各線段轉
折點的橫軸與縱軸座標、以及各直線的斜率。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "ed11d271c6b8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1503", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00197', 'customs-d7421644', 'customs-d7421644-moex-110-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '某部單相額定 100 仟伏安，2000/200 伏特的雙繞組變壓器，連接如圖所示
的自藕變壓器。其中 a, b 端的電壓為 200 伏特，且 b, c 端的電壓為 2000
伏特。在額定運轉狀態下：（每小題 5分，共 20分）
計算I 電流為若干安培。
H
計算I 電流為若干安培。
L
計算此部自藕變壓器的容量為若干仟伏安。
說明自藕變壓器的優點及缺點。
a I
H
200V
I b
L
V =2200V
H
V =2000V 2000V
L
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:18+00:00", "source_pdf_sha1": "b06932b56aba", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110050", "c": "107", "s": "1501", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "110", "exam_name": "110年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
