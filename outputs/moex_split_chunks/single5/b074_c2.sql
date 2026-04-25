-- moex_license_ingest questions batch 74/330 (50 rows)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
('real-estate-appraiser-moex-00032', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-9cd45b90', 'sub-real-estate-appraiser-06', NULL, 'essay', '土地增值稅之免徵、不課徵、不計徵，其內涵之差異何在？並依現行規
定各列舉二種情形說明之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "f60b3d5833c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法物權與不動產法規", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00033', 'real-estate-appraiser', 'real-estate-appraiser-moex-113-9cd45b90', 'sub-real-estate-appraiser-06', NULL, 'essay', '何謂公共設施保留地？都市計畫公共設施保留地地價稅稅率為何？又
都市計畫法指定之公共設施保留地移轉，或非都市土地經需用土地人開
闢完成或依計畫核定供公共設施使用，並依法完成使用地編定之移轉，
其土地增值稅如何計徵？試分別申述之。（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "f60b3d5833c8", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "113130", "c": "905", "s": "0301", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "民法物權與不動產法規", "year": "113", "exam_name": "113年專門職業及技術人員高等考試會計師、不動產估價師、專利師、民間之公證人考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00034', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '比較法（40分）
作答過程請依不動產估價之相關理論、規範與本試題提供之敘述，由
下列個別因素調整表（表一）與比較價格決定過程表（表二）內容中，
挑選五項最不合理之內容，陳述理由並加以說明、修改（相同性質者
為一項，如超過五項，請依重要性排列，但以前五項計分）。
對於不合理之處可調整修正數值而計算之結果僅止於作答中呈現，不
進行後續相關數值之調整；亦即，表格中後續相關數值仍視為正確而
加以沿用。
本試題旨在測驗考生對不動產估價觀念的理解程度，無需進行表格中
數值計算正確與否之驗算，部分數值亦可能因資料不足而無法驗算。
表一 個別因素調整表
主要 差異 差異 差異
次要項目 勘估標的 比較標的一 比較標的二 比較標的三
項目 百分率 百分率 百分率
宗 總價與單價關係 普通 稍優 -1% 稍優 -1% 稍優 -1%
地 面積與規劃潛力 211.75坪 77.14坪 +4% 107.09坪 +2% 27.23坪 +10%
個
臨路面寬 40M 47M 0% 30M +3% 25M +2%
別
寬深比 39：18 11：23 +2% 32：12 +2% 10：9 +4%
條
形狀 尚稱方整 方整 -1% 方整 -1% 尚稱方整 0%
件
地勢 平坦 平坦 0% 平坦 0% 平坦 0%
臨路情形 單面 單面 0% 雙面 -1% 單面 0%
鄰地使用情形 優 稍優 +2% 優 0% 優 0%
調整率小計 +6% +4% +15%
行 使用分區與編訂 第三種住宅 第三種住宅 0% 第三種住宅 0% 第二種住宅 0%
政 建蔽率 45% 45% 0% 45% 0% 45% 0%
條
可建容積率 225% 225% 0% 225% 0% 180% +6%
件
禁限建之有無 無 無 0% 無 0% 無 0%
調整率小計 +0% +0% +6%
道 主要臨路路寬 25M 6M +3% 8M +2% 10M +2%
路 臨接道路面 雙面 雙面 0% 單面 +1% 雙面 0%
條
道路種別 主要道路 巷道 +2% 巷道 +2% 巷道 +2%
件
道路鋪設 普通 普通 0% 普通 0% 普通 0%
調整率小計 +5% +5% +4%
接 捷運站 約800M 約800M 0% 約750M -1% 約140M -3%
近 公車站 約800M 約800M 0% 約750M -1% 約140M -3%
條
學校 約130M 約230M 0% 約250M 0% 約350M 0%
件
公園 約200M 約50M 0% 約220M 0% 約250M 0%
市場 約50M 約120M 0% 約230M 0% 約30M 0%
停車場 稍優 稍優 0% 稍優 0% 稍優 0%
調整率小計 +0% -2% -6%
週 地勢 普通 普通 0% 普通 0% 普通 0%
邊 日照 普通 普通 0% 普通 0% 普通 0%
環
嫌惡設施有無 無 無 0% 無 0% 無 0%
境
停車方便性 普通 普通 0% 普通 0% 普通 0%
條
商業效益等 普通 普通 0% 普通 0% 普通 0%
件
調整率小計 +0% +0% +0%
差異百分率合計 +11% +7% +19%
表二 比較價格決定過程表
項目 比較標的一 比較標的二 比較標的三
交易價格
165.0 180.0 115.0
（萬元/坪）
價格種類 成交價格 成交價格 成交價格
情況因素
100% 100% 100%
調整率
情況因素調整後價格
165.0 180.0 115.0
（萬元/坪）
價格日期因素
101% 100% 100%
調整率
價格日期因素
166.7 180.0 115.0
調整後價格（萬元/坪）
區域因素
95% 90% 105%
調整率
區域因素調整後價格
158.3 162.0 120.8
（萬元/坪）
個別因素
111% 107% 119%
調整率
試算價格
175.7 173.3 143.7
（萬元/坪）
調整率絕對值加總 15% 17% 33%
比較標的加權數 38% 36% 26%
加權數計算後價格
66.8 62.4 37.4
（萬元/坪）
最後推定比較價格
166.541≒166.5
（萬元/坪）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "7875adad2e55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00035', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '收益法（25分）
該地現為 25 個停車位的全自動收費停車場，年租金收入 600 萬元，
年繳地價稅與管理費分別為 50萬元與 30萬元。租金、地價稅與管理
費預期每年上漲1%。
請先依不動產估價技術規則第 32 條規定，列示折現現金流量分析法
之計算公式，再以折現率5%、折現現金流量分析期間 5年的方式，推
估此停車場使用下之地價，以作為本土地的收益價格。
作答過程中，請依公式中所需各項數值、計算過程與結果逐一列示。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "7875adad2e55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL),
  ('real-estate-appraiser-moex-00036', 'real-estate-appraiser', 'real-estate-appraiser-moex-112-709493a3', 'sub-real-estate-appraiser-01', NULL, 'essay', '土地開發分析法（25分）
請依據下列資料，以土地開發分析法推估土地開發分析價格。
估價條件：
㉑最有效使用分析：興建地下2 層、地上 10層之住宅大樓使用，總樓
地板面積880坪。
㉒總銷售金額：經由比較法推估本住宅大樓之總銷售價格為 60,000 萬
元。
㉓建築開發成本：營造施工費以每坪 11萬元計，規劃設計費以營造施
工費用之3%計，廣告銷售費用以總銷售金額之 4%計，管理費用以
總銷售金額之 4%計，稅捐及其他負擔以總銷售金額之 1%計。
㉔資本利息：自有資金年利率為 2%、借貸資金年利率為3%。
㉕資金來源：土地資金部分：自有資金占 40%、貸款資金占 60%；建
築資金部分：自有資金占50%、貸款資金占 50%。
㉖土地與建物價值比例：70%：30%
㉗開發年期：土地從取得至完銷共 2.5年、建物興建需 2年。
㉘開發建築利潤率：以13%計。
請先依不動產估價技術規則第 81 條規定，列示土地開發分析法之計
算公式，再依公式中所需各項數值、計算過程與結果，逐一列示。', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T04:29:29+00:00", "source_pdf_sha1": "7875adad2e55", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "112140", "c": "905", "s": "0304", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "不動產估價實務", "year": "112", "exam_name": "112年專門職業及技術人員高等考試會計師、不動產估價師、專利師考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "slug": "appraiser", "db_exam_id": "real-estate-appraiser"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
