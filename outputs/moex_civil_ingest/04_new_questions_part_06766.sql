-- W1.6 questions batch 6766/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-77f8735d-moex-00074', 'locality-77f8735d', 'locality-77f8735d-moex-110-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '某研究欲評估某降血糖藥物的成效，蒐集 150 名糖尿病患者並給予降血
糖藥物治療，治療一個月後發現其中 42名患者有效，其血糖至少可以降
低 20 毫克/分升。試述此降血糖藥物有效之最佳點估計值為何？並請計
算此最佳點估計值之 95%信賴區間。假設給予糖尿病患者安慰劑一個
月，其血糖至少可以降低 20 毫克/分升的比例為 10%，請以適當的統計
檢定方法檢定該降血糖藥物的確具有療效，而非僅有安慰劑作用，並請
列出其虛無假說及對立假說。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "038c02442e73", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00075', 'locality-77f8735d', 'locality-77f8735d-moex-110-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '某研究欲評估高蔬果低脂飲食（得舒飲食）對於降血壓之功效，共招募
81 名高血壓患者，分別於開始食用得舒飲食前及食用得舒飲食後六個
月，測量其收縮壓，結果如下表：
食用得舒飲食前 食用得舒飲食後六個月 前後改變量
收縮壓平均值
161.6 147.3 14.3
（毫米汞柱）
標準差 14.8 13.9 9.6
樣本數 81 81 81
請以顯著水準 0.05 進行統計檢定，檢定得舒飲食是否對於收縮壓改變具
有統計顯著效應？並請列出本研究之統計虛無假說及對立假說。另請計
算得舒飲食前後收縮壓改變量之95%信賴區間，並依據所求得之 95%信
賴區間範圍，判斷得舒飲食是否對於收縮壓改變具有統計顯著效應？並
解釋其理由。（25 分）
33680', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "038c02442e73", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00076', 'locality-77f8735d', 'locality-77f8735d-moex-110-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '某研究利用病例對照研究設計以評估喝酒與痛風的關係，結果發現 130
名痛風患者，75名有喝酒情形；125 名正常對照組個案，35名有喝酒情
形。請以適當統計檢定方法檢定喝酒與痛風間是否有統計顯著相關？設
顯著水準0.05。並請計算兩組間喝酒率差異的 95%信賴區間。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "038c02442e73", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00077', 'locality-77f8735d', 'locality-77f8735d-moex-110-8041b019', 'sub-locality-77f8735d-06', NULL, 'essay', '某研究欲了解吸菸狀態與丙胺酸轉胺酶（GPT）的關係，共蒐集575 名
個案，詢問其吸菸狀態並檢測其丙胺酸轉胺酶，並依照其吸菸狀態分成
三組：從未吸菸、已戒菸、現在吸菸，以比較三組間的丙胺酸轉胺酶平
均值是否有顯著差異，得到下表結果：
組別 人數 平均值（U/L） 標準差
從未吸菸 148 25.0 15.0
已戒菸 150 29.1 15.5
現在吸菸 277 34.8 34.6
變異數分析表
變異來源 平方和 自由度 均方 F 值 P 值
組間 9875.6 （b） （d） （e） 0.001
組內 （a） （c） 696.4
總和 408190.6 574
請列出適合本研究之統計虛無假說及對立假說，並請計算變異數分析表
中（a）、（b）、（c）、（d）、（e）之數值，另以顯著水準 0.05，說明不同吸
菸狀態組別間的丙胺酸轉胺酶是否有統計上顯著差異？並請計算現在
吸菸組與從未吸菸組兩組母群體之丙胺酸轉胺酶平均值差異的 95%信
賴區間。（25分）
33680
標準常態分布右尾之面積
33680
t分布的百分位數', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "038c02442e73", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2613", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "生物統計學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00078', 'locality-77f8735d', 'locality-77f8735d-moex-110-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '某網紅在社群媒體上播放影片，宣稱喝油可以排出肝膽結石，造成許多
民眾仿效。試論這樣的言論是否觸法，及其可能涉及的罰則。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "5696907dba77", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00079', 'locality-77f8735d', 'locality-77f8735d-moex-110-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '全民健康保險為我國重要的社會保險制度之一。請說明社會保險的基本
原理原則與其重要性。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "5696907dba77", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00080', 'locality-77f8735d', 'locality-77f8735d-moex-110-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '醫師應尊重病人隱私權，除法律另有規定外，醫師不得無故洩漏因業務
知悉之病人秘密。請說明醫師得揭露病人隱私的特別狀況及其法律依
據。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "5696907dba77", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00081', 'locality-77f8735d', 'locality-77f8735d-moex-110-72684875', 'sub-locality-77f8735d-02', NULL, 'essay', '隨著資訊科技的發達，再加上新冠肺炎的衝擊，遠距醫療成為發展趨勢。
請說明我國對於遠距醫療之適用對象，有那些規範？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "5696907dba77", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2603", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "衛生法規與倫理", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00082', 'locality-77f8735d', 'locality-77f8735d-moex-110-820a958c', 'sub-locality-77f8735d-07', NULL, 'essay', '在我國的「第四類法定傳染病」中，有兩種傳染病的病原是常見的細菌
性食品中毒病原菌，請列出此兩種病原菌的菌名與特性，並說明此兩種
細菌性食品中毒的易受污染食品、中毒類型、症狀、預防方法及治療方
法。（30分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "ef9632a5c4e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL),
  ('locality-77f8735d-moex-00083', 'locality-77f8735d', 'locality-77f8735d-moex-110-820a958c', 'sub-locality-77f8735d-07', NULL, 'essay', '「亞硫酸鉀」與「過氧化氫」都具有漂白作用，請分別說明其漂白原理及
過量使用時可能造成的健康危害。依據食品添加物使用範圍及限量暨規
格標準，「亞硫酸鉀」與「過氧化氫」屬於不同類別，請寫出其類別，並
分別舉例說明可以使用與不得使用這兩種食品添加物的食品。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:57+00:00", "source_pdf_sha1": "ef9632a5c4e2", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "322", "s": "2614", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "食品與環境衛生學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "衛生行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
