-- W1.6 questions batch 6460/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-0f640084-moex-00119', 'locality-0f640084', 'locality-0f640084-moex-112-bdd26e86', 'sub-locality-0f640084-04', NULL, 'essay', '一部三相、1,000kVA、3.3kV、4 極、60Hz、Y接線圓柱式轉子（round
rotor）同步電動機的每相同步電抗為5，電樞電阻忽略不計。此電動機
以額定電壓、額定容量、功率因數（powerfactor）為 0.95領前（leading）
運轉，所有損失均不計。（每小題 10 分，共20分）
繪出同步電動機的單相等效電路，計算電樞感應電壓(E )與功率角
A
()。
計算此電動機輸出轉矩多少 kg-m。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "3755d34ab609", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00120', 'locality-0f640084', 'locality-0f640084-moex-112-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '考慮下圖運算放大器電路：當輸入電壓 V 等於零時，輸出電壓 V 與輸
2 out
入電壓 V 的關係式為何？（10分）當 V 等於零時，輸出 V 與 V 的關
1 1 out 2
係式為何？（10 分）當兩輸入 V 及 V 皆不為零，求輸出 V 與兩輸入
1 2 out
的關係式。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00121', 'locality-0f640084', 'locality-0f640084-moex-112-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '下圖 RLC 電路的初始電壓電流皆為零，在時間零時瞬間給 1 伏特的輸
入(u(t)0, t 0; u(t)1, t 0)，求輸出 V(t)。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00122', 'locality-0f640084', 'locality-0f640084-moex-112-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '下圖 Y 接平衡負載接上一個平衡三相正相序電源後，量測 A 對 B 的電
壓 差 得 V (t)10cos(250t) ， 量 測 A 線 流 過 的 電 流 得
AB
I (t)cos(250t/6)，請估算 L及 R。（10分）並計算負載消耗的
AN
平均功率。（10分）
34540', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00123', 'locality-0f640084', 'locality-0f640084-moex-112-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '分析下圖放大器電路：此電路屬於何種濾波器（低通、高通、帶通、帶
止）？（5 分）若輸入 10伏特直流，計算穩態時的輸出電壓。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00124', 'locality-0f640084', 'locality-0f640084-moex-112-61c8fe92', 'sub-locality-0f640084-05', NULL, 'essay', '分析下圖耦合電感電路：計算圖中交流電源所看到的等效阻抗Z。（10分）
並選取電容值 C使負載R 可以獲得最大平均功率。（10 分）
L', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "b92a9061516a", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112200", "c": "344", "s": "2604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電路學", "year": "112", "exam_name": "112年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00125', 'locality-0f640084', 'locality-0f640084-moex-111-bd2490ec', 'sub-locality-0f640084-06', NULL, 'essay', '考慮一個雙變數函數如下所示：f x,y = x +2y e 。令P 代表x  y
0
平面上的點(1,1)（即P =(1,1)）。 (
0
( )  ⋅
請計算f x,y 在P 的梯度（gradient）為何？（5分）
0
請計算f x,y 在P 的上面沿著(1,0)的方向之方向導數（directional
0
( )
derivative）為何？（5分）
( )', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00126', 'locality-0f640084', 'locality-0f640084-moex-111-bd2490ec', 'sub-locality-0f640084-06', NULL, 'essay', '有一個微分方程式如下所示（僅考慮x>0）：
dy 3
+ ．y=x , for x>0
dx x
此外，初始條件如下所示：y 1 =3。
此為一階線性微分方程（first-orderlineardifferentialequation），可以使
( )
用積分因子（integratingfactor）求解。試求微分方程之積分因子。（5分）
請求解 y(x)。（5 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00127', 'locality-0f640084', 'locality-0f640084-moex-111-bd2490ec', 'sub-locality-0f640084-06', NULL, 'essay', '有一個3×3的矩陣如下所示：
0 0 2
A= 1 2 1
1 0 −3
已知此矩陣的特徵值（eigen-value）為 2、2（重根）、1。
請寫出A矩陣的所有特徵向量（eigen-vector）的一般形式。（5分）
令B=A8。請寫出 矩陣的所有特徵向量的一般形式。（5 分）
B
34770', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL),
  ('locality-0f640084-moex-00128', 'locality-0f640084', 'locality-0f640084-moex-111-bd2490ec', 'sub-locality-0f640084-06', NULL, 'essay', '有一個半徑為 1的圓形標靶，對著它亂射飛鏢，完全不瞄準，所以彈著
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
( 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:19+00:00", "source_pdf_sha1": "11c8ad23b459", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "346", "s": "2413", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "工程數學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "電力工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
