-- W1.4 new questions batch 4030/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00054', 'structural-eng', 'structural-eng-moex-112-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '已知懸臂梁自由端受集中載重 P作用，假設懸臂梁由兩ㄈ型斷面支材焊
接組成，斷面尺寸如圖二（b）示意。集中力作用於斷面上方之中心位置，
h=20cm、b=10cm、t=2cm，梁長 L=100cm、P=100N，僅考慮集中載重作
用力之影響，假設焊接材料均勻分布於接合介面。回答下列問題：
以圖二（c）方式全跨焊接時，計算焊接材料受到之應力狀態為何？（10分）
以圖二（d）方式局部焊接時，若焊接分布長度於自由端起2.5 cm，分析
斷面下方焊接材料之應力狀態？（15分）
集中載重P
x
(a)懸臂梁 (b)ㄈ型斷面
焊接位置
(c)上下焊接 (d)左右焊接
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "0888370490ef", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00055', 'structural-eng', 'structural-eng-moex-112-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '箱型斷面簡支梁之中跨有集中載重 P作用，此作用力不通過形心，作用
位置及斷面尺寸如圖三示意。已知箱型梁兩端之支承配置方式具抗扭轉
設計，回答下列問題：
分析並繪製此簡支梁全跨之內力圖？（15分）
材料性質 G，假設 b=h、t=0.1h，計算四分之一跨位置上，斷面中性軸
高度的應力狀態？（10 分）
P
3b
P
厚度t
h
b
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "0888370490ef", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00056', 'structural-eng', 'structural-eng-moex-112-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '已知懸臂桿的自由端受軸向集中載重 P作用，懸臂桿由兩材質不同但相
同斷面的支材組合而成，斷面尺寸如圖四（b）示意。集中力透過自由端
剛性板作用，忽略局部應力集中的效應，兩材質之彈性模數分別為上（E）
與下（3E），回答下列問題：
假設 P以偏心量 e作用時，懸臂桿均勻伸長，計算偏心 e=？（10 分）
若沒有偏心（e=0），計算斷面最大正應力及分析自由端（x=L）處之位
移量？（15分）
偏心e
e 2h
端載重P
x x
t
(a) 均勻伸長懸臂桿 (b) 複合斷面尺寸 (c) P為無偏心加載的情形
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "0888370490ef", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00057', 'structural-eng', 'structural-eng-moex-112-050f1447', 'sub-structural-eng-03', NULL, 'essay', '長度為 L 的均質等斷面簡支梁如圖。假設其斷面慣性矩為 I、彈性模數
為 E、單位長度質量為m 。在梁中點受鉛垂向下的集中力 作用。回
答下列問題：
()
P(t)
L
推導運動方程式。（8 分）
n22 EI
證明第 n 個模態之模態頻率為  ，且模態函數為
n L2 m
nx
(x)sin 。（12分）
n L
求第 n 個模態的模態載重函數。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec13af41f63a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00058', 'structural-eng', 'structural-eng-moex-112-050f1447', 'sub-structural-eng-03', NULL, 'essay', '二層樓之剪力建築（shearbuilding），已知各樓層質量為 10000公斤，且
1、2樓層間勁度分別是 200000 N/m及 180000 N/m。回答下列問題：
求質量矩陣、勁度矩陣、各振態頻率、振態向量、振態質量、振態勁
度、振態參與因子。（15分）
假設依工程設計規範規定，自然頻率為 1Hz和 5Hz時的阻尼比應該是
0.03 及 0.05，又規定採用 RayleighDamping：C=αM+βK。試求其係數
α及 β，並求本結構第一振態的阻尼比。注意，公式中的頻率單位應該
轉換為角頻率，而非 Hz。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec13af41f63a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00059', 'structural-eng', 'structural-eng-moex-112-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有關隔震建築設計，請回答下列問題：
隔震裝置為何必需具備足夠消能能力？試舉出至少兩種具備有消能
能力的隔震裝置。（6分）
隔震設計採用靜力分析法的適用條件為何？至少列舉 3 項。（7分）
已知一隔震系統上結構總靜載重為 5000 KN，在設計位移為 0.4 m
下之有效勁度為 1000KN/m，且其在設計位移下之遲滯迴圈面積為
50KN-m。試求在設計位移下的有效震動週期和等效阻尼比。（6 分）
隔震建築設計詳細要求中，對於抗傾倒的要求方面，需考慮最大傾倒
力矩為何？抗傾倒力矩為何？其理由為何？（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec13af41f63a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00060', 'structural-eng', 'structural-eng-moex-112-050f1447', 'sub-structural-eng-03', NULL, 'essay', '已知單自由度動力系統之質量 m=1 kg，勁度 k = N/m。
試求如下圖 a~c 所表現的三種遲滯迴圈特性的消能器分別在外力頻率
16
為 rad/sec、 rad/sec作用下，振幅分別為 0.01m，0.02m時的等
值線性黏滯阻尼比（共計十二種組合）。圖 a 及圖 b 為橢圓形遲滯迴
2π 4π
圈，圖 c 為矩形遲滯迴圈，且圖 a 中的符號 表示振動頻率，所有力
量單位為 N，質量單位為kg，長度單位為 m。（15 分）
ω
詳細說明最新建築物耐震設計規範中建築物使用消能減震技術的數
量以及安裝位置及消能器所能承受力量與位移之規定，並說明其規定
用意。（10 分）
5 20 0.4
圖a 圖b 圖c
−5 −20 −0.4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "ec13af41f63a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00061', 'structural-eng', 'structural-eng-moex-112-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試分析一平面構架如圖一所示，點 D為鉸支承，點 B為滾支承，假設所
有桿件之彈性模數與斷面慣性矩乘積為 EI = 20,000 kN-m2。若構架中點
D支承下陷 3mm情況下，為使點 E垂直向位移為零，試求應在點 F施
加之水平力 P大小為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "e76cc11d13fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00062', 'structural-eng', 'structural-eng-moex-112-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試分析一平面桁架如圖二所示，點 A為鉸支承，點 D為滾支承，假設所
有桿件之彈性模數與斷面積乘積為 EA=200,000kN。若桁架中點B承受
一垂直載重 30kN ，試求桿件 BD中之內力並標註受壓或受拉。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "e76cc11d13fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00063', 'structural-eng', 'structural-eng-moex-112-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '圖三為一平面構架，點 D為固定支承，點 A為鉸支承，點 C為滾支承，
此構架點 A至 B間梁桿件承受一水平向均佈載重20kN/m，且點 B 至 C
間梁桿件中央承受一垂直集中載重 50kN。設所有桿件 EI為定值，且忽
略桿件軸向變形，試用傾角變位法，求各桿件端點彎矩及各支承之反力。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "e76cc11d13fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
