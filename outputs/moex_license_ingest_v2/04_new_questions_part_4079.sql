-- W1.4 new questions batch 4079/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00544', 'structural-eng', 'structural-eng-moex-092-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '如圖示長肢背對背雙角鋼受拉構材與柱之接合，接合全部採用標稱直徑19 mm之A325X承壓型螺栓（標準孔），
螺栓孔附近之變形非為設計之考量因素。計算時必須扣除之螺栓孔徑為22 mm。已知柱和WT型鋼強度足夠。
（25分）
試依極限設計法決定雙角鋼與WT型鋼腹板接合所需螺栓數量。假設螺栓至構材邊距大於1.5倍之螺栓直徑，
且螺栓心距大於3倍之螺栓直徑，並將螺栓排成一列。不必考慮塊狀剪力。
已知柱和WT型鋼以8顆螺栓接合，試依極限設計法此接合強度是否足夠？
tw = 12.4mm
參考資料：  t = 18.9mm
f
構材之F = 2.5 ton/cm2、F = 4.1 ton/cm2  雙角鋼：厚度t = 9.5 mm、雙角鋼總面積A = 34.45 cm2
y u g
螺栓：斷面積A = 2.85 cm2，F = 4.2 ton/cm2，F = 6.3 ton/cm2  P = FA，φ =0.9   P = FA，φ =0.75
b v t n y g t n u e t
（請接背面）
九十二年專門職業及技術人員 高等 考  試  建 築 師、 技 師、 不 動產 估 價師   考試試題
暨普通考試不動產經紀人、地政士
（背面）
類    科： 結構工程技師
拉力強度  承壓式接合剪力強度
螺栓類別
φ  標稱強度  φ  標稱強度
A325螺栓、螺紋不在剪力平面  6.30 t/cm2  3.36 t/cm2
0.75  2 0.75  2
A325螺栓、螺紋在剪力平面  6.30 t/cm  4.20 t/cm
承壓型接合所用聯結物之極限拉應力(F)，t/cm2
t
聯結物種類  螺紋在剪力平面  螺紋不在剪力平面  φ
A325螺栓  8.2-1.9fv≦6.3  8.2-1.9fv≦6.3  0.75
Ae = UAn   Ae = UAg
翼板寬度與斷面深度之比不小於2/3之W、H、S或I型鋼，及由此類型鋼切割或符合前述尺度需求之銲接T型
鋼，且接合須在翼板處。若以螺栓接合則接合處沿應力線方向每行螺栓數不少於3根…………………U = 0.90
不合於上款之W、H、S、I或T型鋼，及包括組合斷面之其他各種斷面。若以螺栓接合則接合處沿應力方向每
行螺栓數不少於3根……………………………………………………………………………………………U = 0.85
以螺栓接合之所有各種斷面且在接合處沿應力方向每行僅有2根螺栓……………………………………U = 0.75
螺栓孔承壓強度  φRn，其中φ= 0.75，Rn = 標稱承壓強度
當Le≧1.5 d且S≧3d且作用力方向該排有二個（含）以上之螺栓時，
標準孔、或垂直於作用力之槽孔，或摩阻型超大孔或平行於作用力方向之摩阻型槽孔。
當螺栓孔附近之變形非為設計之考量因素時，R = 2.4 dtF
n  u
當螺栓孔附近之變形為設計之考量因素時，Rn = LetFu≦3.0 dtFu
對於其他之螺栓接合型式，Rn = (S-0.5d) tFu≦2.4 dtFu
作用力於垂亙方向之長槽孔，Rn = 2.0 dtFu
當Le < 1.5d或作用力方向該排僅有一顆螺栓
標準孔、或垂直於作用力之槽孔，或摩阻型超大孔或平行於作用力方向之摩阻型槽孔。
Rn = LetFu≦2.4 dtFu
其他螺栓接合，Rn = (S-0.5d) tFu≦2.4 dtFu
當作用力於平行方向之長槽孔螺栓接合
對單支螺栓或二支螺栓以上（含）之最靠近邊緣之螺栓，Rn = LetFu≦2.0 dtFu
其他螺栓接合，Rn = (S-0.5d) tFu≦2.0 dtFu', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "991dd5eba784", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00545', 'structural-eng', 'structural-eng-moex-092-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一梁柱構材長度為L，其斷面為 W12×170型鋼且為結實斷面，受一軸向載重 (P) 及端點之強軸、弱軸彎矩如
附圖所示，使用A36鋼材，假設其Kx = Ky = 1.0，試檢核該構材是否滿足容許應力法 (ASD) 之要求？（25分）
W12×170斷面參數：
A = 322.58 cm2、S = 3850.96 cm3、r = 14.58 cm、S = 1348.66 cm3、r = 8.18 cm、L = 4.05 m、L = 19.6 m
x x y y c u
A36鋼材：F = 2.50 t/cm2、F = 4.10 t/cm2、E = 2.1×103 t/cm2
y u
軸向載重P = 182 ton、彎矩Mx = 27.68 t-m、My = 8.30 t-m、長度L = 3.7 m
參考公式與圖表：
⎛ (KL/r)2⎞
⎜1− ⎟F
2 ⎜ 2C2 ⎟ y
12 π E ⎝ ⎠
F =   F = c
a 23(KL/r)2 a 5 3(KL/r) (KL/r)3
+ −
3 8C 8C3
c c
12 π2E 12 π2E 2π2E
F'' =   F'' =   C =
ex 23(KL /r )2 ey 23(KL /r )2 c F
b b x b b y y
當fa/Fa > 0.15時，使用以下公式
f C f C f f f f
a + mx bx + my by ≤1.0    a + bx + by ≤1.0
F f f 0.6F F F
a (1− a )F (1− a )F y bx by
F'' bx F'' by
ex ey
當fa/Fa≤0.15時，使用以下公式
f f f
a + bx + by ≤1.0    C 為一修正係數，應依以下規定計算：
F F F m
a bx by
可側向位移構架之受壓構材：C = 0.85
m
含斜撐構架中之受束制壓力構材，且在構材彎曲平面兩端點間無橫向載重時：C = 0.6-0.4 (M/M)
m  1 2
含斜撐構架之受壓構材，若在構材彎曲平面兩端點間受橫向力作用時，C 之值可依合理分析方法決定之或依以下之規定：
m
構材在所考慮彎曲平面之端點受束制者，Cm = 0.85
構材在所考慮彎曲平面之端點未束制者，Cm = 1.00', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:13+00:00", "source_pdf_sha1": "991dd5eba784", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "092270", "c": "004", "s": "2001", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "092", "exam_name": "092年建築師、技師、不動產估價師、不動產經紀人、地政士考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('optician-moex-00001', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '下列關於眼球之胚胎發育，何者錯誤？', '["眼睛由外胚層（ectoderm）和內胚層（endoderm）形成", "外胚層產生視網膜、視神經纖維和虹膜的平滑肌", "鞏膜、脈絡膜和虹膜基質來自中胚層（mesoderm）", "角膜的內皮被認為起源於神經嵴（neuralcrest）"]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 1, "answer_corrected": true, "flags": ["answer_corrected_skip_v1"], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00002', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '眼睛發育過程，下列何者經由視柄（opticstalk）與視泡連接？', '["前腦", "中腦", "後腦", "小腦"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 2, "answer_corrected": false, "flags": [], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00003', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '眼窩底部（floor）不是由那一塊骨頭組成？', '["上頜骨（maxillarybone）", "顎骨（palatinebone）", "顴骨（zygomaticbone）", "蝶骨（sphenoidbone）"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 3, "answer_corrected": false, "flags": [], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00004', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '下列有關出生後之眼球發育，何者錯誤？', '["眼球的大小在出生後迅速生長，到了3歲就穩定下來，不再成長", "角膜的發育，到孩子2歲時可達到成人的大小", "水晶體在整個生命過程中不斷地生長", "出生時的眼睛是遠視眼，後來因為眼睛的前後軸長度增加，這種情況得到矯正"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 4, "answer_corrected": false, "flags": [], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00005', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '眼瞼從外表面到內層靠眼球的結構順序，下列何者正確？①皮膚  ②皮下組織  ③眼窩隔膜和眼瞼板', '["眼輪匝肌的橫紋肌纖維  ⑤結膜", "", "", ""]'::jsonb, 1, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 5, "answer_corrected": false, "flags": ["incomplete_options"], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00006', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '有關眼結膜和眼角膜之敘述，下列何者正確？', '["眼結膜和眼角膜輪部組織富含細小的血管，受刺激時會有充血反應", "睫狀後短動脈（shortposteriorciliaryarteries）的分支後端匯入眼結膜和眼角膜輪部血管叢", "眼結膜和眼角膜表面的感覺神經由下頷神經分支（mandibularbranch）進入三叉神經節", "眼結膜上皮層不具有修復能力"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 6, "answer_corrected": false, "flags": [], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00007', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '關於角膜構造之敘述，下列何者正確？', '["角膜分為五層，其胚胎發育均源自於體表外胚層（surfaceectoderm）", "角膜感覺神經自後彈力層（Descemet''smembrane）進入，向上延伸於間質層形成緻密的神經叢", "角膜感覺神經源自於顏面神經（facialnerve）", "角膜富含膠原蛋白，其組成以第一型膠原蛋白所占比例最多"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 7, "answer_corrected": false, "flags": [], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL),
  ('optician-moex-00008', 'optician', 'optician-moex-114-5e38135e', 'sub-optician-01', NULL, 'single_choice', '有關房水生理之敘述，下列何者正確？', '["房水中養分可支配和供應眼角膜基質層細胞使用", "正常狀況下的房水含有免疫細胞可抵抗感染", "第七對腦神經之副交感神經支配房水分泌調節", "房水由視網膜色素細胞所分泌"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:17:25+00:00", "source_pdf_sha1": "658858da9536", "answer_pdf_sha1": "60346d0a673e", "source_family": "moex-gov-tw", "moex": {"exam_code": "114100", "c": "110", "s": "0906", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "眼球構造與倫理法規概要", "year": "114", "exam_name": "114年第二次專技人員高等考試營養師、護理師、社會工作師考試、114年專技人員高等考試心理師、法醫師、語言治療師、聽力師、牙體技術師、公共衛...", "original_question_number": 8, "answer_corrected": false, "flags": [], "slug": "optician", "db_exam_id": "optician"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
