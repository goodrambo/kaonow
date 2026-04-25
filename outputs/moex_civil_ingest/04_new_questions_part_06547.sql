-- W1.6 questions batch 6547/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('locality-39f5e973-moex-00102', 'locality-39f5e973', 'locality-39f5e973-moex-110-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '請畫出下圖以鏈結串列（linklist）為基礎的相鄰串列（adjacencylist）
結構表示之結果。（5分）
請運用一維陣列設計一資料結構採循序串列（sequentiallist）架構，其
仍舊以類似子題相鄰串列策略表示無向圖（undirected graph）節點
與邊的關係，但僅以一維陣列呈現第子題之相鄰串列概念。圖之節
點與邊的關係僅以此一維陣列元素記錄並呈現，不可使用其他資料結
構，另外，陣列中亦需記錄此陣列中用來記錄與圖相關資訊之元素個
數；除了說明資料結構外，也請寫出下圖以此資料結構表示之一維陣
列結果。（8分）
請列出兩項在程式中以第子題之以鏈結串列（linklist）表示圖比以
第子題一維陣列表示圖適合的應用情境或效能優勢。另外，也請列
出兩項在程式中以第子題一維陣列表示圖比以第子題鏈結串列
（link list）表示圖適合的應用情境或效能優勢。（12 分）
1 0
3 2
4', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ceda465ed442", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00103', 'locality-39f5e973', 'locality-39f5e973-moex-110-9aa8415c', 'sub-locality-39f5e973-02', NULL, 'essay', '區間堆積（intervalheap）是一種優先佇列（priorityqueue），請回答下列
相關的問題。
從一個沒有元素的區間堆積開始，依序插入 40, 30, 60, 15, 14, 19, 80,
12,90 等元素。請畫出最後區間堆積的樹狀結構圖。（9 分）
請自第子題建構的區間堆積中刪除元素 12，並畫出刪除該元素後區
間堆積的樹狀結構圖。（3分）
請以一維陣列設計資料結構儲存區間堆積，該資料結構可以透過節點
對應之陣列索引值 index 構成的數學式計算出其父節點 parent、左子
節點 left、右子節點 right與兄弟節點 brother等在陣列中的索引值。假
設此一維陣列之起始索引值為 0，請列出由 index 構成的計算 parent、
left、right、brother的數學式。並請畫出以此一維陣列儲存第子題建
構完成的區間堆積的結果。（12分）
舉例並說明一既需要提供最高優先元素，也需要提供最低優先元素的
優先佇列的應用實例或系統。（6分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "ceda465ed442", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2510", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資料結構", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00104', 'locality-39f5e973', 'locality-39f5e973-moex-110-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '請回答下列有關網際網路與通訊網路問題：（25分）
TCP/IP網路中，OSPF通訊協定是屬於那一層次架構？又其英文全名
為何？
TCP/IP網路中，HTTPS是屬於那一層次架構？又其英文全名為何？
TCP/IP網路中，SSL是屬於那一層次架構？又其英文全名為何？
網際網路上網址中.com與.org 指的是什麼？
請定義什麼是ADSL（含英文全名）？', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "34a97405f50c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00105', 'locality-39f5e973', 'locality-39f5e973-moex-110-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '請寫出下列防火牆（Firewall）之定義與其相關問題：
請定義什麼是防火牆？並寫出防火牆之四項主要的功能？（17分）
請說明系統或網路管理師管控防火牆時，為什麼必須先了解應用層
（Applicationlayer）中那一些通訊協定之應用埠（Port）可被使用？（8分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "34a97405f50c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00106', 'locality-39f5e973', 'locality-39f5e973-moex-110-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '任何組織的應用資訊系統於網路安全控制上，資安或系統工程師必須
定期或即時執行風險評估，來了解其資訊安全機制是否需改善以減輕
其風險，請說明資訊系統之風險會因那三項主要的情境改變而有所
變化？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "34a97405f50c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00107', 'locality-39f5e973', 'locality-39f5e973-moex-110-32d1c3e7', 'sub-locality-39f5e973-08', NULL, 'essay', '請定義大數據（BigData）中 5V的意義；以及進行大數據分析（BigData
Analytics）時處理的程序（Process），請依順序說明應含那些步驟以期獲
得較佳的分析結果？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "34a97405f50c", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2504", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資訊管理與資通安全", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00108', 'locality-39f5e973', 'locality-39f5e973-moex-110-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', '國際標準化組織（ISO）提出了開放式系統互聯模型（Open System
InterconnectionModel），將電腦網路劃分為七個層。而網際網路協定堆疊
（Internetprotocolstack）則包含了五層。請問，開放式系統互聯模型的七
層及網際網路協定堆疊的五層各為何？（20分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "4477730d70b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00109', 'locality-39f5e973', 'locality-39f5e973-moex-110-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', 'IETF 的 RFC 1393 裡介紹了 traceroute，用於顯示封包在 IP 網路經過的
路由器 IP位址。試述其運作原理與所利用到的協定名稱。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "4477730d70b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00110', 'locality-39f5e973', 'locality-39f5e973-moex-110-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', 'TCP 提供了擁塞控制的機制來調節傳輸速度。試述 TCP Congestion
Avoidance及 TCPSlowStart的工作原理。（20 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "4477730d70b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL),
  ('locality-39f5e973-moex-00111', 'locality-39f5e973', 'locality-39f5e973-moex-110-c178e015', 'sub-locality-39f5e973-09', NULL, 'essay', '即時傳輸協定（Real-timeTransportProtocol，RTP）定義了在網際網路上
傳遞音訊和影片的標準封包格式，通常它是建立在 UDP協定上的。RTP
四個主要的 RTPheader欄位是 payloadtype、sequencenumber、timestamp
和 synchronizationsourceidentifier。試述 sequencenumber、timestamp 和
synchronization sourceidentifier的意義。（15 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:34:51+00:00", "source_pdf_sha1": "4477730d70b7", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110190", "c": "342", "s": "2506", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "資通網路", "year": "110", "exam_name": "110年特種考試地方政府公務人員考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "locality", "civil_category": "資訊處理"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
