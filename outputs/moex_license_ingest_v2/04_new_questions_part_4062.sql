-- W1.4 new questions batch 4062/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00374', 'structural-eng', 'structural-eng-moex-099-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一 15  cm厚鋼筋混凝土版由鋼梁支撐，鋼梁為跨距 6.0  m之簡支承，梁與梁之間
距為 3.0 m，上翼版埋入混凝土版內（如圖三），混凝土單位重 2.4 tf/m3，版面上
貼大理石面磚，重 30 kg/m2，樓版承受活載重 400 kg/m2，荷重僅考慮靜載重與活
載重之組合，試使用A992 鋼料（降伏強度F ＝3.52 tf/cm2，E＝2,040 tf/cm2），以
y
極限設計法（LSD）參考下表設計。
僅就力矩考量，設計一最經濟之RH梁斷面。（15分）
檢核此斷面之撓度是否合乎 L/360之規定。（15分）
15 cm厚 RC版
3.0 m   3.0 m
6.0 m
梁、版斷面圖
鋼梁側視圖
圖三
RH斷面  斷面模數  塑性模數  慣性矩  迴轉半徑 X X 單位重
1  2
(H×B)  S (cm3)  Z (cm3)  I (cm4)  r (cm)  (tf/cm2)  (cm2/tf)2 (kg/m)
x x x y
175×175  331  370  2,900  4.37  288  0.102  40.4
298×149  424  475  6,320  3.29  128  3.07  32.0
200×200  472  525  4,720  5.02  267  0.135  49.9
244×175  495  550  6,040  4.21  201  0.451  43.6
200×204  498  565  4,980  4.88  309  0.0853  56.2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "94e183deb9cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "099220", "c": "003", "s": "200", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "099", "exam_name": "099年建築師、技師、不動產經紀人、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00375', 'structural-eng', 'structural-eng-moex-098-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一黏土質粉土將應用於現地作為夯實回填材料，現地欲控制相對夯實度為實驗室
標準夯實試驗（Standard  Proctor  Test）結果之 95%，且需保持良好之透水性。抽驗
結果發現現地所用夯實機械能量較標準夯實試驗高，然而含水量係依原設定值加以
控制。繪圖說明實驗室結果與現地夯實曲線之差異及目前控制含水量所得到之對應
土壤夯實情形；此時對原欲控制之土壤透水性產生何種影響？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b7de68a4cdc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00376', 'structural-eng', 'structural-eng-moex-098-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一筏式基礎如下圖所示，基礎之設計尺寸為：B = 8 m，L = 12 m，承載荷重Q
= 18 MN。該處地層為正常壓密黏土，γ  = 17 kN/m3，C  = 35 kN/m2，黏土下
sat u
方為砂土層，地下水位於地表下 3  m處。如採用部分代償式（partially
compensated）基礎，且安全係數為 3，則基礎埋置深度D為何？其在開挖時將
f
開挖面內之水位抽降至與開挖底面等高，此時下方土層之抗隆起安全係數為何？
（25 分）
Q
D
f
12 m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b7de68a4cdc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00377', 'structural-eng', 'structural-eng-moex-098-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某地層由飽和黏土層及下方之砂土層組成，地下水位於地表面。黏土之含水量ω  =
30%，孔隙比e = 0.8；砂土之土粒比重G  = 2.65，含水量ω = 18.5%。砂土層為一受
s
壓水層，經由置於砂土層底部之水壓計測得該點之水頭高於地表面 1.0  m，如圖所
示。試分別求砂土層之頂部、中間、底部，即A、B、C三點處之孔隙水壓力及垂直
向總應力  與有效應力。（25 分）
1.0m
1.0m
飽飽和和黏黏土土 3m
3m
A
A
22mm
B
飽和砂土 B
飽和砂土
22mm
CC
（請接背面）
98年專門職業及技術人員高等考試建築師、技師、消
全一張
防設備師考試、普通考試不動產經紀人、記帳士、第 代號：00350
（背面）
二次消防設備士考試暨特種考試語言治療師考試試題
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b7de68a4cdc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00378', 'structural-eng', 'structural-eng-moex-098-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '茲設計一重力式混凝土擋土牆高 6 m，牆頂寬度為 0.6 m，其背填土為砂土，與水平
成 20°，如圖所示。背填土之單位重為 18  kN/m3，摩擦角為 30°；混凝土之單位重
為 24 kN/m3；而牆底之基礎土壤單位重為 16 kN/m3，摩擦角為 33°。（25 分）
若欲使所有作用力之合力通過牆底，且距牆趾為三分之一牆底寬度時，則牆底寬
度須為多少？
根據以上所得的結果，試分別檢核此擋土牆抵抗水平滑動及傾倒之安全係數。若
安全係數不足時，在不改變牆底寬度的情況下，有何改善的方式？
00.6.6m
2200°°
砂砂土土
66mm
基基礎礎土土壤壤', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "7b7de68a4cdc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00379', 'structural-eng', 'structural-eng-moex-098-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圓形斷面桿件如圖一所示，受一對軸力（P）
與扭矩（T）。當 P=90 kN、T=5 kN•m，
T T
圓形斷面半徑為 ；試求最大剪應力。 P  P
10 cm
（20 分）  圖一
V Q
z y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "57aa5c9e0f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00380', 'structural-eng', 'structural-eng-moex-098-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '試推導開口薄壁梁（beam of thin-walled open cross section）之剪應力公式:τ= ，
I  t
y
推導中須將各變數或符號定義清楚。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "57aa5c9e0f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00381', 'structural-eng', 'structural-eng-moex-098-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一半無限梁置於彈性基礎上，在 x=a 處受
P
一點荷重 P（如圖二所示），試求該梁之
變形，假設梁之 EI 為常數、梁與彈性基礎  ∞
+
不分離。（20 分）
x
圖二
q', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "57aa5c9e0f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00382', 'structural-eng', 'structural-eng-moex-098-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖三所示之懸臂梁，長 L，受一均佈荷重 q
與一軸力 P，假設 EI 為常數。試求：
P
該梁之變形。（15 分）
挫屈臨界載重P 。（10 分）  L
cr
圖三
σ', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "57aa5c9e0f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00383', 'structural-eng', 'structural-eng-moex-098-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '一矩形斷面梁（高h、寬b）受一對彎矩M的
作用，其材料之應力-應變（σ−ε）關係如
C
圖四所示（OA 段斜率為 E， AB 段為水平，
BC 段斜率為E；σ可為壓應力，亦可為拉應力）。  A B
σ
y
試求彎矩 M 與曲率κ之關係，假設變形前後，
平面維持平面。（20 分）
O  ε
ε ε
y h
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:10+00:00", "source_pdf_sha1": "57aa5c9e0f54", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "098220", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "098", "exam_name": "098年建築師、技師、消防設備師、不動產經紀人、記帳士、第二次消防設備士、語言治療師", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
