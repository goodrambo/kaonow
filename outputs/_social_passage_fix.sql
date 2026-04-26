-- cap social passage backfill (W1.9.2 fix) — 11 years
BEGIN;

-- year 104: insert 2 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-104-society-passage-59", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-104-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 59 至 60 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "隨著現代人生活愈來愈富足，養寵物已成為一種風潮，再加上單身貴族及\n不生育子女的雙薪家庭戶數增加，這些需要陪伴的族群常會飼養寵物作伴，使\n得臺灣寵物的數量，漸漸地比0～6歲的嬰幼兒人數還多，也帶動了寵物市場龐\n大的商機。但養寵物除了經濟上的支出外，還要注意相關的法律問題，像是許\n多人不知道寵物用剩的藥品不可任意上網販售，否則會被主管機關處以高額罰\n款。飼養寵物的主人，除了花時間照顧寵物外，可能也要多費心思了解相關規\n定，以免觸法。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00", "source_pdf_sha1": "120f2a4be097", "answer_pdf_sha1": "c729af5ae186", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 59 至 60 題：", "child_qnums": [59, 60]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-104-society-passage-61", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-104-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 61 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "1960年代是一個社會內部衝突與對抗的年代。在此期間，美國種族衝突日益\n激烈，為了對抗種族隔離措施，黑人民權運動在各地展開，促使國會通過法案，\n確保少數族裔獲得在法律及政治上的平等地位；中國則因領導階層的權力爭奪，\n鼓動青年學生，在「革命無罪、造反有理」的口號下，展開一連串的破壞行動；\n捷克領導人提倡改革，放寬經濟與政治的管制，受到廣大民眾的支持，但「老大\n哥」嚴厲禁止其改革，領導華沙公約組織出兵捷克，加以鎮壓。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00", "source_pdf_sha1": "120f2a4be097", "answer_pdf_sha1": "c729af5ae186", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 61 至 63 題：", "child_qnums": [61, 62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-104-society-passage-59', updated_at=now() WHERE id='cap-104-society-059';
UPDATE public.questions SET parent_question_id='cap-104-society-passage-59', updated_at=now() WHERE id='cap-104-society-060';
UPDATE public.questions SET parent_question_id='cap-104-society-passage-61', updated_at=now() WHERE id='cap-104-society-061';
UPDATE public.questions SET parent_question_id='cap-104-society-passage-61', updated_at=now() WHERE id='cap-104-society-062';
UPDATE public.questions SET parent_question_id='cap-104-society-passage-61', updated_at=now() WHERE id='cap-104-society-063';

-- year 105: insert 2 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-105-society-passage-59", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-105-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 59 至 60 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "皮雷茨基的祖國在 1939 年遭德國、蘇聯攻陷，他因此參與地下反抗組\n織，並趁德軍搜捕罪犯時，混入隊伍，故意被送進納粹在他的祖國內成立的\n集中營，設法將內部消息傳遞出去，這些資料使盟國更加認識集中營的情況。\n1943 年，皮雷茨基從集中營逃出，繼續反抗德軍。大戰結束，他回到祖國生\n活，幾年後因反對當時操控自己國家的外國勢力而被處死。直到 1990 年代，\n皮雷茨基才得到平反，成為該國的英雄人物。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00", "source_pdf_sha1": "6955cd94c1bb", "answer_pdf_sha1": "e4e2292682e2", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 59 至 60 題：", "child_qnums": [59, 60]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-105-society-passage-61", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-105-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 61 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "一部戲劇的劇情簡介如下――\n  主角雖出生於政治世家，卻因志趣不合而選擇到鄉下教書。但一夕間，在公\n職選舉中連任六屆的父親因空難過世，主角因而回到家鄉繼承父親遺志，代替父\n親參選。在該次選舉中，他以年輕、改革為口號，並提出補助育兒津貼、營造優\n質育嬰環境等社福政見而當選。後來劇中主角的心態逐漸轉變，從一個原本對政\n治毫無興趣的教師，慢慢發現自己心中對於政治也有熱忱，最後以完成父親理想\n且成為傑出的政治人物而自豪。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00", "source_pdf_sha1": "6955cd94c1bb", "answer_pdf_sha1": "e4e2292682e2", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 61 至 63 題：", "child_qnums": [61, 62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-105-society-passage-59', updated_at=now() WHERE id='cap-105-society-059';
UPDATE public.questions SET parent_question_id='cap-105-society-passage-59', updated_at=now() WHERE id='cap-105-society-060';
UPDATE public.questions SET parent_question_id='cap-105-society-passage-61', updated_at=now() WHERE id='cap-105-society-061';
UPDATE public.questions SET parent_question_id='cap-105-society-passage-61', updated_at=now() WHERE id='cap-105-society-062';
UPDATE public.questions SET parent_question_id='cap-105-society-passage-61', updated_at=now() WHERE id='cap-105-society-063';

-- year 106: insert 2 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-106-society-passage-59", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-106-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 59 至 60 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "臺灣的電線桿或配電箱，大多標有由英文\n字母和數字組成的雙排編號，共9碼或11碼，此\n編號為「電力坐標」，如圖(二十四)所示。坐標\n中的英文字母和數字乃根據固定的規則編碼，\n例如第一個英文字母代表分區坐標區塊，對照\n圖(二十五)即可大略知道位於臺灣何處。電力坐       圖(二十四)\n標經過簡單的換算，可以轉換成臺灣常用的坐\n標系統。因此，民眾只要向救難單位報出電力\n坐標，救難人員就可依此坐標精準確認地點。                    圖(二十五)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00", "source_pdf_sha1": "3dae370215e1", "answer_pdf_sha1": "0fa526cf1539", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 59 至 60 題：", "child_qnums": [59, 60]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-106-society-passage-61", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-106-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 61 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "知名紀錄片《看見臺灣》，以直升機空拍的創新手法拍攝，讓觀眾深受震撼\n與感動，許多民眾也起而效法想運用空拍機來記錄生活的點滴，使得空拍機一時\n成為市場上的熱銷商品。\n  空拍機自由飛行、突破地表障礙的特性雖然迷人，但最近因有民眾使用空拍\n機時，違反了《民用航空法》而遭到主管機關開罰，此一事件引發社會大眾關切\n空拍機可能侵犯隱私、失控墜落、影響飛安等問題，也凸顯現有法令尚未完備，\n因此各界呼籲中央政府機關應盡速通過三讀程序，修訂相關法律加以規範。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00", "source_pdf_sha1": "3dae370215e1", "answer_pdf_sha1": "0fa526cf1539", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 61 至 63 題：", "child_qnums": [61, 62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-106-society-passage-59', updated_at=now() WHERE id='cap-106-society-059';
UPDATE public.questions SET parent_question_id='cap-106-society-passage-59', updated_at=now() WHERE id='cap-106-society-060';
UPDATE public.questions SET parent_question_id='cap-106-society-passage-61', updated_at=now() WHERE id='cap-106-society-061';
UPDATE public.questions SET parent_question_id='cap-106-society-passage-61', updated_at=now() WHERE id='cap-106-society-062';
UPDATE public.questions SET parent_question_id='cap-106-society-passage-61', updated_at=now() WHERE id='cap-106-society-063';

-- year 107: insert 2 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-107-society-passage-60", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-107-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 60 至 61 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "許多民眾普遍認為大醫院的醫療品質較好，常常只因小感冒就到大醫院門\n診掛號就醫，導致許多大醫院出現看診壅塞的情形，讓已明顯不足的醫護人力\n更加吃緊，也造成醫療資源浪費的問題。\n  因此，政府為改變民眾不論症狀輕重，都愛去大醫院看病的情形，藉由透\n過醫療院所分級與推動各項相關因應政策，鼓勵民眾養成小感冒先到住家附近\n小型診所就醫的習慣，讓大醫院的醫療資源能做更有效的運用。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00", "source_pdf_sha1": "f2d1c3f41a4f", "answer_pdf_sha1": "05a67d1d6082", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 60 至 61 題：", "child_qnums": [60, 61]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-107-society-passage-62", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-107-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 62 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "圖(二十七)是2014年世界各國人口年齡中位數分布圖。「人口年齡中位數」\n是將一個國家的總人口分成人數相等的兩部分，其中一半人的年齡比中位數要\n小，而另一半人的年齡比中位數要大，該數值可描述一國人口年齡的狀態。\n\n\n\n\n      㗨㶽\u0015\u0013㨰   \u0015\u0013㨰ᶣ᳈濕㗨㶽\u0016\u0013㨰    \u0016\u0013㨰ᶣ᳈濕㗨㶽\u0017\u0013㨰   \u0017\u0013㨰ᶣ᳈\n\n                     圖(二十七)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00", "source_pdf_sha1": "f2d1c3f41a4f", "answer_pdf_sha1": "05a67d1d6082", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 62 至 63 題：", "child_qnums": [62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-107-society-passage-60', updated_at=now() WHERE id='cap-107-society-060';
UPDATE public.questions SET parent_question_id='cap-107-society-passage-60', updated_at=now() WHERE id='cap-107-society-061';
UPDATE public.questions SET parent_question_id='cap-107-society-passage-62', updated_at=now() WHERE id='cap-107-society-062';
UPDATE public.questions SET parent_question_id='cap-107-society-passage-62', updated_at=now() WHERE id='cap-107-society-063';

-- year 108: insert 3 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-108-society-passage-57", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-108-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 57 至 58 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "每天黎明時，來自海上的厚重霧氣會逐漸\n瀰漫到智利的沙漠邊緣。研究人員發明一種如\n圖(二十四)的採霧設備，將其裝置在迎風面，\n使霧中水氣凝結在無數細微黑線上再匯聚成水\n滴，最終落入容器中累積。由於架設方便、集\n水效率高，此技術已推廣至其他水資源相對稀\n少的地區。                        圖(二十四)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00", "source_pdf_sha1": "f43eb7872bea", "answer_pdf_sha1": "71bcc8be1a46", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 57 至 58 題：", "child_qnums": [57, 58]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-108-society-passage-59", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-108-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 59 至 61 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "在紅豆播種期間，有些農民會在田間施用毒餌，以避免小型鳥類啄食剛撒在\n土壤上的種子而影響收成，這樣的作法雖能降低農業損失，但由於黑鳶會撿食遭\n毒死的小型鳥類屍體，所以也間接造成許多黑鳶中毒死亡，影響整體生態環境。\n有位林姓農夫因認同守護黑鳶的想法和作為，決定改採較友善的耕作方式種植紅\n豆，他以機械播種將紅豆深埋入土中，取代毒害鳥群的行為，雖然生產成本因而\n上升，但他相信這才是正確的作法。\n  此情況經媒體報導後，吸引某一企業主的關注，決定與農民簽訂耕作契約，\n保證以特定價格收購農產品，讓農民專心生產，而由該企業負責銷售。受到契約\n保障的鼓勵，有更多農夫願意嘗試改變作法，與生態環境和諧共生。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00", "source_pdf_sha1": "f43eb7872bea", "answer_pdf_sha1": "71bcc8be1a46", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 59 至 61 題：", "child_qnums": [59, 60, 61]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-108-society-passage-62", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-108-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 62 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "「歐洲綠化帶」是一條覆蓋歐洲24個國家，長達\n12,500公里的生態保護區域。這個保護區域最早是沿\n著歷史上東德、西德之間的邊界形成，當時邊界滿布\n隔離設施，阻絕人車，使得這片地帶近40年免於人為\n開發與破壞，土地和生物都得以喘息。之後，環保人\n士倡議繼續沿著過去敵對雙方的邊界線拓展保護區\n域，形成如圖(二十五)所示的「歐洲綠化帶」。近年\n來「歐洲綠化帶」的工作團隊，也在亞洲已經軍事對\n峙六十餘年的「停戰線」處，協助規畫設立生態保護\n區域，提供野生動植物棲息地。                           圖(二十五)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00", "source_pdf_sha1": "f43eb7872bea", "answer_pdf_sha1": "71bcc8be1a46", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 62 至 63 題：", "child_qnums": [62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-108-society-passage-57', updated_at=now() WHERE id='cap-108-society-057';
UPDATE public.questions SET parent_question_id='cap-108-society-passage-57', updated_at=now() WHERE id='cap-108-society-058';
UPDATE public.questions SET parent_question_id='cap-108-society-passage-59', updated_at=now() WHERE id='cap-108-society-059';
UPDATE public.questions SET parent_question_id='cap-108-society-passage-59', updated_at=now() WHERE id='cap-108-society-060';
UPDATE public.questions SET parent_question_id='cap-108-society-passage-59', updated_at=now() WHERE id='cap-108-society-061';
UPDATE public.questions SET parent_question_id='cap-108-society-passage-62', updated_at=now() WHERE id='cap-108-society-062';
UPDATE public.questions SET parent_question_id='cap-108-society-passage-62', updated_at=now() WHERE id='cap-108-society-063';

-- year 109: insert 2 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-109-society-passage-58", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-109-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 58 至 60 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "位於臺東縣的「伯朗大道」與「天堂路」，因咖啡與航空公司的廣告在此取\n景而一夕成名，吸引眾多遊客與車輛湧入。由於此二條道路並不寬敞，過去遊客常\n為欣賞美景隨意在路邊停車，妨礙農耕機具的進出。為避免影響農耕及稻米採收作\n業，於是政府對車輛進出加以管制，請民眾多加配合，違規者將依法開罰。\n  此外，由於遊客增多，有時會出現遊客擅入稻田拍照的脫序行為，使農民\n辛苦栽種的稻作蒙受損失。當地農民表示：「我們歡迎遊客來訪，但請將心比\n心，站在農民的立場想一想！我們給了你們這麼美好的環境，不要只留下損失\n讓我們承擔！」", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00", "source_pdf_sha1": "16c3c9d61729", "answer_pdf_sha1": "64e8d2b7d3a1", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 58 至 60 題：", "child_qnums": [58, 59, 60]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-109-society-passage-61", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-109-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 61 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "1900年，在慈禧太后默許民眾攻擊教堂及傳教士，甚至包圍北京的外國使館\n後，美軍第十五步兵團首次被派遣至中國保護僑民。清朝滅亡後，步兵團為確保\n美國人在華利益，長期駐守天津。袁世凱死後至北伐完成期間，中國內戰不斷，\n步兵團為避免動亂影響美國的利益，也曾介入其中，間接保護了天津民眾的安\n全。後來，當日本在今日北京附近發動侵華的軍事行動，與中國爆發戰爭，美國\n政府不願捲入戰局，因此決定撤離第十五步兵團，結束多年的派駐。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00", "source_pdf_sha1": "16c3c9d61729", "answer_pdf_sha1": "64e8d2b7d3a1", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 61 至 63 題：", "child_qnums": [61, 62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-109-society-passage-58', updated_at=now() WHERE id='cap-109-society-058';
UPDATE public.questions SET parent_question_id='cap-109-society-passage-58', updated_at=now() WHERE id='cap-109-society-059';
UPDATE public.questions SET parent_question_id='cap-109-society-passage-58', updated_at=now() WHERE id='cap-109-society-060';
UPDATE public.questions SET parent_question_id='cap-109-society-passage-61', updated_at=now() WHERE id='cap-109-society-061';
UPDATE public.questions SET parent_question_id='cap-109-society-passage-61', updated_at=now() WHERE id='cap-109-society-062';
UPDATE public.questions SET parent_question_id='cap-109-society-passage-61', updated_at=now() WHERE id='cap-109-society-063';

-- year 110: insert 2 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-110-society-passage-58", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-110-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 58 至 60 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "臺灣雲豹原始的棲息環境主要在海拔1,500公尺以下的暖溫帶原始森林，在\n土地被大量開發之後，近幾十年來，牠們似乎已經不見蹤跡，僅能從年長或有狩\n獵經驗的原住民口中，蒐集到有關曾經捕獲或目擊到雲豹的資訊，而大多數受訪\n者所指稱的地點多位於中央山脈南段的山區。有一群研究人員為了尋找牠們，歷\n經三年多的調查雖一無所獲，但還是以目前對雲豹的了解，嘗試繪製臺灣島上雲\n豹族群可能棲地的分布圖，其繪製的原則與流程如下：\n【步驟一】首先把全臺灣海拔在300到2,000公尺之間、面積超過40平方公里的森\n     林篩選出來，定義為雲豹的主要棲地。\n【步驟二】假設雲豹可以在距離1公里之內的破碎棲地間順利移動，因此把距離\n     主要棲地1公里以內面積不足40平方公里，但大於4平方公里的森林，\n     一併納入最近的主要棲地範疇。\n【步驟三】距離村莊、部落5公里以內，或距離主要道路3公里以內的主要棲地不\n     適合雲豹棲息，因而刪除這些區域。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "582e77c3260a", "answer_pdf_sha1": "bbb08ff8c483", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 58 至 60 題：", "child_qnums": [58, 59, 60]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-110-society-passage-61", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-110-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 61 至 63 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "食物是人類維持生存的必需品，但世界上卻不是人人都能夠吃飽喝足，因\n此，聯合國在1945年10月16日成立糧食與農業組織，希望能有效管理全球糧食系\n統，讓更多人擺脫飢餓；後來更進一步將這一天訂為世界糧食日，希望藉由訂定\n這個主題日呼籲大眾關注糧食議題。\n  聯合國關於糧食安全的報告顯示，目前全球約有8億人面臨飢餓，相當於世\n界上每9人中就有1人正遭受飢餓，但全球卻有約三分之一的糧食被浪費掉。由此\n看來，全球糧食並非不夠，而是分配不均，因此，如何處理糧食分配不均和食物\n浪費的問題，儼然已成為全球新的糧食議題。\n  在臺灣，食物浪費的情形也很嚴重，根據環保署統計全國廚餘量推估，國內\n每人每年平均浪費約100公斤的食物；食藥署也曾調查指出，一年約有3萬6千公\n噸的食物商品被當作垃圾處理。雖然臺灣目前沒有缺糧的危機，但糧食自給率偏\n低，加上農地逐漸減少、食品安全及食物浪費的問題，仍可能影響臺灣的糧食安\n全。\n  有鑑於此，減少糧食浪費似乎比增加糧食生產更加迫切，許多國家皆努力降\n低食物浪費的比率，臺灣自然也無法置身事外。因此，從食農教育開始培養國人\n愛惜食物的觀念，並推動安全的食物生產、提高糧食自給率，才能避免糧荒噩夢\n到來。\n                 & 糧食自給率：國內消費的糧食中，由國內生產供應的比率。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "582e77c3260a", "answer_pdf_sha1": "bbb08ff8c483", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 61 至 63 題：", "child_qnums": [61, 62, 63]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-110-society-passage-58', updated_at=now() WHERE id='cap-110-society-058';
UPDATE public.questions SET parent_question_id='cap-110-society-passage-58', updated_at=now() WHERE id='cap-110-society-059';
UPDATE public.questions SET parent_question_id='cap-110-society-passage-58', updated_at=now() WHERE id='cap-110-society-060';
UPDATE public.questions SET parent_question_id='cap-110-society-passage-61', updated_at=now() WHERE id='cap-110-society-061';
UPDATE public.questions SET parent_question_id='cap-110-society-passage-61', updated_at=now() WHERE id='cap-110-society-062';
UPDATE public.questions SET parent_question_id='cap-110-society-passage-61', updated_at=now() WHERE id='cap-110-society-063';

-- year 111: insert 4 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-111-society-passage-44", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-111-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 44 至 45 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "1855年，美商威廉士洋行的商船航行至臺灣府 安平外海，並派人上岸詢問是否\n能在當地貿易。經過安排，船長和臺灣道裕鐸在打狗會面，裕鐸在會談中告知船長，\n外國商船如果直接在安平停泊，並不符合規定，臺灣道將受到朝廷處罰，但裕鐸和\n打狗地方官員可以私下允許外國商船，停靠遠離政治核心的打狗進行貿易。\n  然而，實際上官員後來往往放任外國商船停靠安平，未能嚴格執行禁令。過了\n數年，新任的臺灣道孔昭慈於1859年，又要求外國商船「不准像之前一樣在安平附\n近起卸貨物」。有位英國商人分析：「這並非臺灣道刻意禁止外商在臺灣府貿易，而\n是因為府城當地泉州人組成的商人團體，跑去向福建巡撫告狀，指控外國商船收購\n物產，造成物價上漲，影響了本地商人的生意。」\n                         & 臺灣道：臺灣建省前，在臺灣的最高文官。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "017dd4352325", "answer_pdf_sha1": "5db25b41f664", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 44 至 45 題：", "child_qnums": [44, 45]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-111-society-passage-46", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-111-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 46 至 48 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "臺灣和地形有關的地名，多是古人依照當時的地理環境\n所命名，隨著時間變化，原先的山丘、河或湖可能會變遷甚\n至消失，僅剩下地名而已。因此，透過地名可推估過去的地\n景樣貌，例如「墘」字代表位於某一地物或水體的旁邊，如\n厝墘、田墘、港墘與溪墘等，圖(二十四)為「墘」字地名的\n分布圖。\n  小瑜家鄉地名也有「墘」字，雖然現今已經看不到當時\n的地貌；為了印證上述命名原則，她找到1921年日治時期家\n鄉的地圖(圖二十五)，並將當時的河流及水體標示在現今的\n電子地圖(圖二十六)上，發現與上述原則是一致的。              圖(二十四)\n\n\n\n\n        圖(二十五)               圖(二十六)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "017dd4352325", "answer_pdf_sha1": "5db25b41f664", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 46 至 48 題：", "child_qnums": [46, 47, 48]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-111-society-passage-49", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-111-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 49 至 51 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "過去以茶文化為主的亞洲人，對咖啡的接受度越來越高，更逐漸在各地形\n成獨特的咖啡文化。近年臺灣也吹起喝咖啡的風潮，路上常看到人手一杯咖\n啡。其實早在日治時期，日本就已將飲用咖啡的習慣帶入臺灣，戰後有業者\n創立供內用的專業咖啡店，還有廠商生產即溶與罐裝咖啡，但直到九○年代末\n期，美式咖啡連鎖品牌進駐臺灣引進外帶現煮咖啡後，咖啡市場才出現了關鍵\n性的改變，讓喝咖啡變成日常生活的一部分。2018年時，臺灣平均每人一年喝\n下超過200杯咖啡，咖啡豆的進口量是2008年時的兩倍以上，而且咖啡商機還在\n持續成長中。\n  而南韓人比臺灣人更愛喝咖啡，南韓在亞洲地區的咖啡飲用量名列前茅，\n根據相關調查報告推估，南韓平均每人一年喝下超過500杯咖啡。咖啡幾乎是\n南韓日常生活中不可缺少的一部分，不只是上班族的必備品，也相當受學生喜\n愛。在南韓的校園中，不少學生常因熬夜看書導致白天精神不濟，於是飲用咖\n啡來提神與增加專注力，但攝取過量咖啡因會有頭暈、心跳加速、睡眠障礙等\n症狀，可能不利於青少年神經及心血管系統的發育。南韓政府擔心校園內飲用\n咖啡的風氣，對於未來整體的國民健康、醫療資源會產生負面影響，因此修法\n規定自2018年9月起，全面禁止在高中以下校園內販售含有咖啡因的飲料。\n  或許臺灣人的咖啡癮還沒有南韓這麼嚴重，不過我國已有相關法令規範高\n中以下校園內飲品及點心的販售項目，違規販售不符規範的商品將被主管機關\n要求下架，以避免類似的問題在臺灣發生。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "017dd4352325", "answer_pdf_sha1": "5db25b41f664", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 49 至 51 題：", "child_qnums": [49, 50, 51]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-111-society-passage-52", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-111-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 52 至 54 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "空氣汙染是當代世界嚴重的問題，過去的\n英國也曾深受空汙的危害。日本 明治時代文學\n家夏目漱石在旅英期間的日記中寫道：「在倫敦\n的街上散步時吐了口痰，當我看到自己吐出一團\n全黑的物體時真是吃驚。幾百萬市民每天都吸著\n煤煙和塵埃，汙染著他們的肺。」當時人們以煤\n作為驅動蒸汽機以及家中暖爐、廚具的燃料，      圖(二十七)\n加上西歐地區盛行風的吹拂，使空氣汙染物不斷飄向城市的下風處，形成如\n圖(二十七)煙霧瀰漫的景觀。\n   燃煤帶來的空氣汙染會影響健康，可能降低新生兒存活率，或是使得兒童\n發育遲緩。十九世紀時英國部分城市的居民居住區域分布也反映出貧富差距，\n資本家與中產階級為了尋求較好的生活品質，紛紛遷往城市中汙染較少的區\n域，而較為窮困的低技術勞動階級，因受工作地點和經濟考量所限，只能居住\n於汙染嚴重的區域。因此，思想家恩格斯在當時就發出「只有勞動階級才會呼\n吸受汙染的空氣」的不平之鳴。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "017dd4352325", "answer_pdf_sha1": "5db25b41f664", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 52 至 54 題：", "child_qnums": [52, 53, 54]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-111-society-passage-44', updated_at=now() WHERE id='cap-111-society-044';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-44', updated_at=now() WHERE id='cap-111-society-045';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-46', updated_at=now() WHERE id='cap-111-society-046';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-46', updated_at=now() WHERE id='cap-111-society-047';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-46', updated_at=now() WHERE id='cap-111-society-048';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-49', updated_at=now() WHERE id='cap-111-society-049';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-49', updated_at=now() WHERE id='cap-111-society-050';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-49', updated_at=now() WHERE id='cap-111-society-051';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-52', updated_at=now() WHERE id='cap-111-society-052';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-52', updated_at=now() WHERE id='cap-111-society-053';
UPDATE public.questions SET parent_question_id='cap-111-society-passage-52', updated_at=now() WHERE id='cap-111-society-054';

-- year 112: insert 3 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-112-society-passage-46", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-112-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 46 至 48 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "日本 富士山為一近似圓錐狀的火山，有四條主要的登山路線，開放時間為\n每年7月上旬至9月上旬，不同路線的開放時間會視情況而有幾天的差距。四條\n路線雖特色各異，但皆一路向上爬升，民眾可根據自身狀況及喜好選擇適合的\n上山路線，例如體力、經驗較為不足的人，會選擇坡度較緩的路線；而體力較\n好且經驗豐富者，則可以挑戰難度較高的上山路線。民眾需先搭乘巴士或其他\n代步工具至登山口(起點)後，再進入步道挑戰登頂。\n  小婷登山經驗豐富，表(九)是她整理的四條登山路線部分資訊，她這次計畫\n選擇其中平均坡度最陡的路線攀登以挑戰自我。\n                 表(九)\n            路線\n   項目           甲     乙   丙   丁\n\n     起點海拔高度(公尺)   2,305  1,970  1,440 2,380\n     終點海拔高度(公尺)   3,720  3,720  3,715 3,715\n     上山路線長度(公里)      7.5    7.8  11.0    5.0\n     上山路線平均坡度(%)   18.9   22.4   20.7  26.7\n     註：路線平均坡度(%)＝(終點高度–– 起點高度)/路線長度100%", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "388a2cade52f", "answer_pdf_sha1": "16ca7e0abba6", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 46 至 48 題：", "child_qnums": [46, 47, 48]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-112-society-passage-49", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-112-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 49 至 51 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "位於非洲西南端的開普敦，是影\n                             摉㔬㐤ǴᲾ ăăⴲᶡ\n響世界歷史的重要都市。荷蘭人在\n1652年來到此地，因當地氣候適合，           㜊⬯\n可種植歐洲常見的蔬果並釀製葡萄                                  㟴Ⱉ䀋\n酒，用以補充船隻上的飲食，於是逐\n步將其建造為海上貿易的補給站。圖              只㙚Ⳁ斄ⶡ⛲\n                                          ⟥㐗⛀\n(十五)中的好望堡為統治者在開普敦                                 ⟥摯″⛲\n                               ⠥䎤㳃䗝⪸      ⠲敶⪬\n的辦公地點，是由奴隸所建造，其中\n\n\n\n\n                                      ◐\n一部分的奴隸是由荷蘭在亞洲的殖民                                            \u0016\u0016\u0011\n\u00156\n\n\n\n\n                                      劚\n                                  㙚\n地輸出。1869年蘇伊士運河開通後，                    圊㏽搵⩖⩖彶       ⠻㗙⛟\n\n\n\n\n                                  ⊶\n                                  ‪\n大量從歐洲出發的船隻改走新的通航\n                                             \u0013     \u0018\u0013\u0013P\n路線而使開普敦逐漸沒落。時至今\n日，開普敦則以多元文化及豐富生態                                  \u0014\u001b\u0011\u0017\u0015(\n                                          圖(十五)\n成為非洲熱門觀光景點。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "388a2cade52f", "answer_pdf_sha1": "16ca7e0abba6", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 49 至 51 題：", "child_qnums": [49, 50, 51]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-112-society-passage-52", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-112-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 52 至 54 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "美國的反體罰組織於1998年發起「不打小孩日」的活動，目的是藉著這一\n天宣傳反體罰的兒童人權觀念。這個最先在美國推動的活動，迅速得到國際社\n會的響應，2001年起，其他反\n體罰及兒童人權團體也開始於      ୾ርϛ҉ϊࡇС ᗝ፝ղ\n4月30日這一天舉辦各種活動，              ၑၑࣽϛ्҉ϊࡇ\n倡議終止體罰兒童，並推廣正                ՎЎӶ೼ΚЉϛ्҉\n面的管教方式。2006年，在國              η೩ղཽึ౫\n內許多民間團體共同響應下，                ஡‫ؑޠٿ‬ΚЉ\n臺灣也參與「國際不打小孩                 ղഎϛሰ्҉\n日」的活動，圖(十六)是相關\n活動的宣傳標語。                  圖(十六)\n   我國政府也致力建立更完善的法律制度來保障兒童權益，並以符合聯合國\n的標準為目標。例如，修訂《兒童及少年福利與權益保障法》，促使政府、社\n會大眾與家長正視兒童福利與虐待兒童的問題；修訂《教育基本法》，明文禁\n止校園體罰，藉由公權力保障學生不受體罰。政府的各種作法，目的是預防及\n保護兒童免於一切形式的暴力侵害，希望提供兒童更完善的成長環境。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "388a2cade52f", "answer_pdf_sha1": "16ca7e0abba6", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 52 至 54 題：", "child_qnums": [52, 53, 54]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-112-society-passage-46', updated_at=now() WHERE id='cap-112-society-046';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-46', updated_at=now() WHERE id='cap-112-society-047';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-46', updated_at=now() WHERE id='cap-112-society-048';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-49', updated_at=now() WHERE id='cap-112-society-049';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-49', updated_at=now() WHERE id='cap-112-society-050';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-49', updated_at=now() WHERE id='cap-112-society-051';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-52', updated_at=now() WHERE id='cap-112-society-052';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-52', updated_at=now() WHERE id='cap-112-society-053';
UPDATE public.questions SET parent_question_id='cap-112-society-passage-52', updated_at=now() WHERE id='cap-112-society-054';

-- year 113: insert 3 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-113-society-passage-46", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-113-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 46 至 48 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "過去《道路交通管理處罰條例》中的「電動自行車」，僅以電力驅動行\n駛，因與電動機車的使用差異不大，且不須懸掛車牌、不須駕照、駕駛者無年\n齡限制、價格較低廉，部分民眾喜愛以它作為代步工具，卻也衍生諸多問題。\n  2022年4月時，政府修正《道路交通管理處罰條例》，將「電動自行車」更\n名為「微型電動二輪車」，加入應領用並懸掛車牌進行管理、投保強制汽車責\n任保險、年滿14歲才能駕駛等規定，違規者將遭主管機關開罰，並於5月4日由\n總統公布。此外，若在修正規定施行前就已持有微型電動二輪車的車主，須在\n施行後的二年內領用並懸掛車牌，逾期亦將受罰。\n  由於法規修正後，仍有諸多行政工作需要時間準備，因此政府宣布這些修\n正規定在2022年11月30日才正式施行。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "393a484362c4", "answer_pdf_sha1": "b5ad08c86f8b", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 46 至 48 題：", "child_qnums": [46, 47, 48]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-113-society-passage-49", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-113-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 49 至 51 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "根據《美國憲法》，眾議院的435席議員席次是按照各州人口數分配，而每\n10年會依據人口普查結果重新分配席次，且每個州至少有1個席次。圖(二十三)\n為不同年分各州眾議員席次的變化情形，每位眾議員平均代表的美國公民也從\n646,952人變成761,169人。其中，僅有1席的州為圖中標示斜線的區域，而席次\n最多的州皆為加州，在2020年為52席。臺灣現行的區域立委席次分配也採類似\n美國的方式，例如73位區域立委中，臺北市應選出8人，雲林縣應選出2人。\n\n\n\n\n                    圖(二十三)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "393a484362c4", "answer_pdf_sha1": "b5ad08c86f8b", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 49 至 51 題：", "child_qnums": [49, 50, 51]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-113-society-passage-52", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-113-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 52 至 54 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "1950年代，臺灣電影為配合政府「反共抗俄」政策，政府所屬片廠拍攝的\n電影，幾乎都是配合官方意識形態的政治宣傳工具，而民間則出現以歌仔戲劇\n本與民俗故事為素材，並用閩南語發音的「臺語電影」。1960年代，因政府強\n調社會安定，臺灣電影開啟「健康寫實」風格，主張電影劇情應避免暴露社會\n的黑暗面，呈現人性的光輝，受到當時海內外華人市場的歡迎。在1970年代經\n濟成長之下，愛情、武俠、功夫、喜劇等電影類型，也進一步走入民眾的休閒\n娛樂之中。\n  1980年代初期，臺灣電影受到香港電影新浪潮的影響，進入「臺灣新電\n影」時期。「新電影」發展初期的導演與編劇，在劇本創作上融入鄉土文學的\n題材，拍攝風格以強調自然、寫實為主，在題材的選用上，開始有意識的挑戰\n官方政治禁忌，而受到相關單位的關切。例如「新電影」初期代表作《兒子的\n大玩偶》，在正式上映前，因電影片段中呈現臺北違建林立等有礙政府形象的\n畫面，遭官方施壓要求刪減，此事件後來被稱為「削蘋果事件」。最後借助影\n視記者楊士琪等人的聲援，才使得電影逃過被刪剪的命運。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "393a484362c4", "answer_pdf_sha1": "b5ad08c86f8b", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 52 至 54 題：", "child_qnums": [52, 53, 54]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-113-society-passage-46', updated_at=now() WHERE id='cap-113-society-046';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-46', updated_at=now() WHERE id='cap-113-society-047';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-46', updated_at=now() WHERE id='cap-113-society-048';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-49', updated_at=now() WHERE id='cap-113-society-049';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-49', updated_at=now() WHERE id='cap-113-society-050';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-49', updated_at=now() WHERE id='cap-113-society-051';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-52', updated_at=now() WHERE id='cap-113-society-052';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-52', updated_at=now() WHERE id='cap-113-society-053';
UPDATE public.questions SET parent_question_id='cap-113-society-passage-52', updated_at=now() WHERE id='cap-113-society-054';

-- year 114: insert 3 passage_parents
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-114-society-passage-46", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-114-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 46 至 48 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "我國現行汽、機車車牌號碼的編碼規則，原則上每組號碼皆是由英文字母與\n阿拉伯數字組成，但在民意反應及諸多考量下，有些數字、英文字母或是特定組\n合，已不再使用於新發放的車牌。例如：數字的「4」，是因為其發音與「死」字\n相近，一般民眾認為觸霉頭而不願使用；英文字母的「I」、「O」不再被使用，\n是因為與數字「1」、「0」太相似；至於BAD、BUM、END等，則由於字母組合\n具有負面意涵，因此也加以排除。\n    除此之外，政府也開放民眾可額外付費選擇號碼，有些民眾會想要擁有\n6666、8888、9999等特殊號碼的車牌，因此這些號碼的價格常遠高於其他車牌；也\n有另一些民眾只對與生日、特殊紀念日有關的號碼組合有興趣，因此選擇購買這\n些特定號碼。至於不在意車牌號碼的民眾，則可接受政府發放一般組合的車牌，\n無需額外支付選號費。但不論最後是選擇哪一個車牌號碼，汽、機車所有人都要\n將車牌懸掛在指定位置，違規者將被警察依《道路交通管理處罰條例》開罰。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T18:39:26+00:00", "source_pdf_sha1": "a2859bc348a7", "answer_pdf_sha1": "6a98d676c5b0", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 46 至 48 題：", "child_qnums": [46, 47, 48]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-114-society-passage-49", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-114-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 49 至 51 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "巴斯人的祖先原本居住於伊朗高原一帶，七世紀上半葉，阿拉伯軍隊擊敗\n統治當地的薩珊王朝國王伊嗣俟，不願被穆斯林統治的人們遠離故鄉，遷徙至\n印度半島西部避難。此後數個世紀，伊斯蘭教勢力逐漸進入印度，但印度的穆\n斯林統治者對於不同的宗教和文化，表現出較為寬容的態度。這使巴斯人得以\n在印度從事貿易等行業，並世代信仰發源於伊朗高原的宗教。\n  十七世紀後期，善於經商的巴斯人，開始與歐\n洲商人合作，既促進印度西部城市孟買等地的繁\n榮，也使得巴斯人隨著歐洲商人來到中國進行貿\n易。十八世紀後期至十九世紀中期，巴斯商人在歐\n洲殖民勢力對中國的貿易網絡之中，扮演重要角\n色，並與控制印度的殖民者一起在中國活動。當時\n巴斯商人留下許多會館與墓園，圖(二十)墓碑即為\n一例。                         圖(二十)\n  十九世紀中期以後，因為美國內戰導致紡織業原料短缺，以及蘇伊士運河\n開通促進航運事業發展等影響，巴斯商人傾向加強投資印度和歐洲的產業，而\n對中國的商貿占比則逐漸下降。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T18:39:26+00:00", "source_pdf_sha1": "a2859bc348a7", "answer_pdf_sha1": "6a98d676c5b0", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 49 至 51 題：", "child_qnums": [49, 50, 51]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}, {"id": "cap-114-society-passage-52", "exam_id": "cap", "subject_id": "sub-cap-social", "paper_id": "cap-114-society", "question_type": "reading_passage", "question_text": "閱讀下列選文，回答第 52 至 54 題：", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "坐落在南大西洋的南喬治亞島，其\n位置如圖(二十一)所示。冰天雪地的環\n境下，島上仍孕育了為數眾多的海獅、\n象鼻海豹、國王企鵝和特有種鳥類。\n  1775年庫克船長登島後，宣布其為\n英國領土並以當時的英王命名。二十\n世紀初該島設有數個捕鯨站，目前皆\n已廢棄。1927年，鄰近該島的甲國聲稱\n擁有該島主權，此領土紛爭成為日後\n與英國爆發戰爭的原因之一，1982年戰\n爭結束後，該島仍為英國所管轄。目\n                            圖(二十一)\n前該島幾乎沒有常住人口，為觀光船\n行程的中繼站。\n  2017年，一座面積約4,200平方公里的龐大冰山，脫離陸地後持續在海上漂\n流，圖(二十一)顯示該冰山於不同時間的位置。該冰山雖然持續崩裂、融化，但\n仍相當巨大，2020年科學家依據過去其他冰山漂流的軌跡，推測它極有可能撞\n上南喬治亞島，並研判可能產生的影響。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T18:39:26+00:00", "source_pdf_sha1": "a2859bc348a7", "answer_pdf_sha1": "6a98d676c5b0", "flags": [], "parse_confidence": null, "intro_line": "閱讀下列選文，回答第 52 至 54 題：", "child_qnums": [52, 53, 54]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_type = EXCLUDED.question_type,
  question_text = EXCLUDED.question_text,
  options = EXCLUDED.options, media = EXCLUDED.media,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  source_meta = EXCLUDED.source_meta, updated_at = now();

UPDATE public.questions SET parent_question_id='cap-114-society-passage-46', updated_at=now() WHERE id='cap-114-society-046';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-46', updated_at=now() WHERE id='cap-114-society-047';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-46', updated_at=now() WHERE id='cap-114-society-048';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-49', updated_at=now() WHERE id='cap-114-society-049';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-49', updated_at=now() WHERE id='cap-114-society-050';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-49', updated_at=now() WHERE id='cap-114-society-051';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-52', updated_at=now() WHERE id='cap-114-society-052';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-52', updated_at=now() WHERE id='cap-114-society-053';
UPDATE public.questions SET parent_question_id='cap-114-society-passage-52', updated_at=now() WHERE id='cap-114-society-054';

COMMIT;
SELECT COUNT(*) FILTER (WHERE question_type='reading_passage') AS p, COUNT(*) FILTER (WHERE parent_question_id IS NOT NULL AND subject_id='sub-cap-social') AS c FROM public.questions WHERE subject_id='sub-cap-social';
