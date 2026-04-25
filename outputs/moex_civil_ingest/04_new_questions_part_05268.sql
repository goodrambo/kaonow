-- W1.6 questions batch 5268/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('heelevel3-b0f95c3f-moex-00023', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-3064b395', 'sub-heelevel3-b0f95c3f-01', NULL, 'essay', '試說明粉末冶金的生產製造方法，並比較金屬粉末冶金和陶瓷粉末冶金
製程之主要差異。（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "9fef8412208e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2810", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械製造學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00024', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '一直徑 40 mm 的軸件承受 0 到 70 kN 間的變動拉伸負載，此軸因設計
上有倒角，造成之應力集中因子為 1.85，材料之降伏強度 580 MPa，拉
伸強度 690 MPa，修正後之疲勞極限 234 MPa，請計算此軸件第一循環
降伏以及根據 Gerberfatigueline的安全係數。請詳列計算過程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3f6a18e24bd4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00025', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '請說明以螺桿形式做成的千斤頂，在頂起重物時，螺桿各個部位所承受
的應力形式及大小，請繪圖並標示說明。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3f6a18e24bd4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00026', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '某工程師手上有一螺旋壓縮彈簧，其彈簧常數為 400 N/mm，若將此一
彈簧剪成長度 1：1：2 的三段彈簧，然後將兩較短段並聯後與較長段串
連，組成一新彈簧組，此新彈簧組的整體彈簧常數為何？請列出計算過
程。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3f6a18e24bd4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00027', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-5f7ec168', 'sub-heelevel3-b0f95c3f-02', NULL, 'essay', '有一舊機械螺栓部分鏽蝕，工程師欲更換螺栓以恢復機件運作，但無法
精確量測螺栓尺寸，僅能量到該螺栓孔之孔徑為13 mm，且手邊有同材
料三種螺栓規格：5/8”-11、7/16”-14 及 M12×1.75，請說明該三種規格
的尺寸與差異，以及基於機械操作安全考量，三者那一個規格最適合用
以做更換，並請說明其原因。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "3f6a18e24bd4", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2807", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00028', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '今有一金屬球因重力作用在一黏性流體中以等速沉降。假設該球之沉降
速度 V較低，使得其運動方程式中之慣性力遠小於黏性力，故 V只受流
體之動力黏滯係數（dynamicviscosity），以及金屬球之直徑 D和單位
體積淨受力（ ）g 影響。前式中 與分別為金屬球和流體之質量
b l b l
密度，g為重力加速度。
利用因次分析（dimensionalanalysis），試求沉降速度 V與前述各參數
[亦即D( )g]之關係式。（15 分）
b l
設若一鐵球之比重（specific gravity）為 7.9，直徑為 0.3 cm，且在某
一比重為1.5之流體中以某速度等速沉降。今若將鐵球換成比重2.7之
鋁球，且欲使鋁球在相同流體中之沉降速度與原鐵球相同，試求鋁球
應有之直徑。（5分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "f1f100023740", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00029', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '如圖 1所示，今有一圓形截面管，其長度 L=1.2 m，直徑 d=0.003 m，
內壁粗糙度（equivalentroughness）=0.045 mm，同時水從一自由液面高
度H恆定且直徑D=0.172 m之容器經此圓管排出。假設圓管入口區之次
要損失（minorloss）可以忽略，且管內截面平均流速V=2 m/s，試求容
器內自由液面相對於圓管中心線之高度 H。提示：水之運動黏滯係數
=1.12×106 m2/s，同時管流摩擦因子（frictionfactor）f可利用下式計算：
1.11
1 /d  6.9
1.8log  ，
f  3.7  Re
式中 Re為雷諾數（Reynoldsnumber）。（15分）
圖 1', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "f1f100023740", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00030', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '如圖 2 所示，一根四分之一圓之懸臂梁外側面承受均勻壓力負載 p，壓
力 p 以單位弧長所受的力表示。試計算該懸臂梁固定支撐點（fixed
support）A承受的正向力N 、剪力V 及彎曲力矩M 。（15 分）
A A A
圖 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "f1f100023740", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00031', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '如圖 3所示，一丁字形角鐵由兩根相同質量 m及長度 L的均質圓棒銲接
而成，其平面與鉛垂面平行，端點 A銷支承（pinsupport）於天花板，端
點 A 與質心 G 連線的水平傾角為 θ。丁字形角鐵於0o處靜止釋放，
重力加速度以符號 g 表示。試問：
丁字形角鐵質心距AG及對 A 點的轉動慣量（moment of inertia of
mass）。（10分）
當90o時，銷支承A施予丁字形角鐵的水平力及鉛垂力各是多少？
（15 分）
圖 3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "f1f100023740", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL),
  ('heelevel3-b0f95c3f-moex-00032', 'heelevel3-b0f95c3f', 'heelevel3-b0f95c3f-moex-113-56e3da6b', 'sub-heelevel3-b0f95c3f-03', NULL, 'essay', '如圖 4(a)所示，兩個尺寸、材質相同的均勻圓柱體堆疊於無摩擦地板。
兩者的截面積為A、彈性係數為E及單位體積的重量為g，此處，
為質量密度，g為重力加速度。若兩圓柱體未受應力作用前的原始長度
為 L，參考圖4(b)所示，試問：
兩圓柱體在x及x 截面的軸向壓力F(x )與F (x )？（10分）
1 2 1 1 2 2
兩圓柱體受重力壓縮後的長度分別減少 與 ？（15 分）
1 2
du
（提示：單軸應力、變形關係   x ， 、 與u為單軸應力、應
x x x
dx E
變及位移。）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:31:56+00:00", "source_pdf_sha1": "f1f100023740", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113080", "c": "376", "s": "2809", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學與工程力學", "year": "113", "exam_name": "113年公務人員高等考試三級考試暨普通考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "heelevel3", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
