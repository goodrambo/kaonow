-- W1.6 questions batch 4705/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-39f5e973-moex-00025', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-9aa8415c', 'sub-heelevel3-39f5e973-02', NULL, 'essay', '堆疊（Stack）與佇列（Queue）是常見的資料結構，請回答下列問題：
利用雙向佇列（Deque）循序輸入 1, 2, 3, 4, 5, 6, 7，請問能否得到
5174236的輸出排列？並說明其過程或理由。（10 分）
若有 1, 2, 3, 4 四個數字要依序 Push 進堆疊，再於任意時間點 Pop 出
堆疊，請列出可能的輸出組合。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "776a0fc8ffe7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2704", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00026', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '系統在部署前或進行重大變更後常會執行弱點掃描，請闡述弱點掃描的
目的、類型、弱點的修補方式及弱點無法修補時的因應措施。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "29e4a65915fe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00027', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '請闡述人工智慧技術在導入時，可能會面臨那些風險和挑戰？並請舉例
說明人工智慧技術如何協助單位進行數位轉型？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "29e4a65915fe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00028', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '資訊系統委外管理一般可分為㉑計畫階段、㉒招標階段、㉓決標階段、
㉔履約管理階段、㉕驗收階段與㉖保固階段，請闡述各階段的工作重點。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "29e4a65915fe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00029', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-aff4a67f', 'sub-heelevel3-39f5e973-03', NULL, 'essay', '營運衝擊分析（Business Impact Analysis），可用來了解當災害發生後的
嚴重程度，以及需要多少時間來處理，請闡述營運衝擊分析的步驟。
（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "29e4a65915fe", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2706", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00030', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '惡意攻擊常態化的網路資訊環境，於資安事件發生時，可快速偵測威脅
並作出應變措施。
何謂端點偵測與回應（Endpoint Detection and Response, EDR），及託
管偵測與回應（ManagedDetectionandResponse,MDR）機制。（10分）
請分別說明EDR及MDR在偵測方面及回應方面有那些活動。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9e78305a1b69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00031', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '防火牆用以保障內部網路避免受攻擊，目前常被應用的有 WAF（Web
ApplicationFirewall）及次世代防火牆（Next-GenerationFirewall,NGFW），
試問：
WAF的防禦機制為何？（10 分）
次世代防火牆的防禦機制為何？（10 分）
當內容傳遞網路 CDN（Content Delivery Network）與 WAF架設在一
起時，其效益為何？（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9e78305a1b69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00032', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '隨著網路興起及資通技術發展，資安風險評估已經是機關資安管理的重
要環節，機關在事前、事中及事後等三階段可導入那些資安控制措施，
才能降低風險，提升資安防護水平。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9e78305a1b69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00033', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-113-35fb3067', 'sub-heelevel3-39f5e973-04', NULL, 'essay', '資通安全責任等級分級辦法中，針對各資通安全責任等級之資通
系統防護基準於營運持續計畫構面包含系統備份及系統備援兩項
措施，請依據系統防護需求分級要求，說明：
系統備份應辦事項。（15 分）
系統備援應辦事項。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "9e78305a1b69", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "374", "s": "2701", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路與安全", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('heelevel3-39f5e973-moex-00034', 'heelevel3-39f5e973', 'heelevel3-39f5e973-moex-112-77467e46', 'sub-heelevel3-39f5e973-05', NULL, 'essay', '關於以下C程式碼：
01 #include<stdio.h>
02 #defineSIZE10
03 #defineTHREE3
04 unsignedintf1(unsignedinta,unsignedintb){return(a&&!b);}
05 unsignedintf2(unsignedinta,unsignedintb){return(a<<b); }
06 unsignedintf3(unsignedinta,unsignedintb){return(a&~b); }
07 intf4(inta,intb){returna*b+a-b; }
08 intf5(inta,intb){
09 intdata[SIZE];
10 for(inti=1,k=0;i<a;i++){
11 if(i%3==0)data[k++]=f4(i,i+1);
12 }
13 returndata[b];
14 }
15 intf6(inta,intb){
16 intdata[][THREE]={{4,3,2},{3,4,2},{2,3,3}};
17 for(inti=0;i<THREE;i++){
18 for(intj=0;j<THREE;j++){
19 if(i>a||j>b)
20 data[i][j]=data[j][i]+b;
21 }
22 }
23 returndata[a][b];
24 }
25 intmain(){
26 printf("%u\n",f1(6,2));
27 printf("%u\n",f2(6,2));
28 printf("%u\n",f3(7,2));
29 printf("%d\n",f4(3,12));
30 printf("%d\n",f5(15,3));
31 printf("%d\n",f5(3,15));
32 printf("%d\n",f6(1,1));
33 printf("%d\n",f6(3,2));
34 return0;
35 }
請說明程式執行後，程式碼編號26~33的輸出，以及其運算邏輯。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:32:13+00:00", "source_pdf_sha1": "13c40fd46333", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112090", "c": "376", "s": "2906", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "程式設計", "year": "112", "exam_name": "112年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
