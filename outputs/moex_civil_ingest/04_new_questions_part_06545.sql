-- W1.6 questions batch 6545/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00082', 'locality-39f5e973', 'locality-39f5e973-moex-111-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', 'TCP 提供連接導向服務，請以主從架構模式說明 TCP 連線建立過程與
TCPHeader中的那些欄位用於 TCP連線建立過程。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "bb4adb20b84a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00083', 'locality-39f5e973', 'locality-39f5e973-moex-111-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', '目前網路大多以 HTTP Streaming 傳輸影音串流，DASH 為 HTTP
Streaming 之一。請說明 DASH影音串流傳輸運作方式。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "bb4adb20b84a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00084', 'locality-39f5e973', 'locality-39f5e973-moex-111-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', '無線網路傳輸不同於有線網路傳輸，請說明使用無線傳輸時，何種問題
會造成無線傳輸通道損傷？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "bb4adb20b84a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00085', 'locality-39f5e973', 'locality-39f5e973-moex-111-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', '請說明 whois協定用途與可查詢那些資訊。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "bb4adb20b84a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00086', 'locality-39f5e973', 'locality-39f5e973-moex-111-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', '請說明Zero-DayAttack發生時機，會帶來何種資安危機與該如何因應。
（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "bb4adb20b84a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "348", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00087', 'locality-39f5e973', 'locality-39f5e973-moex-110-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '請問下列程式碼之輸出結果為何？（25 分）
#include <stdio.h>
#include <stdlib.h>
int function(int n)
{
if (n < 10)
return n;
int sum = 0;
while (n > 0)
{
sum += n % 10;
n /= 10;
}
return function(sum);
}
int main()
{
int n = 12345;
int output;
output = function(n);
printf("output%d\n", output);
return 0;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "80e133c75b38", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00088', 'locality-39f5e973', 'locality-39f5e973-moex-110-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '假設一堆疊（Stack）的推入（Push）順序為：123、234、345、456、567，
並且途中可以隨意彈出（Pop）取值，則下列彈出（Pop）取值之順序有
無可能出現？
345、567、456、234、123
若有可能，請依序將推入（Push）與彈出（Pop）的步驟列出。若無可能，
請解釋原因為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "80e133c75b38", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00089', 'locality-39f5e973', 'locality-39f5e973-moex-110-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '請問下列程式碼之輸出結果以及該程式碼的目的為何？（25分）
#include "stdio.h"
int f(int a, int b) {
if(a%b == 0) return b;
return f(b,a%b);
}
int main(void) {
printf("f(21,9) = %d\n",f(21,9));
printf("f(6,44) = %d\n",f(6,44));
return 0;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "80e133c75b38", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00090', 'locality-39f5e973', 'locality-39f5e973-moex-110-77467e46', 'sub-locality-39f5e973-05', NULL, 'essay', '請問下列程式碼之輸出結果為何？（25 分）
#include <stdio.h>
#include <stdlib.h>
void function(int a, int b)
{
printf("a=%d,b=%d\n", a, b);
for (i = 0; i < 8; i++)
{
if (!(a > 10 && b < 10) && (a <= 10 || b >= 10))
{
a = a + 1;
b = b - 1;
printf("a=%d,b=%d\n", a, b);
}
}
}
int main()
{
int x = 5;
int y = 10;
function(x, y);
return 0;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "80e133c75b38", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2507", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00091', 'locality-39f5e973', 'locality-39f5e973-moex-110-77052518', 'sub-locality-39f5e973-07', NULL, 'essay', '使用者從現行企業資訊系統轉換到新的企業資訊系統時，可以從三個面
向思考轉換策略，分別是轉換型式（conversion style）、轉換場所
（conversionlocation）、轉換模組（conversionmodel），請就上述三種面向
說明各種系統轉換策略，並從風險、成本和時間三種因素比較各種轉換
策略。（30 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "a946fa080107", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "系統分析與設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
