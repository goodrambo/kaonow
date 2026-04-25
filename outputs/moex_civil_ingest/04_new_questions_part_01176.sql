-- W1.6 questions batch 1176/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('customs-d7421644-moex-00058', 'customs-d7421644', 'customs-d7421644-moex-113-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖三電路如下，電晶體β = 99，試利用V =0.7V及thermalvoltageV =25mV，
BE T
求出 R 及A = v /v 。（25分）
in V o s
i 3 kΩ
in 20 kΩ
v
o
2 kΩ
5 kΩ  24 Ω  5 kΩ
v
s 1 kΩ
100mV
圖三', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "5b96a0b8c4b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00059', 'customs-d7421644', 'customs-d7421644-moex-113-fbd33e91', 'sub-customs-d7421644-04', NULL, 'essay', '圖四電路如下，利用 MOSFET，當 thresholdvoltageV =4V、I =3.6mA
t D
及V = 10 V，求出V 。（25 分）
GS DS
+20V
5 kΩ
10 MΩ
i v
in o
v
in
圖四', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "5b96a0b8c4b6", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1604", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電子學與電路學", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00060', 'customs-d7421644', 'customs-d7421644-moex-113-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '有一 10匝、邊長為 4 公分的正方形線圈放置於磁通密度為0.2 韋伯/米2的
磁場中，若將 10 安培的電流通過此線圈，試求：當線圈面和磁場的夾角
為下列角度時，其所能產生轉矩的大小：
90 。（4分）
0 。° （6分）
60° 。（10分）
°', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "c63f9de874ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00061', 'customs-d7421644', 'customs-d7421644-moex-113-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '一台 100 kVA、1200 V/120 V、60 Hz之單相變壓器，將高壓側開路而由
低壓側激磁時，若激磁電壓為 120V、激磁電流16A且鐵損為 400W時，
試求：
無載功因。（8 分）
磁化電流。（6 分）
鐵損電流。（6 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "c63f9de874ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00062', 'customs-d7421644', 'customs-d7421644-moex-113-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '如圖所示為一連接負載的同步發電機，發電機在無載時的頻率為61 Hz，
且其功率/頻率之斜率 S = 1.0 MW/Hz。倘若負載 2 正要和負載 1 並聯，
p
其中，負載 1在功率因數0.8 落後時消耗1000kW，而負載 2在功率因數
0.7 落後時消耗 600 kW，試求：
在負載 2並聯前之系統頻率。（10分）
在負載 2並聯後之系統頻率。（10分）
同步發電機 負載1
負載2', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "c63f9de874ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00063', 'customs-d7421644', 'customs-d7421644-moex-113-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '一台三相、四極、60Hz、220V、10HP的鼠籠式感應電動機，滿載時的電
流和轉矩分別為30A和45N-m，且全壓起動時的電流為滿載時的6.5倍、
起動轉矩為滿載時的 1.5倍。若利用下列起動方式分別對此電動機進行起
動，試求其個別之起動電流和起動轉矩。
Y-Δ 起動器。（10分）
電抗器降壓起動，接頭置於 50%處。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "c63f9de874ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00064', 'customs-d7421644', 'customs-d7421644-moex-113-bdd26e86', 'sub-customs-d7421644-05', NULL, 'essay', '有一部 200 V、10 HP的直流分激電動機，其電樞電阻 R  = 0.05 Ω，場電
a
阻 R = 100 Ω，在滿載運轉時的輸入電流為50A，轉速 1800rpm。試求：
f
電磁轉矩 T 。（10分）
e
效率η(%)。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "c63f9de874ae", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113040", "c": "106", "s": "1601", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "電機機械", "year": "113", "exam_name": "113年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "五", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00065', 'customs-d7421644', 'customs-d7421644-moex-112-f9fb6a06', 'sub-customs-d7421644-06', NULL, 'essay', '翻譯：請將下列英文段落翻譯成中文，中文段落翻譯成英文。
UndertheauthoritygrantedbytheImmigrationandNationalityAct(INA),
as amended, a Customs and Boarder Protection (CBP) officer may
question, under oath, any person coming into the country to determine his
or her admissibility. In addition, an inspector has authority to search
without warrant the person and effects of any person seeking admission.
（15分）
今天連假第一天，桃園機場出入境、加上轉機旅客就超過十萬人次排
隊人潮。有人形容就像看不到盡頭，得提前幾個小時、提早報到！搭
機出國外，搭船到離島的旅客也不少，前往綠島遊玩的遊客，第一班
客輪就載滿約 300 人。（15分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00066', 'customs-d7421644', 'customs-d7421644-moex-112-f9fb6a06', 'sub-customs-d7421644-06', NULL, 'essay', '英文作文：（20分）
Taiwanhasbeenrankedasthefourth-happiestcountryinAsiaand27thinthe
world by the Ranking Royals website. The ranking is based on six criteria,
including healthy life expectancy, GDPper capita, social support, freedom to
make your own decisions in life, absence of business and government
corruption, and giving to charity. Write an essay of about 250~300 words to
describeyour reactionsto thisnews.', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "0201", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL),
  ('customs-d7421644-moex-00067', 'customs-d7421644', 'customs-d7421644-moex-112-f9fb6a06', 'sub-customs-d7421644-06', NULL, 'single_choice', 'The way our eyes and brain handle information has become . Thanks to television, film and computers,ourabilitytoprocessimagesisfaster.', '["monotonous", "subsequent", "vulnerable", "sophisticated"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:17+00:00", "source_pdf_sha1": "fc64c1ac2a64", "answer_pdf_sha1": "e6b8858a244a", "source_family": "moex-gov-tw", "moex": {"exam_code": "112050", "c": "106", "s": "0201", "q": "1"}, "raw_section_label": "乙、測驗題部分", "subject": "英文", "year": "112", "exam_name": "112年公務人員特種考試關務人員考試、身心障礙人員考試、國軍上校以上軍官轉任公務人員考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "customs", "civil_category": "電機工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
