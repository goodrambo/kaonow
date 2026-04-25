-- W1.6 questions batch 6461/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00129', 'locality-0f640084', 'locality-0f640084-moex-111-bd2490ec', 'sub-locality-0f640084-06', NULL, 'essay', '有一個複變函數f z = ，欲對其作曲線積分（contour integration），請
z2+4
回答下列問題：
( )
考慮如下所示的曲線：C ： z =3（即以複數平面原點為中心、半徑為
1
3 的圓），從z=3+0 i（i= 1）逆時針旋轉繞一圈回到原出發點。試問
| |
f z dz=？（5分）
C ⋅ √−
1
考慮如下所示的曲線：C ： z i =2（即以 0+1 i為中心、半徑為2 的
∮ ( ) 2
圓），從z=0+(1)i（i= 1）逆時針旋轉繞一圈回到原出發點。試問
| − | ⋅
f z dz=？（5分）
C √−
2
乙、測驗∮題部分(：)（50分） 代號：7346', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00130', 'locality-0f640084', 'locality-0f640084-moex-111-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '你只能利用基本的三種邏輯閘 AND、OR、NOT，設計出一個 1-bit 的
比較器（comparator）線路，這個比較器有兩個1-bit的輸入a與b，一
個輸出c，當a>b時，輸出c的值為1，否則輸出c的值為0。（10分）
在電腦的數字系統中，假設使用 4-bit 的二補數（2’s complement）方
式來儲存整數，則計算1+7之後的結果是多少？請詳述你的計算過程，
並解釋你的理由。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00131', 'locality-0f640084', 'locality-0f640084-moex-111-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', 'Scheme是一種函式程式語言（functionalprogramminglanguage），其中定
義了一個函式如下：
(define(mystery input-list)
(cond ((null？ input-list) 0)
(else ( + 1 (mystery(cdr input-list))))))
執行下列函式的呼叫，結果為何？（5分）
(mystery (list 4 5 6))
解釋這個 mystery函式，在計算什麼？（5 分）
用Scheme語法，定義出一個函式factorial n，這個函式要算出n!。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00132', 'locality-0f640084', 'locality-0f640084-moex-111-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '電腦的作業系統使用虛擬記憶體來管理記憶體，假設每個分頁（page）
大小為 4KB，總共有邏輯位址（logicaladdress）空間共 256 分頁，而
此電腦的實體記憶體總共只有 64框（frame）。則此電腦的邏輯位址、
實體位址（physicaladdress）分別是多少 bits？（10 分）
假設使用只有三個分頁框（frame）的需求分頁法（demandpaging）機
制，且使用LRU（LeastRecentlyUsed）取代演算法，則下列分頁參考
（page reference）的順序7, 2, 3, 1, 2, 5, 3, 4, 6, 7, 7, 1, 0, 5, 4, 6, 2, 3, 0, 1
會導致多少次的分頁錯誤（pagefault），詳述說明整個過程。假設一開
始的分頁表（pagetable）內容是空的。（10分）
34750', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00133', 'locality-0f640084', 'locality-0f640084-moex-111-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '一個無階級（classless）IP位址為 167.188.170.83/27，它所屬的子網域
（subnet）範圍為多少？（10分）
在一個區域網路內，多個使用者共用同一個通道（channel），使用下列
那些媒介存取控制（Medium Access Control）協定，會讓當使用者站
台數目很多時，因為通道碰撞（collision）嚴重，而使得系統的吞吐量
驟降，甚至癱瘓掉？解釋原因。（10 分）
⑴ALOHA
⑵CSMA/CD
⑶CSMA/CA
⑷TDMA', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00134', 'locality-0f640084', 'locality-0f640084-moex-111-d87dd49a', 'sub-locality-0f640084-01', NULL, 'essay', '下列式子是用後序（postfix）表示式，計算出它的答案。（5 分）
2 3 4 + * 5 +
假設一個二元樹的走訪（binarytreetraversal），用後序走訪（postorder）
得到的是 HGDBFECA，用中序走訪（inorder）的結果是 HDGBACFE，
畫出這個二元樹。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00135', 'locality-0f640084', 'locality-0f640084-moex-111-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '五個匯流排系統網路架構如圖一所示，系統上各元件之資料列於表一，
表中各相序阻抗標么值之原基準值為該元件之額定電壓與額定容量值。
設在匯流排 2 以100MVA，230kV為系統的基準值，各發電機的中性線
接地電抗標么值係以各發電機的額定容量作為基準值，試將系統上各元
件轉換到同一基準值下，並繪出系統正相序、負相序與零相序等效標么
值網路圖（須標示各元件之標么值）。（25分）
發電機1 發電機2
T1 1 2 T2
4 輸電線TL12 5
G1 G2
中性線 中性線
接地電抗 接地電抗
j0.03(pu.) 輸電線TL13 輸電線TL23 j0.03(pu.)
3
圖一、五個匯流排系統網路架構
表一、系統元件參數
額定容量 額定電壓 正相序阻抗 負相序阻抗 零相序阻抗
系統元件
(MVA) (kV) X (pu.) X (pu.) X (pu.)
1 2 0
G1 100 25 0.2 0.2 0.05
G2 100 13.8 0.2 0.2 0.05
T1 150 25/230 0.05 0.05 0.05
T2 120 13.8/230 0.05 0.05 0.05
TL12 100 230 0.1 0.1 0.3
TL13 80 230 0.1 0.1 0.3
TL23 80 230 0.1 0.1 0.3
註：各相序阻抗之基準值為該設備之額定電壓與額定容量值。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "e01e2582ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00136', 'locality-0f640084', 'locality-0f640084-moex-111-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '三相平衡電力以不等間距形式排列之輸電線路傳輸，如圖二（a）所示，
若相電壓分別為V 、V 、V ，線電壓分別為V 、V 、V ，輸電線之
an bn cn ab bc ca
導體半徑為r（單位公尺），各位置間距分別為D 、D 、D （單位公尺）。
12 23 13
輸電線路經過如圖二（b）之導體換位（Transposition）後，試推求出
線電壓與各相導體電荷量之關係式後，再推導出各相之線對地電容，
並寫出線路之 GMD（Geometric mean distance）。（註：假設任一時刻
各位置導體上電荷量之總和為零）（20分）
若各導體位置為等間距排列時，相電壓與單相電容之表示式又為何？
（5 分）
位置3
D
13
位置1
D
23
D
12
位置2
圖二（a）、不等間距形式排列之輸電線路
A相 C相 B相
位置1
B相 A相 C相
位置2
C相 B相 A相
位置3
<StageI> <StageII> <StageIII>
圖二（b）、導體換位示意圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "e01e2582ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00137', 'locality-0f640084', 'locality-0f640084-moex-111-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '圖三所示為四個匯流排電力系統，並考慮以 100MVA為系統基準值。試
回答下列問題：
請求出系統導納矩陣（YMatrix），以及Bus2與Bus3的實功率方程式。
（13 分）
變壓器的模型如下（a為變壓器匝數比）：
 −
  

（功率方程式請展開並 將 =已知−電壓與導納 值代入，但匯流排角度以、
   2
 

、 等表示即可） 
3 4
若以牛頓拉夫森（Newton-Raphson）法求解電力潮流問題，系統匯流
排預設資料如表二所示，請寫出執行疊代時所需之亞可比矩陣
（Jacobian matrix）（以偏微分項表示即可，無須計算實際數值）、電壓
與角度誤差向量以及實功率與虛功率誤差向量。（12 分）
提示：
∆  
∆
  =    PVBus
Slac∆kBus  
1 ∆ 1.25:1
X =j0.05(pu.) 3 2
13
G1 G2
X =j0.16(pu.)
tr
X =j0.025(pu.) X =j0.025(pu.)
14 34
4
PQBus
圖三、四個匯流排電力系統
表二、系統匯流排預設資料
Bus編號 Bus屬性 預設電壓(pu.) 預設相角(度)
1 Slack 1.0 0
2 PV 1.0 0
3 PQ 1.0 0
4 PQ 1.0 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "e01e2582ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00138', 'locality-0f640084', 'locality-0f640084-moex-111-44c05cdd', 'sub-locality-0f640084-02', NULL, 'essay', '圖四為發電機經由變壓器、輸電線路與台電系統併聯發電之系統單線
圖，當一個暫時性的三相故障發生在輸電線 T2 接近 Bus3 處，假設故障
被清除後，輸電線路結構未變動。
試參考圖五並利用搖擺方程式（swingequation）、功率角方程式（power
angleequation）與等面積法則（equal-areacriterion）推導出使系統穩定
之臨界清除角（criticalclearingangle）與臨界清除時間（criticalclearing
time）。（12 分）
（圖五中 為系統初始穩定運轉點角度，為臨界清除角度， 為系
0 c max
統最大運轉點角度，P 為電磁功率，P 為渦輪機的機械功率，且
e m
P =P sinδ。）
e max
系統頻率為 60Hz，發電機 G1之慣量常數 H為5MJ/MVA，若發電機
供給實功率 0.8pu.與虛功率0.074pu.至台電系統無限匯流排（Bus1，
電壓 1.0 pu.，角度 0 度）上，試求臨界清除角和臨界故障清除時間。
（13 分）
發電機 3 2
輸電線T1
Tr.2 Tr.1 台電系統
4
1
G1 ∞
輸電線T2
三相故障
圖四、四個匯流排系統網路架構
P
e
圖五、功率角方程式曲線與等面積法則示意圖', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "e01e2582ea8c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2409", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電力系統", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
