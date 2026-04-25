-- W1.6 questions batch 4762/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-4ece01bd-moex-00018', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如圖所示鋼桁架結構，A 點為鉸支承，C 點為滾支承，鋼材彈性模數
4
E = 200 GPa，各桿件的長度與斷面積之比值為L/A10 (1/m)，假設桿
件自重不計，試求在如圖所示之外力作用時之所有支承反力及桿件內
力，請繪出結構圖將支承反力及桿件內力（說明拉力或壓力）標示於圖
上，並求出 d點之水平向及垂直向位移。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "1c1c2421fdeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00019', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如圖所示複合結構，A點及 D點為鉸支承，C點為鉸接頭，構件ABC 為
梁桿件，構件 CD為桁架桿件。梁 ABC的慣性矩為 6 4及其
I 20010 mm
b
3 2 3 2
斷面積為A 810 mm ，桁架桿件 CD 的斷面積為A 310 mm ，
b t
2
所有桿件的彈性模數均為E= 200 kN/mm 。試分析複合結構受圖示外力
作用下之支承反力，請繪出結構圖將支承反力標示於圖上，並繪出構件
ABC之剪力圖及彎矩圖，再以虛功法（單位力法）求得 C 點之垂直位移。
（未依指定方法作答，整題以零分計）（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "1c1c2421fdeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00020', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-7d633e06', 'sub-heelevel3-4ece01bd-05', NULL, 'essay', '如圖所示剛構架結構，A 點為鉸支承，E 點及 F 點為固定支承，D 點為
自由端，除 CD構件為剛性外（撓曲剛度EI），其餘構件之撓曲剛度
4 2
均為EI510 kN-m ，剛構架之水平構件 AB、BC 及 CD 均承受垂直
向均布載重w  20 kN/m，忽略構件軸向變形，試以傾角變位法分析，
求出 E點及 F點固定支承之反力，並計算 A點鉸支承之旋轉角，以及 D
點自由端之垂直向位移與旋轉角。（未依指定方法作答，整題以零分計）
（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "1c1c2421fdeb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00021', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '一鋼筋混凝土單筋矩形梁，梁寬b35cm，深h60cm，有效深度
d 53cm。配置主筋 4-D25 及箍筋 D13@20 cm。若斷面承受靜載彎矩
M 12tf-m、活載彎矩M 15tf-m、靜載剪力V 6tf 及活載剪力
D L D
V 8tf ，試分別檢核斷面彎矩及剪力強度是否足夠？已知混凝土強度
L
f280kgf /cm2，f 4200kgf /cm2；D25，d 2.54cm，A 5.07cm2；
c y b b
D13，d 1.27cm，A 1.27cm2。（25分）
b b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "820433164aa8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00022', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '梁斷面寬度 40cm，如採用 2支 D32 主筋與 D10 肋筋，請檢核裂紋控制
是否符合目前土木 401 規範要求？如不符合時，試調整鋼筋配置方式
（但鋼筋量不可小於原設計值）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "820433164aa8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00023', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '有一橫箍筋矩形柱斷面如圖所示，此柱承受偏心軸壓力，當中性軸位
置c 23cm時，試求此時柱對應的設計軸力強度P 及設計彎矩強度
n
M 。已知混凝土強度 f280kgf /cm2， f 4200kgf /cm2；D29，
n c y
d 2.87cm，A 6.47cm2。（25分）
b b
5500ccmm
3 PPn
8 03
- n
86-D29 D c0
- 2 mc
D
5 m
2
5
77 77
cc cc
mm mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "820433164aa8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00024', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '請說明鋼筋混凝土矩形梁最大鋼筋量之規定及理由。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "820433164aa8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1703", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00025', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '請解釋下列土壤力學領域的符號或名詞：（每小題 5 分，共 25分）
D
10
Relativedensity
Criticalhydraulicgradient
Sand cone method
Plasticity chart', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "8f6a7165844c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00026', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '某土壤進行物理性質試驗，數據如下：液性限度 LL=52%，塑性指數
PI=20%，54%通過 200號篩，比重 GS＝2.7。此土壤進行 ProctorTest，
求得壓實後試體X具有最大乾單位重 γ =20.37kN/cm3 及最佳含水量
dmax
OMC＝10%，請問試體 X的飽和度是多少？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "8f6a7165844c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00027', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '請以 Terzaghi 單向度壓密理論回答下列問題：
某地層為厚度 10m之飽和正常壓密黏土層，上為砂土層，下為岩盤。在
外加載重作用下，預估黏土層最終將產生30 cm之主要壓密沉陷量。現
場觀測結果顯示，在外加載重作用 30 天後此黏土層有 9 cm的沉陷量。
【假設砂土層及岩盤的壓縮性可以忽略】。
Terzaghi 推導壓密方程式過程中做了那些假設？（10 分）
黏土層達到 27cm的沉陷量需幾天？（10分）
求黏土層壓密係數。（5分）
【參考資料】
平均壓密度（U）與時間因素（T ）之關係
v
U 0.1 0.3 0.5 0.6 0.7 0.8 0.9 0.95 1.0
T 0.008 0.071 0.197 0.287 0.403 0.567 0.848 1.163 ∞
v', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "8f6a7165844c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
