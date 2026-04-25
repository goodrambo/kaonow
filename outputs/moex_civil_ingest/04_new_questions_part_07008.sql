-- W1.6 questions batch 7008/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-b0f95c3f-moex-00073', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '畸變能（Distortion energy, DE）及最大剪應力（Maximum shear stress）
失效理論常用於分析延性材料承受靜態負荷下損壞的降伏理論，已知由
AISI1045 熱軋鋼加工製造的軸，其受到靜態負荷作用下結構臨界點的主
應力狀態為 0 MPa、250 MPa及-50MPa。請回答下列問題：
在考慮安全因數下，請分別寫出畸變能及最大剪應力失效理論的設計
公式，並說明相關參數的物理意義。（10分）
若已知軸的降伏強度 S = 310 MPa，試分別利用畸變能及最大剪應力
y
失效理論，就上述主應力狀態估算該軸的安全因數？（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "82ccc3b7c4d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00074', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '已知直徑D=25mm的實心鋼軸，同時受到變動彎矩M（M =15N-m，
min
M =125N-m）及變動扭矩 T（T =10N-m，T =80N-m）的作用。
max min max
已知該軸材料的抗拉強度S =700MPa，修正疲勞限（modifiedendurance
u
limit）S =210 MPa。請回答下列問題：
e
計算作用在該軸的平均彎矩、交變彎矩、平均扭矩、交變扭矩，以及
平均彎應力、交變彎應力、平均扭轉剪應力、交變扭轉剪應力。（15 分）
利用畸變能（DE）失效理論結合修正古德曼（Goodman）疲勞失
效準則，求該軸受到組合變動負載下防範疲勞損壞的安全因數。
（提示：DE-Goodman 準則公式為 σ S +σ S 1 n，σ 為等效交變
=
a e m u a
應力，σ 為等效中值（或平均）應力，n為安全因數。）（10 分）
m', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "82ccc3b7c4d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00075', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '如圖所示為一齒輪箱輸入軸的負載自由體圖。A和 B的位置分別安裝 02
系列深槽滾珠軸承（deep-grooveballbearing）來支撐該輸入軸，其支撐
方式類似簡支樑。請回答下列問題：
根據該自由體圖，計算作用在軸支撐 A 及 B 處的支撐力R 、R 、
Ay Az
R 及R 。（10分）
By Bz
已知該軸的直徑為 12mm，操作轉速 1725rpm。假設忽略推力方向的
負載，軸承受到穩定負載作用且為內環旋轉。若輸入軸左端 A處軸承
的基本動態額定負載 C = 6.89 kN，求該軸承預期的額定壽命 L 應為
10
多少小時？（15分）
y
75N
R 206N R
Az Bz
T
A
C B x
T=2.06N-m
z R
R By
Ay
66mm 84mm', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "82ccc3b7c4d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00076', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-5f7ec168', 'sub-locality-b0f95c3f-02', NULL, 'essay', '如圖所示的飛機起落架結構，其輪胎受到43 kN垂直力及12 kN水平力
的作用。若已知 A 和 B 處銷的最大允許剪應力τ = 97 MPa，且銷可承
all
受雙剪應力，試求 A和 B處銷避免剪力失效的直徑分別為何？（25 分）
40
A B
40
10
C 單位：cm
40
D
12kN
43kN', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "82ccc3b7c4d1", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2305", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "機械設計", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00077', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-0e54f998', 'sub-locality-b0f95c3f-09', NULL, 'essay', '傾斜管式壓力表如下圖所示，D=76mm、d=8mm，圓形槽中之液體密
度=827kg/m3。待測壓力 P 接於槽之上方開口 A處，由於空氣密度相
l 1
較於槽中液體密度甚小，P 可視為點①之液面壓力，點②之壓力 P 則為
1 2
大氣壓力，請問：
推導pP P之通式，並以、g、L、θ、d、D等參數表示。（10分）
1 2 l
求出傾斜管角度θ，當 P –P =25mm水柱高的壓力下，恰好會使液體
1 2
沿斜管產生 L=15cm。（註：水之密度為 1000 kg/m3）（10 分）
平衡液面
表內液體,
l', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "84ed44504a07", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00078', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-0e54f998', 'sub-locality-b0f95c3f-09', NULL, 'essay', '有一裝置可將兩股水流混合形成均勻射流，如下圖所示，入口○1 處之管
徑為 0.1m、流體速度為 4m/s；入口○2 處之管徑為 0.12m、流體速度為
6 m/s，假設作用在裝置上之外力合為 0，即ΣF =0、ΣF =0，試求解下
x y
列問題：
圖中傾斜角度θ。（10分）
射流出口處○3 之流體速度。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "84ed44504a07", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00079', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-0e54f998', 'sub-locality-b0f95c3f-09', NULL, 'essay', '虹吸（siphon）是一種流體力學現象，可以不借助泵而抽吸液體。有一
製程利用虹吸管抽取製備槽中的水（=1000kg/m3），如下圖所示，水
l
以 5 L/s 的體積流率流出管徑為 25 mm 之虹吸管出口，假設流動為無
摩擦，大氣壓力 P =101 kPa，請問：
atm
虹吸管出口處之水流速（m/s）？（10 分）
已知槽中水體之溫度為21oC，對應的飽和壓力為 2.358kPa，為了防止
閃發（flash）現象在虹吸管中產生，試求點 A 處到製備槽水面高度 h
的最大容許值？（10分）
D=25mm
5L/s', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "84ed44504a07", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00080', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-0e54f998', 'sub-locality-b0f95c3f-09', NULL, 'essay', '不可壓縮之黏性流體在無窮且水平放置之平板間，上平板以 U 的速度
1
朝正 x 方向等速移動，下平板以 U 的速度朝負 x 方向等速移動，如下
2
圖所示。假設流動為穩定（steady）、完全發展（fully developed）、不考
慮重力影響，且沿流動方向之壓力梯度可忽略。
推導兩平板間之流體速度分布。（8 分）
單位深度之體積流率（Q）為何？（8分）
當 U 與 U 之比值為何時，兩平板間之體積流率為零？（4 分）
1 2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "84ed44504a07", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00081', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-0e54f998', 'sub-locality-b0f95c3f-09', NULL, 'essay', '有一截面為20cm 10cm之光滑水平矩型風管，用以輸送流量為0.1m3/s
之空氣（1.6105m2/s，1.23kg/m3），若流體在管內流動之達西摩
×
擦因子（f Darcyfrictionfactor）可由下式估算，其中Re為雷諾數（Reynolds
number）、D 為水力直徑（hydraulicdiameter），請問：
h
64 0.316 VD
層流：f  ；紊流：f  ； Re h
Re Re0.25
矩型風管之水力直徑（m）？（5 分）
已知風管長度為 100 m，則管內之壓力降為多少 Pa？（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "84ed44504a07", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2208", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "流體力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL),
  ('locality-b0f95c3f-moex-00082', 'locality-b0f95c3f', 'locality-b0f95c3f-moex-110-3d1978c5', 'sub-locality-b0f95c3f-04', NULL, 'essay', '卡車上載一輛 1,500 公斤（kg）的故障轎車，如忽略摩擦力、空氣阻力
和滾動摩擦，請考量下列行駛情形，分別計算運載此轎車後，卡車所增
加之功率需求（extrapower required）：（每小題 5分，共 15分）
以等速度（constantvelocity）在水平的路上行駛。
以時速60公里/時（60km/h），在與水平面成30度夾角之上坡路上行駛。
在水平的路上，於 10秒鐘由靜止加速到100公里/時。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:29+00:00", "source_pdf_sha1": "da7307b62d8e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "343", "s": "2307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "熱力學", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "機械工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
