-- W1.6 questions batch 8262/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-39f5e973-moex-00099', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '根據以下C程式碼，回答下列問題：
1 #include<stdio.h>
2 voidg(int*x,int*y){
3 *x=*y-1;
4 *y=*y-2;
5 printf("*x=%d,*y=%d\n",*x,*y);
6 }
7
8 voidf(int*z,int*w){
9 intn=13;
10 g(w,&n);
11 printf("*z=%d,*w=%d,n=%d\n",*z,*w,n);
12 }
13
14 intmain(){
15 inti=21;
16 intj=5;
17 intn=137;
18 f(&i,&j);
19 printf("print1:i=%d,j=%d,n=%d\n",i,j,n);
20 g(&n,&n);
21 printf("print2:i=%d,j=%d,n=%d\n",i,j,n);
22 return0;
23 }
請說明程式碼第8行至第12行中，每一行之運算子符號「*」及「&」操
作所代表的意義。（10分）
請問該程式碼執行後輸出的結果為何？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "48597971789f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00100', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '根據以下C程式碼，回答下列問題：
1 #include<stdio.h>
2 intf(inta,intb){
3 if(b==1)returna;
4 else{
5 intvalue=a+f(a,b-1);
6 returnvalue;
7 }
8 }
9 intmain(){
10 printf("%d\n",f(5,3));
11 printf("%d\n",f(0,0));
12 }
請問那一行是此遞迴程式的中止條件？（5分）
請說明第10行的輸出，以及其運作邏輯。（6分）
請說明第11行的輸出，以及其運作邏輯。（7分）
請說明函式f的主要功能，包含輸入參數與輸出結果的關係。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "48597971789f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00101', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '關於搜尋法程式：
說明循序（Sequential）搜尋法，以及二元（Binary）搜尋法的優缺點。
（8分）
以下二元搜尋程式碼有部分錯誤，若要修正為正確程式，請說明「最少」
需修改程式碼行數、原因與修改方法。（17分）
01 publicclassBinarySearch{
02 publicintfaultyBinarySearch(int[]arr,intx){
03 intl=0,r=arr.length-1;
04 intm=(l+r)/2;
05 while(l<=r){
06 m=(l+r)/2;
07 if(arr[m]==x)returnm;
08 if(arr[m]>x)l=m+1;
09 if(arr[m]<x)r=m-1;
10 }
11 return-1;
12 }
13 }', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "48597971789f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00102', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-afc5d52f', 'sub-pukao-39f5e973-01', NULL, 'essay', '請依據以下Java程式碼回答下列問題：
01 importjava.util.Scanner;
02 publicclassMyJavaCode{
03 publicstaticvoidmain(String[]args){
04 Scannerin=newScanner(System.in);
05 inta=in.nextInt();
06 Animaldog=newDog();
07 dog.run(a);
08 dog.run();
09 }
10 }
11
12 classDogextendsAnimal{
13 publicvoidrun(intunits){
14 System.out.println("Dog''srunningspeedis"+units);
15 }
16 publicvoidrun(){
17 System.out.println("Dog''sdefaultrunningspeedis20");
18 }
19 }
請說明Java中class、abstractclass與interface之間的主要差異？（10分）
請說明上述程式碼那幾行會產生編譯錯誤，以及錯誤的原因。（5分）
不改變原1-19行程式碼順序的條件下，請修正問題之編譯問題，使之
可以正常執行。修正不包含左右大括號「{}」，新增或修改之指令行數
不可以超過3行。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:50+00:00", "source_pdf_sha1": "48597971789f", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2907", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00103', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '一個4GHz的中央處理器，最快需要多少時間可執行一個指令？', '["25ns", "12.5ns", "1.25ns", "0.25ns"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "9551f64e32ac", "answer_pdf_sha1": "87291f70552b", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2911", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00104', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '有關標準杜林機中，不包含下列何元件？', '["唯讀磁帶", "可讀寫磁頭", "有限狀態控制機", "可讀寫磁帶"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "9551f64e32ac", "answer_pdf_sha1": "87291f70552b", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2911", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00105', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '下列那一種定址模式其運算元，即為指令中所含的一個常數？', '["立即定址法（immediateaddressing）", "暫存器定址法（registeraddressing）", "基底或位移定址法（baseordisplacementaddressing）", "PC相對定址法（PC-relativeaddressing）"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "9551f64e32ac", "answer_pdf_sha1": "87291f70552b", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2911", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00106', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '下列何者不是一般作業系統的主要功能？', '["編譯程式語言", "提供使用者操作介面", "調配程序使用各種電腦資源", "檔案管理"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "9551f64e32ac", "answer_pdf_sha1": "87291f70552b", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2911", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00107', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '一個演算法具有較低的複雜度（algorithmcomplexity），下列何者必然成立？', '["在不同運算環境中都具有較佳效率", "問題規模趨近無限大時，比其他較高複雜度演算法所需步驟數目較少", "可以解決NP-hard的問題", "可以提供最佳結果（optimizedsolution）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "9551f64e32ac", "answer_pdf_sha1": "87291f70552b", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2911", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 5, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00108', 'pukao-39f5e973', 'pukao-39f5e973-moex-112-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '固態硬碟（SSD）的儲存媒介早期主要是單階單元（Single-LevelCell,SLC）反及閘快閃記憶體，近年來則 逐漸被多階單元（Multi-LevelCell,MLC）反及閘快閃記憶體所取代，相較於單階單元反及閘快閃記憶體， 關於多階單元反及閘快閃記憶體的敘述，下列何者錯誤？', '["每個單元（cell）的儲存密度越來越高", "區塊能容忍的抹除次數越來越低", "儲存每位元的成本越來越便宜", "設計目的追求的是存取速度而非單位面積的儲存容量"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:51+00:00", "source_pdf_sha1": "9551f64e32ac", "answer_pdf_sha1": "87291f70552b", "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "446", "s": "2911", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": 6, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
