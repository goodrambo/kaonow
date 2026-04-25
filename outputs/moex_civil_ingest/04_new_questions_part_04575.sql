-- W1.6 questions batch 4575/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-0f640084-moex-00026', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '在作業系統（operating system）中，何謂長程排班程式（long-term
scheduler）？何謂短程排班程式（short-termscheduler）？請詳細說明它
們的功用與工作原理。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "596c99eaba6e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00027', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-d87dd49a', 'sub-heelevel3-0f640084-01', NULL, 'essay', '請詳細說明下列Python語言程式的執行過程，並寫出程式的輸出。（20分）
max =150
goal=list(range(3,max,2))
goal.insert(0,2)
index=1
target=0
whileindex<len(goal):
target=goal[index]** 2
whiletarget<= goal[-1]:
if targetin goal:
goal.remove(target)
target=target +goal[index]* 2
index =index+1
print(goal)
print(len(goal))', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "596c99eaba6e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00028', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '圖一為一個三相平衡電路，電源為正相序經輸電線（line）饋電於三個
並聯負載，假設負載端 a 相的線對中性點電壓相量為26000V，試計
算 a 相電流相量（ ）以及 a 相與 b 相間之線電壓相量（ ）。（25 分）
Z 0.6j3
tine
a  
  
b
c
圖一：某一個三相平衡電路', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "5e65868373a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00029', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '某一台三相 Δ-Δ接線變壓器是由三個單相變壓器組成（每個單相變壓器
之額定值為 5kVA，其二次側線電壓為 220V），並在 220V下提供三相
平衡的 15kW純電阻性負載。之後，因三相負載降低至 10kW，但仍然
是純電阻且平衡的。於此情形下，有人建議，在三分之二負載下，可以
去除一個單相變壓器，並以 V-V接線運作如圖二所示。假設相序為 abc，
。
求移除一個變壓器後的每個線電流相量（ 、 、 ）。（12分）
 = 220∠0° V
求其餘兩個變壓器各自所提供的複數功率。（8分）
  
對此開 Δ操作的變壓器，必須對負載施加什麼限制？（5 分）
a
b c
圖二：某三相Δ-Δ連接變壓器去除一個單相變壓器之示意圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "5e65868373a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00030', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '某三相、Y接線同步發電機經輸電線路連接至 25 kV無限母線。輸電線
的電抗每相為 4 Ω，發電機的同步電抗每相為 1 Ω，發電機可以提供無限
母線的最大有效功率為 150 MW。假設發電機正在提供其最大有效功率
的 15%，試求輸送到無限母線的無效功率。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "5e65868373a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00031', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-44c05cdd', 'sub-heelevel3-0f640084-02', NULL, 'essay', '假設 和 的初始值皆為 1，使用 Gauss-Seidel 方法執行兩次疊代來
解下列方程式組。（10分）
 
 + = 10
假設 和 的初始值皆為 ，使用+ = 6 方法執行兩次疊代
1 Newton-Raphson
來解下列方程式組。（15分）
 
 
2 + = 8
 
 − + = 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "5e65868373a6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00032', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '某電感結構由兩個相同鐵心與兩個線圈串聯如圖一所示，兩個線圈匝數
相同，且每個線圈匝數為60 匝，鐵心與氣隙的截面積相同為 40cm2，鐵
心的平均長度為 50 cm，鐵心的導磁係數為無窮大，氣隙的導磁係數為
4107H/m，不計其磁飽和、邊緣效應及線圈漏磁通。在電感為 18mH，
電流I 為 10A，計算氣隙g 寬及氣隙磁通密度。（20分）
S o
鐵心#1 氣隙
鐵心#2
I
I S
S
g
o
線圈#1 g 線圈#2
o
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "7cc41d84bf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00033', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '某單相變壓器的額定為100kVA、22.8kV/220V，額定操作的銅損為2kW、
鐵損為 1.6kW。採用此三個單相變壓器接成一具三相變壓器，高壓側為
接線、低壓側為接線。三相平衡負載接於低壓側，其端電壓為變壓器
的額定，負載總消耗功率為 120kW，功率因數為0.8 落後，計算三相變
壓器低壓側的線電流及相電流、三相變頻器的效率。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "7cc41d84bf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00034', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '某三相、Y接線、6 極、380 V、60 Hz的同步發電機，每相同步電抗為
j2.5 ，忽略電樞電阻及鐵心磁飽和。在額定電壓及頻率，發電機輸出
三相總實功率為42 kW，功率因數為0.8落後，此時發電機的激磁場電流
為15A。若在額定電壓、頻率，輸出總實功率也維持42kW時，調整激磁
場電流使其功率因數為0.6落後，計算激磁場電流及功率角。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "7cc41d84bf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL),
  ('heelevel3-0f640084-moex-00035', 'heelevel3-0f640084', 'heelevel3-0f640084-moex-113-bdd26e86', 'sub-heelevel3-0f640084-04', NULL, 'essay', '某台他激式直流發電機的額定電流為 100A，轉速及激磁電流維持固定，
忽略電刷壓降及電樞反應。當電樞電流為40A，其電樞端（輸出）電壓
為 212 V，當電樞電流為60 A，其電樞端電壓為208 V。若發電機在額
定電流操作，計算電樞電阻消耗功率及電壓調整率。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:56+00:00", "source_pdf_sha1": "7cc41d84bf5f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "371", "s": "2607", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
