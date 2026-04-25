-- W1.6 questions batch 8277/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-39f5e973-moex-00249', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '關於加密虛擬貨幣的挖礦行為，下列何者錯誤？', '["所有的礦工會形成一個同儕計算（peer-to-peercomputing）網路", "每一個礦工所做的計算是用來驗證並確保正確的交易紀錄組成的區塊鏈", "挖礦網路的規模大小主要是由虛擬貨幣的價值決定", "礦工用來挖礦的電腦的計算速度越快，礦工的獲利一定也越高"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 32, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00250', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '下列那一個軟體模組和作業系統核心的本文切換（contextswitch）的行為並無直接關聯？', '["中斷處理（interrupthandling）", "排程器（scheduler）", "調度器（dispatcher）", "命令列殼層（commandshell）"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 33, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00251', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '在關聯式資料庫中，一個關係（relation）可以用一個二維表格代表，每一列代表某筆資料（atuple），而每 一欄代表資料的某種屬性（anattribute）。若設計以下的關聯式資料庫（表一）來記錄一個公司的員工資訊： [表一] 員工ID 名字 地址 職稱 部門 離職日 25X15 王小明 中華路17號 副理 業務 2-28-2003 25X15 王小明 中華路17號 經理 業務 * 34Y70 李大海 忠孝路573號 秘書 人事 * 23Y34 陳立立 大同路65號 秘書 會計 * 為了避免同一個人的個人資訊重覆出現多次，可以把這個relation表格拆成如下的三個relation表格（表二~表四）， [表二] [表三] [表四] 員工ID 名字 地址 員工ID 職稱 離職日 職稱 部門 25X15 王小明 中華路17號 25X15 副理 2-28-2003 副理 業務 34Y70 李大海 忠孝路573號 25X15 經理 * 經理 業務 23Y34 陳立立 大同路65號 34Y70 秘書 * 秘書 人事 23Y34 秘書 * 秘書 會計 不過這樣的拆法會失去某些資訊，有些資訊在原本單一relation表格可以查到的資訊就沒辦法查了。和原 本資料庫相比，新資料庫有部分資訊消失了。下列敘述何者正確？', '["新資料庫無法查出某個員工在公司曾擔任的工作，但原資料庫可以", "新資料庫無法查出某個員工在公司工作多久了，但原資料庫可以", "新資料庫無法查出某個員工所屬的部門，但原資料庫可以", "新資料庫無法查出不同部門的相同工作（如秘書）的人，是住那些地方，但原資料庫可以"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 34, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00252', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '下列何者不適用於代表數位影像的色彩模型？', '["RGB（red,green,blue）", "HSV（hue,saturation,value）", "YPR（yaw,pitch,roll）", "YIQ（luminance,inphase,quadrature）"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 35, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00253', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '關於點陣圖的敘述，下列何者錯誤？', '["固定解析度的點陣圖於解析度更低的螢幕輸出後，會產生失真", "24位元的RGB影像表示每個像素點有24種可能的顏色", "常見的格式有BMP、PNG等", "使用像素陣列來表示圖像"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 36, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00254', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '關於串流媒體（StreamingMedia）的敘述，下列何者錯誤？', '["需要足夠的網路頻寬，才可以流暢地觀看影片", "使用者不用等整部影片接收完畢，就可以觀看影片", "串流的影片不會儲存於使用者端", "串流媒體是將整個資料壓縮為一個封包後一次傳送"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 37, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00255', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '關於圖片壓縮，下列敘述何者錯誤？', '["BMP為無壓縮格式", "PNG可用於儲存動態影像", "GIF最多只能儲存256色", "JPEG屬於破壞性壓縮"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 38, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00256', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '有關視訊傳輸介面的敘述，下列何者錯誤？', '["VGA（VideoGraphicsArray）傳送的訊號為類比訊號", "DVI（DigitalVisualInterface）主要傳送數位訊號，但部分規格也支援類比訊號", "HDMI（HighDefinitionMultimediaInterface）傳送的訊號為類比訊號", "HDMI（HighDefinitionMultimediaInterface）除了傳送影像，還會同時傳送聲音訊號"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 39, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00257', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-156cbda0', 'sub-pukao-39f5e973-02', NULL, 'single_choice', '假設一個數字序列包含0,1,2,3四個數字，若以兩個位元表達每一個數字，需要2乘上序列長度（數字的 個數）的位元數來儲存這個數字序列。若已知0,1,2,3出現的比例分別是10%,20%,30%,40%，則使用霍 夫曼編碼法（HuffmanCoding）重新編碼後，所需的位元數為原本的：', '["85%", "90%", "95%", "100%"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "14b29f1b1063", "answer_pdf_sha1": "2de69e704cf1", "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1217", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": 40, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('pukao-39f5e973-moex-00258', 'pukao-39f5e973', 'pukao-39f5e973-moex-110-1f134407', 'sub-pukao-39f5e973-04', NULL, 'essay', '在 MicrosoftAccess中，建有「老師資料表」與「課程資料表」，兩個表
格皆有四個欄位，內容如下圖：
老師資料表 課程資料表
老師ID 姓名 電話 年紀 課程ID 課程名稱 老師ID 人數
1 張三 123 30 1 國文 1 58
2 王武 456 56 2 英文 2 63
3 劉丹 897 42 3 數學 1 42
4 陳河 658 39 4 物理 2 89
5 高樂 756 60 6 化學 3 67
7 微積分 4 75
8 音樂 5 30
9 美術 5 36
10 電子學 4 69
其資料庫關聯圖如下圖所示，
老師資料表 課程資料表
老師 1 課程
ID ID
姓名 課程名稱
∞ 老師
電話 ID
年紀 人數
在「課程資料表」中，PK與 FK的欄位名稱為何？（5分）
請說明上圖 1 ∞關聯的特色與優點。（8分）
寫一個 SQL指令查詢來得到下表，其中欄位「人數總和」為該老師所
開所有課程的↔人數總和。（10分）
姓名 人數總和
王武 152
高樂 66
張三 100
陳河 144
劉丹 67
寫一個 SQL 指令查詢來得到課程老師的年紀小於 55 歲，且人數大於
50人的課程資訊表，如下表所示，且該資料需以人數遞減排序。（12分）
課程ID 課程名稱 姓名 電話 人數
7 微積分 陳河 658 75
10 電子學 陳河 658 69
6 化學 劉丹 897 67
1 國文 張三 123 58
45130', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:52+00:00", "source_pdf_sha1": "eb049019bf9c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "451", "s": "1219", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料處理概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
