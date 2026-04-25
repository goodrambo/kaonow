-- W1.4 new questions batch 4075/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00504', 'structural-eng', 'structural-eng-moex-093-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '等截面空心圓管，其內半徑為r，外半徑為r  = βr（β >1），其剪力模數G，如圖二所示。
1 2 1
此管受扭矩 T作用，若在平均半徑處［r =(r +r )/2］其剪應力 τ，
1 2
以扭力彈性理論求扭矩 T 及單位長度扭轉角θ 。（7 分）
a a
以薄壁理論求扭矩 T 及單位長度扭轉角θ 。（8 分）
b b
計算 r /r  = β = 1.1,    1.5,    3.0 時，小題及小題之結果，並將所計算之結果整
2 1
理成表一之格式。說明差異之原因，並且歸納結論。（10 分）
表一
r
1 r
β = 1.1  β = 1.5 β = 3
2
T  / T
a b
θ  / θ
a b
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a42593f12258", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00505', 'structural-eng', 'structural-eng-moex-093-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '矩形截面(b×h)之懸臂梁，受到均佈載重q作用，如圖三所示，無論張應力或壓應力，
其應力 應變關係皆滿足：σ= Bεn，0≤n≤1，B 為常數。
-
求彎矩 M及曲率 κ 之關係（以 n, b, h, B 表之）（15 分）
若σ= Bεn中，n=0.5，求懸臂梁之撓度方程式。（10 分）
q b
圖三  h
x
L （截面）
y
（請接背面）
高等考試建築師、技師、民間之公證人 全一張
九十三年專門職業及技術人員                              考試試題  代號：00340
暨普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a42593f12258", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00506', 'structural-eng', 'structural-eng-moex-093-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '剛度為 EI 之梁，由四條彈簧支，每條彈簧之彈力常數皆為 k，且k = EI /L3，在梁
的中點受到集中載重 P 作用，如圖四所示。求
每條彈簧之支反力；（15 分）
集中載重 P 作用處之撓度。（10 分）
Ｐ
k k k k
Ｌ Ｌ Ｌ Ｌ
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "a42593f12258", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "4001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00507', 'structural-eng', 'structural-eng-moex-093-050f1447', 'sub-structural-eng-03', NULL, 'essay', '試回答下列問題：
現行建築物耐震設計規範中，檢核層間位移角所用之地震力為何？而此層間位移
角之上限為何？此項檢核是攸關安全或是舒適性（serviceability）？（7分）
考慮一單自由度系統分別受到地震歷時（作用時間遠大於系統周期）及脈衝荷載
（作用時間與系統周期相當）之作用。若增加系統之阻尼比，會使得最大位移減
小，試問受地震或是脈衝荷載之位移中，何者減小較為顯著？原因為何？（7分）
何謂樓版反應譜（floor response spectrum）？有何用途？（8分）
1994 年美國加州北嶺地震中鋼結構有不少梁柱抗彎接頭產生破裂（fracture），此大
大減小整體結構之韌性。經過近十年來的研究，為避免此種破壞，目前有兩類不同
理念的設計方法被提出且採用。請問這兩類方法為何？請簡述其設計理念。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "057ad487ce46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00508', 'structural-eng', 'structural-eng-moex-093-050f1447', 'sub-structural-eng-03', NULL, 'essay', '下圖所示為一個隔震結構的簡化模型，其中m 及k 為隔震層之質量及勁度，m及k為
b b
原結構之質量及勁度，u (t)為地震位移輸入，x (t)及x (t)為絕對位移。假設隔震層
g 1 2
之質量很小可近似為零，即m =0，試推導出該隔震結構之運動方程式（可化簡為
b
單自由度），並求出自然振動周期（以m、k及k 表示）。（15分）
b
u(t)
g x(t)  x(t)
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "057ad487ce46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00509', 'structural-eng', 'structural-eng-moex-093-050f1447', 'sub-structural-eng-03', NULL, 'essay', '考慮下圖之系統，AB為彈性梁，其斷面撓曲勁度為EI且單位長度質量為m；EF及
CD都是剛性桿，EF桿質量可忽略，CD桿單位長度質量為m 。今假設AB梁之撓曲
0
（垂直）變形為v(x,t)=φ(x)Z(t)，其中形狀函數取為φ(x)=sin(πx/L)，Z(t)為廣義座
標。試求本系統之廣義質量（generalized mass）及廣義勁度（generalized stiffness）。
（15分）
L
2
m
0
C  D
F
x
E
A  B
m, EI
L
4
L
（請接背面）
高等考試建築師、技師、民間之公證人  全一張
九十三年專門職業及技術人員                              考試試題  代號：00330
暨普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "057ad487ce46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00510', 'structural-eng', 'structural-eng-moex-093-050f1447', 'sub-structural-eng-03', NULL, 'essay', '考慮如下圖所示之L形構架，假設各桿件之軸向為剛性。
求該構架之質量矩陣[M] （自由度按u 、u 、u 排列）（3分）
1 2 3
假設此構架之支承受到X（水平）向之地表加速度u&& (t)，其引致之地震力可表為
gx
{P(t)}=−[M]{l }u&& (t)，試求{l }。（5分）
x gx x
假設此構架之支承運動方式為轉動且順時鐘之轉動角加速度為θ&& (t)，則引致之地
gz
震力可表為{P(t)}=−[M]{l }θ&& (t)，試求{l }。（7分）
θ gz θ
x
3
m
3 u
m
2 2
u
3
h  m  u
2 1 1
h
1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "057ad487ce46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00511', 'structural-eng', 'structural-eng-moex-093-050f1447', 'sub-structural-eng-03', NULL, 'essay', '考慮如下圖之三層樓剪力屋架，各層樓版之質量如圖示，每樓層之層剪力勁度都為
4×106N/m  ，自由度按u 、u 、u 排列。已知前兩個自由振動之振態分別為
1 2 3
{φ}=<0.484, 0.834, 1.0>t 及{φ }=<1.0, 0.118, −0.937>t ，以上{ } 與{ } 都是行
φ φ
1 2 1 2
(column)向量，上標t表示矩陣或向量之轉置（transpose）。
試求出對應於第一振態{φ}之自然振動周期T。（5分）
1 1
同理我們也可以求得對應於第二振態{φ }之自然振動周期T =0.162sec（此不必計
2 2
算）。今假設工址正規化水平加速度反應譜係數C與周期T之關係為：
C =1+5T, T ≤0.3sec
C=2.5,  0.3sec≤T ≤1sec
C=2.5/T, 1sec≤T
若該建築物工址之設計水平加速度為 0.2g，試利用上述反應譜係數以 SRSS
（square-root-of-sum-of-squares）法則疊加前兩個振態求取頂層之最大位移及最大
基底剪力。[提示：本題作答與規範無關，僅需利用提供之反應譜係數，做彈性分
析即可] （20分）
3000 kg
u
3
3m
4000 kg
u
2
3m
5000 kg
u
1
3m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "057ad487ce46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "3001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00512', 'structural-eng', 'structural-eng-moex-093-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '試分析如圖所示之靜定結構系統，並繪製剪力圖及彎矩圖。其中A端為固定支承；
B為鉸接點；C為滾支承。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "6cfc9076b006", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00513', 'structural-eng', 'structural-eng-moex-093-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '求圖示桁架在卡車序列載重作用下，最大可能之a點反力及bc桿件內力。（25分）
B C D
m
0
1 20 40 40 40 (kN)
a  e
b  c  d
m m 2.4 1.5 1.5  (m)
4 @ 10  = 40', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:12+00:00", "source_pdf_sha1": "6cfc9076b006", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "093250", "c": "003", "s": "6001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "093", "exam_name": "093年建築師、技師、民間之公證人、不動產經紀人、地政士考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
