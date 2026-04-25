-- W1.4 new questions batch 4035/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00104', 'structural-eng', 'structural-eng-moex-110-dce50e58', 'sub-structural-eng-02', NULL, 'essay', '長為L之非等截面彈性立柱 ABC，A端為固定端，在 C端連接彈力常數
為之線彈簧，如圖四所示。以微分方程的方法推導此立柱之挫屈方程
式（buckling equation），答案以行列式表之即可。（25 分）
P
C
L
EI
2
B
2EI
L
2
x
y A
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "b5f7d4057457", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0312", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00105', 'structural-eng', 'structural-eng-moex-110-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一質量為m的台車利用彈簧固定在一剛性構架內，如下圖所示。當此
剛性構架受到向右位移dtsin1t的作用，其中為此結構系統的自
2
然振動頻率，假設此系統從靜止開始運動，試回答以下問題：（25 分）
求出此結構系統的運動方程式。
求出此結構系統的自然振動頻率。
求出台車的絕對速度，請以符號來表示。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "47daf87097cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00106', 'structural-eng', 'structural-eng-moex-110-050f1447', 'sub-structural-eng-03', NULL, 'essay', '請回答下列問題：（25分）
有一單自由度結構系統，其自然振動頻率為10 rad/sec，並且受到簡諧
載重pt p sint，已知當0.1rad/sec其最大穩態（steady-state）
0
位移為2.4 cm，而當10 rad/sec其最大穩態位移為20 cm，試求此單
自由度系統的阻尼比。
已知此單自由度結構系統的質量為104 kg，其阻尼比可由計算得知，
此結構系統如受到下圖所示的載重作用，其最大位移為何，請說明計
算原理？
pt kN
102kN
半正弦波(half-sine)
t sec
0.1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "47daf87097cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00107', 'structural-eng', 'structural-eng-moex-110-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一三層樓建築物進行自由振動實驗，此實驗係利用粗索在一樓向右拉
位移6 cm，隨後突然完全放開。樓地版假設為剛性，結構性質如圖所示，
包括每層質量，每層勁度，振動頻率及振態，i 1,2,3。試求頂層（三
i i
樓）的層間剪力。（25分）（採階段性計分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "47daf87097cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00108', 'structural-eng', 'structural-eng-moex-110-050f1447', 'sub-structural-eng-03', NULL, 'essay', '有一棟建築物其結構系統可簡單模擬成一單自由度系統，其動力特性估
計為：
總質量：m2106 kg
振動週期：T 0.1～0.3sec。由於基礎以及結構勁度的不確定性，因此預
估結構振動週期介於 0.1秒和 0.3秒之間。
黏滯性阻尼比：7.5%
降伏強度：R 2.5104 kN
y
假設此棟建築物受到下列地表加速度的作用，共 9 秒，此處僅繪出前 3
秒的示意圖。其中1g 980cm/sec2。
試回答以下的問題：（請逐步說明取得此結果的原因，採階段性計分，共25分）
最大側向位移？
抵抗此地表加速度所需的位移韌性強度（displacementductilityratio）？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "47daf87097cc", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構動力分析與耐震設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00109', 'structural-eng', 'structural-eng-moex-110-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖示結構，a點為滾支承，c點為鉸接，d 點為固定端，彈簧係數
k 15000 kN m ，梁桿件有相同彈性模數 E 與慣性矩 I，且
EI 10000kN-m2。求梁桿件的彎矩圖、b點轉角及垂直位移。（25分）
36kN 36kN
a b c d
k
2m 2m 4m 2m
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "16b5cd3a6d46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00110', 'structural-eng', 'structural-eng-moex-110-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖示剛架結構，不考慮桿件的軸向變形，a、d、 f 點為滾支承，c點
為鉸支承，桿件有相同彈性模數E與慣性矩 I，且EI 20000kN-m2。求
abef 梁桿件的彎矩圖、b點轉角及水平位移。（25 分）
a b e f
24kN
3m
c d
3m 6m 3m
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "16b5cd3a6d46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00111', 'structural-eng', 'structural-eng-moex-110-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖示桁架結構，a點及e點都為鉸支承，各桿件有相同彈性模數 E與斷
面積 A。當向下之單位載重在桁架底弦abcde移動，分別求a點水平反力、
ab桿件及bg桿件軸力的影響線。（25分）
f g h
4m
a e
b c d
3m 3m 3m 3m
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "16b5cd3a6d46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00112', 'structural-eng', 'structural-eng-moex-110-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖所示一層樓建築結構，共有四根柱及四根梁，不考慮桿件的軸向變
形，樓高3.6 m，屋頂樓板視為剛性樓板（即平面內剛度無限大，而平面
外的剛度則忽略不計）。構架梁柱桿件的彈性模數都為 E，其中C1及C3
柱桿件二個方向的斷面慣性矩都為I ，且EI 9720kN-m2，C2及C4柱
d d
桿件二個方向的斷面慣性矩都為I ，且EI 48600kN-m2，而梁桿件斷
e e
面慣性矩為無限大。四根柱在一樓柱頂各承受 Y 向水平力27kN，不考
慮柱桿件的扭轉勁度。求C3及C4柱桿件，在柱底端點二個方向的剪力
及柱頂二個方向的水平位移。（25 分）
B4
B1
B3
C4 3.6m
C3 B2
3.6m C1 C2
z y
x
27kN y 27kN
C3 B4 C4
B3 x
4m B1
B2
C1 C2
27kN 27kN
6m
圖 4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "16b5cd3a6d46", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00113', 'structural-eng', 'structural-eng-moex-110-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '某一跨度8 m之混凝土 T型簡支梁，斷面如圖一，其鋼筋斷面重心距梁
底 10 cm，混凝土 f240kgf/cm2，撓曲鋼筋 f 4200kgf/cm2，剪力鋼
c y
筋 f 2800kgf/cm2 ，承受靜載重（含自重） D1.8tf/m ，活載重
yt
L4.5tf/m。試求本梁跨度中點所需之最小撓曲鋼筋量(A ) ，並設計兩
s req
端近支承處之剪力鋼筋，採用 2股（2legs）D10（#3，A 0.7133cm2）
b
之肋筋配置，試求肋筋最大間距s 。（30分）
max
100cm
10cm
60cm
10cm
40cm
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:05+00:00", "source_pdf_sha1": "d4fab75cd191", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110180", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "110", "exam_name": "110年專技人員高等考試建築師、24類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)、公共衛生師考試暨普通考試不動產...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
