-- W1.6 questions batch 5304/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-c5fb3965-moex-00033', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-114-3082b5f1', 'sub-heelevel3-c5fb3965-03', NULL, 'single_choice', '甲為中華民國國籍人士，其與A國籍乙在A國辦理結婚登記。嗣後乙持A國結婚證書向我國駐 A國代表處申請驗證結婚證書及核發依親居留簽證。然而我國駐A國代表處卻認為，甲與乙在面 談時對於結婚重要事實陳述不一致，因此駁回乙之簽證申請。依司法實務之見解，下列敘述何者 正確？', '["甲得以自己名義提起課予義務訴訟，請求發給乙簽證", "乙不具有我國國籍，因此無法提起行政救濟", "甲得以自己名義，提起撤銷訴願及撤銷訴訟，以資救濟", "因為甲本身並非依法得申請簽證之當事人，因此無法提起行政救濟"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "b5b55ac548cd", "answer_pdf_sha1": "940b0a4bb83c", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "204", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 23, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00034', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-114-3082b5f1', 'sub-heelevel3-c5fb3965-03', NULL, 'single_choice', '下列何種情形國家不負損害賠償責任？', '["甲國家公園管理機關因颱風警報，在所屬國家公園登山口公告禁止入山，乙因假期難得，仍冒 險登山而發生山難", "丙機關設立之公園鞦韆已經壞損，不堪使用，故在該鞦韆旁標示不得使用，丁仍讓其未成年之 子女戊使用，戊不幸拋飛而受有重傷", "主管機關平日未巡視公園樹木狀況，因強烈颱風來襲，致樹木倒塌壓傷路過之民眾", "土地登記機關因可歸責之事由，發生登記錯誤"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "b5b55ac548cd", "answer_pdf_sha1": "940b0a4bb83c", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "204", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 24, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00035', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-114-3082b5f1', 'sub-heelevel3-c5fb3965-03', NULL, 'single_choice', '依司法實務見解，公共事業之設施穿越私有土地之地下，致逾越所有權人社會責任所應忍受範圍， 形成個人之特別犧牲時，下列敘述何者正確？', '["土地所有權人得請求需用土地人向主管機關申請徵收地上權", "所有權人之土地所有權並未受剝奪，故應忍受此一財產權社會義務的合法限制", "此屬財產權之違法侵害，當事人應請求除去侵害", "無法律則無徵收補償，若法律未有規定時，所有權人不得請求需用土地人向主管機關申請徵收"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "b5b55ac548cd", "answer_pdf_sha1": "940b0a4bb83c", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "204", "s": "0403", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "行政法", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 25, "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00036', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-61b9f3c6', 'sub-heelevel3-c5fb3965-01', NULL, 'essay', '根據內政部戶政司民國 111年的人口統計資料，以下表格彙整了A、B、
C 三個鄉鎮市區按性別及 5 歲年齡組區分的人口數，以及同年度按生母
年齡區分的新生兒出生數。請利用表格內的數據，計算一般生育率、年
齡別生育率和總生育率，並使用這些生育指標分析三個鄉鎮市區在出生
狀況的異同點。（20 分）
A鄉鎮市區 B鄉鎮市區 C鄉鎮市區
年齡組 男 女 出生數 男 女 出生數 男 女 出生數
0-4 183 177 192 172 6608 6207
5-9 168 152 243 234 8800 8177
10-14 189 152 237 275 8261 7814
15-19 352 306 1 327 290 0 6788 6234 7
20-24 476 445 13 480 453 9 5959 5428 63
25-29 468 435 36 554 493 16 5880 5661 297
30-34 389 290 27 529 462 19 7233 6873 722
35-39 370 332 14 488 422 11 8485 9001 598
40-44 597 513 3 656 592 4 10943 12315 145
45-49 790 601 1 680 596 0 10309 11363 13
50-54 762 480 684 616 8366 8241
55-59 835 401 752 642 6002 6075
60-64 700 418 659 652 4661 4860
65-69 470 416 603 641 3396 3701
70-74 433 500 493 568 2424 2913
75-79 324 418 334 390 1374 1583
80-84 340 437 271 330 961 1271
85-89 164 260 132 172 504 693
90-94 64 135 36 80 168 282
95-99 7 35 9 8 56 74
100+ 4 4 0 2 2 6
小 計 8085 6907 95 8359 8090 59 107180 108772 1845', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "c6890c30042f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "0917", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "人口政策與人口統計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00037', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-61b9f3c6', 'sub-heelevel3-c5fb3965-01', NULL, 'essay', '承上題表，A、B、C這三個鄉鎮市區，除了在出生狀況有所不同，其他
人口特性也存在差異。請提出三個常用的人口指標（不包括生育率），使
用上表資料進行估算，然後利用算出的指標數據對這三個鄉鎮市區進行
人口特性的比較分析，並根據分析結果對每個鄉鎮市區提出需優先考量
的人口政策建議。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "c6890c30042f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "0917", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "人口政策與人口統計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00038', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-61b9f3c6', 'sub-heelevel3-c5fb3965-01', NULL, 'essay', '由於少子高齡化趨勢未能扭轉，長期來看，我國勢必會面臨勞動力短缺
的問題。為了應對這一挑戰，政府自 2014年起積極推動攬才留才政策。
請說明現行三項主要的外籍人才延攬與留用政策，並評估各項政策的攬
才留才成效。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "c6890c30042f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "0917", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "人口政策與人口統計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00039', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-61b9f3c6', 'sub-heelevel3-c5fb3965-01', NULL, 'essay', '為了提升生育率，歐美與東亞國家都積極推動鼓勵生育及家庭支持政
策。儘管各國已投入大量政府預算，低生育率卻未見起色，尤其是我國
及日、韓的生育率仍持續下降。請引用與生育行為有關的理論觀點，說
明導致超低生育率的原因，並解釋鼓勵生育政策為何難以增進生育意
願。基於我國現行鼓勵生育政策效用不明顯，請您為政府提出合適的政
策方向與建議。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "c6890c30042f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "0917", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "人口政策與人口統計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00040', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-34cd00d7', 'sub-heelevel3-c5fb3965-02', NULL, 'essay', 'A 夫、B 妻兩人結婚多年。A 因公務到美國出差，不久音訊全無。七年
後，B 向法院聲請死亡宣告獲准。B 持法院死亡宣告裁定，向戶政機關
完成死亡登記。A 留有一筆土地，B 也在地政機關完成繼承登記。又一
年後，B女結識C男，兩人正在戶政機關辦理結婚登記時，此時A卻出
現，並欲阻止 B、C結婚。B、C則質疑死亡宣告尚未被撤銷。問：戶政
機關應否接受 B、C 兩人的結婚登記申請？A 當初所遺留的土地，在尚
未塗銷繼承登記前，現在所有權屬誰？（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "101a7f46c11b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法總則、親屬與繼承編", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00041', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-34cd00d7', 'sub-heelevel3-c5fb3965-02', NULL, 'essay', 'A夫、B妻兩人結婚多年，喜獲一女 C。就 C的從姓，民法如何規定？
在兩人取得女兒從姓的共識後，因為 B 必須上班，所以委由 A到戶政機
關為出生登記。隔日 A開車到市府所設的停車場，辦完出生登記後，卻
忘記繳交停車費，隨即開車回家。三日後，市府向家中主要經濟來源的
B，催繳停車費用，有無理由？（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "101a7f46c11b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法總則、親屬與繼承編", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL),
  ('heelevel3-c5fb3965-moex-00042', 'heelevel3-c5fb3965', 'heelevel3-c5fb3965-moex-113-34cd00d7', 'sub-heelevel3-c5fb3965-02', NULL, 'essay', 'A夫、B妻兩人結婚多年，因感情不睦而離婚。一個月後，B和C 男結
婚，八個月後生下一女 D。B 到戶政機關為出生登記，在生父部分，應
如何填具？又 C此時發生車禍，經法院為輔助宣告，而以律師 E為輔助
人。C始終認為，自己和 D無血緣關係，欲提起親子關係相關訴訟。輔
助人 E 為避免 C 思慮不周，E 因此向法院聲請裁定：「被輔助人提起相
關親子訴訟，都須得到輔助人同意」，有無理由？（40分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:36+00:00", "source_pdf_sha1": "101a7f46c11b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "304", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法總則、親屬與繼承編", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "戶政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
