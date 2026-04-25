-- W1.6 questions batch 7009/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-b0f95c3f-moex-00083', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '如圖所示為一體積0.25m3的絕熱活塞汽缸裝置（adiabaticpiston-cylinder
device），開始時其內部有 0.7 kg 的 20℃空氣，且活塞可自由移動（free
move）；令壓縮空氣（壓力和溫度固定為 500kPa 與 70℃）進入此活塞
系統，直到這系統之體積增加 50%，且溫度達到 35℃。假設定壓比熱
（c = 1.005 kJ/ kg·K）為定值且空氣之氣體常數R 0.287 kJ/ kg·K，請
p =
air
計算下列問題：
進入此活塞系統的質量。（5 分）
活塞汽缸系統所做的功。（5 分）
此過程中熵的變化量。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "da7307b62d8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00084', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '熱力性質關係中的交互或相互關係（reciprocityrelations），常被應用來連
結量熱狀態方程 [caloricequationofstate，u=u(v,T)或 h=h(p,T)] 與熱狀
態方程 [thermalequationofstate，p= p(v,T) ，針對內能（internalenergy）
和焓（enthalpy）此關係有兩個形式：
]
∂u ∂p ∂h ∂v
T p 與 v T
∂v T ∂T v ∂p ∂T p
T
請 利=用內 能表−示為體積與 溫=度之−函數[u u(v,T)]，以及 Tds關係或稱
=
∂u ∂p
為吉布斯方程（Gibbsequation）推導出 T p。（10分）
∂v T ∂T v
請利用理想氣體方程與上述交互關係式，證明理想氣體之內能和焓僅
  =   −
是溫度函數。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "da7307b62d8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00085', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '回答下列各小題：（每小題 5 分，共 25 分）
請寫出提升朗肯循環（Rankinecycle）效率之任何兩種方法，並用溫度-熵
（T-s）圖說明這些對蒸汽乾度（quality）的影響。
請寫出為何卡諾循環（Carnotcycle）不適合用來分析實際蒸汽發電廠
（steampower plant）的理由，並用溫度-熵（T-s）圖說明之。
何謂複合式循環（combinedpowercycle）之發電系統（powerplant）？
請用溫度-熵（T-s）圖說明之，並寫出其特性和設計目的。
何謂回熱（regeneration）與汽電共生（cogeneration）？試說明兩者之
不同點。
何謂級聯合冷凍系統（cascaderefrigerationsystem）？試說明其優點與
缺點。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "da7307b62d8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00086', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '如圖所示之 6 公升的壓力鍋，鍋裡剛開始時有 1.5 公斤的水，於達到操
作壓力 150kPa後，持續 30分鐘加入 600 瓦熱量於壓力鍋中，假設大氣
壓力為 100kPa，請參考所附飽和水（saturatedwater）性質表，回答下列
問題：（每小題 5分，共 20分）
壓力鍋達到操作狀態時，鍋內的操作溫度、乾度（quality,x ）與內能（u ）。
1 1
寫出加熱30分鐘後之剩餘水質量（m ）與乾度（quality,x ）的關係式。
2 2
寫出加熱30分鐘後之剩餘水的內能（u ）與乾度（quality,x ）之關係式。
2 2
於能量守恆式帶入與之關係，並簡化其表示式。
Saturatedwater—Pressuretable
Specificvolume, Internalenergy, Enthalpy, Entropy,
m3/kg kJ/kg kJ/kg kJ/kg‧ K
Sat. Sat. Sat. Sat. Sat. Sat. Sat. Sat. Sat.
Press.,temp., liquid, vapor, liquid, Evap., vapor, liquid, Evap., vapor, liquid,Evap., vapor,
PkPa Tsat ℃ vf vg uf ufg ug hf hfg hg sf sfg sg', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "da7307b62d8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00087', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-1d357d6d', 'sub-locality-b0f95c3f-10', NULL, 'essay', '飛機的爬升一般是由機翼（wing）與升降舵（elevator）所分別產生的力
L 與 L 所造成的。而除了產生高度的變化以外，同時亦會使得飛機攻
W E
角（angleofattack）隨之改變。假設升降舵與機身的夾角為 E，且在兩
個角度與 E 都很小的狀況下，可透過線性化將飛機的高度與攻角動態
模式簡化成：
L
W
尾翼
機翼
水平線
E
機身
升降舵 L
E
ℎ̈ =−(−)
上式中，所有系統參數 k 、̈ =k、(k−與)−k均̇為正實數。
1 2 3 4
推導出輸出為攻角與輸入為E以及輸出為高度h與輸入為E之轉移
函數（transferfunction）。（15分）
假設升降舵與機身的夾角 E 給定一單位步階（unit step）函數，已知
α(0) h(0) 0，求解α( )、h( )與h(0)。（15 分）
= = ∞ ∞', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "e6791f44ee52", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00088', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-1d357d6d', 'sub-locality-b0f95c3f-10', NULL, 'essay', '下圖為一閉迴路控制系統之方塊圖，其中R(s)與Y(s)分別表示輸入與輸出。
R(s) +
Y(s)
−1

(s+2)

欲使此閉迴路控制系統穩定之K值範圍為何？（5 分）
假設 K 為一正實數，繪製此閉迴路控制系統之根軌跡圖（root locus
plot），並標示出極點（pole）、零點（zero）、根軌跡與虛數軸交會之位
置、根軌跡離開實數軸的位置（breakawaypoint）與進入實數軸的位置
（re-entrypoint），以及各所對應之K值。（20 分）
欲使此二階系統的阻尼比（dampingratio）為 0.707 時，K值該如何設
計？且此設計的系統自然頻率（naturalfrequency）為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "e6791f44ee52", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00089', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-1d357d6d', 'sub-locality-b0f95c3f-10', NULL, 'essay', '考慮以下之單一回授馬達速度控制之方塊圖。其中馬達之轉移函數為
30
，輸入為電壓，輸出為轉速。
s 20
+
電壓
+
馬達 轉速
轉速命令
()
給定控制器G (s) 1，則此馬達速度控制系統的頻寬 （單位為
= ω
c BW
rad/sec）為何？（10分）
給定控制器G (s) 1，轉速命令為一弦波（sinusoidal）500sin( t)，
= ω
c BW
t表示時間（單位為sec），則馬達穩態（steady-state）轉速應為何？（10分）
K
給定控制器G s K I，如欲使馬達控制系統對於單位斜坡（unit
( )= +
c P s
1
ramp）輸入之穩態誤差（steady-stateerror）為 ，且2%安定時間（settling
30
time）為 0.2 秒。則此控制器該如何設計？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "e6791f44ee52", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2308", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "自動控制", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-bd60a725-moex-00001', 'locality-bd60a725', 'locality-bd60a725-moex-113-9af4f2a0', 'sub-locality-bd60a725-01', NULL, 'essay', '固定相顆粒大小與移動相流速對液相層析分離的能力有很直接的關聯，
請以此兩項因子為參數，說明超高效能液相層析法（UHPLC,Ultra-High
PerformanceLiquidChromatography）的優異分離效能，以及應用時需按
實驗室品質系統基本規範進行何種品質管制。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:32+00:00", "source_pdf_sha1": "494f6d552985", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "339", "s": "2216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "食品衛生檢驗"}'::jsonb, NULL),
  ('locality-bd60a725-moex-00002', 'locality-bd60a725', 'locality-bd60a725-moex-113-9af4f2a0', 'sub-locality-bd60a725-01', NULL, 'essay', '衛生福利部食品藥物管理署所公告的「食品器具、容器、包裝檢驗方法
－ 塑 膠 類 之 檢 驗 」 方 法 使 用 紅 外 線 光 譜 分 析 法 （ Infrared
spectrophotometry,IR）鑑定塑膠薄膜的種類，請說明其原理。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:32+00:00", "source_pdf_sha1": "494f6d552985", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "339", "s": "2216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "食品衛生檢驗"}'::jsonb, NULL),
  ('locality-bd60a725-moex-00003', 'locality-bd60a725', 'locality-bd60a725-moex-113-9af4f2a0', 'sub-locality-bd60a725-01', NULL, 'essay', '請問奶粉與液態牛奶的油脂含量、油脂品質與脂肪酸組成的測定方法有
何不同？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:32+00:00", "source_pdf_sha1": "494f6d552985", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113200", "c": "339", "s": "2216", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品分析與檢驗", "year": "113", "exam_name": "113年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "食品衛生檢驗"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
