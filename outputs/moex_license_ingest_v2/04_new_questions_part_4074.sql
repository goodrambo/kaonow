-- W1.4 new questions batch 4074/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00494', 'structural-eng', 'structural-eng-moex-094-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一矩形簡支式預力混凝土梁，其斷面為 b×h，跨距 L 為 30m，請問：
該預力梁採用直線型或曲線型鋼腱時，其載重能力有何差別？試述之。（10分）
若採用直線型鋼腱則預力梁是否會產生摩擦預力損失？若會，在何種條件下形成？
試述之，並以方程式表示其大小。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "e7f264512771", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00495', 'structural-eng', 'structural-eng-moex-094-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖所示為一單角鋼與鋼板以螺栓之接合。角鋼為 L200×200×20（mm），鋼材
F  = 2.5 tf/cm2，F  = 4.1 tf/cm2。承壓型螺栓直徑為 22 mm，螺栓標稱剪力強度
y u
為 4.2  tf/cm2，螺紋不在剪力平面上，螺栓孔直徑為 23.5  mm。試依極限設計法
規範，假設接合板強度足夠，計算角鋼能承受之設計拉力強度φP 。（25 分）
n
參考資料：
㉑翼板寬度與斷面深度之比不小於 2/3 之 W、H、S或 I型鋼，及由此類型鋼切割或
符合前述尺度需求之銲接 T 型鋼，且接合須在翼板處。若以螺栓接合則接合處沿
應力方向每行螺栓數不少於 3 根．．．．．．．．．．．．．．．．．．U=0.90
㉒不合於上款之 W、H、S、I 或 T 型鋼，及包括組合斷面之其他各種斷面。若以螺
栓接合則接合處沿應力方向每行螺栓數不少於 3 根．．．．．．．．．．U=0.85
㉓以螺栓接合之所有各種斷面且在接合處沿應力方向每行僅有 2 根螺栓．．U=0.75
螺栓孔承壓強度  φR ，採用 R =2.4dtF
n n u
7.5 cm
接合板  7.5 cm
5 cm 5 cm
2@7.5 cm=15 cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "57ef2155baa1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00496', 'structural-eng', 'structural-eng-moex-094-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '鋼結構極限強度設計法規範對於混凝土包覆梁之設計撓曲強度訂為φ M ，φ =0.9
b n b
，M 依塑性應力分析而得。試依塑性應力分析，計算圖示混凝土包覆合成梁之標
n
稱撓曲強度 M 。假設鋼梁與鋼筋全斷面達降伏應力，並考慮鋼梁、主筋與混凝土
n
之貢獻。鋼梁為 H488×300×11×18（d×b ×t ×t ，mm）之型鋼，置於梁斷面中
f w f
心位置，鋼材 F  = 2.5 tf/cm2，F  = 4.1 tf/cm2。四支主筋為 D32鋼筋（每支截面積
y u
為 8.19 cm2），F  = 4200 kgf/cm2。混凝土f′=210 kgf/cm2。（25 分）
y c
50 cm
8 cm
70cm 鋼梁
8 cm
主筋
（請接背面）
高等考試建築師、技師考試暨普通考
94 年專門職業及技術人員 考試試題  代號：00320  全一張
試不動產經紀人、地政士、記帳士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "57ef2155baa1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00497', 'structural-eng', 'structural-eng-moex-094-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一懸臂鋼梁銲接於鋼柱，鋼梁承受偏心載重 P（工作載重）。鋼梁為
300×300×18×18（mm）之箱型組合斷面，鋼柱為H型鋼，皆使用鋼材F  = 2.5 tf/cm2
y
，F  = 4.1 tf/cm2。鋼梁銲接於鋼柱如圖所示，銲材為 E70XX，F  = 4.9 tf/cm2。試根
u u
據容許應力設計法規範，忽略鋼梁自重並假設鋼梁強度足夠，以彈性分析計算此銲
接所能提供之工作載重 P。（25 分）
10
10  P
P  14 cm
A
A
A-A 斷面
12  200 對稱於梁
12  200 中心線
50 cm
註：銲接符號單位為mm
鋼柱', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "57ef2155baa1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00498', 'structural-eng', 'structural-eng-moex-094-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一靜不定鋼梁兩端分別為固接與簡支，鋼梁斷面為 T型，使用鋼材 F  = 2.5 tf/cm2
y
，F   =  4.1  tf/cm2。假設鋼梁有足夠側向支撐且為結實斷面。試以塑性設計法（Plastic
u
design），僅考慮撓曲強度，計算鋼梁所能承受之因數化載重w （不考慮鋼梁自重）。
u
（25 分）
w  40 cm
u
2.6 cm
24 cm
600cm 2.4 cm
鋼梁斷面', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "57ef2155baa1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "094260", "c": "003", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "094", "exam_name": "094年建築師、技師、不動產經紀人、地政士、記帳士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00499', 'structural-eng', 'structural-eng-moex-093-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某一凝聚性土壤夯實後含水量為 18%，土壤顆粒之比重為 2.70，夯實試體之體積為
944 cm3，質量為1955公克。試求此夯實土壤之孔隙比、飽和度、濕土單位重（kN/m3）、
及乾土單位重（kN/m3）。若進一步夯實後，可將土壤試體之飽和度提高至 95%。假
設試體之含水量不改變，試計算進一步夯實後，土壤試體之孔隙比、濕土單位重
（kN/m3）、及乾土單位重（kN/m3）。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "229f93659f2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00500', 'structural-eng', 'structural-eng-moex-093-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某土壤單元承受之應力狀況如右圖所示：
2 kPa
試求此土壤單元水平面承受之正應力σ 及 3 kPa  5 kPa
h 2 kPa
剪應力τ 的大小。（9分）  109°
h
51°  水平面
試求最大主應力σ 及最小主應力σ 的大小。  20°
1 3
h
（8分）
試求最大剪應力τ 及最小剪應力τ 的方 h
max min
向（與水平面的夾角）。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "229f93659f2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00501', 'structural-eng', 'structural-eng-moex-093-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '右圖所示 6.0 m 高之重力式擋土牆被設計為
可以抵抗146 kN/m之水平推力。牆後非凝聚
性回填土之飽和單位重及濕土單位重皆為
19.2 kN/m3，而內摩擦角為35o。假設忽略牆
摩擦角及毛細現象，試求地下水位（G.W.T.）
上升至何高度 x 時？此擋土牆將發生滑移
（sliding）現象。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "229f93659f2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00502', 'structural-eng', 'structural-eng-moex-093-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '於台灣某處建造如下圖之大型儲油槽，油槽下方為軟弱且具壓縮性之軟弱黏土及砂
土層。
試詳細說明油槽設計者必須考慮之各項大
地工程問題。（9分）
工址調查應進行那些現地調查及實驗室試
驗項目？為甚麼需要這些項目？（8分）
若採用預壓（preloading）工法改良地盤，
為確保施工安全及瞭解改良成效，在現地
應進行那些監測項目？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "229f93659f2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "5001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00503', 'structural-eng', 'structural-eng-moex-093-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '如圖一所示之 AB 和 CD 兩桿，其材料性質為：
膨脹係數 截面積  長度  楊氏模數
AB 桿  α   A   L   E
b b b b
CD 桿  α   A   L   E
m m m m
在室溫時，兩桿間有空隙δ，
設溫度由室溫增加∆T 時，兩桿產生接觸（無擠壓），求∆T 。（5 分）
0 0
當溫度由室溫增加∆T,(∆T >∆T )時，兩桿之應力σ ,  σ 各為何？（15 分）
0 AB CD
當溫度由室溫增加∆T,(∆T >∆T )時，AB 桿之變形量δ 為何？（5 分）
0 AB
A B C D
圖一
δδ
L L
b m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a42593f12258", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
