# 原始資料收集 Prompt（給 openclaw / Claude Computer Use）

> **使用方式**：把下方「MEGAPROMPT」整段複製貼到 openclaw（或任何有瀏覽器/檔案工具的 agent），它會自動去 158 個考試的官方網站抓題庫，整理成統一 JSON 輸出到 `raw/` 資料夾。
> 收完資料，回到 KaoNow 專案，從 `BATCH_PROMPTS.md` 選一批跟 Claude 說「raw 資料已備齊，開始處理」即可。

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
  "copyright_note": "official_public | copyrighted_paraphrase | unavailable",
  "chapters": [
    { "chapter_number": 0, "name": "職業安全衛生相關法規" },
    { "chapter_number": 1, "name": "管理概論" }
  ],
  "questions": [
    {
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

## 目標規模（每個考試）

- 章節：3-6 章
- 題目：60-120 題（能抓多少抓多少，最少 30 題）
- 選項：統一 4 選 1（A/B/C/D），遇到複選/是非請跳過
- 解析：有就放，沒有就空字串

## 考試清單 + 官方來源

### 🔧 國家技術士技能檢定（39 個）— 來源：https://skill.tcte.edu.tw/
從「學科試題下載」抓最新年度的學科選擇題（不要術科）。

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
考選部「考畢試題查詢平台」，依考試名稱查近 3 年題目。

- osh-a（甲種職業安全衛生業務主管）— 已有題庫，可跳過或補強
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
考選部試題查詢。每個考試依類科/等級分別查。

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
大考中心所有歷屆完整釋出，抓近 3 年（2022-2024）。

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
3. **進度紀錄**：每完成一個考試，在 `raw/_progress.md` 記錄：`- [x] elec-c（120 題）` 或 `- [~] elec-c（32 題，來源未完整釋出）`
4. **失敗不中止**：某個考試抓不到、網站擋、格式怪，就跳過記在 `_progress.md`，繼續下一個
5. **遵守 robots.txt**：每次 request 間隔 2 秒以上，避免被當成攻擊

## 完成標準

- [ ] `raw/` 資料夾至少有 120 個 JSON 檔（80% 考試有資料）
- [ ] `raw/_progress.md` 列出所有狀態
- [ ] 至少 20 個「熱門考試」（職安衛 3 種、技術士 TOP 10、公職 TOP 3、學測、TOEIC）必須收到 ≥ 60 題
- [ ] 版權考試（TOEIC/AWS 等）只抓 sample/guide，沒侵權
- [ ] 完成後列印總統計：總共抓到 X 個考試、Y 題

## 回報格式

跑完（或遇到需要人工決策的狀況）回傳：
- 成功：X 個考試、總 Y 題、總耗時 Z 小時
- 失敗清單：哪些考試抓不到、原因
- 版權決策：哪些考試只抓到 sample、需我確認是否接受

開始吧！
```

---

## 執行後的銜接

openclaw 跑完後，你的 `raw/` 資料夾會有：
- `raw/osh-b.json`, `raw/elec-c.json`, ...
- `raw/_progress.md`（進度表）

回到 KaoNow 的 Claude 對話，**從 `BATCH_PROMPTS.md` 挑一批說**：

> 原始資料已備齊在 `raw/`，請處理 Batch 01（osh-b + osh-c）：
> 讀 `raw/osh-b.json` 和 `raw/osh-c.json`，照 QUESTION_BANK_ROADMAP §3 規範產 SQL。

Claude 會讀 JSON → 產 chapters/questions/lectures SQL → 交給你貼 Supabase。

這樣分工：
- **openclaw 負責**：瀏覽器自動化、網頁抓取、PDF 解析（它的強項）
- **KaoNow Claude 負責**：資料格式化、SQL 生成、前端驗證（我的強項）
