-- W1.6 questions batch 4768/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-4ece01bd-moex-00078', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '圖一的橫箍筋矩形斷面短柱，鋼筋量A A 40cm2，混凝土抗壓強度
s s
f280kgf/cm2，鋼筋降伏強度 f ＝4200kgf/cm2，鋼筋中心保護層厚度
c y
6cm。計算平衡破壞時之軸壓力P 、偏心距e 及彎矩 M 。壓力鋼筋所
b b b
占面積需從受壓混凝土面積中扣除。需詳列解答過程。（25 分）
A A P
b
s s
圖一
35150', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "23f7f5ece97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00079', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '撓剪裂縫與腹剪裂縫為鋼筋混凝土梁承受垂直載重作用時可能產生的
剪力相關裂縫。請詳述何謂撓剪裂縫與腹剪裂縫？其會發生於何情況？
以圖二的簡支梁為例，在這些裂縫常發生的位置畫出示意圖。（25 分）
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "23f7f5ece97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00080', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-111-211c5ff6', 'sub-heelevel3-4ece01bd-06', NULL, 'essay', '以強度設計法計算圖三擋土牆基礎底版 A-A斷面（牆踵）處每公尺寬所
需之拉力鋼筋量A （以 cm2為單位）。鋼筋中心保護層厚度10 cm，混
s
凝土抗壓強度 f210kgf/cm2，鋼筋降伏強度 f 4200kgf/cm2，牆背
c y
土壤單位重1.6tf/m3。不考慮基礎底版下面的所有向上壓力。需詳列解
答過程。省略最大及最小鋼筋量檢核。（25 分）
（提示：將 A-A 斷面右側的基礎底版視為單筋懸臂梁，梁上載重為自重
及土壤重，求得A-A斷面所受彎矩內力用以設計拉力鋼筋。）
5m
0.5m
2m
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "23f7f5ece97c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "349", "s": "1702", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00081', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '於某一基線場使用特定之全站儀（TotalStation）與稜鏡組合進行率定測
量作業，所得順向施測水平距離如下表，試列出觀測方程式及說明計算
過程求此儀器組合測距之精度 ±（C+S×D）mm，即求其中之 C加常數
（單位 mm）、S 乘常數（無單位 ppm）之值，及計算此一率定成果之中
誤差。（25 分）
順向施測 已知水平距離 實測水平距離
項次
（儀器站稜鏡站） Dʹ（m） D（m）
1 01 D ʹ  D
1 1
2 02 D ʹ  D
2 2
3 03 D ʹ  D
3 3
4 13 D ʹ  D
4 4
5 23 D ʹ  D
5 5', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "8653b90f4e58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00082', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '於二維水平面中測量不共線三點 A、B、C 間之水平距離分別為
AB=102.32 m、AC=140.24 m、BC=192.54 m，若距離觀測為獨立且中
誤差均為 ±0.05 m，試求三角形ABC面積及其中誤差。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "8653b90f4e58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00083', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '於二維平面直角（E、N）坐標系統中二已知點 A（100.00, 50.80）、
B（480.00, 152.30），今使用一台全站儀設置測站於 A 點，後視 B 點將
水平角度盤歸零，觀測 C點水平角讀數為300°0ʹ0ʺ；移置測站於 B點，
後視 A 點將水平角度盤歸零，觀測 C 點水平角讀數為 65°0ʹ0ʺ，試繪草
圖及列出觀測方程式計算 C點平面坐標（E ,N ）。（25分）
C C', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "8653b90f4e58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00084', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-9983aba7', 'sub-heelevel3-4ece01bd-03', NULL, 'essay', '精密水準測量一般使用精密水準儀搭配平行玻璃板測微器（Parallelplate
micrometer）與銦鋼水準尺施測，試繪簡圖並說明平行玻璃板測微器之作
用原理。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "8653b90f4e58", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "測量學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00085', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '橋梁因颱風洪水沖毀，若在原地興建功能性相當之橋梁，以公共工程可
行性分析觀點並考量下表列舉之資料，請回答下列問題：在以可行性
分析觀點前為使試算合理，應做那種假設？（10分）以公共工程可行
性觀點分析下表三者，何種橋梁型態為最佳？並請排序之。（15分）
橋梁型態 A B C
期初投資金額（千元） 100,000 150,000 200,000
期末殘餘價格（千元） 0 30,000 60,000
每年營運維護金額（千元） 8,000 2,000 1,000
使用年限（年） 15 20 25
最低預期資本回報率（MinimumAttractiveRateofReturn）：10%/年', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00086', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '主辦機關除委託廠商辦理專案管理外，仍有應辦理事項及權責，其內容
主要為何？試以實務面舉 5項委託內容。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL),
  ('heelevel3-4ece01bd-moex-00087', 'heelevel3-4ece01bd', 'heelevel3-4ece01bd-moex-110-a5727cc1', 'sub-heelevel3-4ece01bd-04', NULL, 'essay', '粗、細粒料為組成水泥以及瀝青混凝土重要的成分，在公共工程中對於
合格的粒料均有嚴格的規範界定。因此請對於海沙與河沙進行比較：
請就海沙與河沙在物理與化學性質上舉出至少兩個差異點。（9分）
請對於海沙若使用於鋼筋混凝土可能會造成的問題進行說明。（8 分）
請對於海沙若使用於密級配瀝青混凝土可能會造成的問題進行說明。
（8 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:51+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "355", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
