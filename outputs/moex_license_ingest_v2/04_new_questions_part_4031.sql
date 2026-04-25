-- W1.4 new questions batch 4031/4739 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('structural-eng-moex-00064', 'structural-eng', 'structural-eng-moex-112-7d633e06', 'sub-structural-eng-04', NULL, 'essay', '如圖四所示之三層樓平面結構，各樓層樓板承受不同的水平力，由下而上
依序為300、450及600kN分別施加於各樓層樓板之兩端。構架中配置斜
撐桿件，斜撐與梁桿件於梁桿件中央處連接位置留有間距，並定義此部分
為「連梁」桿件，連梁與梁桿件之斷面相同且為連續。構架中梁、柱與斜
撐所形成之三角型區域勁度相對較大，可視為剛性區域，而各樓層連梁桿
件之剛度皆為EI。若於該受力情況下構架頂端之水平側向位移為6cm時，
不需經過精確分析，試推估各樓層連梁桿件端部旋轉變形角為何？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "e76cc11d13fd", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0310", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "結構學", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00065', 'structural-eng', 'structural-eng-moex-112-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一鋼筋混凝土簡支矩形梁，梁斷面寬度 b=40cm、深度 h=60cm，有效深
度 d=53cm，配置 4 支 D25 拉力鋼筋及 D13@15箍筋。試求混凝土強度
分別為 f’ = 210 kgf/cm2及 f’ = 280 kgf/cm2時，斷面的延展比與兩者的
c c
比值。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "4e6a1f89e7d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00066', 'structural-eng', 'structural-eng-moex-112-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '鋼筋混凝土 T 型雙筋梁，斷面尺寸為梁腹寬 b = 30 cm，有效翼緣寬
w
b = 90 cm，翼緣厚 h =15 cm，深度 h = 70 cm。假設梁腹下端有縱向
e f
拉鋼筋 8 根 D32 採雙排排列，壓力鋼筋量 18 cm2，箍筋為 D10，鋼筋
保護層及上下層間距均依規範最小值之規定，混凝土強度f ’=280kgf/cm2，
c
鋼筋f =4200kgf/cm2。試求此斷面的設計彎矩強度ϕM 為何？（25分）
y n', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "4e6a1f89e7d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00067', 'structural-eng', 'structural-eng-moex-112-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '鋼筋混凝土懸臂矩形梁，跨度3.5m，梁斷面寬度b=35cm、深度h=60cm，
有效深度d= 53 cm，閉合箍筋及縱向鋼筋均採用D13，承受偏心垂直均
佈載重 W =2.5tf/m。若此梁設計時不考慮扭力，則此梁斷面所能承受之
u
最大設計剪力 V 及臨界斷面最大偏心量 e 值為何？強度折減因子採
u
0.75，材料使用 f’ ＝280 kgf/cm2，f ＝4200 kgf/cm2。（25分）
c y', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "4e6a1f89e7d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00068', 'structural-eng', 'structural-eng-moex-112-3783d3a6', 'sub-structural-eng-05', NULL, 'essay', '一簡支後拉預力混凝土單向版，短向跨度為 10m，斷面深度 h=25cm，
有效深度d= 22 cm，配置無握裹鋼絞線（A = 1.47 cm2）及普通具握裹
b
鋼筋，兩者間距均為 20cm。試求此單向版之計算撓曲強度 M 。已知鋼
n
絞線 f =19000kgf/cm2，鋼鍵有效預力 f =11000kgf/cm2，f =0.85f ，
pu se py pu
f’ =420 kgf/cm2，f ＝4200 kgf/cm2。（25 分）
c y
參考式：


 =  +700+
300', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "4e6a1f89e7d0", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0307", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼筋混凝土設計與預力混凝土設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00069', 'structural-eng', 'structural-eng-moex-112-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '計算精確的有效長度係數，在鋼結構設計中相當重要。請用查圖的方法，
試求下圖結構各柱子之有效長度係數（K）。鉸接（hinge）時，G可用 10，
固接（fixed）時，G可用 1。（25分）
柱與梁之 I值表（單位：cm4）
柱AD、BEandCF 柱DGandEH 梁 EF 梁DEandGH
I值 16000 3000 17000 35000', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8f1a44ef3a94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00070', 'structural-eng', 'structural-eng-moex-112-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '有一 H 型鋼柱承受靜載軸壓 PD、活載軸壓 PL。柱長 650 cm，假設
K =K =1.0。柱斷面為H400 300 14 21，斷面性質A=182cm2，I =52510cm4，
x y x
I=9840cm4，r =17cm，r =7.4cm。鋼材F=3.5tf/cm2，E=2040tf/cm2。
y x y y
× × ×
請依 ASD規範判斷挫屈型態。（15 分）
柱長應該修改為多少？才能讓本題之挫屈型態位於柱標稱強度曲線
圖上，彈性挫屈與非彈性挫屈之交界點？（10 分）
※參考公式：請自行選擇適合的公式，並檢查其正確性，若有問題應自
行修正。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8f1a44ef3a94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00071', 'structural-eng', 'structural-eng-moex-112-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '下圖為一梁斷面，鋼之 Fy=2.5tf/cm2，Ey=2050tf/cm2，假設此梁有完全
的側支撐，試求此斷面之降伏彎矩（10分）；塑性彎矩。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8f1a44ef3a94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00072', 'structural-eng', 'structural-eng-moex-112-62d88c54', 'sub-structural-eng-06', NULL, 'essay', '請說明焊接接合的破壞形式？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "8f1a44ef3a94", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112190", "c": "003", "s": "0309", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "鋼結構設計", "year": "112", "exam_name": "112年專技人員高等考試建築師、25類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL),
  ('structural-eng-moex-00073', 'structural-eng', 'structural-eng-moex-111-9821ed98', 'sub-structural-eng-01', NULL, 'essay', '請回答下列關於夯實試驗的問題：
請敘明土壤夯實的原理。（5 分）
標準夯實試驗模具體積為 1000 cm3時，請依下表實驗結果繪製標準夯
實曲線圖，並標明最大乾單位重及最佳含水量值。（5分）
請敘明影響夯實能量的相關參數，（5分）若夯實能量增加對夯實曲線、
最佳含水量及最大乾單位重的影響為何？（10 分）
溼土質量 含水量 乾土單位重
（g） ω（%） （kN/m3）
1669 5.3
1891 7.8
2013 9.7
2046 12.9
2021 13.8
1977 17.0', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T07:11:04+00:00", "source_pdf_sha1": "1190d5b0cc2e", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "111180", "c": "003", "s": "0311", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "土壤力學與基礎設計", "year": "111", "exam_name": "111年專技人員高等考試建築師、31類科技師(含第二次食品技師)、大地工程技師考試分階段考試(第二階段考試)暨普通考試不動產經紀人、記帳士考...", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "structural", "db_exam_id": "structural-eng"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
