-- W1.6 questions batch 6448/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0c700c30-moex-00214', 'locality-0c700c30', 'locality-0c700c30-moex-110-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '若 SSR表示迴歸平方和（sumof squaresforregression）
詳述「額外的平方和（Extra sum of squares）」SSR( )的意
義。（5 分）
,|,
詳細推導
SSR( 。（10 分）
SSR(,,,) = SSR()+SSR(|)+SSR(|,)
+ |,,)', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "17475fdc6540", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0c700c30-moex-00215', 'locality-0c700c30', 'locality-0c700c30-moex-110-41d43525', 'sub-locality-0c700c30-06', NULL, 'essay', '若考慮一因子變異數分析有 t 個處理，每個處理有 r 個觀測值，其模型
表示如下：
， i=1,2,…,t ，j=1,2,..,r ，
其中 為總平均數， 為第 i個處理效應， 是隨機誤差項。
 =  + +
若以線性迴歸模型
  
改寫上述一因子變異數分析模型，請定義 ， ， 及 ，並詳述其維度。
（10 分） = +
   
為統計推論之目的，說明隨機誤差項所需的假設。（5 分）
若欲檢定是否存在處理效應，請詳述此檢定之虛無假設、對立假設、
檢定統計量及其拒絕域。（10分）
t分配表
t
α', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:15+00:00", "source_pdf_sha1": "17475fdc6540", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "314", "s": "1610", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "迴歸分析", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "統計"}'::jsonb, NULL),
  ('locality-0f640084-moex-00001', 'locality-0f640084', 'locality-0f640084-moex-114-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '電腦系統由五大主要單元組成，其中一個是中央處理器（CPU），主要包
括「控制單元」與「算術邏輯單元」。請列出電腦系統，除 CPU 之外的
其他四個組成單元，並說明它們的作用；也請說明 CPU的「控制單元」
與「算術邏輯單元」的作用。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00002', 'locality-0f640084', 'locality-0f640084-moex-114-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', 'TCP/IP協定堆疊是網路運作的基礎，是一種分層架構的設計。請闡述分
層架構設計的兩個好處，也請列出 TCP/IP協定堆疊各層協定的名稱，並
闡述各層的主要作用。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00003', 'locality-0f640084', 'locality-0f640084-moex-114-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '資料結構是程式設計領域很重要的概念。請闡述佇列（Queue）與循環佇
列（CircularQueue）的差別與各別的應用場合。若使用陣列實作這兩種
佇列，那一種較為浪費儲存空間？請闡述原因。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00004', 'locality-0f640084', 'locality-0f640084-moex-114-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '結構化程式設計中，常提到的三種基本控制結構是那些？請各舉一個
簡單的範例並使用虛擬代碼（PseudoCode）或任何程式語言實現所舉
範例。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00005', 'locality-0f640084', 'locality-0f640084-moex-114-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '生成式 AI 有許多應用方向，但也帶來新型態的倫理與社會議題。請舉
出兩個生成式 AI的應用案例，並針對生成式 AI的「深偽（Deepfake）」、
以及「偏見」這兩項議題，闡述問題怎麼產生，並提出可行的因應方式。
（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "6d064fa6e6ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2013", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00006', 'locality-0f640084', 'locality-0f640084-moex-114-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一條69kV 之三相短程輸電線其長度為16公里，每相串聯阻抗為
0.125 j0.4375/km，當輸電線傳送70MVA且功率因數為 0.8 落後之
電力至線路末端且當時線路末端電壓為64kV時，試計算出送電端電壓、
送電端功率、電壓調整率與傳輸效率。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "01935ed6cbb1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00007', 'locality-0f640084', 'locality-0f640084-moex-114-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '有一個電力系統單線圖如圖一所示，其標示是以 100 MVA 為基準之阻
抗標么值，試建立出該系統母線導納矩陣。（20分）
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "01935ed6cbb1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00008', 'locality-0f640084', 'locality-0f640084-moex-114-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '一個簡單電力系統單線圖如圖二所示，該系統沒有初始負載且發電機均
運轉在額定電壓同時電動勢均同相位。於單線圖上顯示出各發電機與變
壓器之額定值與電抗百分比。若輸電線阻抗為j160Ω且末端發生三相平
衡故障時，試計算出短路電流及短路容量。（20分）
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:18+00:00", "source_pdf_sha1": "01935ed6cbb1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114190", "c": "342", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "114", "exam_name": "114年特種考試地方政府公務人員考試、離島地區公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
