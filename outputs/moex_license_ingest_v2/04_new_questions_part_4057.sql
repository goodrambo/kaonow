-- W1.4 new questions batch 4057/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00324', 'structural-eng', 'structural-eng-moex-101-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一ASTM A572 Gr.50之W14×90簡支鋼梁，梁長10 m，在梁兩端（一端為鉸接支承
，另一端為滾支承）均有側向支撐，梁全長承受向下均佈的工作靜載重為 5.8 kN/m（
包含梁自重）及向下均佈的工作活載重為W （kN/m），利用極限設計法（LRFD）設
L
計此梁強軸彎矩強度所能承載之最大活載重W 。（25分）
L
鋼材F = 350 MPa, F = 69 MPa
y  r
W14×90 型鋼性質：S = 2343350 mm3, Z = 2572769 mm3
x  x
d = 356 mm, b = 368 mm, t = 18 mm
f  f
λ = 9.19, λ = 22.3, L = 4.5 m, L = 11.7 m
p  r  p  r
12.5M
公式：C = max
b
2.5M +3M +4M +3M
max A B c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3bf9e276b454", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00325', 'structural-eng', 'structural-eng-moex-101-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依據鋼結構極限設計法規範回答下列問題：
請說明韌性抗彎矩構架接頭所需的塑性轉角需求規定。（7分）
請說明在韌性抗彎矩構架中梁塑鉸區設置側向支撐之目的及設計原則，並繪圖表
示如何施作。（18分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3bf9e276b454", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00326', 'structural-eng', 'structural-eng-moex-101-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一鋼造斜撐構架系統，經過載重組合分析後得柱軸力 800 kN，柱底端強軸彎矩為
100 kN-m，弱軸彎矩為 50 kN-m，柱底端為固接端，另一端為鉸接端，此柱在強軸
及弱軸的有效長度（KL）均為4.5 m，請利用極限設計法（LRFD）檢核此柱所承受
之軸力彎矩需求強度比是否符合設計需求。（25分）
柱為 ASTM A572 Gr.50 之 W14×68，鋼材及斷面性質如下：
F = 350 MPa
y
W14×68 型鋼性質：Z = 1884512 mm3, Z = 604683 mm3, A = 12903 mm2
x  y
r = 153 mm, r = 62 mm
x  y
λ2
F = (0.658) c F , λ ≤1.5
F cr y c C
KL
y m
公式：λ = ;   ;    B =
c 0.877 1
rπ E 1−(P P )
F = ( )F , λ >1.5
cr y c u el
λ2
c
P ⎛ M M ⎞
u ⎜ ux uy ⎟
+ + ,P < 0.2φP
⎜ ⎟ u n
2φP φM φM
n ⎝ nx ny ⎠
P 8⎛ M M ⎞
u ⎜ ux uy ⎟
+ + ,P ≥ 0.2φP
⎜ ⎟ u n
φP 9 φM φM
n ⎝ nx ny ⎠
（請接背面）
101年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3bf9e276b454", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00327', 'structural-eng', 'structural-eng-moex-101-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如下圖所示鋼結構梁柱接頭示意圖，梁翼板與柱採用全滲透銲接，梁腹板與柱的剪
力板（180 mm長及 80 mm寬）採用栓接，經過載重組合分析後得梁剪力180 kN，
假設柱的剪力板只傳遞梁剪力至柱，請依極限設計法（LRFD）設計剪力板的厚度
及所需的螺栓數目，並以圖示方式說明螺栓於剪力板的配置（距柱面 40 mm處）。
螺栓採用直徑 20 mm 的 A325承壓型強度，螺栓標稱剪力強度為 330 MPa，剪力板
材質為A36鋼板。（25分）
剪力板材質：F = 248 MPa、F = 400 MPa
y  u
承壓強度公式: R =1.2 L tF ≤2.4dtF
n c u u
剪力板
180
柱
梁
80  單位：mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3bf9e276b454", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "101180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "101", "exam_name": "101年專技建築師技師第二次食品技師考試、不動產經紀人記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00328', 'structural-eng', 'structural-eng-moex-100-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '解釋或說明下列名詞：（25分）
零空氣孔隙曲線（zero-air-void curve）
應力路徑（stress path）
流黏土（quick clay）
角變位（angular distortion）
臨界水力坡降（critical hydraulic gradient）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "90892f639088", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0217", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00329', 'structural-eng', 'structural-eng-moex-100-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某工地因施工需要在複雜土層進行傾斜向開挖底面為2 m×2 m正方形之圍堰開挖，如下
圖所示，開挖後水在圍堰內土層 B 之土壤中產生滲流，試求a、b、c、d、e 各點之總
水頭、高度水頭及壓力水頭各為若干（m）？試繪流經此土壤之流網及計算流經此
土壤之平均水力坡降 i 為若干？若此土層 B 之土壤透水係數 k＝0.005  cm/sec，試
bd
計算其滲流量為若干（m3/day）？（25分）
a
水
壓
計
不透水圍堰
地表
e 不透水A土層
2m
8m
4 開挖底面
2m×2m
3
d
6m  透水B土層
5m
c 透水
B土層
3m
n
2m
53 ° b 砂土層
參考位置（reference level） m
圖未依比例尺繪
砂土層
（請接背面）
100年專門職業及技術人員高等考試建築師、技師、第2次 全一張
食品技師考試暨普通考試不動產經紀人、記帳士考試試題  （背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "90892f639088", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0217", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00330', 'structural-eng', 'structural-eng-moex-100-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '如下圖所示之1.8m×1.8m正方基礎承受 Q為1  MN之鉛垂向之正方柱載重，假設砂
土層之孔隙比 e 為 0.65，比重 G 為 2.65，地下水位以上砂土之飽和度為 50%；黏
s
土層之比重 G 為 2.70，壓縮性指數 C 為 0.25，回脹性指數 C 為 0.06，最初孔隙比
s c s
e 為 0.68。其他參數如圖中所標示。假設壓力以 2：1（V：H）分布方式向下傳
o
遞，試計算基礎中心下方黏土層之平均新增鉛垂向應力為若干（kPa）？試計算
黏土層之壓密沉陷量為若干（mm）？（25分）
Q
地表面
砂土
G＝2.65
s
1.5m
1.8m×1.8m 地下水位
0.9m
砂土
1.8m
1.2m
c''＝0 o''＝30°
黏土  G＝2.70  c＝40 kPa o ＝0
s
e ＝0.68  C＝0.25  C＝0.06
3m  o c s
前期最大壓密應力＝100 kN/m2
岩盤', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "90892f639088", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0217", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00331', 'structural-eng', 'structural-eng-moex-100-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某工地在中等堅硬（medium stiff）之黏土層作鋼鈑樁支撐開挖，此黏土之孔隙比e為
0.617，比重 G 為 2.70，飽和度 S 為 30 %，各尺寸如圖所標示，支撐（struts）之水
s r
平間距為 5 m。試繪出作用於擋土鋼鈑樁之土壓力。計算作用於A、B、C支撐
之作用力各為若干（kN）？若鋼鈑樁之允許應力σ 為 170 MN/m2，試計算鋼鈑樁
all
所需之截面模數（section modulus）為若干（m3/m）？（25分）
6m
鋼
1m A支撐
鈑
鋼 樁
鈑
樁
3m
黏土
B支撐 G＝2.70
s
e＝0.617
S＝30%
2m r
C支撐 c＝30 kN/m2
o＝  0
1m 開挖底面', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "90892f639088", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0217", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00332', 'structural-eng', 'structural-eng-moex-100-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '已知平面主應力狀態σ >σ >0，如下圖所示。求該點處任意斜截面上全應力 p 與
x y α
其作用面法線所夾角度ϕ的最大值？（25分）
y
σ σ
y α
n ϕ
α σ p
x α
α
τ
σ x α
x
σ
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3b6d5e8a7f6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00333', 'structural-eng', 'structural-eng-moex-100-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一打入土壤內的木樁如下圖所示（貫入土壤之長度為 l），沿樁軸單位長度的摩擦力
為 f =kx2（k為常數），假設樁自重及樁底的反力可忽略，試繪出整根木樁的軸力
分布圖。（25分）
F
B
C
l
x
A', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:09+00:00", "source_pdf_sha1": "3b6d5e8a7f6f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "100230", "c": "003", "s": "0216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "100", "exam_name": "100年專技人員高考建築師、技師、第2次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
