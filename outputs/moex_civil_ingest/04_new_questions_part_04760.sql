-- W1.6 questions batch 4760/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-4c199b1b-moex-00133', 'heelevel3-4c199b1b', 'heelevel3-4c199b1b-moex-110-9b7ab1bb', 'sub-heelevel3-4c199b1b-01', NULL, 'single_choice', '下列關於法定繼承人之敘述，何者錯誤？', '["民法第1138條第2款所稱之母，自不包含父所娶之後妻在內", "民法第1138條第3款所稱兄弟姊妹，包括同父異母或同母異父之兄弟姊妹", "養子女對本生父母之遺產，無繼承權", "法定繼承人如喪失我國國籍者，不得繼承被繼承人之遺產"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "41c49d8354fb", "answer_pdf_sha1": "ef3e66e2c719", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "323", "s": "0704", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "消費者保護"}'::jsonb, NULL),
  ('heelevel3-4c199b1b-moex-00134', 'heelevel3-4c199b1b', 'heelevel3-4c199b1b-moex-110-9b7ab1bb', 'sub-heelevel3-4c199b1b-01', NULL, 'single_choice', '下列關於繼承權有無之敘述，何者錯誤？', '["繼承開始後，繼承人已取得繼承權", "繼承開始後已取得繼承權，仍可能因變造遺囑而喪失", "繼承開始前喪失繼承權，仍可能因被繼承人宥恕而回復", "對被繼承人重大虐待者，應經被繼承人遺囑表示，始喪失繼承權"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "41c49d8354fb", "answer_pdf_sha1": "ef3e66e2c719", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "323", "s": "0704", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "消費者保護"}'::jsonb, NULL),
  ('heelevel3-4c199b1b-moex-00135', 'heelevel3-4c199b1b', 'heelevel3-4c199b1b-moex-110-9b7ab1bb', 'sub-heelevel3-4c199b1b-01', NULL, 'single_choice', '甲因其子乙結婚而贈與乙新臺幣（下同）100 萬元。甲與丙再婚，翌日甲即死亡。甲死亡時有財 產500萬元，對丁負債200萬元。甲之繼承人乙及丙發現甲之遺囑中表示，遺贈甲之母戊250萬 元。下列敘述，何者正確？', '["丙受有特留分100萬元保障", "乙得對戊主張扣減遺贈50萬元", "乙的特留分較丙多50萬元", "戊得向乙丙主張酌給遺產權"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:33:25+00:00", "source_pdf_sha1": "41c49d8354fb", "answer_pdf_sha1": "ef3e66e2c719", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "323", "s": "0704", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "民法", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "消費者保護"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00001', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '某一土樣具有如下圖所示之土壤粒徑分布曲線，請據以回答以下土壤基
本性質與分類相關問題：
請列出土樣之D 、D 與D 等三個粒徑參數。（3分）
10 30 60
請計算此土樣之均勻係數（uniformity coefficient, C ）與級配係數
u
（coefficientof gradation, C ）（須列出公式與代入參數值）。（6 分）
c
承，請根據統一土壤分類法（Unified Soil Classification System,
USCS）之相關準則，判斷此土樣屬於良好級配（wellgraded）或不良
級配（poorlygraded）之何者，並決定此土樣之分類符號（雙字母）（須
述明研判準則）。（6 分）
承，若擬求取此土樣之水力傳導係數（hydraulic conductivity, k），
宜採用定水頭（constant-head）或變水頭（failing-head）滲透試驗之何
者（須說明原因）；另請研判下列何選項較可能為此土樣由試驗所得之
k值範圍：⑴k 0.01~ 0.1cm/s；⑵k 0.00001~ 0.0001cm/s。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "5f9e40f5c314", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00002', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '如下圖所示（圖中之 為土壤乾單位重、 為土壤飽和單位重、e 為黏
d sat 0
土層初始孔隙比），有一 6m厚之黏土層，其上覆10m厚之砂土層，其
下方則為完整岩盤，請回答以下土壤壓密相關問題（作答時須列出所
採公式與計算過程；計算各問題時，黏土層厚度可固定採用 6 m，無須
考慮各階段土層變形量對其造成之微小變化；答案請以有效位數三位為
原則）：
原本地下水位在地表下深度2m處（地下水位A），此時該黏土層為正常
壓密（normally consolidated）狀態。之後因某種原因，地下水位迅速
洩降至地表下深度 6 m處（地下水位 B）後維持恆定，待該黏土層之
主要壓密（primaryconsolidation）完成後，觀察到地表沉陷量為 16cm，
請基於單向度壓密（one-dimensionalconsolidation）相關理論估算該層
黏土之壓縮指數（compression index, C ）。估算時請採以下之假設：
c
砂土層與岩盤均不因此等地下水位變化而產生體積變化，地下水位以
上之砂土可視為乾砂。（10 分）
承，後續又因另一原因，地下水迅速補注而回復到地下水位A後維
持恆定，若黏土之回脹指數（swellingindex, C ）為0.1，請採用與
s
相同之假設，估算最終之理論地表回脹量。（10分）
承，若所述之地下水補注並未發生，且若已知所述之主要壓密
共耗時 2 年完成，次要壓縮指數（secondary compression index, C ）
為0.015，請估算10年後之次要壓密（secondaryconsolidation）沉陷量。
（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "5f9e40f5c314", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00003', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '請回答以下側向土壓力相關問題：
參考下圖（左），實務上常利用側向土壓力係數（lateral earth pressure
coefficient, K），根據垂直向有效覆土應力（）來估算作用於擋土牆背
v
之側向有效土壓力（），請繪出側向土壓力係數（K）隨牆頂側向位移
h
（ΔH）變化之關係曲線，ΔH之定義見下圖（右），繪圖要求包括：橫
座標軸為ΔH，橫座標軸需涵蓋ΔH為正值與負值之範圍；縱座標軸為K，
僅需涵蓋 為正值之範圍；必須在圖中標出靜止土壓力係數（at-rest earth
pressurecoefficient, K ）、主動土壓力係數（activeearthpressurecoefficient,
0

K ）與被動土壓力係數（passiveearthpressurecoefficient, K ）與其各自
a p
對應之ΔH；K~ΔH曲線上K 、K 與K 與其所對應ΔH之相對大小，在
0 a p
圖中需合理呈現。（25分）
Δ Δ
(+)(−)
擋土牆
土壤


 
 =


= 
', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "5f9e40f5c314", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00004', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-a80e35d2', 'sub-heelevel3-4ece01bd-01', NULL, 'essay', '請回答以下土壤剪力強度相關問題（作答時須列出所採公式與計算過程）：
今有一批有效摩擦角（）為30之無凝聚性土壤，在圍壓（confining
pressure,  ）為 150kPa之條件下，對其土樣進行壓密排水三軸壓縮
c
試驗（consolidated drained triaxial compression test），請依莫爾-庫倫
（Mohr-Coulomb）破壞準則，推求土樣達破壞時之軸差應力（deviator
stress, q，請採下壓為正）。（10 分）
承，若對該批土壤之土樣，在圍壓（ ）為 150 kPa之條件下改進
c
行壓密排水三軸伸張試驗（consolidateddrainedtriaxialextensiontest），
請依莫爾-庫倫破壞準則推求土樣達破壞時之軸差應力（請採下壓為正）。
（5 分）
承、，若再針對該批土壤之土樣，在圍壓（ ）為150kPa之條件下
c
進行壓密不排水三軸壓縮試驗（consolidatedundrainedtriaxialcompression
test），並於軸差應力為 200 kPa時達破壞，請根據莫爾-庫倫破壞準則
推求破壞時之超額孔隙水壓（excessporewaterpressure, Δu）。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "5f9e40f5c314", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00005', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '如圖 1由兩圓桿AC與 BC構成之對稱桁架系統，兩桿件長度皆為1m，
圓形斷面半徑皆為2cm。桿件由彈性模數（modulus of elasticity）為
200GPa之鋼材構成。今於 C 點施加一向下100kN之集中載重 P，假設
兩桿件仍維持彈性及小變形狀態，且自重可忽略。請問兩桿件各自內力
及變形量為何？兩桿件交會之 C點於集中載重施加後位移至何處（請指
明方位及量值）？（25 分）
A B
30∘ 30∘
C
P
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "151c93ba1644", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00006', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '如圖 2(a)之結構，有一繩固定於 B點，經過 E點之滑輪，另一端受500 N
之水平集中拉力作用。水平梁桿件 ABCD由5cm乘12cm之矩形斷面構
成，斷面強軸平行於地面。忽略繩與滑輪間之摩擦力，以及結構中之應
力集中。梁桿件ABCD內之正剪力與正彎矩定義如圖 2(b)所示。請繪出
梁桿件 ABCD 內之剪力圖及彎矩圖，並求出梁 ABCD 內，因彎矩而產
生之最大正向應力。（25分）
E P=500N
4m
A B C D
3m 3m 3m
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "151c93ba1644", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00007', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-114-dce50e58', 'sub-heelevel3-4ece01bd-02', NULL, 'essay', '如圖 3 之簡支梁 ABC，全長2m，於 C 點受集中彎矩M 100 N作用。
此梁材料彈性模數 E 與斷面慣性矩 I 之乘積為EI500kN-m2。請依據
圖3所提供之卡式座標系統方位及座標原點，寫出整根梁之變形方程式。
（25分）
y
M
x
A B C
L/2 L/2
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "151c93ba1644", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "255", "s": "1704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "材料力學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
