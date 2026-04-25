-- W1.6 questions batch 4530/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-086dd584-moex-00036', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '說明自由水面及底床邊界分別為流線之條件為何？（10分）
流場之流況為穩定流或均勻流之判別方程式為何？分別以管流舉例
說明穩定流而非均勻流，及均勻流而非穩定流之實際流況。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00037', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '二維尤拉方程式（Eulerequation）表示如下：
u u u (pz)
u w
t x z  x
w w w (pz)
u w
t x z  z
其中 u 與 w 分別為 x（水平方向，向右為正）與 z（垂直方向，向上為
正）二個方向的速度分量，t為時間，為流體密度，p 為壓力，（g）
為單位重，g 為重力加速度。一矩形（水平長 L，高 H）半滿油槽在固定
水平加速度為 a (>0)，及固定垂直加速度為 a (>0)作用下，並假定油槽內
x z
流體各位置之加速度皆相同。
由以上公式推求油槽內液面坡度為何？（15 分）
油槽內最大壓力位於何處？其值為何？（10 分）
38060', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00038', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-0e54f998', 'sub-heelevel3-086dd584-03', NULL, 'essay', '渠道中設置一寬頂堰（broad-crested weir），B 為堰之長度，已知其單寬
流量為 q(m2/s)，其下游邊緣為自由跌水（freeoverfall），即此處渠底與空
氣接觸。
試求寬頂堰均勻段之臨界水深（criticaldepth）y 。（10 分）
c
試求寬頂堰下游端之邊緣水深（brink depth）y 。（15分）
b', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "64617425b4ca", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00039', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '橋梁因颱風洪水沖毀，若在原地興建功能性相當之橋梁，以公共工程可
行性分析觀點並考量下表列舉之資料，請回答下列問題：在以可行性
分析觀點前為使試算合理，應做那種假設？（10分）以公共工程可行
性觀點分析下表三者，何種橋梁型態為最佳？並請排序之。（15分）
橋梁型態 A B C
期初投資金額（千元） 100,000 150,000 200,000
期末殘餘價格（千元） 0 30,000 60,000
每年營運維護金額（千元） 8,000 2,000 1,000
使用年限（年） 15 20 25
最低預期資本回報率（MinimumAttractiveRateofReturn）：10%/年', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00040', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '主辦機關除委託廠商辦理專案管理外，仍有應辦理事項及權責，其內容
主要為何？試以實務面舉 5項委託內容。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00041', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '粗、細粒料為組成水泥以及瀝青混凝土重要的成分，在公共工程中對於
合格的粒料均有嚴格的規範界定。因此請對於海沙與河沙進行比較：
請就海沙與河沙在物理與化學性質上舉出至少兩個差異點。（9分）
請對於海沙若使用於鋼筋混凝土可能會造成的問題進行說明。（8 分）
請對於海沙若使用於密級配瀝青混凝土可能會造成的問題進行說明。
（8 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-086dd584-moex-00042', 'heelevel3-086dd584', 'heelevel3-086dd584-moex-110-a5727cc1', 'sub-heelevel3-086dd584-02', NULL, 'essay', '公路鋪面以及標線表面功能性質中，抗滑能力為重要的因素且可能影響
到用路人的安全。
常見於鋪面或是標線表面的抗滑能力檢測，根據 104年修正公布之交
通部部頒「交通工程規範」附錄中的設備為何？（15分）
請針對列舉至少兩點可能對於影響維持鋪面以及標線抗滑能力表現
之因素進行說明。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:50+00:00", "source_pdf_sha1": "d657e763f225", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "356", "s": "2301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "營建管理與工程材料", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "水利工程"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00001', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-98fbe395', 'sub-heelevel3-0a2fc18c-01', NULL, 'essay', '政府對於污染這類會造成「負面外部性」（negativeexternality）的問題經
常使用庇古稅（Pigouviantax）來矯正其不效率。請說明庇古稅之最適稅
率應該如何訂定？（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "25c515c5154c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00002', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-98fbe395', 'sub-heelevel3-0a2fc18c-01', NULL, 'essay', '一般而言，「公共財」（publicgoods）之市場提供均衡將不具效率性。但
是 E.Lindahl 指出，在某些條件下，私人協商之市場結果將是有效率的。
（每小題20 分，共 40 分）
請以一個僅有兩戶人家之小社區的共享路燈為例，說明 Lindahl 協商
會如何進行以達到雙方都同意的成本分攤方式和路燈數量。
請解釋 Lindahl 均衡為何會滿足公共財之 Samuelson 最適條件？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "25c515c5154c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL),
  ('heelevel3-0a2fc18c-moex-00003', 'heelevel3-0a2fc18c', 'heelevel3-0a2fc18c-moex-114-98fbe395', 'sub-heelevel3-0a2fc18c-01', NULL, 'essay', 'K.Arrow的「不可能定理」要求集體決策機制必須要滿足「無關選項之
獨立性」（independenceofirrelevantalternatives,IIA）。請說明 IIA之意涵
與重要性。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:47+00:00", "source_pdf_sha1": "25c515c5154c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "231", "s": "0710", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "公共經濟學", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "經建行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
