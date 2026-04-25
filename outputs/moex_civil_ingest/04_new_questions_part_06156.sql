-- W1.6 questions batch 6156/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('judicial-ae9cc487-moex-00164', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '變數的種類可概分為區域變數（Local Variable）、全域變數（Global
Variable）與靜態變數（Static Variable），請就宣告方式、有效範圍
（Scope）、程式碼維護比較其差異。（15分）
遞迴函式（Recursive Function）通常也可以改用迴圈（Loop）方式來
撰寫，請就程式碼撰寫難易度、理解性、執行效能、記憶體使用比較
其差異。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "d61237bc66a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00165', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '請使用 C/C++、Java或 Python任一程式語言撰寫一支加密演算法程式，
讓使用者輸入一語句，然後將語句中的每個大小寫字母轉換成其反序的
字母（A↔Z、B↔Y、C↔X、…、x↔c、y↔b、z↔a），若所輸入的語句
中有不是英文字母的字元則以原字元輸出。例如：所輸入的語句為
「abcd6ZYXW$」，則輸出應為「zyxw6ABCD$」；所輸入的語句為「Rolev
blf!」，則輸出應為「Iloveyou!」。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "d61237bc66a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00166', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-84f8139f', 'sub-judicial-ae9cc487-02', NULL, 'essay', '中華民國的身分證字號共有 10個字元，其編碼原則如下：第一個字元為
大寫的英文字母，代表出生地區，其餘 9 個字元皆為數字。在套用編碼
原則時，第一個大寫英文字母須先依下表轉換為數字：
字母 A B C D E F G H I J K L M
數字 10 11 12 13 14 15 16 17 34 18 19 20 21
字母 N O P Q R S T U V W X Y Z
數字 22 35 23 24 25 26 27 28 29 32 30 31 33
轉換後的身分證字號共有 11 位數字，每一位數字均有固定的權重
（Weight），由左往右依序為 1, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1。判斷身分證字號
是否正確的方法為：各位數字與其相對應的權重相乘後再加總，加總後
的結果若為 10的倍數，則該身分證字號即屬有效。請使用 C/C++、Java
或 Python 任一程式語言撰寫一支中華民國身分證字號的驗證程式。例如
所輸入的身分證字號為「A123456789」，則輸出應為「A123456789為有
效的身分證字號」；所輸入的身分證字號為「Z987654321」，則輸出應為
「Z987654321 為無效的身分證字號」。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "d61237bc66a9", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1005", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式語言", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00167', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '再使用性（Reusability）與可攜性（Portability）為評估軟體架構設計的重
要品質屬性（Quality Attributes）；而可攜性亦為使用者考量行動應用程
式（MobileApp）滿意度的重要品質因數（QualityFactors）之一。請解釋
再使用性與可攜性並說明兩者間的差異性。另請舉例具體說明在實務面
上該如何度量再使用性與可攜性。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "233d0514b350", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00168', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '你是否認為將交付後的軟體經常性維護視為一種錯誤而評斷原本的軟
體開發過程是不佳的？請討論之。另請提出至少一種軟體度量指標並說
明它（們）如何計算及幫助軟體維護活動。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "233d0514b350", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00169', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '請解釋並定義敘述覆蓋率（Statement Coverage）與路徑覆蓋率（Path
Coverage）。另針對以下虛擬碼（pseudocode）程式，假設我們執行二個
測試個案（TestCases）其 studentGrade輸入值各為55 與 95時，請說明
在此情況下敘述覆蓋率與路徑覆蓋率各為多少？另有無可能達到 100%
的敘述覆蓋率與路徑覆蓋率要求？以上請透過控制流程圖（ControlFlow
Diagram）來說明。（25分）
100 Input(studentGrade)
200 IfstudentGrade<60
300 thendisplay"Fail(FL)"
400 elsedisplay"Pass(PS)"
500 IfstudentGrade>90
600 thendisplay"A+"
700 End', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "233d0514b350", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00170', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-579e3022', 'sub-judicial-ae9cc487-03', NULL, 'essay', '在設計系統時可靠度（Reliability）與安全性（Security）通常是我們必須
納入的重要考量因素，請定義可靠度與安全性。另請嘗試以疫苗接種線
上預約系統為例來說明系統的可靠度功能需求（Functional Reliability
Requirements）與安全性需求（SecurityRequirements）為何。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "233d0514b350", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00171', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '試說明 DHCP（Dynamic Host Configuration Protocol）以及 NAT
（NetworkAddressTranslation）的作用與運作方式。（20分）
試說明 DHCP與 NAT如何能緩解 IPv4 位址空間不足的問題。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4a8a4591d382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00172', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '試說明數位信封以及數位憑證的作用與運作方式。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4a8a4591d382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL),
  ('judicial-ae9cc487-moex-00173', 'judicial-ae9cc487', 'judicial-ae9cc487-moex-110-5eb982fa', 'sub-judicial-ae9cc487-04', NULL, 'essay', '一般而言，無線網路架構可區分為 AdHoc架構以及 Infrastructure 架構，
試說明此兩種架構的特色及存取模式。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:26:00+00:00", "source_pdf_sha1": "4a8a4591d382", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110130", "c": "110", "s": "1004", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機網路", "year": "110", "exam_name": "110年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、移民行政人員考試、未具擬任職務任用資格者取得法官遴選資格考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "judicial", "civil_category": "檢察事務官-電子資訊組"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
