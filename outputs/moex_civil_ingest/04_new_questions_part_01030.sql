-- W1.6 questions batch 1030/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-39f5e973-moex-00032', 'customs-39f5e973', 'customs-39f5e973-moex-114-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '給予一前序（preorder）表示式 ABCD和後序（postorder）表示式 DCBA，
試畫出所有可能的二元樹。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4b3e2d74a511", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00033', 'customs-39f5e973', 'customs-39f5e973-moex-114-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '假設每個運算元都是一位整數，使用堆疊方法，模擬後序式 2542+6+的
計算過程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4b3e2d74a511", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00034', 'customs-39f5e973', 'customs-39f5e973-moex-114-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '假設現有五個字母 A,B,C,D, E 的頻率分別為 0.19,0.09,0.21,0.12,0.39，
請依步驟建構霍夫曼樹（Huffman Tree）。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4b3e2d74a511", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00035', 'customs-39f5e973', 'customs-39f5e973-moex-114-9aa8415c', 'sub-customs-39f5e973-03', NULL, 'essay', '請逐步寫出下列使用遞迴函式的呼叫與輸出過程。（25 分）
#include<iostream>
using namespace std;
intA(intn,int c= 1){
if (n == 0)
return c +1;
return A(n -2,c* n);
}
int main(){
cout<< A(6) <<endl;
return 0;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "4b3e2d74a511", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1203", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00036', 'customs-39f5e973', 'customs-39f5e973-moex-114-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '假設你負責測試海關貨物申報與關稅計算系統，請設計一個黑箱測試案例
與一個白箱測試案例，並說明其測試範圍與目標。（24 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "1c1879774b34", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00037', 'customs-39f5e973', 'customs-39f5e973-moex-114-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '假設海關考慮導入一些新技術優化貨物流通監管流程，下列是兩種方案：
方案 A：導入電子報關系統，貨運公司可在線提交資料，但貨物仍需到港
後由人工檢查、貼上條碼、手動登錄貨物狀態。
方案 B：在貨物集裝箱上安裝 IoT 感測器（如 GPS、RFID、環境監測設
備），貨物全程自動上報位置、溫濕度等數據，AI系統根據即時數據自動
判定是否需要查驗，高風險貨物自動標記優先處理。
方案 A 與方案 B 那一個屬於「資訊化」，那一個屬於「數位轉型」，
並解釋它們的核心差異。（12 分）
方案 B對海關工作模式會有什麼影響？請舉例至少兩項。（12分）
導入 IoT技術後，可能產生那些風險或挑戰？請提出應對策略。（12 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "1c1879774b34", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00038', 'customs-39f5e973', 'customs-39f5e973-moex-114-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '假設在推動「跨境電子通關」時規劃透過雲端數據交換平台與全球多國共
享進出口貨物資訊。然而，該系統在上線後發現下列問題：
㉑某些國家的海關未使用標準加密協議，導致數據傳輸可能被攔截。
㉒數據存放於第三方雲端服務供應商，發現某些日誌紀錄未加密可能被內
部人員竊取。
以上這兩個問題對應安全系統開發生命週期（SSDLC）那些階段？（10分）
雲端數據的安全應在那個 SSDLC 階段處理？如何確保第三方雲端服務
供應商符合安全標準？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "1c1879774b34", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00039', 'customs-39f5e973', 'customs-39f5e973-moex-114-aff4a67f', 'sub-customs-39f5e973-04', NULL, 'essay', '國家資通安全研究院對 DeepSeekAI離線下載模型之資安測試，其中包含
評估越獄攻擊（Jail-breaking）防禦能力，有關 DeepSeekAI針對「文句延
續攻擊」的防禦率僅有 20%～32%。假設有企業組織基於 DeepSeekAI開
源模型的基礎上開發自己的 AI 應用，請舉例說明什麼是「文句延續攻
擊」？（10分）並分析可能造成什麼風險？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "1c1879774b34", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00040', 'customs-39f5e973', 'customs-39f5e973-moex-114-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '下列三個 IP位址的區塊，可以合併成一個單一區塊嗎？如果可以的話，
那合併後的區塊 IP範圍為何？合併後的子網路（subnet）遮罩（mask）
是幾個 bits？請詳細說明。如果不能合併，理由為何？（15分）
16.27.24.0/26
16.27.24.64/26
16.27.24.128/25
一個機構擁有的 IP 位址區塊為 130.56.0.0/16，管理者把它均分為 1024
個子網路，請問第一個子網路的 IP範圍是多少？（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "42a1099415ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('customs-39f5e973-moex-00041', 'customs-39f5e973', 'customs-39f5e973-moex-114-c178e015', 'sub-customs-39f5e973-05', NULL, 'essay', '假設一個TCP的客戶端（client）預期接收byte的序號為3001，然後它收
到一個封包序號3001，總共含有400bytes，而此時這個客戶端並沒有資料
要回傳，且上一個收到的封包已經確認回應（acknowledged）過了，請問
這個客戶端會如何針對這個事件做怎樣的處理與反應？為什麼？（15分）
TCP有壅塞控制（congestioncontrol）及流量控制（flowcontrol）的機
制，分別是用 cwnd 與 rwnd 這兩個視窗的值來進行該控制。請問這兩
個值分別是利用怎樣的機制來動態改變的，以達到控制的目的？請詳細
說明。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:19+00:00", "source_pdf_sha1": "42a1099415ff", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114040", "c": "107", "s": "1205", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "114", "exam_name": "114年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
