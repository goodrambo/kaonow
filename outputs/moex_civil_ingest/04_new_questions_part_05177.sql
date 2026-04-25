-- W1.6 questions batch 5177/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-8ec6300d-moex-00029', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '什麼是物件導向程式設計（object oriented programming）？它包含了那
些基本原則？試述這些原則的意義及使用這些原則的優點。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "596c99eaba6e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00030', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '在作業系統（operating system）中，何謂長程排班程式（long-term
scheduler）？何謂短程排班程式（short-termscheduler）？請詳細說明它
們的功用與工作原理。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "596c99eaba6e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00031', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-d87dd49a', 'sub-heelevel3-8ec6300d-01', NULL, 'essay', '請詳細說明下列Python語言程式的執行過程，並寫出程式的輸出。（20分）
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
print(len(goal))', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "596c99eaba6e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00032', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '給定一基頻訊號 且頻寬為 ，若對於此訊號進行取樣且取樣週期為
，則取樣後的訊號為：
() 

 ，
請回答下列問題： () = ()×  ( −)

的傅立葉轉換為何？（10分）
 的傅立葉轉換為何？（10分）
∑( −)
從第小題的結果中如何得到最小的取樣頻率？（5分）
()', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c93b6f7aef1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00033', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '今有一二元通訊系統，此系統每個位元傳輸時間為 ，當傳輸資訊為 1
時，此系統會送出振幅為 2的方波，當傳輸資訊為 0 時，此系統會送出

振幅為 的方波。假設通道為加成性高斯白雜訊通道且雜訊的功率頻譜
密度為 ，則在接收端收到的資訊為：
−2
/2
（） （） ，
  
2+, 1
 = ()+   = ()+    =
請回答下列問題：   −2+, 0
為一高斯隨機變數，請求出 的平均值跟變異數。（10分）
（提示： ）
 
當傳輸資訊為 時，此時的錯誤率為何？（ 分）
1 5
{()()} = ( −)

當傳輸資訊為0 時，此時的錯誤率為何？（5分）
假設 1 與 0出現的機率相等，整體平均的錯誤率為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c93b6f7aef1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00034', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '假設有 輸出，其出現的機率分別為 0.4, 0.2, 0.15, 0.14,
0.11。
,,,,
計算此輸出的資訊熵（entropy）。（註：列出算式即可）（5分）
請利用霍夫曼編碼來將 進行二元編碼。（8分）
計算此編碼的平均碼長（bits）。（6分）
,,,,
如果今天傳輸的資訊為 ，請用霍夫曼編碼的結果來
代表這串資訊。（6 分）
', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c93b6f7aef1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00035', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-0d6c2263', 'sub-heelevel3-8ec6300d-02', NULL, 'essay', '今有一調變輸出為：
，

() = 100cos2 +2 ()
其中 Hz/V. 假設 且

 = 30 () = 4Π (−2)

請問 的波形。（5 分） 1,|| ≤ 1/2
Π() = 
請問此訊號的最大頻率偏移量（f0r,eoqtuheenrcwyidseeviation）。（7分）
()
請問此訊號的最大相位偏移量（phasedeviation）。（7分）
請問此訊號的功率是多少？（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "c93b6f7aef1b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信與系統", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00036', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '自由空間中沿著z軸無窮長均勻線電荷，其線電荷密度為。
（每小題 15分，共 30 分）
用庫侖定律，計算在點P (1,0,0)m的電場。
用高斯定律，計算在點P (1,0,0)m的電場。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "d774e2b91245", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00037', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '一個無限平面導體的電流薄片（currentsheet）在xz平面上且其電流密
度為J  J xˆ(A/m)。（每小題 10 分，共 20分）
s s
以右手定則，判別磁場H 在點P (0,2,0)m和點P (1,3,0)m的方向。
1 2
已知在點P (0,5,6)m的磁場大小為4(A/m)，求電流密度J 。
3 s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "d774e2b91245", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL),
  ('heelevel3-8ec6300d-moex-00038', 'heelevel3-8ec6300d', 'heelevel3-8ec6300d-moex-113-394901ca', 'sub-heelevel3-8ec6300d-04', NULL, 'essay', '在 且 的無損耗介質中，電磁波的電場是
0
E(z,t) xˆ40cos(21010tkz )(V/m)。
 = 9
4
1
已知  109(F/m)， 4107(H/m)。
36 0
（每小題 10分，共 30 分）
求此電磁波的波數k。
求電場E的相量（phasor）表示式E。
利用馬克斯威爾方程式，求磁場H 的相量表示式H。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:01+00:00", "source_pdf_sha1": "d774e2b91245", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "373", "s": "2611", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "電信工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
