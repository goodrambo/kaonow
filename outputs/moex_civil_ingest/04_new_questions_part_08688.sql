-- W1.6 questions batch 8688/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('pukao-a677e516-moex-00055', 'pukao-a677e516', 'pukao-a677e516-moex-110-c4f12cde', 'sub-pukao-a677e516-06', NULL, 'essay', '5 30 50', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "9eac717fa839", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "443", "s": "1118", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00056', 'pukao-a677e516', 'pukao-a677e516-moex-110-c4f12cde', 'sub-pukao-a677e516-06', NULL, 'essay', '3 40 60
計算 X與 Y的期望值與變異數。（8分）
計算 E(X+Y)與 Var(X+Y)。（8 分）
計算 X 與 Y 的共變異數與相關係數，並判斷 X 與 Y 是正相關、負相
關或不相關。（9分）
一間百貨公司分析它們最近的銷售情況，並且決定顧客購買商品的付款
方式與商品價格類別之間的關係，得到下表中的聯合機率：
現金 信用卡 簽帳金融卡
$20以下 .09 .03 .04
$20-$100 .05 .21 .18
$100以上 .03 .23 .14
以簽帳金融卡付消費款的比例為何？（5 分）
以信用卡支付之下，消費款超過$100 的機率為何？（5分）
以信用卡或簽帳金融卡支付消費款的比例為何？（5分）
44350
某週刊曾報導廣告主與網際網路服務供應商及搜尋引擎簽訂合約，在網
站上刊登廣告，付費方式是根據點擊該項廣告的潛在顧客的數目而定。
不幸的是，點擊詐欺（為了增加廣告收入而點擊該項廣告）已然成為問
題。40%的廣告主宣稱，他們成為點擊詐欺的受害者。假定隨機抽選 380
位廣告主，以了解點擊詐欺的狀況：
樣本比例與母體比例的差距在±0.04 以內的機率是多少？（5分）
樣本比例大於0.45 的機率是多少？（5分）
某醫學期刊中描述一項研究，想要判斷運動是否可以延長心臟麻痺病患
的生命。招募 801 位心臟麻痺病患的樣本；其中 395 位接受運動的訓練，
而另外的 406 位則無。在接受運動的群組當中有 88 位病患未能延長生
命，而在無運動群組中有105位病患未能延長生命。
在5%的顯著水準下，研究人員是否可以推論運動訓練能夠延長生命？
寫下假設檢定的過程，包括虛無與對立假設、拒絕域、檢定統計量與檢
定結果。（15分）
有一位候選人在宣告參選之前，評估選民對他的初始支持率。不做任何
事前公開活動之前提下，若選民支持他的比例數p 大約 0.15，他將投入
選戰。從隨機選取的 n個選民的ㄧ項民調中，該候選人希望比例數 p 的
估計值 y/n 距離 p 在 0.03 之內。也就是說，決策乃基於形如 y/n ± 0.03
的ㄧ個 95%信賴區間，y代表支持該候選人的選民人數：
在候選人對於p 的大小沒有任何概念下，如何決定所需樣本數大小，
以便達到所求之可靠度及準確度？（5分）
假設由該選區隨機選取1,068個選民進行訪談，得到 y=214 個選民的
支持，求 p 的95%信賴區間。根據此樣本所提供的訊息，該候選人是
否決定投入選戰？（5分）
比較的最大誤差與 0.03，說明為何會有如此差別？（5 分）
44350
統計課中一位成績接近底部的學生甲，決定投入一定的練習時數以改善
期末的成績。但是甲並不想做過多的練習，因為甲企圖以最少的工作量
達到最終畢業的目的。甲註冊一門統計課，離期末考僅有 3個星期，並
且最後學期總成績是以下列方式決定：
學期總成績＝20%（作業）＋30%（期中考）＋50%（期末考）
為了決定在剩餘的 3 星期內要付出多少努力，甲必須根據作業分數（有
20 分）與期中考分數（有 30 分）去預測期末考成績。甲的這些分數分
別是 12/20 與14/30。
甲蒐集去年選修這門統計課 30 位學生的期末考分數、作業分數
（assignment），與期中考分數（midterm）。
利用以下30 位學生的資料所做的迴歸分析結果回答問題：
決定估計的迴歸方程式並檢定模型的有效性（5%的顯著水準）。（4 分）
估計的標準誤為何？如何詮釋這個統計量？（4 分）
判定係數為何？這個統計量提供什麼訊息？（4 分）
詮釋估計的迴歸方程式中每一個係數。（4分）
在此模型中，檢定作業分數之係數是否為零（5%的顯著水準）？（4分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "9eac717fa839", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "443", "s": "1118", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "統計學概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "0", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00057', 'pukao-a677e516', 'pukao-a677e516-moex-110-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '請繪製運輸規劃流程，並詳述各步驟的內容。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "1264749e147b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "443", "s": "1711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00058', 'pukao-a677e516', 'pukao-a677e516-moex-110-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '傳統方案評估內容之重點為何？現代方案評估內容增加那些必要之考
量？請建立評估矩陣之格式並分別詳述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "1264749e147b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "443", "s": "1711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00059', 'pukao-a677e516', 'pukao-a677e516-moex-110-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '利用佛拉塔法（Fratarmethod）計算旅次分布需求量。今假設例題如下圖
所示，其中交通分區 i 之旅次產生成長率F 2，交通分區 j=1,2,3 之旅
i
次吸引成長率分別為F 3，F 4，F 2，又已知基年每日由交
j1 j2 j3
通分區 i 產生而被交通分區 j 吸引的旅次數分別為T 200，
i,j1
T 400，T 600，請問目標年由交通分區 i 產生而被交通分區
i,j2 i,j3
j=1、2、3 的吸引的旅次數分別為多少？（25分）
j=1 F 3
j1
F 2
i
i j=2 F 4 起點
j2
迄點
j=3 F 2
j3', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "1264749e147b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "443", "s": "1711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-a677e516-moex-00060', 'pukao-a677e516', 'pukao-a677e516-moex-110-c8d0a507', 'sub-pukao-a677e516-04', NULL, 'essay', '自駕公車的應用被視為自駕車技術的優先發展方向。為說服用路人踴躍
搭乘自駕公車，加速推動其在現實世界之應用，請以旅行時間與旅行成
本為例，說明兩變數所對應之效用係數值是否與普通公車有所差異以及
所造成的原因。（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:55+00:00", "source_pdf_sha1": "1264749e147b", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110090", "c": "443", "s": "1711", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "運輸規劃概要", "year": "110", "exam_name": "110年公務人員高等考試三級考試暨普通考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "交通技術"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00001', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '十六進制數字54B，等同那一個十進制數字？', '["927", "1282", "1355", "1764"]'::jsonb, 2, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 1, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00002', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '假設有一台電腦的記憶體容量為512MB（Megabytes），每一筆資料會用16bytes的單位來儲存資料，至少 需要多少位元數（bits）來定位記憶體中的任何一筆資料？', '["12位元", "16位元", "24位元", "32位元"]'::jsonb, 3, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 2, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00003', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '關於算術／邏輯指令（Arithmetic／LogicInstructions）的敘述，下列何者正確？', '["算術／邏輯指令的功能是將資料從CPU傳送至主記憶體", "包括布林邏輯運算，例如AND、OR及XOR等", "包含從記憶體載入資料到暫存器的動作", "可用於控制程式流程，例如條件式跳躍（ConditionalJump）"]'::jsonb, 1, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 3, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL),
  ('pukao-acfc4025-moex-00004', 'pukao-acfc4025', 'pukao-acfc4025-moex-114-156cbda0', 'sub-pukao-acfc4025-01', NULL, 'single_choice', '某特殊用途處理器以12 bits暫存器儲存資料，並以二補數（two''s complement）編碼來儲存有號數。則該 處理器能以一個暫存器儲存的整數值範圍為何？', '["-2048至2047", "-2047至2048", "-4096至4095", "-4095至4096"]'::jsonb, 0, NULL, TRUE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:35:39+00:00", "source_pdf_sha1": "ebba180acb37", "answer_pdf_sha1": "b58c95b8bfaa", "source_family": "moex-gov-tw", "moex": {"exam_code": "114080", "c": "446", "s": "2504", "q": "1"}, "raw_section_label": "本試題為單一選擇題", "subject": "計算機概要", "year": "114", "exam_name": "114年公務人員高等考試三級考試暨普通考試", "original_question_number": 4, "answer_corrected": false, "flags": [], "civil_slug": "pukao", "civil_category": "電子工程"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
