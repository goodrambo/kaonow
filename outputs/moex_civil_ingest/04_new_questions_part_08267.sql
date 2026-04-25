-- W1.6 questions batch 8267/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-39f5e973-moex-00149', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '請在手搖飲料產業中選擇一家手搖飲料企業，進行波特（Porter）競爭五
力分析。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "e937eee5588d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00150', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '請闡述企業如何運用雲端技術？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "e937eee5588d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00151', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '請回答下列各機關根據資通安全管理法施行細則委外辦理資通系統之相
關問題：
請舉出受託者環境、人員與複委託相關要求的條文。（12分）
請舉出客製化資通系統開發、受託者/委託機關知悉資通安全事件與委
託關係終止相關要求的條文。（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "e937eee5588d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00152', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-7b0b0583', 'sub-pukao-39f5e973-05', NULL, 'essay', '請回答下列網路安全的相關問題：（每小題15分，共30分）
請說明變臉詐騙與常見手法。
請說明深偽技術（Deepfake）與核身（核對身分）注意事項。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "e937eee5588d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2904", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00153', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '以下是完整的 C#程式碼，請回答以下各小題執行的結果為何？
（每小題 10分，共 20 分）
internalclassProgram{
static voidMain(string[]args){
floatp=5.5f;
int r=calc_square(p);
Console.WriteLine(String.Format("Result:{0}", r));
}
static intcalc_square(float param){
intresult =(int)(param*param);
returnresult;
}
}
staticvoidMain(string[]args){
floatrate=2.5f;
floatamount=10f;
computing(rate,refamount);
Console.WriteLine(
String.Format("Rate: {0},Amount:{1}",rate,amount));
}
staticvoidcomputing(floatrate, reffloat amt){
rate*=10;
amt*=rate;
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "f255ae3c3d2d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2623", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00154', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '目前以瀏覽器為主的應用程式大多以 JavaScript 進行前端程式的設計，
請閱讀以下各小題程式碼，並回答問題。（每小題 10 分，共20分）
使用 jquery套件的 JavaScript，請回答每一列程式碼的意義。
1 let iconList =[];
2
3 for(const extIdoffs.ls("/extension")){
4 letextension=fs.read(`/extension/${extId}/extension.js`);
5 ext =eval(extension);
6 iconList.push(fs.read(`/extension/${extId}/${ext.icon}`));
7 }
8
9 for(const[index, element]of Object.entries($("span.treeIcon"))){
10 if(typeof element ==="object"){
11 $(element).append(`<imgsrc="${iconList[index]}" >`);
12 }
13 }
以下程式碼請依執行先後說明執行的結果。
1 <buttononclick="dialog()">Confirm</button>
2 <pid="result"></p>
3 <script>
4 window.addEventListener(''load'',function(){
5 alert(''Hello!'');
6 })
7
8 functiondialog(){
9 varmessage;
10 if(confirm("Pressabutton!")){
11 message="YoupressedOK!";
12 }else{
13 message="YoupressedCancel!";
14 }
15 document.getElementById("result").innerHTML=message;
16 }
17 </script>', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "f255ae3c3d2d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2623", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00155', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '請使用 C, C++, C#, Java或 Python 程式語言撰寫一支完整的程式將班級
學生的百分制成績轉換為等第制成績，轉換的規則如下：（20分）
百分制成績 等第制成績
成績≥（平均數+2個標準差） A
（平均數+1個標準差）≤成績<（平均數+2個標準差） B
平均數≤成績<（平均數+1個標準差） C
（平均數–1個標準差）≤成績<平均數 D
（平均數–2個標準差）≤成績<（平均數–1個標準差） E
成績<（平均數–2個標準差） F
程式執行需讓使用者輸入班級所有學生的百分制成績，成績以空白格隔
開，程式再將班級的平均成績、變異數與標準差、每位學生的編號、百
分制成績與等第制成績列印出。程式可使用所採用之程式語言的統計函
數、模組或套件來求算平均成績、變異數與標準差，以下為程式執行之
參考範例。（備註：斜體加外框線之整數為使用者所輸入，其餘皆為程式
執行的輸出。）
請輸入班級修課學生的百分制成績（以空白格隔開）：1009080706050
40 30 20 10
班級平均成績=55
班級變異數成績=825
班級標準差成績=28.72
第 1 位學生的百分制成績=100, 等第制成績=B
第 2 位學生的百分制成績=90, 等第制成績=B
第 3 位學生的百分制成績=80, 等第制成績=C
第 4 位學生的百分制成績=70, 等第制成績=C
第 5 位學生的百分制成績=60, 等第制成績=C
第 6 位學生的百分制成績=50, 等第制成績=D
第 7 位學生的百分制成績=40, 等第制成績=D
第 8 位學生的百分制成績=30, 等第制成績=D
第 9 位學生的百分制成績=20, 等第制成績=E
第 10 位學生的百分制成績=10, 等第制成績=E', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "f255ae3c3d2d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2623", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00156', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '問卷常被使用來進行服務滿意度調查，以下數據是某單位資訊中心新系
統使用的滿意度調查結果，數值為人次。請以 Python 程式製作一張圓餅
圖，圖上須顯示出百分比及標籤。（20分）
非常滿意 ：65
滿意 ：97
普通 ：103
不滿意 ：45
非常不滿意 ：51', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "f255ae3c3d2d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2623", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00157', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '以下二小題是完整的物件導向程式碼，請回答以下各小題。
（每小題 10分，共 20 分）
以下為 Python完整程式碼，請回答執行的結果為何？
class Employee:
all = []
def__init__(self,idno,first_name,last_name):
self.id=idno
self.first_name=first_name
self.last_name=last_name
Employee.all.append(self)
def__repr__(self):
returnf"(ID={self.id},Name={self.first_name}{self.last_name})"
if __name__=="__main__":
e1=Employee(''001'', ''Peter'',''Lee'')
e2=Employee(''002'', ''Ann'', ''Lo'')
print(Employee.all)
以下為 C#的類別程式碼，類別Employee內的欄位不可以由非繼承的
類別讀取或寫入，請檢視此程式是否可以正確執行？若無法正確執行
的話，請寫出正確的程式碼。
publicabstractclassEmployee{
privatestringid;
privatestringname;
privateint age;
publicEmployee(){
}
}
publicclassStaff:Employee{
publicStaff(string_id,string_name,int _age){
this.id=_id;
this.name=_name;
this.age=_age;
}
}', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "f255ae3c3d2d", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2623", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00158', 'pukao-39f5e973', 'pukao-39f5e973-moex-111-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '對下列不同的微處理器架構，那一項不是採用平行運算的技術？', '["動態管道排程（dynamicpipelinescheduling）", "SIMD（SingleInstructionstream,MultipleDatastreamsarchitecture）架構", "向量架構（vectorarchitecture）", "純量架構（scalararchitecture）"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "d0cd7ea1e12f", "answer_pdf_sha1": "690af196782e", "source_family": "moex-gov-tw", "moex": {"exam_code": "111090", "c": "446", "s": "2616", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "111", "exam_name": "111年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
