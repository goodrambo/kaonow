-- W1.6 questions batch 4763/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-4ece01bd-moex-00028', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '下表為 CU三軸試驗的數據，請求取 Mohr-Coulombfailurecriterion 相關
之剪力強度參數。（25分）
試體編號 圍壓 軸差應力 破壞時孔隙壓力 試驗結束應變%
kN/m2 kN/m2 kN/m2
#1 100 300 40 10%
#2 160 360 70 10%', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "8f6a7165844c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1806", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00029', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '參考（圖 1）之方向定義，試寫出梁的撓曲變形函數 u(x)與分布載重 q(x)
之間的關係式，並列舉有關此式至少三個基本假設。試以此關係式出發，
推導圖 1 左端固定之懸臂梁撓曲變形函數，以及梁右端點 b之順時針旋
轉傾斜角 θ與垂直向下位移∆。令EI為此梁之撓曲剛度，q 為載重係數，
o
兩者皆為常數。（25 分）
q(x)=q(x/L)2
o
u
x
a b
L
（圖 1）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "3467844bd503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00030', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '一根三夾板梁由兩種彈性材料組成，夾心層材料之彈性係數為
E =200000MPa，上下兩外層由材料 E =50000MPa所製成。各層具有矩
s a
形斷面，且各層之斷面積相同，皆為 A=20 mm2，長度 L=1200 mm。心
層與外層之熱膨脹係數分別為 =1.0 10-5(1/℃)與 =2.0 10-5(1/℃)。此
s a
梁將被安裝於兩剛性牆面之間，事先預留=0.2mm 之微小間隙使其暫不
× ×
受力，如（圖 2）所示，此時若將溫度均勻提高T=20℃，試問升溫後組
合梁內部所受之總軸力F為何？如果心層與外層之材料容許應力分別為
=10.0 MPa和 =5.0 MPa，則升溫上限為何？（25 分）
s a
s
（圖 2）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "3467844bd503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00031', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '圓弧形彎梁左端固定於剛性牆面，座標與尺寸標示如（圖3），梁斷面為
均勻實心方形 20mm 20mm斷面，材料彈性係數E=200000MPa，柏松
比 v=0.25，剪力係數 G=80000MPa，現於梁之自由端施加一垂直於梁身
×
之水平力 P=20N（x-方向），試計算點 a處梁內最大法向應力 σ 與點 b
xx
處最大剪應力 τ ，以及絕對最大法向應變 ε 與絕對最大剪應變γ 。
xy max max
（25 分）
y
1m
a
1m
r
x P
b
（圖 3）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "3467844bd503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00032', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '一水平梁承受若干垂直力與平面內力矩，梁斷面內正值之剪力與彎矩定
義如（圖 4a），其剪力圖（單位 kN）與彎矩圖（單位 kN．m）示意如（圖
4b），試完成剪力圖並推估此梁之所有受力與力矩。（25分）
2m 2m 4m
剪力圖 0
梁內正剪力
22
彎矩圖 0 0
梁內正彎矩
-16
-18
（圖4a）
（圖4b）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "3467844bd503", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00033', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '一宗土地面積經四類不同儀器測量成果如下：
100.0 m2±1.0 m2、101.0 m2±1.0 m2、98.0 m2±2.0 m2、102.0 m2±2.0 m2，
假設測量資料無錯誤且面積觀測量之間不相關，請計算此宗土地面積最
或是值及其後驗標準差。（需有計算及說明過程才予計分，有效位數至 m2
以下一位）（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "59bc34f1f739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00034', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '繪圖並說明製圖角（或稱子午線收斂角）。在臺灣地區二度分帶橫麥卡托
投影地圖上，分析位於東經 120°19''的某地點其方格北及真北方向，以示
意圖輔助說明。（需有充分說明才予以計分）（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "59bc34f1f739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00035', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '說明衛星定位 PDOP值之作用以及如何求算該值。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "59bc34f1f739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00036', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '水準測量進行時，若保持前視距離等於後視距離，有助於消除或減少那
些系統誤差？並請說明其原因。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "59bc34f1f739", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00037', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-113-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '施工安全為營建管理重要課題。由我國職災案件分析中，以「墜落」災
害比例最高，勞動部職業安全衛生署特將今年（民國 113 年）訂為「墜
落打擊年」。請列舉五項工地中常見墜落災害媒介物，並說明依風險控制
之先後順序規劃，應採取之適當墜落災害防止設施。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "974168cfc742", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "352", "s": "1807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
