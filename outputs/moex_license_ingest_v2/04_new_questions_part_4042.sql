-- W1.4 new questions batch 4042/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00174', 'structural-eng', 'structural-eng-moex-107-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '撓曲構架如下圖，在水平桿件 BC 中央承受向下外力 P 作用。假設所有
桿件 EI值固定且長度均為 L，軸向變形及剪力變形均可忽略。請畫結構
圖並定義自由度編號，然後建立勁度矩陣及節點外力向量，並以直接勁
度法求解各自由度位移（以其他方法計算不予計分）。接著，請繪製彎
矩圖，必須標示所有桿件節點處、局部最大或最小處之值。（25分）
A
P
B C
D', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "62f1f23ee119", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00175', 'structural-eng', 'structural-eng-moex-107-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如下圖結構在D點受 100 kN向下集中力作用，試以最小功法求纜索AE
及 BF的內力，並繪梁A~D之彎矩圖。圖中粗黑實線表示梁柱桿件，斷
面 EI 值皆為 1000 kN-m2，忽略軸向及剪切變形；細虛線表示只承受拉
力的纜索，斷面 EA值為 500 kN。（25分）
100kN
5m  5m  5m
A  B C D
5m
E  F G', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "62f1f23ee119", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00176', 'structural-eng', 'structural-eng-moex-107-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '靜不定橋梁結構如下圖，A、E為滾支承，F、G為固定支承。請在上部
梁 A-B-C-D-E上繪出中點 C向下位移的影響線。請註明正負並標明所有
局部最大、最小值。假設所有斷面EI皆為800 kN-m2，且只考慮撓曲變
形，不計軸向變形和剪切變形。靜不定結構分析方法不限制。（25分）
5m  5m  5m  5m
A B  C D E
4m
F  G
3m  3m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "62f1f23ee119", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0316", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00177', 'structural-eng', 'structural-eng-moex-107-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一鋼筋混凝土矩形梁斷面（如圖示）承受扭矩 T =4  tf-m 及剪力載重
u
V =20 tf。梁斷面配置4支 D13閉合箍筋，淨保護層為 4 cm。試以塑性
u
理念設計箍筋之間距。（25分）
50 cm
43 cm
4-D13
7 cm
4 cm
4 cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "472029bceeaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00178', 'structural-eng', 'structural-eng-moex-107-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '鋼筋混凝土構架樓層高 3.8 m。各梁尺寸與配筋均相同，配置 8 支 D29
拉力筋，有效深度為 43 cm。柱與梁同寬，柱斷面為 50 cm×50 cm，請
檢核此構架角柱接頭之剪力強度。（25分）
柱
梁
角柱', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "472029bceeaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00179', 'structural-eng', 'structural-eng-moex-107-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '有一承受負彎矩120 tf-m之鋼筋混凝土T型梁斷面，其梁腹寬b =40 cm，
w
梁深h=120 cm，有效深度d=113 cm，翼緣厚（版厚）h=15 cm，梁跨度
f
12 m，梁與鄰梁中心距3 m。此T型梁斷面將採12-D25主筋與D13肋筋，
鋼筋淨保護層均為4 cm。試依規範對裂紋控制之規定計算主筋分布之寬
度與間距，以及側面縱向表層鋼筋之配置範圍與間距。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "472029bceeaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00180', 'structural-eng', 'structural-eng-moex-107-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '如圖所示之後拉法預力梁斷面，預力鋼鍵套管直徑7.5 cmψ，施預力後
以水泥砂漿填滿。預力鋼鍵 f = 19000 kgf/cm2，混凝土 f’ = 420 kgf/cm2，
pu c
E =2×106 kgf/cm2，E =3.07×105 kgf/cm2，有效預力F =100 tf，A =14 cm2。
s c e ps
試求開裂彎矩、極限彎矩並檢核鋼鍵是否被拉斷。（25分）
⎛ f ⎞ f ''
參考公式： f ⎜1−0.5ρ pu ⎟ ， f +700+ c
pu⎜ p ⎟ se ρ
f '' 100
⎝ ⎠
c p
15 cm 70 cm
70cm
3355 ccmm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "472029bceeaf", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0313", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00181', 'structural-eng', 'structural-eng-moex-107-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖，有一中間設有細縫（slit）之鋼板受拉力作用，此鋼件考慮分別使
用應力-應變關係不同之兩種鋼材 A與 B製作。
忽略應力/應變集中進行分析，試推估兩種材料之鋼件受最大拉力時標
點間伸長量為何？（15分）
說明降伏比對鋼件伸長量之影響。（10分）
鋼板厚度  標點
細縫
鋼材A
鋼材B', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "ec16b160774d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00182', 'structural-eng', 'structural-eng-moex-107-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '鋼構架中有一柱長 400 cm，採用板厚 3.2 cm、寬度 80 cm之箱型斷面。
分析後得知柱需承受壓力 1,119 tf，且 2方向有效長度係數分別為 2.284
與 2.397。鋼材降伏強度 3.3 tf/cm2，而揚氏係數 2,040 tf/cm2。試依極限
設計法（LRFD）檢核上述柱構件之強度設計。（25分）
kL F 0.877
λ= y λ> = λ≤ = −0.419λ2
參考公式： ; 1.5,F F ; 1.5,F e cF
c πr E c cr λ2 y c cr y
c', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "ec16b160774d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00183', 'structural-eng', 'structural-eng-moex-107-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '試以容許應力設計法（ASD）檢核圖中 SN400B鋼箱型柱-H型梁接頭之
銲接尺寸。梁翼與梁腹負擔彎矩分別為M =124.5kNm與M =25.5kNm。
f w
2×6/ 2×3882
梁腹銲喉斷面模數S = ×10−3 =212.9cm3，而銲道外側拉
w 6
M
應力τ = w =119.8N/mm2。銲道容許應力 f =90.5N/mm2。（30 分）
w1 S a
w
柱
梁
單位:mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:07+00:00", "source_pdf_sha1": "ec16b160774d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "107180", "c": "003", "s": "0314", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "107", "exam_name": "107年專門職業及技術人員高等考試建築師、技師、第二次食品技師考試暨普通考試不動產經紀人、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
