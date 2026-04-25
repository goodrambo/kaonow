-- W1.6 questions batch 5271/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00053', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-112-1d357d6d', 'sub-heelevel3-b0f95c3f-06', NULL, 'essay', '考慮一單位負回授（unitynegativefeedback）閉迴路（closed-loop）控制系
K(s4)(s5)
統，其開迴路（open-loop）轉移函數為 。
s24
欲使此閉迴路控制系統穩定之K值範圍為何？（5分）
設定K為正數。繪製此閉迴路控制系統之根軌跡圖（rootlocusplot），並標
示出極點（pole）、零點（zero）、根軌跡與虛數軸交會之位置、根軌跡離
開實數軸的位置（breakawaypoint）與進入實數軸的位置（re-entrypoint），
以及各所對應之K值。（20分）
如欲使此閉迴路控制系統對於步階輸入之2%安定時間（settlingtime）為
2秒，則K值該如何設計？且此設計下控制系統的阻尼比（dampingratio）
應為何？（10分）
如欲使此閉迴路控制系統對於步階輸入之穩態誤差（steadystateerror）
為-10%，則K值又該如何設計？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "87ed4707415b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "377", "s": "3009", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00054', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '如下圖所示，長度L300mm之實心圓柱的鑄鐵懸臂樑，在自由端同時
受到扭矩T 680N-m及橫向負荷P750 N作用。若鑄鐵的抗拉極限強
度S 350MPa，抗壓極限強度S 630MPa，設計之安全係數n2.5。
ut uc
根據最大正應力理論之設計準則，求該圓柱之直徑 D。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "752e8614f15a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00055', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '直徑d 75mm之實心圓軸 AB 承受如下圖所示之負載並旋轉，轉軸上
C、D兩處轉輪的半徑r 0.2m。轉軸的降伏強度S 550MPa，極限強
y
度S 660MPa，修正後之疲勞耐久限（endurancelimit）S 186MPa。
u e
（每小題 10分，共 20 分）
沿轉軸長度分別繪製彎矩分佈圖與扭矩分佈圖。
考慮軸之旋轉，以畸變能失效理論（distortion-energytheoryoffailure）
結合 Goodman 疲勞準則分析轉軸的安全係數。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "752e8614f15a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00056', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '有一外徑D 30mm之螺旋壓縮彈簧，由直徑d 3mm的鋼線所製成，
o
鋼線的剪力模數G 79GPa，剪力降伏強度S 848MPa，彈簧的兩端
sy
簡單磨平（plain ground ends，總計無效圈數為 1圈），總圈數為 12 圈。
若彈簧被壓縮至壓實長度（solidlength）時，彈簧內的剪應力不可超過鋼
線的剪力降伏強度，試分析所容許之彈簧最大自由長度。（20分）
16PR 0.615 Gd4
參考公式： K ，K 1 ，k  。
s d3 s c 64R3N
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "752e8614f15a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00057', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '如下圖所示，一長方形鋼板於上下側以兩道填角銲（filletwelds）接合於
一垂直基座上，鋼板的厚度為 20 mm。兩銲道長度均為 50 mm，銲腳
（leg）尺寸為8mm。銲接後鋼板形成一懸臂結構，於自由端受一向下之
負載 F，若銲接處的容許剪應力 140MPa，求容許之最大負載 F。
all
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "752e8614f15a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00058', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '一個由電動馬達驅動的皮帶輪 A經由平皮帶帶動另一個皮帶輪 B，馬達
的輸出功率為 1.5 kW，馬達的轉數n 2500rpm。主動輪 A 的半徑
1
r 37.5mm，兩輪軸互相平行且軸中心距離c625mm，皮帶與輪之間
1
的摩擦係數0.35，皮帶每單位長度重量w1.75N/m，若運轉時被動
輪 B的轉數為 1000 rpm，求：
被動輪 B的半徑r 。（5 分）
2
主動輪 A被皮帶所包覆的角度（wrap angle）φ。（5分）
運轉時皮帶的緊邊張力F 和鬆邊張力F 。（10 分）
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "752e8614f15a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "2703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00059', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '試利用牛頓系流體（Newtonianfluid）受剪應力與角變化率之線性關係分
析動力黏滯係數及運動黏滯係數v之因次。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00060', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '寫出（不必推導）雷諾傳輸定理（R.T.T.），並解釋各項之物理意義。
（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00061', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '一U型管加速器中，液體之比重為4.0。今將此加速器安裝於汽車內，其
底管（長度為30cm）之左右兩側垂直管如下圖所示。某次汽車測試試跑
時，觀測到兩垂直側管內液面高差為 8 cm，求此時汽車的加速度a 為若
干（m/s2）？U型管之內徑為1cm，重力加速度以9.81m/s2計。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00062', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-111-0e54f998', 'sub-heelevel3-b0f95c3f-05', NULL, 'essay', '一 均 勻 薄 層 流 在 傾 角 為 θ 之 斜 坡 上 往 下 流 動 速 度 如 下 ：
g  y
uy y d  sin
2
式中，y表垂直坡面之座標，d 為水流斷面深度，u為沿著坡面流下之速
度，g表重力加速度，μ為流體之動力黏滯係數，ρ為流體密度。求：
（每小題 10分，共 20 分）
單位寬度之體積流率 q
V
平均速度（V）和最大速度（u ）之比值，即 ？
max
u
max
35260
37360', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "96885da3a48c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "373", "s": "1805", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
