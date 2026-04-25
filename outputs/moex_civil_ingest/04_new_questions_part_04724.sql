-- W1.6 questions batch 4724/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-3df1c47f-moex-00106', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-110-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '試驗改良單位的雜糧作物育種專家欲比較 A、B、C、D四個高粱品種的
穗長（cm）；該試驗於試驗田區中進行，採單畦雙行，單穴單粒栽培，空
間布置採取五重複的完全隨機設計（completelyrandomizeddesign,CRD）
進行，各品種試驗數據分析如下表。假設品種效應為固定型，並且該試
驗數據符合單向變方分析的前提假設：
品種
A B C D
統計量
平均值 27.50 26.43 31.49 32.63
標準差 2.64 2.32 3.40 4.05
試計算該四個高粱品種之95%信賴區間，並據此結果進行闡述。（10分）
試建立變方分析表，並在 α=0.05 下進行假設檢定的結果闡述。（10 分）
試在 α=0.05下，利用最小顯著差異法（leastsignificantdifference,LSD）
進行各高粱品種平均穗長間之多重比較，且以小寫英文字母（a,b,c…）
在各處理平均值右側標示其差異比較結果，闡述結果並與之結果進
行比較。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "0490f83103ac", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "344", "s": "2415", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00107', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-110-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '農藝學家擬探討不同儲藏環境條件（A：相對濕度 25%，溫度-4°C；B：
相對濕度25%，溫度 6°C；C：相對濕度 50%，溫度-4°C；D：相對濕度
50%，溫度 6°C）對於玉米種子發芽率的影響。今從同期作收穫之玉米種
子挑選出均質的種子樣本，共四組各 200 粒的種子進行儲藏。一年後進
行發芽試驗，並計數各組樣本之發芽種子個數。如下結果：
儲藏條件 A B C D
發芽粒數 165 143 132 92
今欲探討儲藏一年後玉米種子的發芽結果是否有差異，請試擬出可能的
分析策略及分析方法。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "0490f83103ac", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "344", "s": "2415", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00108', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-110-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '為尋找試驗處理族群的真實情況並進行探討分析，試驗人員依據試驗的
目的及條件進行試驗規劃。然而，試驗結果的量測值，與實際真值間仍
有試驗誤差。請試分析探討誤差的來源，並從試驗設計的基本原則說明
如何減少試驗誤差、估計試驗誤差，並估計族群真值。（18 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "0490f83103ac", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "344", "s": "2415", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-3df1c47f-moex-00109', 'heelevel3-3df1c47f', 'heelevel3-3df1c47f-moex-110-44bd4b53', 'sub-heelevel3-3df1c47f-05', NULL, 'essay', '國外水稻調查研究時常使用著粒密度（grain density），亦即每單位穗長
（cm）下的穀粒數，作為目標特徵進行水稻品種與氮肥的複因子試驗，
以探討水稻品種與氮肥施用量在著粒密度上的效應。今欲探討兩個水稻
品種（V 、V ）與三個氮肥等級（N ：60、N ：120、N ：180kg/ha），
1 2 1 2 3
試驗以栽培桶進行栽培調查，空間布置採取三重覆完全隨機設計
（completelyrandomizeddesign,CRD）進行。試針對下列問題進行回答及
探討：
請完成下列變方分析表（ANOVATable）：（15分）
Source DF SumofSquares MeanSquare FValue Pr>F
Nitrogrn （A） （F） 0.00135000 （L） （N）
Varieties （B） （G） （J） 7.11 0.0205
Nitrogrn*Varieties（C） （H） 0.00665000 （M） （O）
Error （D） （ I ） （K）
CorrectedTotal （E） 0.02460000
（N）、（O）以星號（*）表示；*,**,***分別代表在 5%、1%及 0.1% 顯
著水準下存在顯著差異結果，NS代表無顯著差異存在。
在 α=0.05 下，請依據 ANOVA Table 的結果進行假設檢定的結果闡述
及其原因。（12分）
請依據分析結果研擬後續之分析策略，並說明其原因及可呈現之分析
結果的表格。（10 分）
※F分布值：α=P(F>F )=0.05
α=0.05, df1,df2
df ＼df 1 2 3 4 5 6
2 1
11 4.8443 3.9823 3.5874 3.3567 3.2039 3.0946
12 4.7472 3.8853 3.4903 3.2592 3.1059 2.9961
13 4.6672 3.8056 3.4105 3.1791 3.0254 2.9153
14 4.6001 3.7389 3.3439 3.1122 2.9582 2.8477
15 4.5431 3.6823 3.2874 3.0556 2.9013 2.7905
16 4.4940 3.6337 3.2389 3.0069 2.8524 2.7413
17 4.4513 3.5915 3.1968 2.9647 2.8100 2.6987
18 4.4139 3.5546 3.1599 2.9277 2.7729 2.6613
※F分布值：α =P(F>F )=0.01
α=0.01, df1,df2
df ＼df 1 2 3 4 5 6
2 1
11 9.646 7.206 6.217 5.668 5.316 5.069
12 9.330 6.927 5.953 5.412 5.064 4.821
13 9.074 6.701 5.739 5.205 4.862 4.620
14 8.862 6.515 5.564 5.035 4.695 4.456
15 8.683 6.359 5.417 4.893 4.556 4.318
16 8.531 6.226 5.292 4.773 4.437 4.202
17 8.400 6.112 5.185 4.669 4.336 4.102
18 8.285 6.013 5.092 4.579 4.248 4.015
※F分布值：α =P(F>F )=0.001
α=0.001, df1,df2
df ＼df 1 2 3 4 5 6
2 1
11 19.687 13.812 11.561 10.346 9.578 9.047
12 18.643 12.974 10.804 9.633 8.892 7.480
13 17.815 12.313 10.209 9.073 8.354 7.489
14 17.143 11.779 9.729 8.622 7.922 7.077
15 16.587 11.339 9.335 8.253 7.567 6.741
16 16.120 10.971 9.006 7.944 7.272 6.805
17 15.722 10.658 8.727 7.683 7.022 6.562
18 15.379 10.390 8.487 7.459 6.808 6.355
※t分布值：=P(t>t )
df
df =0.10 =0.05 =0.025 =0.01
2 1.886 2.920 4.303 6.965
3 1.638 2.353 3.182 4.541
4 1.533 2.132 2.776 3.747
5 1.476 2.015 2.571 3.365
6 1.440 1.943 2.447 3.143
… … … … …
15 1.341 1.753 2.131 2.602
16 1.337 1.746 2.120 2.583
17 1.333 1.740 2.110 2.567
18 1.330 1.734 2.101 2.552
19 1.328 1.729 2.093 2.539
20 1.325 1.725 2.086 2.528', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:38+00:00", "source_pdf_sha1": "0490f83103ac", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "344", "s": "2415", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "試驗設計", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業技術"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00001', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-114-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '假設 X與 Y的二元機率密度函數為（每小題 4分，共 20分）
f(x,y)= C(x+2y) 0≦ x ≦ 1;0 ≦ y ≦ 1
=0 其他
計算 C值。
計算 X的期望值。
計算機率 P(X>0.5)。
計算 Y的期望值。
計算 Y大於 1/3 的機率。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:53+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "234", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00002', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-114-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '三家 A、B、C 品牌之洗衣機用戶，各隨機抽取 400、600 和 800 人，
調查其下次會再買同一品牌洗衣機之意願。調查數據如下：
意願\品牌 A B C
願意 100 300 600
不願意 300 300 200
總和 400 600 800
請檢定三家用戶下次購買相同品牌之洗衣機比例是否全部相等。
⑴列出虛無假設H 和對立假設 H 。（3分）
0 1
⑵寫出檢定統計量及其在 H 為真下的分配。（5 分）
0
⑶以臨界值方法決定檢定結果。顯著水準為 0.05。（3分）
⑷計算 p 值，並據以決定檢定結果。顯著水準為0.05。（5 分）
若只有 A和 B兩種品牌，請檢定 A和 B品牌用戶下次購買相同品
牌的比例是否相等。
⑴列出 H 和 H 。（3分）
0 1
⑵請使用和不同的檢定統計量，寫出其在 H 為真下的分配。請
0
說明何以為此分配。（6 分）
⑶計算 p 值，並據以決定檢定結果。顯著水準為0.05。（5 分）
23320
23420', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:53+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "234", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00003', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-114-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', '工程師想知道供應商生產的電池平均壽命是否小於 240 小時。隨機
抽取電池36 件（n=36），其樣本平均值為 235小時。
假設電池壽命服從常態分配且母體標準差為 12小時。
請檢定電池平均壽命是否低於240 小時。顯著水準為 0.1。（5分）
續上題，寫出檢定統計量分配的拒絕區之臨界值，並寫出此臨界值
對應之樣本平均值。（4 分）
若真實的電池壽命平均值分別為 236 和 235 小時，請分別計算他
們的型 II誤差機率及檢定力。（8分）
若只有隨機抽取的電池改為 100 件（n=100），其他不變。若真實的
電池壽命平均值分別為 236 和 235 小時，請分別計算他們的型 II
誤差機率及檢定力。顯著水準為0.1。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:53+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "234", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00004', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-114-4b760c19', 'sub-heelevel3-444ca548-01', NULL, 'essay', 'A 和 B兩家公司皆生產相同規格之端子。分別自 A 和 B公司隨機抽
取端子並衡量其膜厚，數據如表所示。
公司 膜厚(單位：mm)
A 5 3 5 7 6 4
B 7 7 9 9 8 6
假設兩家生產的端子膜厚變異數相等，請寫出膜厚變異數之估計量
及估計值。（6 分）
請寫出兩家膜厚平均值差之估計量及估計值。（4 分）
續題，欲比較兩家膜厚之平均值是否有差異，請問該用什麼統計
方法？結論為何？顯著水準為 0.05。假設兩家膜厚皆服從常態分
配。（10分）
續題，請估計兩家膜厚平均值差之 95%信賴區間。（5分）
23320
23420
附表一：Z值表
23320
23420
附表二：t值表
23320
23420
附表三：X^2值表', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:53+00:00", "source_pdf_sha1": "294fc9329c99", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "234", "s": "0812", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00005', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-114-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'essay', '甲財團法人為辦理友善新住民活動，向 A市政府社會局申請補助新臺幣
（下同）二十萬元，A市政府檢核相關申請文件後，以 B函通知甲財團
法人通過補助，核發第一期補助款十萬元，並請甲財團法人舉辦活動後，
檢附相關支出憑證以辦理核銷，並於三個月後檢具第一期成果報告書，
經審查通過後再申請支付第二期補助款。不料甲財團法人檢具之支出憑
證不但未齊全，成果報告書之資料經查多處偽造不實，試問：A市政府
社會局應如何向甲財團法人要求返還已經支付之補助款十萬元，並不支
付第二期補助款？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:53+00:00", "source_pdf_sha1": "b5b55ac548cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "234", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL),
  ('heelevel3-444ca548-moex-00006', 'heelevel3-444ca548', 'heelevel3-444ca548-moex-114-3082b5f1', 'sub-heelevel3-444ca548-02', NULL, 'essay', '一般認為法院應全面審查不確定法律概念的解釋與適用，僅在少數例外
情形，才適用判斷餘地理論。然而，為何要承認判斷餘地？是否存有判
斷餘地，該如何認定？有關核能發電廠之設置與運轉等許可行政行為，
應否承認行政機關享有判斷餘地，理由何在？試申述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:53+00:00", "source_pdf_sha1": "b5b55ac548cd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "234", "s": "0403", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "農業行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
