-- W1.6 questions batch 6590/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-4ece01bd-moex-00071', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '如圖三所示兩根簡支梁（AB 及 CD）上面有一塊均質板（尺寸
5m25m），該板上有兩道均布載重（方向為 Z向），EF線上均布載重
大小為 4 kN/m，GH線上均布載重大小為20 kN/m。假設板重量可以忽
略不計且與簡支梁之接合只能傳遞力量不能傳遞彎矩，若希望受力後整
個板與梁所構成之斷面不要扭轉（對 X軸），假設左梁與右梁材料相同，
斷面都為矩形，梁寬皆為90 cm，梁深各為 h 、h ，已知h = 120 cm，
L R L
試求 h 。（25分）
R
A Q 右梁 B
E F
5m X
G H
C Q 左梁 D
20kN/m
Y
25m
4kN/m
俯視圖
2m 2m 1m
h 板 h
L R
5m
左梁 右梁
25m
作用於EF、GH的垂直(Z向)均布載重
Q-Q斷面剖面圖(放大示意圖)
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "bb323206a129", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00072', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-7d633e06', 'sub-locality-4ece01bd-04', NULL, 'essay', '如圖四所示構架，各桿件之 EI及 L（長度）都相同，集中力係垂直作用
於桿件中點。若L= 10 m，試以傾角變位法求取各桿件之桿端彎矩，假
設桿端彎矩採順時針為正。（以其他方法作答者一律不予以計分）（25 分）
30kN-m 30kN-m
A
D
24kN 24kN
EI,L EI,L
EI,L
B C
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "bb323206a129", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2008", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00073', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '有一耐震設計的鋼筋混凝土梁，設計的混凝土規定抗壓強度
f 280kgf/cm2，設計的撓曲鋼筋為 SD420鋼筋。（25分）
c
㉑於混凝土灌漿時製作三顆標準圓柱試體。三顆圓柱試體進行抗壓試驗
可得到抗壓強度。為符合設計的規定抗壓強度，請說明試驗所得抗壓
強度的評量基準為何？
㉒撓曲鋼筋應符合 CNS 560 規定的 SD420W 之要求，惟 CNS 560 規定
的 SD420 鋼筋亦可使用。SD420鋼筋拉力試片進行的抗拉試驗可得實
測降伏強度與實測抗拉強度。為使用 SD420 鋼筋，請說明 SD420 鋼
筋實測降伏強度與實測抗拉強度應符合那些規定？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "d1696b5ec7c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00074', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '有一鋼筋混凝土小梁，矩形梁斷面寬度b25cm，有效深度d34.3cm。
梁承受彎矩，故設計三支 D16 拉力鋼筋，設計的鋼筋降伏強度
f 4200kgf/cm2。一支 D16拉力鋼筋截面積A 1.99cm2。惟於施工時
y b
誤用一支降伏強度f 2800kgf/cm2的鋼筋，如圖所示。混凝土抗壓強度
y
f 280kgf/cm2。試計算誤用鋼筋後梁斷面的設計彎矩強度 ϕM 為何？
c n
（25 分）
25cm
m
c
3
.4
3 D16f =4200kgf/cm2
y
D16f =2800kgf/cm2
y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "d1696b5ec7c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00075', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '圖示為鋼筋混凝土單獨 T 型梁的斷面。梁配置雙層排列的五支D25 拉力鋼
筋。梁斷面將承受設計剪力V 30tf，配置D13閉合矩形剪力鋼筋，剪力
u
鋼筋之淨保護層為 4 cm。混凝土抗壓強度f 280kgf/cm2，剪力鋼筋降伏
c
強度f 2800kgf/cm2。試計算剪力鋼筋配置的最大間距為何？（25分）
yt
D13 鋼筋之直徑d 1.27cm，截面積A 1.27cm2。
b b
D25 鋼筋之直徑d 2.54cm，截面積A 5.07cm2。
b b
45cm
m
c
5
1
m
c
0
7
m
c
5
.2
30cm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "d1696b5ec7c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00076', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-211c5ff6', 'sub-locality-4ece01bd-05', NULL, 'essay', '有一鋼筋混凝土簡支梁，跨度 6 m。梁斷面為中空斷面如圖所示，中空
斷面尺寸為25cm50cm，有效深度d 73.3cm。簡支梁全跨承受均佈
工作靜載重w 2.7tf/m（含自重）與活載重w 3.0tf/m。梁全跨度皆
D L
配置四支 D29 拉力鋼筋，鋼筋降伏強度f 4200kgf/cm2。混凝土抗壓
y
強度f 280kgf/cm2。一支 D29鋼筋之截面積為6.47 cm2。試計算梁承
c
受所有工作載重時跨度中點的瞬時撓度。（25分）
m
c
5
1
m
c
m 3
c 25cm .3
0 7
5
m
c
5
1 50cm
5wL4
參考公式：承載均佈載重之簡支梁，其跨度中點之撓度為 。
384EI
E 2,040tf/cm2 E 15,000 f f 2.0 f
s c c r c
I M M
M  f g I ( cr)3I [１( cr)3]I
cr r y e M g M cr
t a a', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:39+00:00", "source_pdf_sha1": "d1696b5ec7c5", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2010", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土學與設計", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00077', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '如圖一所示，桿件 AC 與 BC 在 A 點與 B 點均以插銷（pin）連結於支
承上。CAB = CBA = 60。在節點C上受到水平力P作用（P＞0）。
桿件 AC 彈性係數為 68.9 GPa，拉伸與壓縮的降伏強度為 255 MPa。
桿件 BC 彈性係數為 200 GPa，拉伸與壓縮的降伏強度為 250 MPa。
桿件 AC 與桿件 BC 的截面為 40 mm40 mm 的方形截面，兩桿件的長
度均為 0.1m。本題忽略桿件自重所帶來的影響。注意，以下數據解題可
能需要： 3=1.732，=3.14159。據此，請回答以下問題：
請求出桿件 AC 與 BC所受到的軸力大小（以P表示），並標明其為張
力或是壓力。（12 分）
若桿件受壓時的挫曲狀況之安全因子設為 2，而受軸力的降伏狀況之
安全因子為 1.5，而且不論那根桿件挫曲或降伏，即視為失敗。據此，
請問水平力 P的最大值為多少？（13分）
C
P
A
B
圖一', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "7803b452fe55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00078', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '如圖二所示，有一軸力構件 AB，兩端為固定支承（Fixend）。構件的長
度 L=2 m，構件由 A36 鋼材所製作，其彈性模數為 E=200GPa，構件
的截面為圓形，其半徑為 0.1 m。構件中央處為 C 點。已知在 AC 段，
受到分布軸力 p(x)=x2(kN/m)施加，x=0 處為 A點，x 軸向右為正。圓
周率 π =3.14159。據此，請求出A端與 B端的反力各自為何。（25 分）
截面圖
p(x)
A C B
圖二', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "7803b452fe55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00079', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '如圖三所示，有一機構由一 1/4圓弧曲桿 ABC 還有一直桿 BD所構成。
在曲桿的 A端為鉸支承（以△表示），在 C端為滾支承（以○代表），曲
桿與直桿的聯結在 B 點為插銷，直桿 BD 與水平軸夾角為45。在曲桿
上的 E點受到外力 F=10kN作用，E點受力之力線延伸可以交於 1/4 圓
弧曲桿的圓心處。現在假設在 D點的接觸有靜摩擦係數= 0.25。本題
s
解題可能用到以下數據： 3=1.732, 2=1.4142。請問系統能夠保持靜
力平衡嗎？若是可以，請問在 D點的摩擦力大小最大為多少，A支承反
力多少，C支承反力又為多少？（25分）
F D
A
E B
C
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "7803b452fe55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL),
  ('locality-4ece01bd-moex-00080', 'locality-4ece01bd', 'locality-4ece01bd-moex-111-99639756', 'sub-locality-4ece01bd-09', NULL, 'essay', '如圖四所示，圖中尺寸為 mm。陰影區域為一高度 12mm，寬度為 8mm
的矩形區域，其中挖去一直徑為 4 mm 的半圓形區域，該半圓形區域的
圓心座落在矩形區域的幾何中心處。請求出該陰影區域之幾何中心點之
座標為何？（請以圖中所標示的 X-Y 座標系統表示）。過此幾何中心點
平行 X軸之二次面積矩為何？注意：解題可能需要，圓周率 π =3.14159。
（25 分）
Y
6
6
X
4 4
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:40+00:00", "source_pdf_sha1": "7803b452fe55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111190", "c": "333", "s": "2003", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "靜力學與材料力學", "year": "111", "exam_name": "111年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "土木工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
