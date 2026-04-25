-- W1.4 new questions batch 3716/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('fire-eq-eng-moex-00463', 'fire-eq-eng', 'fire-eq-eng-moex-110-d69d8efd', 'sub-fire-eq-eng-01', NULL, 'single_choice', '依消防機具器材及設備認可實施辦法規定，有關型式認可之有效期間為幾年？', '["3年", "4年", "5年", "6年"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "f0272ef09e43", "answer_pdf_sha1": "733f8f7f51f4", "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0802", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "消防法規", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": 40, "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00464', 'fire-eq-eng', 'fire-eq-eng-moex-110-39ca095a', 'sub-fire-eq-eng-05', NULL, 'essay', '請說明電動汽車火災可能火災類型及電動汽車充電樁火災之類型？（10分）
建築物地下層停車場依法可設置之自動滅火設備及免設排煙設備在電動
汽車火災滅火上的風險為何？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "6a12129e99f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "火災學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00465', 'fire-eq-eng', 'fire-eq-eng-moex-110-39ca095a', 'sub-fire-eq-eng-05', NULL, 'essay', '為對應收容新冠肺炎（COVID-19）病患的醫院病室火災，其配合感控上
的排煙設計要點為何？（15 分）消防隊出勤人員執行火災搶救上之原則
為何？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "6a12129e99f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "火災學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00466', 'fire-eq-eng', 'fire-eq-eng-moex-110-39ca095a', 'sub-fire-eq-eng-05', NULL, 'essay', '請就某知名 KTV 施工中火災傷亡案例經驗，論述原有合法建築物變更
時若有增設電梯等需破壞樓板的工程施作，施工中應有的建築防火避難
措施上火災防護計畫要點。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "6a12129e99f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "火災學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00467', 'fire-eq-eng', 'fire-eq-eng-moex-110-39ca095a', 'sub-fire-eq-eng-05', NULL, 'essay', '浮升火羽流量公式為 m=0.08Q1/3z5/3，請說明各參數代表的意義及單位。
（10 分）若要讓一個樓地板面積 20平方公尺高度 4公尺的立方體居室空
間火災的煙層高度維持在 3公尺高，請問排煙設備排煙量之質量流量應
為多少 Q ？（假設火災為定常火源，熱釋放率 Q=Q tn。排煙設備於煙
0 0
層降至 3 公尺處全面啟動。）（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "6a12129e99f0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0801", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "火災學", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00468', 'fire-eq-eng', 'fire-eq-eng-moex-110-7acb2db0', 'sub-fire-eq-eng-06', NULL, 'essay', '請問火警受信總機的型式種類及相關裝置規定為何？（15分）為避免營
業中場所的火警受信總機因故被關閉，總機應具備地區警報音響關閉時
強制啟動警報音響之功能，此種再鳴動功能應符合何種條件？（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "79680c90f66b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "警報系統消防安全設備", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00469', 'fire-eq-eng', 'fire-eq-eng-moex-110-7acb2db0', 'sub-fire-eq-eng-06', NULL, 'essay', '請問緊急廣播設備揚聲器的設計步驟與設置規定為何？（15 分）如揚聲
器以二條線配置至各樓層昇位（幹線）交會處，經由二線式控制模組與
二條主音源線（幹線）連接至廣播主機之配線方式，請說明是否符合規
定？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "79680c90f66b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "警報系統消防安全設備", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00470', 'fire-eq-eng', 'fire-eq-eng-moex-110-7acb2db0', 'sub-fire-eq-eng-06', NULL, 'essay', '美食街瓦斯燃料成分與燃燒下限濃度如下表，一回路檢知器數量有 11
個，以加瓦斯試驗器對檢知器進行動作試驗，測得由中繼器之動作確認
亮燈，至受信總機之瓦斯漏氣燈亮燈之時間為 62秒，請說明加瓦斯試驗
器的操作步驟與測試濃度為何？又檢知器的選取檢查數量及性能檢查
的方法與結果判定為何？（25 分）
成分種類 丙烷 丁烷 丙烯
含量比率（%） 50 40 10
燃燒下限濃度（%） 2.2 1.9 2.0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "79680c90f66b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "警報系統消防安全設備", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00471', 'fire-eq-eng', 'fire-eq-eng-moex-110-7acb2db0', 'sub-fire-eq-eng-06', NULL, 'essay', '某長照機構為防火建築物，各層建築平面配置如圖 1 至圖 3，樓層高度
皆為 3.6 公尺，且僅一樓為無開口樓層，請依表 1 及相關規定，繪製火
警自動警報設備及 119火災通報裝置之平面配線及系統昇位圖。（25 分）
3m
3m
6m
一樓護理站 101住房 廚房
行動不便者 大廳
升降梯
走廊 2m14m
105住房 儲藏室 103住房 102住房 浴室、廁所
6m
5m 5m 5m 5m 5m
25m
圖1 一樓平面圖
3m
陽台
3m
6m
二樓護理站 201住房 202住房 203住房
行動不便者
升降梯
走廊 走廊
走廊 2m
14m
下 上
207住房 206住房 205住房 浴室、廁所
6m
5m 5m 5m 5m 5m
25m
圖2 二樓平面圖
3m
3m 電梯機房
6m
屋頂平台
2m14m
下
6m
5m 5m 5m 5m 5m
25m
圖3 屋頂層平面圖
表1 圖例說明
圖例 設備名稱 設置位置 配線規格
P型火警受信總機 一樓護理站內 HIV1.6mm導線
PBL 一樓火警綜合盤 儲藏室出入口外側牆面 警鈴與標示燈為HIV1.6mm，
二樓火警綜合盤 206住房出入口外側牆面火警發信機為IV1.2mm
PBL
偵煙探測器二種 依規定裝置的空間 IV1.2mm導線
S
差動探測器二種 依規定裝置的空間 IV1.2mm導線
定溫探測器一種 依規定裝置的空間 IV1.2mm導線
119火災通報裝置（本體） 一樓護理站內 HIV1.6mm導線
119火災通報裝置遠端啟動裝置二樓護理站內 HIV1.6mm導線
T
1.升降機與樓梯間皆為獨立火警分區。
設計
2.火警發信機之迴路線、電話線、應答線採同一共線方式配置。
條件
3.建築物一樓、二樓火警警鈴採同一共線，且以分層鳴動方式配置。
說明
4.繪製平面配線圖時，各層建築平面與隔間配置等，得以簡化方式繪製。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "79680c90f66b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "警報系統消防安全設備", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL),
  ('fire-eq-eng-moex-00472', 'fire-eq-eng', 'fire-eq-eng-moex-110-3477581a', 'sub-fire-eq-eng-07', NULL, 'essay', '請說明各類場所消防安全設備設置標準中排煙設備之防煙區劃規定為
何？排煙口位置如何設置？排煙機之排煙量如何規定？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:16+00:00", "source_pdf_sha1": "2a09b1a94c69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110060", "c": "401", "s": "0804", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "避難系統消防安全設備", "year": "110", "exam_name": "110年專技人員高等考試大地工程技師考試分階段考試（第一階段考試）、驗船師、引水人、第一次食品技師考試、高等暨普通考試消防設備人員考試、普通...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "fire-equipment-engineer", "db_exam_id": "fire-eq-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
