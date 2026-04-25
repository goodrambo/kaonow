-- W1.6 questions batch 6992/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-acfc4025-moex-00131', 'locality-acfc4025', 'locality-acfc4025-moex-111-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '有一個半徑為 1的圓形標靶，對著它亂射飛鏢，完全不瞄準，所以彈著
點（亦即飛鏢在標靶上的落點）會是在某一個區域的機率大小，與標靶
上的位置無關，只與該區域的面積大小成正比。若只考慮有射中標靶的
飛鏢，直接忽略沒有射中標靶的飛鏢。令 X代表彈著點到靶心（亦即標
靶的正中心）的距離，是一個隨機變數（randomvariable），並定義另外
一個隨機變數：Y X2，試問：
令f x)代表 X 的機率密度函數（probability density function），則
X
≜
f (x)=？（5分）
X
(
令f x)代表 Y的機率密度函數，則f (x)=？（5分）
Y Y
( 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00132', 'locality-acfc4025', 'locality-acfc4025-moex-111-bd2490ec', 'sub-locality-acfc4025-06', NULL, 'essay', '有一個複變函數f z = ，欲對其作曲線積分（contour integration），請
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
乙、測驗∮題部分(：)（50分） 代號：7346', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00133', 'locality-acfc4025', 'locality-acfc4025-moex-111-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '你只能利用基本的三種邏輯閘 AND、OR、NOT，設計出一個 1-bit 的
比較器（comparator）線路，這個比較器有兩個1-bit的輸入a與b，一
個輸出c，當a>b時，輸出c的值為1，否則輸出c的值為0。（10分）
在電腦的數字系統中，假設使用 4-bit 的二補數（2’s complement）方
式來儲存整數，則計算1+7之後的結果是多少？請詳述你的計算過程，
並解釋你的理由。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00134', 'locality-acfc4025', 'locality-acfc4025-moex-111-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', 'Scheme是一種函式程式語言（functionalprogramminglanguage），其中定
義了一個函式如下：
(define(mystery input-list)
(cond ((null？ input-list) 0)
(else ( + 1 (mystery(cdr input-list))))))
執行下列函式的呼叫，結果為何？（5分）
(mystery (list 4 5 6))
解釋這個 mystery函式，在計算什麼？（5 分）
用Scheme語法，定義出一個函式factorial n，這個函式要算出n!。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00135', 'locality-acfc4025', 'locality-acfc4025-moex-111-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '電腦的作業系統使用虛擬記憶體來管理記憶體，假設每個分頁（page）
大小為 4KB，總共有邏輯位址（logicaladdress）空間共 256 分頁，而
此電腦的實體記憶體總共只有 64框（frame）。則此電腦的邏輯位址、
實體位址（physicaladdress）分別是多少 bits？（10 分）
假設使用只有三個分頁框（frame）的需求分頁法（demandpaging）機
制，且使用LRU（LeastRecentlyUsed）取代演算法，則下列分頁參考
（page reference）的順序7, 2, 3, 1, 2, 5, 3, 4, 6, 7, 7, 1, 0, 5, 4, 6, 2, 3, 0, 1
會導致多少次的分頁錯誤（pagefault），詳述說明整個過程。假設一開
始的分頁表（pagetable）內容是空的。（10分）
34750', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00136', 'locality-acfc4025', 'locality-acfc4025-moex-111-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '一個無階級（classless）IP位址為 167.188.170.83/27，它所屬的子網域
（subnet）範圍為多少？（10分）
在一個區域網路內，多個使用者共用同一個通道（channel），使用下列
那些媒介存取控制（Medium Access Control）協定，會讓當使用者站
台數目很多時，因為通道碰撞（collision）嚴重，而使得系統的吞吐量
驟降，甚至癱瘓掉？解釋原因。（10 分）
⑴ALOHA
⑵CSMA/CD
⑶CSMA/CA
⑷TDMA', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00137', 'locality-acfc4025', 'locality-acfc4025-moex-111-d87dd49a', 'sub-locality-acfc4025-02', NULL, 'essay', '下列式子是用後序（postfix）表示式，計算出它的答案。（5 分）
2 3 4 + * 5 +
假設一個二元樹的走訪（binarytreetraversal），用後序走訪（postorder）
得到的是 HGDBFECA，用中序走訪（inorder）的結果是 HDGBACFE，
畫出這個二元樹。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "4e043fd81b75", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2511", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00138', 'locality-acfc4025', 'locality-acfc4025-moex-111-394901ca', 'sub-locality-acfc4025-04', NULL, 'essay', '一球形電容器由兩同球心之金屬球面所組成，這兩金屬球之半徑分別為
a 及 b， ，外金屬球接地，而內金屬球之電位為 ， 為常數。試
求在這兩金屬球面空間中之電位分布。（25 分）
a < b V V', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "1deb3075e9fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00139', 'locality-acfc4025', 'locality-acfc4025-moex-111-394901ca', 'sub-locality-acfc4025-04', NULL, 'essay', '有關介電材料（dielectric）中的靜電場，試寫出並申論在線性（linear）
且無方向性（isotropic）的介電材料中電場強度 （electricfieldintensity）
與電通量密度 （electricflux density）之關係式。（10分）
E⃗
D⃗', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "1deb3075e9fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL),
  ('locality-acfc4025-moex-00140', 'locality-acfc4025', 'locality-acfc4025-moex-111-394901ca', 'sub-locality-acfc4025-04', NULL, 'essay', '如下圖之靜磁迴路中，該環狀鐵心（ferromagnetictoroidcore）有 N匝線
圈，該鐵心之 permeability 為 ，該環平均半徑為 ，具圓形剖面，半徑
為 a，而 a ，及一窄小的 airgap 。今有一穩態電流（steadycurrent）
μ 
流入該線圈， 為一常數。
<<  ℓ
推導在環狀鐵心中的磁通密度（magnetic flux density） 及磁場強度
 
（magneticfield intensity） 。（12分）
B⃗
推導在airgap中的磁場強度 。（9分）
H⃗
證明在airgap的磁場強度遠大於在環狀鐵心內的磁場強度，如 。
H⃗
（4分）
μ >> μ
（註：忽略 airgap 的邊緣磁場（fringefield））
r0
I I
ℓ 0 0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:43+00:00", "source_pdf_sha1": "1deb3075e9fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "347", "s": "2405", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電磁學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
