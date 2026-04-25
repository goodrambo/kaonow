-- W1.4 new questions batch 4034/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00094', 'structural-eng', 'structural-eng-moex-111-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '設計考慮靜載重 135 kN 與活載重 315 kN，而構件使用寬度 300 mm 而
厚度(t)為 20 mm 的 A572 Gr. 50 鋼板（降伏強度 F =345 Mpa，而抗拉
y
強度 F =450 MPa），在其中一個角隅距兩邊離 a=65 mm處與另一連接
u
部件均開一個直徑(d)為 100 mm的圓孔，以放入插銷作成一個鉸接合。
設計鉸接拉力構件除受拉全斷面降伏，亦應考慮下列極限狀態：
㉑受拉有效面積斷裂P  F (2tb )，b (b ) (2t16)(mm)
n u e e e max
㉒受剪有效面積斷裂P 0.6F A ，A 2t(ad /2)
n u sf sf
㉓插銷投影面積承壓P 1.8F A ，A td
n y pb pb
試依容許應力設計（ASD）法，設計與分析上述鉸接拉力構件之可用強度。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "9d896e152606", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00095', 'structural-eng', 'structural-eng-moex-111-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '試說明韌性抗彎鋼構架的重要銲接部位與所需實施的非破壞檢驗方法。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "9d896e152606", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00096', 'structural-eng', 'structural-eng-moex-111-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '設計考慮如圖(a)的鉸支承門型抗彎鋼構架受地震水平力作用時，鋼梁比
鋼柱先降伏且在梁端形成塑鉸。為達上述「強柱弱梁」設計目標，選擇
使鋼柱的塑性斷面模數為鋼梁的1.25 倍。兩種鋼材的降伏強度分布如圖
(b)所示。假設鋼梁與鋼柱的製作屬統計上之獨立事件。試分別針對鋼材
A 與鋼材 B，分析柱與梁使用同一種鋼材製作卻未達設計目標變「強梁
弱柱」之機率，並說明限制鋼材降伏強度範圍的意義。（25 分）
機率
水平力 鋼梁
鋼材B
鋼柱 1/100
鋼材A
1/200
300 400 500 降伏強度(MPa)
(a)
圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "9d896e152606", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00097', 'structural-eng', 'structural-eng-moex-110-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一土壤剖面及穩定滲流狀況如下圖所示，黏土層下方之砂土層內已觀
察到湧泉壓力，可使開口豎管內的水上升到高於地表面 1 m：（25 分）
計算 A點、B點、C點之總應力、孔隙水壓及有效應力；
估計黏土層中滲流之方向及速率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "60b4da015ddb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00098', 'structural-eng', 'structural-eng-moex-110-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一土壤剖面如下圖所示，由距離地表面 2 m深度開始，有一厚度為 5 m
之黏土層，此黏土層為正常壓密黏土。現於地表面施加均勻分布的應力
100 kN/m2，請計算：（25分）
黏土層之主要壓密沉陷量；
施加應力 1 個月後、2 個月後、3 個月後所得到之壓密沉陷量分別為
何？
施加應力多少天後可以得到 50 cm的壓密沉陷量？
註：
2
U%
ForU=0 to 60%，T =
v
4100
ForU>60%，T =1.7810.933·log(100U%)
v', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "60b4da015ddb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00099', 'structural-eng', 'structural-eng-moex-110-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '有一長度12 m，直徑 60 cm之圓形預鑄混凝土基樁，如下圖所示，貫入
於 6 m厚之砂土層及其下之黏土層中，地下水位於地表面。已知砂土層
之c=0 kN/m2，=32， =19.2 kN/m3，而黏土層之c =100 kN/m2，
sat u
=18.9 kN/m3。使用安全係數FS=3 進行下列計算：（25 分）
sat
請計算此基樁之容許垂直支承力；
請計算此基樁之容許拉拔力。
註：㉑假設此基樁之側向土壓力係數 K=1.4 K 。
o
㉒假設砂土-混凝土基樁之摩擦角=0.8。
㉓於考慮基樁表面附著力時，值假設為 0.65。
㉔於=0時，假設基樁承載值因數N*=9。
C
㉕混凝土基樁單位重=24 kN/m3。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "60b4da015ddb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00100', 'structural-eng', 'structural-eng-moex-110-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '若有一邊坡剖面如下圖所示，且地下水位上升至圖面標示高程，請使用
普通切片法，依照已分割之切片，計算此假設圓弧破壞面之安全係數FS。
請以如下給定之土壤參數來進行計算：=18 kN/m3， =20 kN/m3，
sat
c=10 kN/m2，=36。（25分）
註：普通切片法公式
npcL (W cos u L )tan
FS n1 n n n n n
npW sin
n1 n n
º
º
º
º', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "60b4da015ddb", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00101', 'structural-eng', 'structural-eng-moex-110-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖一中之結構，桿件 AC 及 BC 為彈性體，有相同材料，相同密度，受
到外力 P作用。BC 桿長度固定，但 AC桿的長度隨角度改變而改變。
在 AC及 BC桿內部之應力沒超過其允許應力（allowablestress） 情
allow
況下，求角度使結構有最小重量。（25分）
A
B C
L
P
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "b5f7d4057457", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00102', 'structural-eng', 'structural-eng-moex-110-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '圖二中，實心鋼桿（steelshaft）直徑d 60mm，剪力模數G 80GPa，
1 S
長(2x)m，其中有x長插入黃銅套管（brasssleeve）中，且黃銅套管牢
固地粘合在鋼桿上。黃銅套管長為(1x)m，內徑d 60mm，外徑
1
d 100mm，剪力模數G 40GPa。桿件的兩端受扭矩T作用。（25分）
2 b
在扭矩T 10 kN m作用下，若Ａ、D兩端間之允許扭轉角 15，
allow
則BC長x?
若 黃 銅 套 管 允 許 剪 應 力 ( ) 80Mpa ； 鋼 桿 允 許 剪 應 力
b allow
( ) 120Mpa，則最大扭矩T ?
s allow max
黃銅套管
d 100mm d 60mm
2 鋼桿 1
p s
t T
T
t
A p B s C D
1m x 2m
t-t截面
p-p截面 s-s截面
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "b5f7d4057457", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00103', 'structural-eng', 'structural-eng-moex-110-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '矩形截面之懸臂梁受彎矩M 作用，如圖三所示。此梁之楊氏模數沿著 y
0
軸呈函數變化：（25 分）
n
y
E(y) E , n0, 2, 4, ....
0 h
設此梁之應力~應變關係為(y) E(y)，求梁之最大應力 。
max
y
h
z
M
0
E(y) h
b
圖三（a）等截面懸臂梁 圖三（b）梁之截面', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "b5f7d4057457", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
