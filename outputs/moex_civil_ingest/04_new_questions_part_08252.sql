-- W1.6 questions batch 8252/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-1fb53453-moex-00417', 'pukao-1fb53453', 'pukao-1fb53453-moex-110-d1a761c9', 'sub-pukao-1fb53453-02', NULL, 'single_choice', '關於徵收補償之敘述，下列何者正確？', '["須為合法公權力措施", "適用第一次權利保護優先原則", "當事人無須構成特別犧牲", "原公權力措施得預見其附帶違法侵害效果"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:54+00:00", "source_pdf_sha1": "a73ca5f9bf9d", "answer_pdf_sha1": "702dcf1a18a2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "418", "s": "0606", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "行政法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 49, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "財經廉政"}'::jsonb, NULL),
  ('pukao-1fb53453-moex-00418', 'pukao-1fb53453', 'pukao-1fb53453-moex-110-d1a761c9', 'sub-pukao-1fb53453-02', NULL, 'single_choice', '關於國家賠償法第3條公共設施之敘述，下列何者錯誤？', '["縱使尚未驗收合格之公共設施，如已開放公眾使用，仍有國家賠償法之適用", "公共設施之開放使用係屬行政機關事實行為", "私人所有之公共設施，亦有國家賠償法之適用", "公共設施設置地點之選定，屬公權力行為"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:54+00:00", "source_pdf_sha1": "a73ca5f9bf9d", "answer_pdf_sha1": "702dcf1a18a2", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "418", "s": "0606", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "行政法概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 50, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "財經廉政"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00001', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '撰寫一個Java程式，使用遞迴計算給定正整數n的「卡塔蘭數」（Catalan
Number）C(n)，其中C(n)定義為：C(0)=1，C(n) = Σ(C(i) * C(n-1-i)) for
ifrom0ton-1，使用者輸入n（n為非負整數且不超過 15）。輸出 C(n)，
並使用 long型別。執行範例如下：例如 n 輸入 4，輸出 C(4)=14。
4
C(4) = 14
回答下列問題：
完成(A)程式碼（12分）
完成(B)程式碼（3 分）
完成(C)程式碼（3 分）
完成(D)程式碼（4 分）
完成(E)程式碼（3 分）
import java.util.InputMismatchException;
import java.util.Scanner;
public class JP2 {
public static long catalan(int n) {
(A)
return sum;
}
public static void main(String[] args) {
Scanner scanner = (B)
int n;
try {
n = scanner.nextInt();
(C){
System.out.println("輸入不合法!");
scanner.close();
return;
}
} catch (InputMismatchException e) {
System.out.println("輸入不合法!");
scanner.close();
return;
}
(D)
System.out.println((E) + result);
scanner.close();
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "502f5466a56f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00002', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '依據以下 C程式碼，回答下列問題：
6～12 行程式碼功能（4 分）
13～17行程式碼功能（4 分）
19～29行程式碼功能（7 分）
30～32行程式碼功能（2 分）
33～41行程式碼功能（4 分）
42～45行程式碼功能（2 分）
46～49行程式碼功能（2 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "502f5466a56f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00003', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '依據以下 Python程式碼，回答下列問題：
2～8行程式碼功能（4分）
10～12行程式碼功能（3 分）
14～15行程式碼功能（4 分）
17～20行程式碼功能（4 分）
22～24行程式碼功能（3 分）
26～29行程式碼功能（4 分）
31～32行程式碼功能（3 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "502f5466a56f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00004', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '依據以下 C#程式碼，回答下列問題：
6～19 行程式碼功能（9 分）
20～31行程式碼功能（8 分）
此程式輸出結果為何？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "502f5466a56f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2605", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00005', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '有關電腦各類連接埠的敘述，下列何者正確？', '["HDMI介面可同時傳送未經壓縮的視訊及音訊", "D-Sub和DVI均屬於視訊介面，D-Sub傳送數位信號，DVI則傳送類比信號", "通用序列匯流排（USB）雖支援熱插拔可即插即用，但最多只能同時插接4支隨身碟", "USB提供高速的雙向並列傳輸，可用於連接鍵盤、滑鼠、印表機等設備"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb5f05b4447b", "answer_pdf_sha1": "22ffedc0462e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2607", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00006', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '有關電腦升級之敘述，下列何者錯誤？', '["將機械式硬碟更換成固態硬碟來提升效能是常見的方式之一", "若要將CPU升級，大部分會同時升級主機板，其原因之一是CPU插槽型式會不同", "主機板上的BIOS會因升級而嚴重毀損，雖硬碟中的作業系統安好，仍可能會無法正常開機", "DDR4和DDR5引腳數均為288pins，所以DDR4的記憶體可以安裝於DDR5的主機板插槽上，可減少 升級費用"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb5f05b4447b", "answer_pdf_sha1": "22ffedc0462e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2607", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00007', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '下列何者不是使用單一指令流多資料流（singleinstructionstreammultipledatastream，SIMD）所具有的優 勢？', '["由多個執行單元來分擔控制單元的成本", "減少程式記憶體指令（memoryinstruction）的用量", "平行處理多筆資料以加速數值運算", "增加分支預測（branchprediction）之正確率"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb5f05b4447b", "answer_pdf_sha1": "22ffedc0462e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2607", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00008', 'pukao-39f5e973', 'pukao-39f5e973-moex-114-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '關於CPU的指令執行，下列敘述何者錯誤？', '["CPU從程式指標暫存器（ProgramCounter）取得指令所需資料所在的位址", "控制單元從記憶體子系統擷取即將要執行的指令，放在指令暫存器（InstructionRegister）", "控制單元將放在指令暫存器（InstructionRegister）中的指令解碼後，執行指令的操作", "使用生產線技術（Pipelining），可以提升CPU的執行效率"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "eb5f05b4447b", "answer_pdf_sha1": "22ffedc0462e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "448", "s": "2607", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
