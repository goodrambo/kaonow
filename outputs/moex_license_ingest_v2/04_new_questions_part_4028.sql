-- W1.4 new questions batch 4028/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00034', 'structural-eng', 'structural-eng-moex-113-050f1447', 'sub-structural-eng-03', NULL, 'essay', '如下圖示為一大型吊橋，主航道橋為加勁鋼箱梁吊橋，橋面寬 30公尺為
雙向六車道設計，某日出現明顯的波浪形抖動現象，隨後大橋雙向車道
及通航水域被封閉通行。請論述主要原因為何？（5 分）根據風工程與
結構動力理論，該吊橋的振動是屬於自由振動還是強迫振動？（5 分）
通常此類橋梁設計前會進行橋梁斷面模型風洞試驗，其基本振動行為可
根據圖示簡化模型進行探討，請推導其運動方程式。（圖中，u 及u 為定
1 2
義之自由度，p 及p 為外力）（15分）
t
大型吊橋波浪形抖動報導與橋梁斷面簡化模型', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "266007128c36", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00035', 'structural-eng', 'structural-eng-moex-113-050f1447', 'sub-structural-eng-03', NULL, 'essay', '根據最新建築物耐震設計規範，於靜力分析法中規定之水平總橫力如
下：
I S
最小設計水平總橫力： aD
V=   W
1.4  F
y u m
IF S
u  aD W
4.2  F
中小度地震設計地震力： V*= y u m
IF S
u  aD W
3.5 F
y u
m
I S
最大考量地震設計地震力： aM
V =   W
M 1.4 F
y uM
m
請問規範耐震設計之基本原則為何？與上述三種設計地震力規定邏
輯之相關性為何？為何建築物耐震規範分母取 1.4 而橋梁耐震設計規
範分母取1.2？請詳細論述。（10分）
針對中小度地震設計公式的分母為何又不同？請詳細論述。（5分）
請就地震發生年超越機率之危害度（回歸期）、彈塑性設計假設、韌性
需求等面向，就上述公式各符號定義進行詳細論述說明。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "266007128c36", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00036', 'structural-eng', 'structural-eng-moex-113-050f1447', 'sub-structural-eng-03', NULL, 'essay', '根據公路橋梁耐震設計規範，橋梁設計總橫力之地震力計算，提供規範
（2-6）式橋梁所考慮方向之基本振動週期計算公式，請根據該公式先推
導下圖均質簡支梁沿垂直方向之變位函數u(t)。（10 分）再求得規範建議
公式之基本振動週期，並與圖示之理論解比較，同時說明其合理性。（15分）
均質簡支梁基本振動理論頻率與規範建議公式', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "266007128c36", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00037', 'structural-eng', 'structural-eng-moex-113-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖一所示之梁，假設斷面 EI值為常數。不論向下之位移或是向上之位
移，其最大值都不能超過梁長之1/300，也就是最大容許位移值=40mm。
試求滿足該位移限制之最小 EI值。（25分）
100kN
A B C D
200kN-m
4m 4m 4m
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b6f5be6eb37e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00038', 'structural-eng', 'structural-eng-moex-113-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖二所示之桁架，已知支承 F發生垂直向下沉陷 v =12mm，桿件 CD
F
有製造誤差，桿件 DE有溫差T。因以上三個原因，造成 C點向下位
移 4.8mm，E點向下位移6.4mm。試求上述製造誤差=？mm（註明過
長或過短）及T =？℃（註明升溫或降溫）；假設所有桁架桿件性質相同
如下：熱膨脹係數1.5105 / ℃，楊氏模數 100 GPa，斷面積
A=150 mm2。（25分）
H 4m I 4m J 4m K 4m L 4m M 4m N
3m
A B C D E F
G
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b6f5be6eb37e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00039', 'structural-eng', 'structural-eng-moex-113-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖三所示之門型構架，梁與柱之斷面 EI皆相同，但梁長大於柱長，也
就是 L /L>1。已知兩根柱最大彎矩的數值大小與梁最大彎矩的數值大
b
小其比為2：1，試求此時 L /L=？本題限以傾角變位法作答，分析時可
b
忽略軸向變形。（25 分）
B EI C
P L
b
EI L L EI
A D
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b6f5be6eb37e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00040', 'structural-eng', 'structural-eng-moex-113-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖四所示之門型構架，試以結構勁度矩陣法求取側推曲線P圖，直
至結構到達極限承載力，其中為受力點之側向（水平）位移。假設
EI=425,000kN-m2，L=7m，梁斷面塑性彎矩強度 M =300kN-m，柱
pb
斷面塑性彎矩強度 M = 580 kN-m，上述梁、柱之彎矩強度不論正負彎
pc
矩都相同。分析時可忽略軸向變形，且當桿件之斷面到達彎矩強度前，
桿件維持彈性；當桿件之斷面到達彎矩強度時，該斷面以塑鉸模擬且斷
面之彎矩維持不變（具韌性但不考慮應變硬化）。（25 分）
B EI C
P L
2EI 2L 2L 2EI
A D
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "b6f5be6eb37e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00041', 'structural-eng', 'structural-eng-moex-113-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '某一左右對稱 T 形梁斷面示意圖如圖 1 所示。若採用中強度鋼筋
（ f =4200kgf/cm2、E =2.04×106kgf/cm2）、混凝土（ f''=280kgf/cm2、
y s
C
ε = 0.003）時，請依規範計算該斷面之最大鋼筋量與最小鋼筋量。若
u
更換為高強度鋼筋（ f =6900kgf/cm2、E =2.04×106kgf/cm2）及較低強
y s
度混凝土（ f''=210kgf/cm2、ε =0.004），斷面不變，則 T形梁斷面之
u
C
平衡鋼筋量與最大鋼筋量分別為若干？（25分）
80cm
20cm
60cm
A
s
40cm
圖 1T形梁斷面示意圖（未依照比例尺繪製）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "7a014a42b199", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00042', 'structural-eng', 'structural-eng-moex-113-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '懸臂梁斷面示意圖如圖 2a，若採用中強度鋼筋（ f =4200kgf/cm2、
y
E =2.04×106kgf/cm2）、#10（D32）與#3（D10）鋼筋之斷面積分別為
s
8.14cm2、0.71cm2；混凝土性質（ f''=210kgf/cm2、ε =0.003）；下方
u
C
斷面為受壓力，若考慮壓力鋼筋之貢獻，請計算採斷面彎矩強度及壓力
鋼筋應力大小。若相同斷面之懸臂梁長度為 3 m（示意圖如圖 2b），請
計算最大因數化均佈載重ω（含自重、靜載重、活載重等）。（示意圖未
u
依照比例尺繪製）（25分）
3300ccmm
#3@25
3-#10
矩矩形形混混凝凝土土梁梁
4444ccmm ω
u
2-#10
33mm
88ccmm
圖 2a梁斷面示意圖 圖 2b 懸臂梁結構示意圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "7a014a42b199", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00043', 'structural-eng', 'structural-eng-moex-113-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '某一正方形（40cm×40cm）柱斷面如圖 3所示。若採用 8-#8（D25）主
筋（d =2.54cm，A =5.07cm2、 f =4200kgf/cm2、E =2.04×106kgf/cm2）、
b b y s
混凝土（ f''=280kgf/cm2、ε=0.003）。此柱受軸力與單向彎矩。若柱破
u
C
壞時，拉力鋼筋的應變恰為零。請計算斷面承受之軸力與破壞時承受之
彎矩。（25 分）
8
12
8-#8
12
8
8 12 12 8
圖 3 方形柱斷面（未依照比例尺繪製）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:03+00:00", "source_pdf_sha1": "7a014a42b199", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "113", "exam_name": "113年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
