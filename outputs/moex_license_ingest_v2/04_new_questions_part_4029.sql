-- W1.4 new questions batch 4029/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00044', 'structural-eng', 'structural-eng-moex-113-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '某一後拉預力梁結構系統，一端為固定端，一端為輥支承；梁全長為
12m，梁全長具統一對稱矩形斷面，斷面深度為60cm，寬度為 40cm。
今配一拋物線鋼腱，其在固定端斷面鋼腱偏心距為混凝土形心上方
25cm，梁中央斷面偏心距為混凝土形心下方 15cm，輥支承端處則無偏
心，如圖 4 所示。假設鋼腱預力大小為 120噸，請繪製由該預力所產生
之壓力作用線、計算由該預力引起固定端與輥支承端之受力，以及如何
調整鋼腱使其成為「同位鋼腱」。（25 分）
2255ccmm 混凝土形心 3300ccmm
混凝土形心
1155ccmm
3300ccmm
拋拋物物線線預預力力鋼鋼腱腱形形心心
6m
1122mm
圖 4 預力梁結構與鋼腱配置示意圖（未依照比例尺繪製）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "7a014a42b199", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00045', 'structural-eng', 'structural-eng-moex-113-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '型鋼桿件中若存在殘餘應力可能導致桿件軸向壓力強度下降，在無殘餘
F KL F
應力之理想狀態下，桿件之挫屈強度曲線可由下方 cr 對應 y
F r E
y
如圖(a)所示。試考慮一斷面為RH4004001321之受壓桿件，假設其
斷面因製程過程所導致之殘餘應力分布，如圖(b)所示，包含殘餘壓應力
0.5F 及殘餘拉應力 0.4F 。假設其鋼材之應力-應變關係為完全彈塑性，
y y
如圖(c)所示，而斷面之慣性矩 I = 66,600 cm4，I = 22,400 cm4。針對此
x y
具殘餘應力影響之受壓桿件，繪製該斷面強軸（x 軸）挫屈方向之挫屈
F
強度曲線圖（ cr ~ 圖），圖中須標註曲線之函數方程式，並標註圖中轉折
F
y
點之坐標數值。（25分）
KL F F 1 F 1 F F 0.877
參考公式： y， cr ， cr 2， cr 2， cr
= =1-  =0.658 =
r E F 2 F 4 F F 2
y y y y
圖(a)
1
圖(b)
圖(c)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "69a38ba6058e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00046', 'structural-eng', 'structural-eng-moex-113-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖所示為一中空鋼管斷面拉力桿件之端部與十字形連接板之接頭，桿件
預計使用A500Grade50 鋼材之STK27310圓管，管外徑尺寸D=273mm，
並於鋼管外側採用 E70 系列銲條之縱向填角銲道與連接板相連接，如圖
所示。
以極限設計法求此桿件之設計強度（ T ），請詳述可能之極限狀態種
t n
類。（15分）
依前一小題之所得之設計強度為銲接之設計力，設計此接頭之銲道尺
寸。（10分）
其中 A500 Grade 50 鋼材之 F = 2.3 tf/cm2，F = 3.1 tf/cm2。圓管之斷面
y u
積 A =82.6 cm2 ，十字形連接板厚 t =20 mm。
g g
x D 3L2
參考公式：U 1 ，x  （半圓管），U
L  3L2 W2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "69a38ba6058e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00047', 'structural-eng', 'structural-eng-moex-113-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '依下圖示梁採用RH488 300 11 18 斷面及 SN490B鋼材，假設此斷
面為結實斷面，其降伏應力 F =2.35tf/cm2及 F =4.0tf/cm2 ，並分別以
y u
斷面強軸與弱軸承受一集中載重。兩者之支承條件相同，滾支承並無面
外束制，且 A及 B處翼板皆有設置充分側向支撐，試檢核此梁是否可以
承擔如圖(a)及圖(b)所示之 5 tf 靜載重及 5 tf 活載重。檢核時忽略梁自
重，並以下方公式估算 C 值。（25 分）
b
12.5M
C  max 3.0
b 2.5M 3M 4M 3M
max A B C
參考公式：
圖
圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "69a38ba6058e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00048', 'structural-eng', 'structural-eng-moex-113-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖為國內典型梁柱接頭型式，梁為 H型鋼斷面，柱為箱型鋼斷面，試
申論說明該類梁柱接頭內各式銲接及其相鄰母材可能產生之潛在破壞
模式為何？其對應之預防方法與檢測方式為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "69a38ba6058e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00049', 'structural-eng', 'structural-eng-moex-112-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '請試述下列名詞之意涵：（25分）
塑性指數（Plasticity Index）
有效粒徑（Effectivegrain size）
相對密度（RelativeDensity）
曲率係數（Coefficientof curvature）
壓縮指數（Compression index）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b61cfdd6e419", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00050', 'structural-eng', 'structural-eng-moex-112-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '如下圖所示邊坡之高 H=8 m，土壤單位重 γ =20 kN/m3，
請問假設破壞面 AB之土壤強度參數 c=50（kPa）及=36 條件下之抗
滑安全係數為何？（15 分）
°
若考慮雨水入滲而降低假設破壞面之土壤強度參數 c=5（kPa），但仍
然維持 36 ，則其抗滑安全係數為何？（10分）
°', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b61cfdd6e419", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00051', 'structural-eng', 'structural-eng-moex-112-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '臺灣中南部某工業建築物基礎採用打入式鋼筋混凝土預鑄樁，樁徑為 50
公分、樁長 25 公尺。基地的地下水位在深度 10 公尺處，地層資料如下
表。請參照建築物基礎構造設計規範並考慮臨界深度分析樁身極限摩
擦力（15分）與樁底極限支承力。（10分）
深度 土壤單位重
土壤種類 相對密度 Dr SPT-N值 N
（m） 60 γ（kN/m3）
粉土質砂
0-5 40% 12 18
（SM）
砂質粉土
5-15 50% 15 20
（ML）
級配良好砂
15-30 62% 30 20
（SW）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b61cfdd6e419", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00052', 'structural-eng', 'structural-eng-moex-112-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '某建案基地為 1000 坪（地上 12層、地下 3 層），開挖深度11.95公尺，
採用連續壁深度 24 公尺。進行地下工程時即有鄰近住家反映牆壁龜裂
漏水、磁磚掉落等情況，建物沉陷點及建物傾斜計監測數值超過警戒值，
地下開挖至第 3層時，大底未完成即發生支撐系統失敗，造成鄰近多戶
民宅嚴重傾斜下陷。工址附近鑽探資料如下表所示。請研判事故發生
原因（15分）及未來此區域深開挖工程災害防治可能對策。（10 分）
取樣深度 標準貫入 粒徑分析（%） 含水量 液性限度 塑性限度 統一土
（m） 試驗 礫石 砂 粉土 黏土 （%） （%） （%） 壤分類
SW-
2 2+9+5 14 76 9 1 24 - -
SM
4 2+2+3 25 63 11 1 27 - - SM
6 1 0 0 49 51 39 35 11 CL
8 1 0 0 55 45 40 33 10 CL
10 1 0 0 56 44 41 32 12 CL
12 1 0 0 60 40 36 33 11 CL
14 1 0 0 40 60 42 35 12 CL
16 1 0 0 53 47 45 36 13 CL
18 1 0 0 51 49 41 39 14 CL
20 1 0 0 56 44 42 40 18 CL
22 1 0 1 57 42 35 39 20 CL
24 1 0 0 53 47 39 42 18 CL
26 1+1+2 0 1 54 45 41 40 16 CL
28 1+2 0 0 57 43 44 40 15 CL
30 1+2+2 0 1 54 45 32 40 17 CL', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b61cfdd6e419", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00053', 'structural-eng', 'structural-eng-moex-112-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '鋼筋混凝土梁斷面尺寸如圖一所示，特定斷面外側壁面自底部算起 55、
75、85公分處依序設置應變計 a、b、c，其中 a 與 c黏貼方向為水平（0 ）
而 b 為 45 。應變計歸零後進行載重試驗，讀數 、 、
°
。由於梁底有些微裂縫，理想化計算之斷面性質不可靠。
°  = 500(μ)  = 0
僅考慮此載重作用下之撓曲行為，回答下列問題：
 = −100(μ)
由量測之應變讀數計算該斷面中性軸位置及彎矩造成的曲率為何？
（10 分）
梁腹尺寸深度明顯大於寬度，符合平面應變假設，分析 b位置之剪應
變 大小？（5分）
假設材料性質 E（=24 GPa）、 （=0.2），計算 b 位置上之主軸應力與

最大剪應力大小？（10 分）
ν
90公分 y
120
30公分
c 85
b 75
90公分 a 55
x
梁側視壁面
30公分
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "0888370490ef", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
