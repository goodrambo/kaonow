-- W1.4 new questions batch 4036/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00114', 'structural-eng', 'structural-eng-moex-110-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '已知一方形柱採用如圖二所示斷面，配置有8根D25（#8，A =5.067cm2）
b
2
縱向鋼筋，承受偏心軸壓力，所使用混凝土 f 280 kgf/cm ，
c
2 6 2
E 12000 f ，鋼筋 f 4200 kgf/cm ，E 2.0410 kgf/cm ，若該
c c y s
斷面破壞時，中性軸與最大混凝土壓應變處之距離為 14.5 cm，試求該柱
破壞時之軸壓力偏心距e 。（25分）
x
Y
6.5cm
e
x
50cm X
6.5cm
6.5cm 6.5cm
50cm
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "d4fab75cd191", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00115', 'structural-eng', 'structural-eng-moex-110-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '單柱基樁之樁帽平面尺寸為260260 cm，樁帽厚度 D=55 cm，柱斷面
為5050 cm，基樁直徑30 cm，如圖三之一，柱承受偏心載重，軸向力
為P 100 tf，偏心距為e ，如圖三之二，基樁最大承壓軸力P 40 tf，
u x c
基樁最大承拉軸力P 10 tf，且設計樁帽時，混凝土 f280kgf/cm2，
t c
不設置剪力鋼筋，忽略樁帽自重，則柱載重最大容許偏心距e 為何？（20分）
x
[提示]計算基樁軸力時，可假設樁帽為剛性體；
4
0.265(2 )
β
c
V  α d
檢核雙向作用， c 0.265(2 s )
fb d b
0
c 0
1.06
其中，β 為柱長邊/柱短邊；檢核雙向作用時，α 取 40；檢核角隅基樁穿
c s
孔剪力強度時，α 取 20。
s
y
P
D30 u
40
e
x
50 x
260180
50
D
10
40
40 180 40
260
單位：cm
圖三之一 圖三之二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "d4fab75cd191", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00116', 'structural-eng', 'structural-eng-moex-110-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '圖四之一簡支梁結構由後拉法預鑄預力矩形梁與場鑄板組合而成，梁與
板間設置足夠之剪力筋連結，梁跨度12 m，矩形梁斷面30 cm50cm，
每支預力梁間之中心距離為250cm，預力鋼腱採拋物線配置如圖四之二
所示，場鑄板之厚度為12 cm 。預力梁與場鑄板混凝土均採
2
f 350kgf/cm ，容許壓應力為0.6f ，容許拉應力為1.6 f 。每支梁施
c c c
預力時之油壓預力F 300 tf ，梁中點處之有效預力F 0.7F 。假設簡
i e i
支梁之靜載重（含自重）為1.6 tf/m，試計算該簡支梁可承載之最大均布
活載重，計算斷面性質時可忽略預力鋼腱之貢獻。（25分）
[提示]T型梁翼板之有效板寬不得超過該梁跨度之1/4；梁腹每側懸出之
有效翼板寬度不得超過翼板厚之8 倍或該梁與鄰梁間淨距之 1/2。
250cm 250cm
12cm
62cm A
s
10cm
30cm
圖四之一
CL
B
50cm
h
25cm
10cm
10cm
x
12m
圖四之二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "d4fab75cd191", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00117', 'structural-eng', 'structural-eng-moex-110-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請說明鋼結構銲道檢測常採用之五種非破壞檢測方法，若圖一中填角銲
道銲接發現 a、b、c、d四種瑕疵，請說明此四種瑕疵之名稱及其對應適
合之一種非破壞檢測方式。（25分）
aa..
bb..
c. dd..
c.
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "acf5196d939a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00118', 'structural-eng', 'structural-eng-moex-110-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '圖二所示拉力構材為 SM400 鋼材，F =2.5 tf/cm2，F =4.1 tf/cm2，
y u
E=2040 tf/cm2，板厚分別為 t=20 mm及 t=25 mm，採用填角銲道疊接，
請分別繪製發生拉力斷裂及塊狀剪力破壞之模式，依現行鋼結構極限設
計法規範，塊狀剪力破壞拉力強度依式(1)及式(2)計算後擇一，且不大於
0.6F A +F A 。請詳細說明式(1)中 0.6F A 之 0.6F 所代表之意義；
u nv u nt y gv y
又，請詳細說明塊狀剪力破壞式(1)及式(2)擇一且不大於 0.6F A +F A
u nv u nt
之原因。（20分）
R =(0.6F A +F A )(0.6F A +F A )………..(1)
n y gv u nt u nv u nt
R =(0.6F A +F A )(0.6F A +F A )………..(2)
n u nv y gt u nv u nt
t=25mm
P
t=20mm
100
150mm
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "acf5196d939a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00119', 'structural-eng', 'structural-eng-moex-110-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '耐震結構系統中有一如圖三所示承受均布載重（w）之鋼梁，該鋼梁採
用 SM490 鋼材，F =3.5 tf/cm2，F =4.9 tf/cm2，F =1.16 tf/cm2，
y u r
E=2040 tf/cm2。該梁在 A點與鋼柱彎矩接合處及B點有充分側向支撐。
自表一選擇一符合極限設計法規範耐震設計需求且可有效發揮斷面性
質之最適當斷面，並詳細說明原因，未說明原因者不予計分。請計算所
選擇斷面塑性彎矩強度及形狀因子後，再依極限設計法規範檢核該斷面
是否足以發揮其塑性極限強度，若無法發揮其塑性強度請說明如何改善
以使其可發揮塑性極限強度；若可發揮其塑性強度亦請說明理由，並計
算其塑性極限強度。（45分）
AA
BB
660000ccmm 660000ccmm
圖三
表一
d×b×t ×t
f w f BH700×300×9×19 BH700×300×12×25 BH500×500×16×36 BH500×500×25×50
(mm)
A(cm2) 156 228 428 600
J(cm4) 153 350 1610 4380
C ×103(cm6) 9910 12800 40400 52700
w
X(tf/cm2) 107 144 294 439
1
X(cm2/tf)2 5.82 1.82 0.0844 0.0185
2
I(cm4) 154000 198000 205000 268000
x
I(cm4) 8550 11300 75000 104000
y
r(cm) 29.8 29.5 21.9 21.1
x
r(cm) 7.02 7.03 13.2 13.2
y
r (cm) 7.99 8 14 14
T
S(cm3) 4400 5670 8180 10700
x
S(cm3) 570 751 3000 4170
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "acf5196d939a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00120', 'structural-eng', 'structural-eng-moex-110-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請依現行極限設計法規範說明摩阻型高強度螺栓接合是否可與銲接共
同分擔載重及其原因。（10 分）
參考公式：請自行選擇適合的公式，並檢查其正確性，若有問題應自行
修正。
L L
C M M M  b p M
，=0.9
b p P r L L p
r p
2
C ＝1.75+1.05(M /M )+0.3(M /M ) ≦2.3
b 1 2 1 2
14/ F  17/ F  37/ F F
＝ y， ＝ y ， ＝ y r
pd p r
138/ F  170/ F  260/ F
＝ y， ＝ y ， ＝ y
pd p r
80r r X
L＝ y ，Lr＝ y 1 2 ，M＝F S，
p 1 1X F r L x
F F 2 L
yf L
F ＝(F F)或F 取小值
L yf r yw
C S X 2 X 2X
M ＝ b x 1 1 1 2
cr  2
L /r 2L /r
b y b y
當F A 0.6F A 時 R (0.6F A F A )(0.6F A F A )
u nt u nv n y gv u nt u nv u nt
當0.6F A F A 時 R (0.6F A F A )(0.6F A F A )
u nv u nt n u nv y gt u nv u nt
＝0.75', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "acf5196d939a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00121', 'structural-eng', 'structural-eng-moex-109-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '0kN/m3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "110d454bb019", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0321", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "16", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00122', 'structural-eng', 'structural-eng-moex-109-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '8kN/m3
sat
26', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "110d454bb019", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0321", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "18", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00123', 'structural-eng', 'structural-eng-moex-109-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '6kN/m3
sat
30
O
茲欲了解某工址現地土壤之緊密程度，故以取樣器取得 500 ml 之砂土，其
重量為900克，而此砂土於烘乾後之重量為850克。若將此砂土置於夯實模
內，其在最緊密狀態時之體積為440ml，而在最疏鬆狀態時之體積為640ml，
若現地砂土之飽和度為27%，請求得此砂土之相對密度。（25分）
一面牆將建構在一狹長的淺基礎上（基礎長遠大於 10 倍基礎寬），此基
礎寬度為1.25 公尺，厚度為 0.5公尺厚且其底部置於地表下0.5 公尺處。
現地之土壤為粉土質黏土，其無圍壓縮強度為 100kPa，此土壤之單位重
為 18.8 kN/m3，地下水位在地表處。請以計算說明該基礎能否安全地承
載 120 kN/m之荷重？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "110d454bb019", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "109180", "c": "003", "s": "0321", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "109", "exam_name": "109年專技人員高等考試建築師、32類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "19", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
