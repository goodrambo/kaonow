-- W1.6 questions batch 8273/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-39f5e973-moex-00209', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '密碼學是資通安全管理者必須知曉的基本知識，請回答下列問題：
傳統加密方法可分為取代法（Substitution）以及換位法（Transposition），
請問著名的凱薩（Caesar）加密法是屬於那一種？回答時須附上正確
的理由才予以計分。（5 分）
請比較對稱式密鑰方法和非對稱式密鑰方法的特性與優缺點。（10 分）
SSL（SecureSocketsLayer）安全協定是只利用對稱式密鑰方法，還是
只利用非對稱式密鑰方法或是兩種方法都使用？回答時須附上正確
的理由才予以計分。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "3dcb53e6cf94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2620", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00210', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '防火牆（Firewall）是現代企業重要的安全防護工具，請回答下列問題：
防火牆的工作原理包括封包過濾式（packetfiltering）以及應用程式代
理（applicationproxy）兩種方法，請說明這兩種方法的特性與優缺點。
（10 分）
一般公司通常將 web 伺服器放在防火牆的 DMZ（Demilitarized Zone）
區，其理由為何？請詳細說明之。（10分）
近年來一種稱為 WAF（Web Application Firewall）的新型態防火牆受
到重視，請說明WAF的功能及特性。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "3dcb53e6cf94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2620", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00211', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', 'PHP是網際網路應用系統常用之程式語言。
請寫出以下 PHP程式的執行結果，並說明得到此結果的原因。（10分）
<?php
$a = array("a" => 1, "b" => 0);
if($a["b"] == NULL)
echo "null";
else
echo "not null";
?>
以下 PHP程式（檔名 input.php）以瀏覽器初次執行會顯示右下畫面。
在「Yourname」欄位輸入資料後按 OK鈕，會顯示輸入資料；若未輸
入資料按 OK 鈕，則會再次顯示右下畫面。請完成程式（I）~（III）
指令，使程式正確執行上述功能。（15分）
<html>
<head><title>Input Data</title></head>
<?php
if(is_null( (I) )||( (I) === "")){
?>
<form method=" (II) " action="input.php">
<p>Your name: <input type="text" name="name"></p>
<input type="submit" value="OK">
</form>
<?php
}
else {
?>
<p>Thank you, <? (III) $_GET[''name''] ?></p>
<?php
}
?>
</html>', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d48bf700f69c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1222", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00212', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '程式語言 C的程式碼是由許多函式（Function）組成。
#include <stdio.h>
int memo[20][20], number=0;
int B(int n, int k){
if((n >= 0)&&(k >= 0)&&(n >= k))
if((k == 0)||(k == n)){
memo[n][k] = 1;
return 1;
}
else if(memo[n][k] > 0)
return memo[n][k];
else{
memo[n][k] = B(n-1, k-1)+ B(n-1, k);
number+=2;
return memo[n][k];
}
else return 0;
}
void f(int N, int M){
int sum=0;
for(int i=1; i<=N; i++){
if(i>=10)break;
if(i%3==0)continue;
sum = sum + B(i, 2);
}
printf("%d %d ", sum, number);
}
int g(int N, int M){
if((N<=0)||(M<0))return 1;
else return(M + N + g(M-2, N-3));
}
int main(){
f(20, 10);
printf("%d\n", g(20, 10));
return 0;
}
請說明上述程式執行的結果。（15 分）
請說明上述程式中 break 與 continue 指令行的意義，並比較兩個指令
之功能差異。（5分）
請說明 C 程式使用遞迴（Recursion）與迴圈（Loop），在時間、空間
與程式可讀性之優缺點。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d48bf700f69c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1222", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00213', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', 'Java是常用的物件導向程式語言。
請寫出以下三個 Java程式的執行結果。（15分）
⑴
class square {
int edge;
square(int e){ edge = e; }
}
public class app {
public static void main(String args[]) {
square s1 = new square(10);
square s2 = new square(10);
if(s1 == s2)
System.out.print("Equal square");
else
System.out.print("Not equal square");
}
}
⑵
public class app {
public static void main(String args[]) {
int a[] = {1,2,3,4,5};
show(a);
}
public static void show(int i){
System.out.println(i);
}
public static void show(int b[]){
for(int i = 0; i < b.length; i++)
System.out.print(b[i] + " ");
}
}
⑶
class Circle {
protected double radius;
Circle(double r){ radius = r; }
void show(){ System.out.print(radius); }
}
class Coin extends Circle {
private int value;
Coin(double r, int v){
super(r);
value = v;
}
void show(){ System.out.print(radius+" "+value); }
}
public class app {
public static void main(String args[]){
Circle coin = new Coin(3.0, 10);
coin.show();
}
}
下列Java程式之需求為：設定變數color的值並輸出。請指出其編譯錯
誤原因，並針對該錯誤原因說明程式如何修正使之能正確執行。（10分）
class Car {
private String color;
void showcolor() { System.out.println(color); }
}
public class app {
public static void main(String args[]) {
Car c1 = new Car();
c1.color = "blue";
c1.showcolor();
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d48bf700f69c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1222", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00214', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '程式語言 C可使用不同資料型別的變數存取資料與傳遞函式的參數。
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void myFunction(int *a, int b, int *c, char *d){
c[1] = *a + b;
d[*c] = d[2];
b = 17;
int *r = c + 1;
c = a;
*c = *a + 1;
printf("during:%s %d %d %d %d\n", &d[1], *a, b, *c, *r);
}
int main(){
char animal[7] = "cat";
int x = strlen(animal);
int z[3] = {1, 3, 5};
int * y =(int *)malloc(sizeof(int)*3);
int *p = &x;
int *q = &z[1];
q[1] = *p + 10;
printf("before:%s %d %d %d %d\n", animal, *z, z[1], z[2], x);
myFunction(p, x, q, animal);
printf("after:%s %d %d %d %d\n", animal, z[0], z[1], z[2], x);
return 0;
}
請說明上述程式執行的結果。（15 分）
請說明比較 C 程式宣告一個陣列時，如上述程式變數 y、z，使用一般
陣列變數與指標變數的異同。（5分）
請說明比較C程式語言中，函式參數傳遞方法，傳值呼叫（callbyvalue）
與傳址呼叫（callbyaddress）異同。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d48bf700f69c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1222", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00215', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '現有一個循序程式（sequentialprogram）於單一處理器執行時，需時120秒，其中，有20秒的執行是無法 平行化的（無法從多處理器平行執行時得到好處）。若將此程式平行化後，於10個處理器上執行時，最高 可以得到多少倍的加速（speedup）？', '["4", "6", "7.5", "10"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00216', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '對於計算機設計而言，使用多處理器系統（multiprocessorsystem）相對於單處理器的主要優點中，不包含 下列何者？', '["執行程式的吞吐量的提升（increasedthroughput）", "相對於同樣工作處理能力的多台單處理器較具經濟效益（economyofscale）", "可靠度的提升（increasedreliability）", "時脈的提升（increasedclockrate）"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00217', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '不同的計算機系列使用不同的指令集（Instruction Set），目前指令集設計有複雜指令集計算機（Complex InstructionSetComputer,CISC）與精簡指令集計算機（ReducedInstructionSetComputer,RISC）兩個主要趨 勢。針對兩者的比較，一般而言，下列敘述何者正確？', '["RISC的單一指令所能完成的工作較多", "RISC的計算機硬體設計會較複雜", "完成相同的工作CISC所需使用的指令數量較少", "CISC的工作時脈較容易被提高"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00218', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '當程式被載入記憶體執行時，程式碼和資料會存放在下列四個區域：①文字部分（textsegment）  ②靜態', '["動態資料部分（dynamicdatasegment）", "堆疊部分（stacksegment）。 上列那些區域的大小無法在編譯時期決定，會在執行時期由作業系統來管理？", "", ""]'::jsonb, 2, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": ["incomplete_options"], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
