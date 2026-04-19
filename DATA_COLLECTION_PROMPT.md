# 原始資料收集 Prompt（給 openclaw / Claude Computer Use）

> **使用方式**：把下方「MEGAPROMPT」整段複製貼到 openclaw（或任何有瀏覽器/檔案工具的 agent），它會自動去 158 個考試的官方網站抓題庫，整理成統一 JSON 輸出到 `raw/` 資料夾。
> 收完資料，回到 KaoNow 專案，從 `BATCH_PROMPTS.md` 選一批跟 Claude 說「raw 資料已備齊，開始處理」即可。

---

## v2 更新（2026-04-20，P3.4）

這版本擴充支援 **多題型**（single_choice 以外）。收題 agent 必讀：

- 題型白名單有 7 種：`single_choice` / `multiple_choice` / `true_false` / `fill_blank` / `ordering` / `matching` / `stem_shared`
- 碰到非單選題**不要再跳過**，依對應 schema 輸出（v1 遇到就 skip，已過時）
- `correct_answer_json` 格式、`media`、`parent_question_id` 用法見下方「多題型 Schema」
- **0-indexed 是鐵律**：`correct_answer` 絕對不可填 1-based 的「第 1 個選項 → 1」，一律從 0 開始。詳見 `MEMORY.md` 中 `kaonow_correct_answer_indexing_bug.md`，這條慣例有踩坑紀錄、不容討論。

---

## 使用前先確認

1. 專案路徑：`~/Documents/Claude/Projects/KaoNow/`
2. 在專案下建立 `raw/` 資料夾（若沒有）
3. openclaw / Claude Computer Use / Browser Agent 開啟，**要有網路存取 + 檔案寫入權限**
4. 預估執行時間：**6-12 小時**（158 個考試 × 每個 2-5 分鐘）
5. 成本提醒：大量 WebFetch / 瀏覽器操作，注意你的工具用量

---

## 🚀 MEGAPROMPT（複製整段）

```
# 任務：為 KaoNow 考試平台收集 158 個考試的歷屆題目原始資料

你是一個 autonomous data collection agent。我要你去台灣各考試的官方網站，
為 158 個考試蒐集歷屆題目 + 章節結構，輸出成統一格式的 JSON 檔案。

## 輸出規格

工作目錄：~/Documents/Claude/Projects/KaoNow/raw/
每個考試產出一個檔案：`raw/{exam_id}.json`

檔案結構（嚴格遵守）：
{
  "exam_id": "osh-b",
  "exam_name": "乙種職業安全衛生業務主管",
  "source_url": "https://實際抓取的來源 URL",
  "collected_at": "2026-04-16T15:30:00+08:00",
  "copyright_note": "official_public | copyrighted_paraphrase | unavailable | nda_protected",
  "chapters": [
    { "chapter_number": 0, "name": "職業安全衛生相關法規" },
    { "chapter_number": 1, "name": "管理概論" }
  ],
  "questions": [
    {
      "question_type": "single_choice",
      "question_text": "題目內文（中文）",
      "options": [
        { "key": "A", "text": "選項 A 內文" },
        { "key": "B", "text": "選項 B 內文" },
        { "key": "C", "text": "選項 C 內文" },
        { "key": "D", "text": "選項 D 內文" }
      ],
      "correct_answer_key": "B",
      "explanation": "答題解析（如官方有提供，沒有則留空字串）",
      "chapter_hint": 1,
      "year": "2024",
      "source_type": "official"
    }
  ]
}

注意：`question_type` 是 v2 新增欄位，**每題都要填**，沒填預設 single_choice。

## 多題型 Schema（v2）

我們 KaoNow 資料庫白名單支援這 7 種題型；收題時請「**原題是什麼題型就填什麼**」，
不要硬把多選題拆成單選、也不要把填空改寫成選擇題。抓不到的欄位一律留空字串或 null。

### 1. single_choice（單選，4 選 1）
原本 v1 的格式，維持原樣：
{
  "question_type": "single_choice",
  "question_text": "...",
  "options": [{"key":"A","text":"..."}, ..., {"key":"D","text":"..."}],
  "correct_answer_key": "B"
}

### 2. multiple_choice（複選，4 或 5 選多）
用 `correct_answer_keys` 陣列（注意是複數！），裡面放所有正確選項的 key：
{
  "question_type": "multiple_choice",
  "question_text": "下列何者屬於...（複選）",
  "options": [{"key":"A","text":"..."}, {"key":"B","text":"..."}, {"key":"C","text":"..."}, {"key":"D","text":"..."}],
  "correct_answer_keys": ["A", "C", "D"]
}

後端會轉成 `correct_answer_json: [0, 2, 3]`（0-indexed 陣列，已排序）。
**絕對不要**把複選硬拆成 3 題單選、也不要只填第一個答案 key，會漏資料。

### 3. true_false（是非題）
選項固定兩個，正解用 boolean：
{
  "question_type": "true_false",
  "question_text": "職業安全衛生法規定勞工有拒絕作業之權利。",
  "options": [{"key":"A","text":"是"}, {"key":"B","text":"否"}],
  "correct_answer_bool": true
}

### 4. fill_blank（填空）
題目裡用 `____`（四個底線）標示空格位置；答案用陣列，按空格順序：
{
  "question_type": "fill_blank",
  "question_text": "依職安法 §6，雇主應於______設置急救藥品與______。",
  "correct_answer_blanks": ["作業場所", "人員"]
  // options 欄位留空 []
}
接受一格多個可接受答案：`correct_answer_blanks: [["作業場所", "工作場所"], ["人員", "急救人員"]]`

### 5. ordering（排序）
題目要求依順序排列；選項給候選項、答案給正確順序的 key 陣列：
{
  "question_type": "ordering",
  "question_text": "請將下列職災處理步驟依正確順序排列：",
  "options": [{"key":"A","text":"通報主管"}, {"key":"B","text":"現場安全隔離"}, {"key":"C","text":"送醫急救"}, {"key":"D","text":"事故調查"}],
  "correct_answer_order": ["B", "C", "A", "D"]
}

### 6. matching（配對）
左右兩欄配對；options 拆成 `left` 跟 `right`，答案用 `{左 key: 右 key}`：
{
  "question_type": "matching",
  "question_text": "請配對下列機械名稱與對應類別：",
  "options_left": [{"key":"L1","text":"固定式起重機"}, {"key":"L2","text":"研磨機"}],
  "options_right": [{"key":"R1","text":"危險性機械"}, {"key":"R2","text":"一般機械"}],
  "correct_answer_match": {"L1": "R1", "L2": "R2"}
}

### 7. stem_shared（題組共用題幹）
有些題目會有一段共用閱讀材料 / 圖表 / 案例，後面跟 3-5 個子題。作法：

- 先輸出一個「題幹」題（`question_type: "stem_shared"`），不含選項、不含答案：
  {
    "question_type": "stem_shared",
    "question_text": "閱讀下列案例後回答第 5-7 題：\n某工廠發生...",
    "stem_id": "shared-case-01",
    "options": [],
    "correct_answer_key": null
  }
- 然後每個子題正常輸出自己的 type（可能是 single_choice 或 multiple_choice），
  多帶一個 `parent_stem_id: "shared-case-01"` 欄位指回題幹：
  {
    "question_type": "single_choice",
    "parent_stem_id": "shared-case-01",
    "question_text": "承上題，雇主應於幾小時內通報？",
    "options": [...],
    "correct_answer_key": "B"
  }
- 後端會把 `parent_stem_id` 轉成 `parent_question_id` 指向 stem 題的資料庫 id。

## media 欄位（所有題型共用，非必填）

題目如有圖、音、影，用 `media` 陣列承載 URL（**先抓得到的 URL 就好，上傳到 CDN 之後再補**）：
{
  "question_type": "single_choice",
  "question_text": "下圖所示之安全設備為何？",
  "media": [
    {"type": "image", "url": "https://原站.tw/path/to/image.jpg", "alt": "安全設備示意圖"}
  ],
  "options": [...],
  "correct_answer_key": "A"
}
type 支援：`image` / `audio` / `video`。

## 🔴 0-indexed 硬規則（不可違反）

KaoNow 資料庫所有 index 一律 **0-indexed**，包含：
- `correct_answer`（單選，int）：A→0, B→1, C→2, D→3
- `correct_answer_json`（複選，int[]）：["A","C","D"] → [0, 2, 3]
- `correct_answer_order`（排序）：同樣 0-indexed

但你**在 raw JSON 寫的時候**請用 **選項 key**（"A"/"B"/"C"/"D"）而不是 index，
轉換交給 KaoNow 後端那邊的 validator 做。
這一步是為了避免「人為抄寫 0/1/2/3 抄錯」（有踩過坑，修過 146 題的事故，
詳見 `raw/_progress.md` 和 git commit 17ec840）。

如果你收題時碰到官方答案已經寫成數字（例如「答案：2」），一定要問：
- 這個 2 是「選項序號第 2 個」（1-indexed = B）還是「選項值 2」？
- 看上下文、看其他題佐證再轉成 key。**不要自作主張**。

## 目標規模（每個考試）

- 章節：3-6 章
- 題目：60-120 題（能抓多少抓多少，最少 30 題）
- 題型混搭：
  - 單選（single_choice）是主力，至少 70%
  - 複選（multiple_choice）、是非、填空、排序、配對、題組若原考試有，**照抓不要 skip**
- 選項：單選 / 複選 4-5 選，是非固定 2 選；其他題型見上方 schema
- 解析：有就放，沒有就空字串

## 考試清單 + 官方來源

### 🔧 國家技術士技能檢定（39 個）— 來源：https://skill.tcte.edu.tw/
從「學科試題下載」抓最新年度的學科選擇題。**學科題多為單選**，但部分乙級、甲級
有複選題，請照實輸出 `multiple_choice`。

- elec-c（室內配線丙級）
- elec-b（室內配線乙級）
- elec-a（室內配線甲級）
- ind-wire-c（工業配線丙級）
- ind-wire-b（工業配線乙級）
- hvac-c（冷凍空調裝修丙級）
- hvac-b（冷凍空調裝修乙級）
- weld-c（電銲丙級）
- tig-weld（氬氣鎢極電銲單一級）
- auto-c（汽車修護丙級）
- auto-b（汽車修護乙級）
- moto-c（機車修護丙級）
- swapp-c（電腦軟體應用丙級）
- swapp-b（電腦軟體應用乙級）
- swdesign-b（電腦軟體設計乙級）
- pchw-c（電腦硬體裝修丙級）
- pchw-b（電腦硬體裝修乙級）
- webdesign-c（網頁設計丙級）
- webdesign-b（網頁設計乙級）
- visualdesign-c（視覺傳達設計丙級）
- cook-c（中餐烹調葷食丙級）
- cook-v-c（中餐烹調素食丙級）
- cook-b（中餐烹調乙級）
- western-c（西餐烹調丙級）
- bread-c（烘焙食品丙級）
- bread-b（烘焙食品乙級）
- noodle-c（中式麵食加工丙級）
- rice-c（中式米食加工丙級）
- bartend-c（調酒丙級）
- hair-c（女子美髮丙級）
- hair-b（女子美髮乙級）
- beauty-c（美容丙級）
- beauty-b（美容乙級）
- forklift（堆高機操作單一級）
- care-giver（照顧服務員單一級）
- nanny（保母人員單一級）
- archi-draft-b（建築製圖乙級）
- interior-mgr-b（建築物室內裝修工程管理乙級）
- gardening-c（園藝丙級）

### 🏛 專門職業及技術人員（24 個）— 來源：https://wwwq.moex.gov.tw/
考選部「考畢試題查詢平台」，依考試名稱查近 3 年題目。**法律、醫療類常有複選題與
案例題組（stem_shared）**，請特別留意題型標示。

- osh-a（甲種職業安全衛生業務主管）— 已有題庫，可跳過或補強（可優先補複選題）
- osh-b（乙種職業安全衛生業務主管）— 替代來源：https://trains.osha.gov.tw/
- osh-c（丙種職業安全衛生業務主管）— 同上
- lawyer（律師考試，多科制，每科 30+ 題）
- cpa（會計師考試）
- bookkeeper（記帳士）
- physician（醫師考試）
- dentist（牙醫師考試）
- tcm-doctor（中醫師考試）
- pharmacist（藥師考試）
- nurse（護理師）
- physical-therapist（物理治療師）
- occupational-therapist（職能治療師）
- social-worker（社會工作師）
- public-health-specialist（公共衛生師）
- architect（建築師）
- civil-engineer（土木工程技師）
- electrical-engineer（電機工程技師）
- real-estate-appraiser（不動產估價師）
- real-estate（不動產經紀人）
- land-agent（地政士）
- insurance-agent（保險代理人）
- notary-public（民間公證人）
- guide（導遊人員）
- ai-planner（AI 應用規劃師）— 來源：經濟部產業發展署

### 📋 公務人員考試（23 個）— 來源：https://wwwq.moex.gov.tw/
考選部試題查詢。每個考試依類科/等級分別查。部分科目有「非選擇題（申論題）」，
**v2 尚未支援申論，請先跳過申論不抓**，只處理選擇題（單選/複選/是非）。

- gaokao-1（高考一級）
- gaokao-2（高考二級）
- gaokao-3（高考三級）— 多類科，至少抓「一般行政」
- pukao（普通考試）
- chukao（初等考試）
- railway-senior（鐵路特考高員級）
- railway-junior（鐵路特考員級）
- railway-assistant（鐵路特考佐級）
- police-3（警察特考三等）
- police-4（警察特考四等）
- police-gen-3（一般警察特考三等）
- police-gen-4（一般警察特考四等）
- judicial-3（司法特考三等）
- judicial-4（司法特考四等）
- judicial-5（司法特考五等）
- customs-3（關務特考三等）
- customs-4（關務特考四等）
- coastguard-3（海巡特考三等）
- diplomatic（外交特考三等）
- local-3（地方特考三等）
- local-4（地方特考四等）
- investigation（調查局特考）
- immigration-3（移民行政特考三等）

### 🌐 語言能力檢定（17 個）— 來源多樣

⚠️ **重要版權提醒**：
- TOEIC / TOEFL / IELTS / JLPT / HSK / TOPIK：**官方題目全版權**，**嚴禁原文引用**
- 對版權題目：只抓「公開樣題 sample questions」，`copyright_note` 填 `copyrighted_paraphrase`，並標註「此為樣題，非正式考題」
- 若該考試官方完全沒釋出 sample，寫 0 題並把 `copyright_note` 設為 `unavailable`
- 語言檢定常見**聽力題有音檔**，用 `media: [{"type":"audio","url":"..."}]` 承載；**閱讀題有圖**用 `type:"image"`

- toeic（TOEIC 多益）— 來源：https://www.toeic.com.tw/（看 sample）
- toeic-spw（TOEIC 口說寫作）
- gept-elem（全民英檢初級）— 來源：https://www.gept.org.tw/
- gept-int（全民英檢中級）
- gept-hint（全民英檢中高級）
- gept-adv（全民英檢高級）
- ielts（IELTS 雅思）— 來源：https://www.ielts.org/
- toefl-ibt（TOEFL iBT）— 來源：https://www.ets.org/toefl
- jlpt-n5 / n4 / n3 / n2 / n1（日檢）— 來源：https://www.jlpt.jp/
- tocfl（華語文測驗 TOCFL）— 來源：https://tocfl.edu.tw/
- topik-1 / topik-2（韓語能力 TOPIK）— 來源：https://www.topik.go.kr/
- hsk（HSK 漢語水平）— 來源：https://www.chinesetest.cn/

### 🎓 升學考試（8 個）— 來源：https://www.ceec.edu.tw/
大考中心所有歷屆完整釋出，抓近 3 年（2022-2024）。國文、英文、自然、社會常有
**閱讀題組（stem_shared + 數個子題）**，照 schema 輸出。

- gsat（大學學科能力測驗）— 含國文/英文/數 A/數 B/自然/社會
- ast（分科測驗）— 含數學/物理/化學/生物/歷史/地理/公民
- tcat（四技二專統一入學測驗）— 來源：https://www.tcte.edu.tw/
- cap（國中教育會考）— 來源：https://cap.rcpet.edu.tw/
- english-listening（高中英語聽力測驗）
- transfer-2（二技入學測驗）
- public-scholar（公費留學考試）— 來源：教育部
- high-ent（高中特色招生考試）

### 💰 金融商業證照（21 個）— 來源多樣

- trust（信託業業務人員）— 來源：https://www.tabf.org.tw/
- internal-audit（銀行內控內稽）— 同上
- sec-audit（證券期貨內控內稽）— https://www.sfi.org.tw/
- ins-audit（保險內控內稽）— https://www.tii.org.tw/
- sec-sales（證券商業務員）— https://www.sfi.org.tw/exam/exam6/exam6-3
- sec-senior（證券商高級業務員）— 同上
- futures-sales（期貨商業務員）— 同上
- invest-consult（投信投顧業務員）— 同上
- derivatives（衍生性金融商品銷售）— 同上
- structured（結構型商品銷售）— 同上
- life-ins（人身保險業務員）— https://www.lia-roc.org.tw/
- property-ins（財產保險業務員）— https://www.nlia.org.tw/
- invest-ins（投資型保險業務員）— 同壽險公會
- life-agent（人身保險代理人）
- property-agent（財產保險代理人）
- afp（AFP 理財規劃顧問）— https://www.fpat.org.tw/
- cfp（CFP 認證理財規劃顧問）— 同上
- frm（FRM）— 來源：https://www.garp.org/（⚠️ 版權，只抓公開樣題）
- cfa（CFA）— 來源：https://www.cfainstitute.org/（⚠️ 版權，只抓 mock exam sample）
- aml（金融防制洗錢）— 來源：https://www.tabf.org.tw/
- sec-analyst（證券投資分析人員）— https://www.sfi.org.tw/

### 💻 IT 資訊科技國際認證（25 個）

⚠️ **這整塊版權非常嚴格**：所有 AWS / Azure / GCP / CompTIA / Cisco / PMP / CISSP
題目都受 NDA 保護。**請只抓「exam guide」和「skills outline」**，不要抓
brain dump 網站（違法且違反考試 NDA）。

做法：
- 進官方的 exam guide 頁面，抓「測驗範疇」（exam objectives）
- 每個範疇下列出 3-5 個重點技能
- `questions` 陣列為空 [] 即可
- `copyright_note` 填 `nda_protected`

- tqcplus-office, tqcplus-prog（TQC+，部分公開：https://exam.tqc.org.tw/TQCexamonline/）
- aws-ccp, aws-saa, aws-sap, aws-dva, aws-soa（AWS）
- azure-900, azure-104, azure-204, azure-305（Azure）
- gcp-ace, gcp-pca（Google Cloud）
- comptia-a, comptia-net, comptia-sec（CompTIA）
- ccna, ccnp（Cisco）
- pmp, pmi-acp, scrum-master（專案管理）
- cissp, cisa（資安）
- itil, oracle-oca

## 執行策略

1. **分類依序跑**：一次處理一個類別（技術士 → 專技 → 公職 → 語言 → 升學 → 金融 → IT）
2. **每個考試獨立檔案**：`raw/elec-c.json`、`raw/osh-b.json`... 避免一個大檔壞掉全毀
3. **進度紀錄**：每完成一個考試，在 `raw/_progress.md` 記錄：`- [x] elec-c（120 題，mc:12/tf:8）` 或 `- [~] elec-c（32 題，來源未完整釋出）`
4. **失敗不中止**：某個考試抓不到、網站擋、格式怪，就跳過記在 `_progress.md`，繼續下一個
5. **遵守 robots.txt**：每次 request 間隔 2 秒以上，避免被當成攻擊
6. **題型混比要誠實**：如果原考試有多選，就標 `multiple_choice`，不要偷懶全部塞成 single_choice

## 完成標準

- [ ] `raw/` 資料夾至少有 120 個 JSON 檔（80% 考試有資料）
- [ ] `raw/_progress.md` 列出所有狀態，含題型統計（sc / mc / tf / fill / order / match / stem）
- [ ] 至少 20 個「熱門考試」（職安衛 3 種、技術士 TOP 10、公職 TOP 3、學測、TOEIC）必須收到 ≥ 60 題
- [ ] 版權考試（TOEIC/AWS 等）只抓 sample/guide，沒侵權
- [ ] 完成後列印總統計：總共抓到 X 個考試、Y 題，各題型分布

## 回報格式

跑完（或遇到需要人工決策的狀況）回傳：
- 成功：X 個考試、總 Y 題、總耗時 Z 小時、題型分布（sc: ?, mc: ?, tf: ?, fill: ?, order: ?, match: ?, stem: ?）
- 失敗清單：哪些考試抓不到、原因
- 版權決策：哪些考試只抓到 sample、需我確認是否接受
- 題型不確定：原題長得像題組但沒找到共用題幹等疑慮，列出來讓人工判

開始吧！
```

---

## 執行後的銜接

openclaw 跑完後，你的 `raw/` 資料夾會有：
- `raw/osh-b.json`, `raw/elec-c.json`, ...
- `raw/_progress.md`（進度表，含題型分布）

回到 KaoNow 的 Claude 對話，**從 `BATCH_PROMPTS.md` 挑一批說**：

> 原始資料已備齊在 `raw/`，請處理 Batch 01（osh-b + osh-c）：
> 讀 `raw/osh-b.json` 和 `raw/osh-c.json`，照 QUESTION_BANK_ROADMAP §3 規範產 SQL。
> 注意：v2 raw 可能含 multiple_choice / true_false / fill_blank / ordering / matching / stem_shared，
> 請依各題型對應到 DB 的 `question_type` + `correct_answer_json`。

Claude 會讀 JSON → 產 chapters/questions/lectures SQL → 交給你貼 Supabase。

這樣分工：
- **openclaw 負責**：瀏覽器自動化、網頁抓取、PDF 解析（它的強項）
- **KaoNow Claude 負責**：資料格式化、SQL 生成、前端驗證（我的強項）

---

## KaoNow 後端 schema 對照（給接手的人 / validator 參考）

收來的 raw JSON 欄位 → DB 欄位：

| raw JSON | DB 欄位 | 說明 |
|---|---|---|
| `question_type` | `questions.question_type` | 白名單 7 種，預設 `single_choice` |
| `correct_answer_key` (A/B/C/D) | `questions.correct_answer` | 單選用，**轉 0-indexed int**（A→0） |
| `correct_answer_keys` (["A","C","D"]) | `questions.correct_answer_json` | 複選用，**排序後 0-indexed int[]**（[0,2,3]） |
| `correct_answer_bool` (true/false) | `questions.correct_answer_json` | 是非用，`true`/`false` 直接存 |
| `correct_answer_blanks` (字串陣列) | `questions.correct_answer_json` | 填空用，每格一個或一組答案 |
| `correct_answer_order` (key 陣列) | `questions.correct_answer_json` | 排序用，**轉 0-indexed int[]** |
| `correct_answer_match` ({L1:R1}) | `questions.correct_answer_json` | 配對用，原格式 key map |
| `media` | `questions.media` | jsonb 陣列，`[{type, url, alt}]` |
| `parent_stem_id` | `questions.parent_question_id` | 題組子題指回題幹的 DB id |

DB CHECK 限制（若違反會被拒絕）：
- `correct_answer` 必須 ≥ 0（所以多選那邊我們人工 fallback 填 `correct_answer_json[0]` 佔位）
- `question_type != 'single_choice' && != 'stem_shared'` → `correct_answer_json` **必填**
- `question_type = 'stem_shared'` → `correct_answer_json` **必為 NULL**
- `parent_question_id` 若非 NULL，必須指向同表既有 id

前端驗收清單（改動 schema 時記得同步跑）：
- [ ] `renderQuestion` 分支：單選 / 多選
- [ ] `saveSession.question_attempts` 分流：單選寫 `selected_answer`、多選寫 `selected_answer_json`
- [ ] 快取 key 是否需要 bump（`Q_CACHE_PREFIX`）
- [ ] `questions_published` view 是否 expose 新欄位
