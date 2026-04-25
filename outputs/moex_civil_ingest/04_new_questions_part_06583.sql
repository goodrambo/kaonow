-- W1.6 questions batch 6583/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-4ece01bd-moex-00001', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-dce50e58', 'sub-locality-4ece01bd-01', NULL, 'essay', '如圖一所示，4kN的負載由四根304不銹鋼線支撐（楊氏模數E=193GPa），
鋼線連接在剛性的構件 AB 及CD上。試求負載作用後各構件（構件AB及
構件 CD）的傾斜角度。構件起始是水平且各鋼線的截面積為30mm2。
（25分）
E F
11..22mm
H
D
C
1.5m
0.6m
1.5m 4kN
A B
00..33mm
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "c8e7d8bdc60e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00002', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-dce50e58', 'sub-locality-4ece01bd-01', NULL, 'essay', '考慮一薄壁圓筒壓力容器槽，其內徑 r=1m，槽壁厚度 t=0.1m，壓力
容器槽內氣體壓力為 p =10 MPa，據此請求出該容器槽內壁所承受的最
大剪應力的絕對值為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "c8e7d8bdc60e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00003', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-dce50e58', 'sub-locality-4ece01bd-01', NULL, 'essay', '如圖二所示，當梁上之最大正彎矩值與最大負彎矩值相同時，試問a值為
何？已知梁之彈性模數E與斷面對中性面之慣性矩I均為常數。已知彎矩
M(x)與撓度（或稱側向位移） 、斜度 (x)存在M(x)=EIv"(x)、 (x)= 。
並且以下表格中懸臂梁在距離自由端 x =a處受到集中荷重 P 的彈性位(移)
()   
曲線為已知，使用線性疊加原理求解。（ 2 1.41421）（25分）
參考表格
√ =
梁 撓度
P
  
x
() = [3(−) −3(−) −

a 2(−) ] 0 ≤  ≤ 
  
L () = [(−) −3(−)(−) ]
6
P  ≤  ≤ 
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "c8e7d8bdc60e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00004', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-dce50e58', 'sub-locality-4ece01bd-01', NULL, 'essay', '如圖三所示，有一桁架系統由桿件透過鉸接組合而成。已知所有桿件均為
A46合金鋼所製作的圓桿，其降伏強度250 MPa、彈性模數為200 GPa，
桿件的截面積均為0.03m2，且該圓桿截面上的慣性矩I =I = ，r為截
x y
面圓的半徑。又AB、BC、AE、CD桿件長度為1m，DE桿件長 度為2m。

已知兩端鉸接之桿件其挫屈（buckling）的臨界載重可以表達為 ，

若同時考量挫屈及降伏均為失敗，請問此時桁架系統所受的水平力P最大
 
 = 
可為多少？（=3.14159、 2 1.41421）（25 分）
P
C √ =
y
D 鉸接點
1
B 鉸支承
x
1
滾支承
A E
1 圓截面示意圖
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "c8e7d8bdc60e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00005', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-9983aba7', 'sub-locality-4ece01bd-02', NULL, 'essay', '測量學可分為「平面測量」與「大地測量」兩類。請問：
在面積大約100公頃的大約正方形的範圍內，測量A, B, C三個點的三
角形的三個內角，如果希望誤差小於1"，需考慮地球曲率嗎？（15分）
當 AB 兩點的水平距離 700 公尺，如果用三角高程測量，但忘了考慮
地球曲率，會造成多少誤差？（假設地球半徑 6370 公里）（10分）
參考公式
A
E 206265
R2
(1k)D2
h'' h h
C R 2R', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "62de0d98f777", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00006', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-9983aba7', 'sub-locality-4ece01bd-02', NULL, 'essay', '有一部經緯儀，請問：
儀器精度（中誤差）為 3秒，現在有一個測量作業，要求成果的中誤
差必須小於 1秒，請問必須重複測量幾次？（15分）
測量垂直角時，正鏡天頂距 9430''30"，倒鏡天頂距 26529''20"，試求
垂直角多少？指標差多少？（10分）
參考公式
Z Z Z Z
2 1 90 i  1 2 180
2 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "62de0d98f777", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00007', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-9983aba7', 'sub-locality-4ece01bd-02', NULL, 'essay', '一閉合導線測量共有六個測點，實測內角總和為720°0′30″，試求：
角度閉合差，及每個內角改正量分配值。（15分）
計算導線後發現縱距誤差 3.0 公分，橫距誤差 1.0 公分，假設導線總
長度 1000.000 公尺，請問閉合比多少？（以整數分之一表達）（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "62de0d98f777", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00008', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-9983aba7', 'sub-locality-4ece01bd-02', NULL, 'essay', '有一個放樣的作業，請問：
有一個放樣點距離全站儀約 300 公尺，假設測角誤差 3"，請問放樣位
置最大可能偏離多遠（以公尺為單位）？（15 分）
使用 GNSS的 RTK測量作放樣，優點與缺點為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "62de0d98f777", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1709", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00009', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-a5727cc1', 'sub-locality-4ece01bd-03', NULL, 'essay', '如遇緊急或特殊工程為使混凝土能快速製造生產，進而縮短工期，請詳
述提高混凝土之早期強度策略及注意事項為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "71a3c3375bed", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00010', 'locality-4ece01bd', 'locality-4ece01bd-moex-114-a5727cc1', 'sub-locality-4ece01bd-03', NULL, 'essay', '公共工程工期管理是契約履約中的重要環節，若未能如期完工可能帶來
那些影響？請詳述造成工程進度延誤之可能原因。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:38+00:00", "source_pdf_sha1": "71a3c3375bed", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "332", "s": "1707", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
