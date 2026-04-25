-- W1.6 questions batch 955/9310 (10)

INSERT INTO public.questions (id, exam_id, paper_id, subject_id, chapter_id, question_type, question_text, options, correct_answer, correct_answer_json, auto_gradable, source, is_active, version, source_meta, explanation)
VALUES
  ('aviation-f9fdcd58-moex-00092', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '佇列（Queue）是重要的資料結構，可使用陣列（Array）或鏈結串列（Link
List）實作。
請填寫下表，從空間使用、增刪速度上說明，以陣列（Array）或鏈結
串列（Link List）實作佇列的優缺點。（6分）
以陣列實作 鏈結串列實作
使用空間數量已知
使用空間數量未知
增加刪除元素
佇列一般從後端（back）加入（enqueue）一個新元素，從前端（front）
刪除（dequeue）一個元素。請完成下面使用陣列實作環狀佇列（Circular
Queue）程式碼（I~V）空格，使輸出為：（15 分）
enqueuedata=0,enqueuedata=1,QueueFull,QueueFull,QueueFull,
dequeuedata=0,dequeuedata=1,QueueEmpty,QueueEmpty,QueueEmpty,
#include<stdio.h> intmain(){
#defineSIZE3 intk=0;
typedefenum{FALSE,TRUE}bool; //front=index[0];back=index[1];
boolisEmpty(intfront,intback){ //dequeuedata=index[2]
return(front== (I) ); intindex[3]={0,0,0};
} intdata[SIZE];
boolisFull(intfront,intback){ boolresult;
return(( (II) )==front); for(inti=0;i<5;i++){
} result=enqueue(data,index,k++);
boolenqueue(intdata[],intindex[],intkey){ if(!result)printf("QueueFull,");
//front=index[0]; back=index[1]; elseprintf("enqueuedata=%d,",k-1);
if(isFull(index[0],index[1])) }
returnFALSE; printf("\n");
index[1]= (III) ; for(inti=0;i<5;i++){
data[index[1]]=key; result=dequeue(data,index);
return (IV) ; if(!result)printf("QueueEmpty,");
} else
intdequeue(intdata[],intindex[]){ printf("dequeuedata=%d,",index[2]);
//front=index[0]; back=index[1]; }
//dequeuedata=index[2] return0;
if(isEmpty(index[0],index[1])) }
returnFALSE;
index[0]= (V) ;
index[2]=data[index[0]];
returnTRUE;
}
請說明最大優先權佇列（Max-PriorityQueue）有那些基本操作，以及
如何應用於作業系統排程。（4 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "292970b79414", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00093', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '第5代行動通訊標準（5G）是第4代行動通訊標準（4G）後技術的進化。
請說明國際電信聯盟（ITU）制定 5G三大目標/特性：eMBB（高頻寬、
高速），uRLLC（高可靠度、低延遲），mMTC（多連結）。（15分）
請說明無人機與虛擬實境（Virtual Reality, VR）如何應用這些特性。
（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "292970b79414", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00094', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-d87dd49a', 'sub-aviation-f9fdcd58-02', NULL, 'essay', '請回答下列作業系統記憶體管理相關問題：
設定記憶體管理中，目前的記憶體配置狀態如下圖，A~E區域為尚未
使用的部份，其餘為已配置行程（process）區域。若有新行程需要 290K
記憶體，請分別使用最先合適法（firstfit）、最佳合適法（bestfit）與
最差合適法（worstfit）時，新行程會被分配的區域，並計算新產生的
碎片大小。（18分）
Process1
A(490K)
Process2
B(210K)
Process3
C(400K)
Process4
D(690K)
Process5
E(320K)
Process6
記憶體碎裂可分為外部碎裂（external fragmentation）與內部碎裂
（internalfragmentation）。請說明分頁（paging）與分段（segmentation）
記憶體管理法會產生碎裂的種類與原因。（7分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "292970b79414", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1803", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "計算機概論", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00095', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '考慮對時間信號x(t)進行取樣，試回答下列問題：
闡明傅立葉轉換（FourierTransform）與取樣理論之間的關係，並舉一
單頻三角函數信號之取樣為例，清楚說明在取樣率不足的情況下會造
成頻率 Aliasing 現象。（15 分）
闡明如何運用數位信號處理技術將x(t)轉變成x(at)信號，其中 a 為
一正實數，並畫出達成此功能的整個數位信號處理流程架構圖，包括
所需的功能方塊，並標明相關參數。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "2c2e6c4f2801", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00096', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '有一角度調變（anglemodulated）信號x(t)  Acos(2f t cos(2f t))，
c m
f  f x(t)
其中 。若 為窄頻信號，詳細推導出其簡化的近似
c m
x(t)
（approximated）式，並清楚定義及解釋 為窄頻（Narrowband）信號
的條件及清楚推導出其頻寬（Bandwidth）。（10分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "2c2e6c4f2801", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00097', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '詳細解釋下列有關數位通信接收器的問題：
若傳輸通道為相加性白色高斯雜訊（AWGN）通道，畫出此傳輸模型
（model）。其最佳接收器為最大後機率 MAP（Maximum a Posteriori）
接收器，詳細闡述其原理。（15分）
同樣在 AWGN 通道情況下，詳細闡述最大可能性 ML（Maximum
Likelihood）接收器的原理，其與上述MAP接收器的關係為何。（10分）
詳細畫出基於匹配濾波器（Matched Filter）架構之 ML 相位鍵 PSK
（Phase-ShiftKeying）接收器。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "2c2e6c4f2801", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('aviation-f9fdcd58-moex-00098', 'aviation-f9fdcd58', 'aviation-f9fdcd58-moex-110-21bcb4ca', 'sub-aviation-f9fdcd58-03', NULL, 'essay', '詳細闡明如下無線衰減（fading）傳輸通道（channel）的概念與物理意義：
闡明 Rayleigh 衰減通道的概念與物理意義。它是特別針對何種物理量
進行界定？此衰減效應亦連結有相位的變化，詳細說明此相位的機率
密度函數（probabilitydensityfunction）為何？（10分）
闡明 Rician衰減通道的概念與物理意義。它是特別針對何種物理量進
行界定？（10 分）
各舉一例現行通信系統（如 Wifi與行動通信系統）其傳輸通道之衰減
效應較接近 Rayleigh 或 Rician 衰減，並清楚解釋其原因。（10 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:22:08+00:00", "source_pdf_sha1": "2c2e6c4f2801", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "110150", "c": "303", "s": "1802", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "通信原理", "year": "110", "exam_name": "110年公務人員特種考試外交領事人員及外交行政人員考試、民航人員考試、原住民族考試", "original_question_number": "四", "answer_corrected": false, "flags": [], "civil_slug": "aviation", "civil_category": "航空通信"}'::jsonb, NULL),
  ('coastguard-6ec17a12-moex-00001', 'coastguard-6ec17a12', 'coastguard-6ec17a12-moex-114-de0a21a2', 'sub-coastguard-6ec17a12-01', NULL, 'essay', '甲為某超商店員，積欠乙 1萬元遲遲未還。某日乙經過該超商，遂進去
找甲要錢，過程中乙不滿甲依舊推託不還錢，遂大吼「拿錢來！否則你
等著瞧」，甲怕事情鬧大後被老闆責罵，只好拿出自己錢包中的 1萬元返
還給乙，乙收下後氣沖沖地離開超商。恰好在超商外等朋友的丙目睹此
一情形，見巡邏的員警丁經過，丙立刻指著乙大喊「抓強盜，他剛在超
商搶錢」，丁聞後立即上前制止乙離開，乙拒絕服從，丁強力壓制乙，導
致乙身上多處擦傷。請問乙、丁之刑責為何？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:27+00:00", "source_pdf_sha1": "7905f5263973", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "501", "s": "0509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "一", "answer_corrected": false, "flags": [], "civil_slug": "coastguard", "civil_category": "海巡行政"}'::jsonb, NULL),
  ('coastguard-6ec17a12-moex-00002', 'coastguard-6ec17a12', 'coastguard-6ec17a12-moex-114-de0a21a2', 'sub-coastguard-6ec17a12-01', NULL, 'essay', '承第一題之事實，丁將乙強制帶回警局，乙不斷喊冤，稱只是去要回欠
款而已，甲也帶著監視錄影器紀錄趕到警局，說明這是民事糾紛。警方
聽完甲之陳述並播放當時超商店內錄影紀錄後，發現這是烏龍一場，乙
也表示急著去醫院看診治療傷口，警方考量後遂同意乙無保離開警局。
請問丁之逮捕及警方同意乙離開警局是否合法？（25分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:27+00:00", "source_pdf_sha1": "7905f5263973", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "501", "s": "0509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "二", "answer_corrected": false, "flags": [], "civil_slug": "coastguard", "civil_category": "海巡行政"}'::jsonb, NULL),
  ('coastguard-6ec17a12-moex-00003', 'coastguard-6ec17a12', 'coastguard-6ec17a12-moex-114-de0a21a2', 'sub-coastguard-6ec17a12-01', NULL, 'essay', '甲男與乙女某日深夜於停在郊區公有道路邊之私有汽車內聊天，路過的
丙偶然發現後，認為待會可能有「好戲」可看，遂躲在旁邊樹後用手機
偷拍，未料不久後，甲、乙在車內發生劇烈爭執，甲男用力掐住乙女脖
子，乙女昏死過去，甲男隨後立刻駕車離去。數日後，丙看媒體報導有
某女性被害人遭勒斃後棄屍郊外，丙判斷似乎與先前錄下的影像有關，
幾經考慮後，將偷拍影像寄給警方。甲男後遭檢察官起訴，審判中甲男
主張丙拍攝的影像無證據能力，是否有理由？（25 分）', '[]'::jsonb, 0, NULL, FALSE, 'official', TRUE, 1, '{"parser_version": "moex_license_v1.0", "parsed_at": "2026-04-25T12:27:27+00:00", "source_pdf_sha1": "7905f5263973", "answer_pdf_sha1": null, "source_family": "moex-gov-tw", "moex": {"exam_code": "114120", "c": "501", "s": "0509", "q": "1"}, "raw_section_label": "甲、申論題部分", "subject": "刑法與刑事訴訟法", "year": "114", "exam_name": "114年公務人員特種考試司法人員考試、法務部調查局調查人員考試、海岸巡防人員考試、未具擬任職務任用資格取得法官遴選資格考試", "original_question_number": "三", "answer_corrected": false, "flags": [], "civil_slug": "coastguard", "civil_category": "海巡行政"}'::jsonb, NULL)
ON CONFLICT (id) DO NOTHING;
