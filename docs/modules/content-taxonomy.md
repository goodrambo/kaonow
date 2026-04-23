# 模組：Content Taxonomy（考試分層規格）

> 這份規格定義 KaoNow 考試目錄的三層結構：**大類 → 領域群 → 考試**。
> 目的：讓考生按「我要當什麼 / 進哪個產業」瀏覽，而不是按「我要考幾等」瀏覽。
> 建立日期：2026-04-23，基於 5 個平行研究 Agent 彙整的官方 + 補教業 + 考生視角資料。

## 目前狀態
🟡 規格階段 — schema 尚未落到 DB（見下方「Schema 落地策略」）

## 核心設計原則

1. **領域 / 職涯為 2nd-level 分群軸** —— 不是等級。考生進 `civil` 不該先看到「高考 / 普考 / 初考」三群，而是看到「行政類 / 法律司法 / 財經 / 技術工程 / ...」，再進去後級別當 exam badge。
2. **等級是 exam attribute 不是層級** —— 甲/乙/丙、三/四/五等、N1-N5、高/普/特、Foundational/Associate/Professional 統一用 `level_label TEXT` 存在 `exams` 表，UI 用 badge 呈現。
3. **Slug 命名慣例** —— 大類前綴 + 領域縮寫：`civil-admin`、`prof-medical`、`tech-food`、`it-aws`、`fin-bank`。前綴用既有 `exam_categories.id`；縮寫用英文小寫、hyphen 分隔。
4. **「入學管道」不進 taxonomy** —— 繁星、個申、分發是**根據考試成績的分發機制**，不是考試本身。做成 `/guides/admission/*` 資訊頁，不污染題庫 schema。
5. **熱門 Top N 機制平行於分群** —— 每個 2nd-level 群底下都要有「熱門 top 3」的 pin 邏輯，因為 80/20 分佈很陡（civil 的一般行政佔 40%+ 流量）。

## 分層結構（10 大類 × 72 個 2nd-level 群）

> **實作現況**：index.html 的 `examGroups` 陣列是權威清單（72 群）。本文件下方的細分表格有幾處 civil 的 slug 與實作略有出入（文件用 `civil-law`，實作用 `civil-legal` + `civil-justice`；文件的 `civil-diplomacy` / `civil-transport` / `civil-customs` 被實作併為 `civil-other`）。動 URL/schema 前以 index.html 為準。

### 1. civil 公職考試（8 群）

| 群 slug | 中文 | 包含考試 | 為什麼獨立 |
|---|---|---|---|
| `civil-admin` | 行政類 | 一般行政、一般民政、戶政、人事行政、教育行政、文化行政、廉政、原住民族行政 | 流量最大宗（高普三、普四錄取名額前 1-2 位）、不限科系；考生第一個看的入口 |
| `civil-law` | 法律司法類 | 法制、法律廉政、司法特考（書記官、監所管理員、觀護人、監獄官、法警、執達員） | 法律系/警專畢業主戰場，考科以法律為主軸 |
| `civil-finance` | 財經金融類 | 財稅行政、金融保險、會計、統計、經建行政、審計 | 商管背景考生；會計/統計共用中高級會計 |
| `civil-tech` | 技術工程類 | 土木、水利、機械、電力、資訊處理、電子工程、環保、農業、林業 | 工科生走公職的管道，考科與專技技師類高度重疊 |
| `civil-diplomacy` | 外交移民類 | 外交領事人員、國際經濟商務、移民三等/四等 | 語文導向、有面試/口試關 |
| `civil-transport` | 交通運輸類 | 鐵路特考（運輸營業、運輸管理、事務管理、養路工程）、交通行政、航海、漁業 | 綁定國營/事業機構分發 |
| `civil-customs` | 稅務關務類 | 關務特考（關稅會計、關稅法務、關稅統計、關稅人事） | 關務署獨立體系，與財稅行政分發單位不同 |
| `civil-intel` | 情報國安類 | 調查局特考、國安局特考 | 體測+口試+筆試三關，自成一格 |

**地方特考**作為 attribute 不開群（和高普考類科重疊 95%，只是分發單位不同，中央 vs 地方政府）。

**等級 attribute**：高考一級（博士）、高考二級（碩士）、高考三級（大學，最主流，46K 起）、普考四級（高中職，39K 起）、初考五級（高中職，36K 起）。

**熱門 Top**：高普三/四一般行政、地特三/四一般行政、初等一般行政、高普三/四財稅行政、高普三/四法律廉政、高普三/四會計、司法特考四等書記官、司法特考三等監獄官、調查局三等調查工作組、關務特考三等。

### 2. military-police 軍警校院（6 群）

| 群 slug | 中文 | 包含考試 | 為什麼獨立 |
|---|---|---|---|
| `mp-police-external` | 一般警察特考（外軌） | 行政警察三/四等、消防警察三/四等、水上警察 | 非警校生當警察的路徑，考選部辦、性質上是公務員特考，但考生族群與 civil-admin 完全不重疊 |
| `mp-police-internal` | 警察特考（內軌） | 警察特考（限警大/警專畢業）三/四等 | 警職內部晉升；考科法律+專業交雜，不開放外人 |
| `mp-tpa` | 警專入學 | 警專甲組（消防、刑事、科技偵查、交通、海巡）、乙組（行政、保安） | 高中職畢業考警專；每年約 2000 名，警察體系最大宗入學管道 |
| `mp-cpu` | 警大入學 | 中央警察大學（學測申請、甲組/乙組） | 採學測，性質近於大學升學但職涯綁警察 |
| `mp-military-academy` | 軍校聯招 | 陸官、海官、空官、政戰、國防大學 | 高中畢業考軍官校，4 年養成 |
| `mp-volunteer` | 志願役招募 | 志願士兵、志願士官、預官預士、國軍士官學校、專業軍官招募 | 國防部招募、非考選部體系；路徑獨立 |

**跨類邊界決策**：警特（含一般警察特考）原本放 civil，**搬到 military-police**。理由：考生認知上「想當警察」是一條路徑，警專/警大/警特三條並列；補習班分類（志光、三民）也這樣放。**消防警察**跟警特走，也在 military-police。**替代役**（消防替代役）不列入，它是兵役而非職業考試。

### 3. soe 國營事業（6 群）

| 群 slug | 中文 | 包含考試 | 為什麼獨立 |
|---|---|---|---|
| `soe-moea-joint` | 經濟部所屬聯招 | 台電、中油、台水、台糖、台鹽 新進職員（聯合招考） | 同一份考卷、同一報名入口；考生最大宗 |
| `soe-moea-solo` | 經濟部獨招 | 台電僱用人員（養成班/身心障礙/原住民）、中油僱員、台水評價、台糖工員 | 學歷/薪資/工作內容與聯招差很多，考科不同（僅國英+專業） |
| `soe-bank` | 公股與泛官股銀行 | 臺銀、土銀、合庫、一銀、彰銀、華銀、兆豐、台企、輸銀、農金 新進行員 | 考科一致性高（國英+邏輯+貨銀/會計/票據），常連續出題或聯合考 |
| `soe-transport` | 交通事業 | 台鐵公司（2024 公司化後「從業人員」）、中華郵政（專業職一/二/外勤/郵遞）、中華電信（業務/工務/專業職） | 交通部特許/國營體系 |
| `soe-rail-metro` | 軌道與機場 | 台北捷運、桃園捷運、高雄捷運、桃園機場、台中捷運 | 筆試+口試+體能，獨招 |
| `soe-other` | 其他國營 | 中鋼、漢翔、台灣菸酒、台電子公司（台電子）、中鋼運通 | 零散獨招 |

**招考形態 attribute**：新進職員/專員（大學、4 萬起，管理儲備）、僱用人員/雇員（高中職、3 萬起，現場操作）、約僱/契約（短期）、從業人員（台鐵公司化後新制）。

### 4. teacher 教師資格與甄試（5 群）

| 群 slug | 中文 | 包含考試 | 為什麼獨立 |
|---|---|---|---|
| `teacher-qual` | 教師資格考（教檢） | 幼兒園、特殊教育、國民小學、中等學校、國小暨特教合流 | 教育部主辦、取得教師證前提 |
| `teacher-recruit-joint` | 教師甄試 - 聯合 | 台北、新北、桃園、高雄、台南各自聯招；中區聯盟、南區聯盟（視年度） | 考生依戶籍/工作偏好跨區報名，初試統一筆試 |
| `teacher-recruit-solo` | 教師甄試 - 獨招 | 偏鄉縣市、私校、國立附中、完全中學 | 獨立招考，流程複試+試教+口試 |
| `teacher-substitute` | 代理代課 | 各校滾動甄選 | 第三招以後無需教師證，為「邊代課邊拚正式」主戰場 |
| `teacher-childcare` | 教保員 | 公立幼兒園契約教保員聯合甄選 | 幼保相關科系、非教師編制，準備科目與幼教師重疊 |

**跨類邊界決策**：
- **教育行政（高普考教育行政）** 留 `civil-admin`，不搬 teacher。任用為公務員（教育局/部會），非學校教師。
- **學校職員** 留 `civil`（人事/一般行政/會計類），不搬 teacher。

### 5. prof-exam 專技人員考試（8 群）

| 群 slug | 中文 | 包含考試 | 為什麼獨立 |
|---|---|---|---|
| `prof-medical` | 醫事人員 | 醫師、牙醫、中醫、藥師、護理師、助產師、物理治療、職能治療、醫事檢驗、醫事放射、呼吸治療、語言治療、聽力師、牙體技術、營養師、心理師（臨床/諮商）、社工師、公共衛生師、獸醫師 | 最大群（考選部獨立「醫事人員類科」）；共用「衛福部執業登記」邏輯 |
| `prof-law` | 法律司法 | 律師、民間公證人、專利師 | 法條命題高度重疊，考生常一魚多吃 |
| `prof-finance` | 財會稅務 | 會計師、記帳士、稅務師 | 共用稅法 + 中高級會計 |
| `prof-engineer` | 工程技師 | 土木、結構、大地、水利、水土保持、環境工程、測量、機械、電機、電子、資訊、化工、工業工程、工業安全、工業衛生、冶金、採礦、造船、航空、交通、都市計畫、農業、林業、漁業、畜牧、食品、紡織 技師 + 建築師（32 類技師 + 1 建築師） | 考科共用專業核心，但各領域獨立 |
| `prof-realestate` | 不動產地政 | 不動產經紀人、不動產估價師、地政士 | 三證常一併考 |
| `prof-insurance` | 保險 | 人身/財產保險代理人、經紀人、公證人 | 區隔於金融業務員（後者在 finance） |
| `prof-tourism` | 觀光餐旅 | 華語/外語導遊、華語/外語領隊 | 報考量大（3-5 萬/年）、跨考族多 |
| `prof-safety` | 職安消防 | 甲/乙/丙種職業安全衛生業務主管、消防設備師、消防設備士 | 勞動部/內政部特許、與技師類交集但考生族群不同 |

**等級 attribute**：專技高考（大學以上）、專技普考（高中職）、專技特考（民間公證人、消防設備士等）。

**熱門 Top**：護理師、導遊+領隊、記帳士、不動產經紀人、社會工作師、消防設備師/士、律師、地政士、醫師、建築師、會計師。

### 6. tech-cert 技術士證照（10 群）

用勞動部 15 職群骨架，合併小眾職群後成 10 群（考生視角）：

| 群 slug | 中文 | 代表職類 |
|---|---|---|
| `tech-it` | 資訊科技 | 電腦軟體應用、電腦軟體設計、網頁設計、視覺傳達設計、電腦硬體裝修、數位電子、工業電子 |
| `tech-food` | 餐飲烘焙 | 中餐烹調（葷/素）、西餐、烘焙食品、中式麵食、中式米食、調酒、飲料調製 |
| `tech-beauty` | 美容美髮 | 美容、美髮、女子美髮、美甲、紋繡 |
| `tech-mechanical` | 機械加工 | 車床、銑床、CNC 銑床、電腦輔助立體製圖、機械加工 |
| `tech-electric` | 電機電子 | 室內配線、工業配線、冷凍空調、電器修護、電銲、氬銲、電信線路 |
| `tech-construction` | 土木營造 | 建築製圖、測量、造園景觀、裝潢木工、泥水、砌磚、鋼筋、室內設計、室內裝修、建築 CAD、營造共同、水管配管 |
| `tech-auto` | 汽修動力 | 汽車修護、汽車噴漆、機器腳踏車修護、堆高機操作 |
| `tech-service` | 商業服務 | 會計事務、門市服務、就業服務、照顧服務員、保母人員 |
| `tech-design` | 設計工藝 | 印前製程、商業設計、工業設計、珠寶加工 |
| `tech-agri` | 農業食品 | 園藝、造園景觀（與 construction 並列）、食品檢驗分析 |

**等級 attribute**：甲級（大專 + 乙級後 2 年實務）、乙級（高中職 + 1 年實務）、丙級（無門檻，佔報考量 70%+）、單一級（就服、保母、照服員、堆高機、美甲、紋繡等服務業）。

**熱門 Top 30**：中餐葷丙、烘焙丙/乙、門市服務丙、美容丙/乙、照服員單一級、保母單一級、會計丙、西餐丙、美髮丙/乙、調酒丙、飲料調製丙、電軟應丙、網頁設計丙/乙、室內配線乙、汽修丙/乙、冷凍空調乙、就服乙、園藝丙、中式麵食丙、視傳乙、堆高機單一級、建築製圖丙/乙、泥水丙、鋼筋丙、中餐素丙、美甲單一級、電器修護丙、工業配線乙、紋繡單一級。

### 7. finance 金融證照（7 群）

職涯導向分群（考生 90% 是「我要進銀行/券商/保險」思維；發證機構對外行人是黑盒子）：

| 群 slug | 中文 | 包含證照 |
|---|---|---|
| `fin-bank` | 銀行業務 | 金融市場常識與職業道德、信託業務、銀行內控（一般/消金）、初/進階授信、票券商、防制洗錢、金融科技能力 |
| `fin-securities` | 證券期貨 | 證券商業務員、證券商高級業務員、投信投顧、證券投資分析人員（分析師）、期貨商業務員、期貨商高級業務員、期貨交易分析人員 |
| `fin-insurance` | 保險業務 | 人身保險業務員、財產保險業務員、投資型保險、外幣收付非投資型保險（在專技的保險代理人/經紀人/公證人不重複列） |
| `fin-derivative` | 衍生/結構型商品 | 衍生性金融商品銷售人員、結構型商品銷售人員 |
| `fin-wealth` | 財富管理理財 | 理財規劃人員、信託業高級業務員、AFP、CFP |
| `fin-international` | 國際資產風險 | CFA L1/L2/L3、FRM Part I/II、CAIA、ERP |
| `fin-audit` | 會計稽核內控 | 美國 CPA、CIA（內部稽核師）、銀行內控進階 |

**學習路徑 tag**：入門（0-3 月）/ 初階（3-12 月）/ 進階（1-2 年）/ 高階（2-5 年）/ 頂尖（3+ 年）。做成 filter chip。

**熱門 Top**：金融市場常識與職業道德、人身保險業務員、信託業務、投信投顧、證券商高級業務員、防制洗錢、初階授信、CFA Level I、FRM Part I、理財規劃人員。

### 8. it-cert IT 國際認證（10 群）

雲端三家**必須各自獨立**（題庫、考科編號、更新節奏都不同；考生求職按廠商搜）：

| 群 slug | 中文 | 包含認證 |
|---|---|---|
| `it-aws` | AWS | CCP、AI Practitioner、SAA、DVA、SOA/CloudOps、Data Engineer Associate、ML Engineer Associate、SAP、DOP、Specialty (Security, ANS, MLS, DBS, SCS, DAS) |
| `it-azure` | Microsoft Azure | AZ-900、AI-900、SC-900、AZ-104、AZ-204、AZ-500、DP-203、AI-102、AZ-305、AZ-400 |
| `it-gcp` | Google Cloud | Cloud Digital Leader、ACE、PCA、PDE、PMLE、PCD、PCSE、PCNE、PCDBE |
| `it-network` | 網路 | Cisco CCNA、CCNP Enterprise、CCIE、Juniper JNCIA/JNCIS |
| `it-security` | 資安 | CompTIA Security+、CySA+、PenTest+、CASP+、CISSP、CISA、CISM、CEH、OSCP |
| `it-comptia` | CompTIA 基礎 | A+、Network+、Linux+、Cloud+ |
| `it-container` | 容器 / Linux / DevOps | RHCSA、RHCE、LFCS、Docker DCA、CKA、CKAD、CKS、KCNA、KCSA |
| `it-database` | 資料庫 | Oracle OCA/OCP/OCM、MySQL、MongoDB、MS SQL |
| `it-pm` | 專案管理 | PMP、PMI-ACP、PMI-PBA、CAPM、CSM、PSM I/II/III、PRINCE2 |
| `it-ai` | AI / 資料工程 | AWS AI Practitioner（跨標）、Azure AI-102（跨標）、GCP PMLE（跨標）、NVIDIA、Databricks — 跨廠 AI/ML 專屬證照 |

**注意**：雲端廠商內的 AI 認證（AZ-AI-102、PMLE）同時出現在 `it-azure` / `it-gcp` 與 `it-ai`，**用 tag 多對多，不用硬歸一類**。

**等級 attribute**：Foundational / Associate / Professional / Expert / Specialty。

**熱門 Top**：AWS SAA、AZ-900、AWS CCP、CCNA、CompTIA Security+、PMP、CKA、CISSP、AZ-104、GCP ACE。

### 9. language 語言檢定（6 群）

按**語種**分群（考生第一反應是「我要考哪個語」，不是「我要考 B2」）：

| 群 slug | 中文 | 包含檢定 |
|---|---|---|
| `lang-english` | 英語 | TOEIC L&R、TOEIC S&W、TOEIC Bridge、GEPT 初/中/中高/高/優、IELTS Academic/General、TOEFL iBT、TOEFL Essentials、Cambridge KET/PET/FCE/CAE/CPE、Linguaskill |
| `lang-japanese` | 日語 | JLPT N5-N1、J.TEST、日本漢字能力檢定 |
| `lang-chinese` | 華語（外籍） | TOCFL、HSK、YCT | （台灣本地考生幾乎不碰；保留但排後） |
| `lang-korean` | 韓語 | TOPIK I (1-2 級)、TOPIK II (3-6 級) |
| `lang-european` | 歐語 | 德 Goethe A1-C2 / TestDaF / TELC / ÖSD、法 DELF / DALF / TCF / TEF、西 DELE / SIELE、義 CILS |
| `lang-other` | 其他語種 | 越 iVPT、泰 CU-TFL、俄 TORFL、印尼語、阿拉伯語 |

**等級 attribute**：用 CEFR 對照（A1/A2/B1/B2/C1/C2）統一表達。各語種對照表在資訊頁。

**用途 tag**（filter chips）：求職、留學、移民、研究所加分、公司加給。**不**用用途切 2nd-level（同一檢定跨多用途）。

**熱門 Top**：TOEIC L&R、JLPT N2/N1、IELTS、TOEFL iBT、GEPT 中高級、TOPIK II。

**邊界問題**：
- 兒童語檢（YCT、GEPT Kids、Cambridge YLE）**不**獨立 2nd-level，掛在各語種下加 `tag: kids`
- TOEIC S&W、IELTS Speaking-only 獨立 slug，但共用 parent（`toeic-sw` 與 `toeic-lr` 並列）
- BULATS 2018 已停辦，應移除或標 `status: legacy`

### 10. academic 升學考試（6 群）

按**升學階段**切，不按考試類型（考生身分固定，一個階段看完整）：

| 群 slug | 中文 | 包含考試 |
|---|---|---|
| `acad-js` | 國中升高中 | 國中教育會考、特色招生學科考試/術科 |
| `acad-hs` | 高中升大學 | 學測、分科測驗、英聽、特殊選才 |
| `acad-voc` | 高職升科大 | 四技二專統測、二技統測、四技二專甄選 |
| `acad-grad` | 大學升研究所 | 研究所推甄、研究所一般考試、EMBA/在職專班、公費留學 |
| `acad-transfer` | 轉學 / 插班 | 大二轉學考、大三轉學考、學士後醫、學士後法律 |
| `acad-overseas` | 僑外生 | 僑生聯招、陸生聯招、海外聯招 |

**入學管道**（繁星、個人申請、考試分發、免試入學、技優甄審）**不進 taxonomy**，做成 `/guides/admission/*` 資訊頁。考試詳情頁（如學測）加 sidebar「本考試成績可用於：繁星 / 個申 / 分發」交叉連結。

**其他邊界**：TPVQT（技專校院英文能力指標）歸 `lang-english`（雖用於入學）。插大 = 轉學考大二/大三，放 `acad-transfer`。

## 跨類邊界決策彙總

| 邊界 | 歸屬 | 理由 |
|---|---|---|
| 警察特考（內軌）、一般警察特考、消防警察 | `military-police` | 考生認知上「想當警察」是一條路徑，與警專/警大連貫 |
| 教育行政（高普考） | `civil-admin` | 任用為公務員，非學校教師 |
| 學校職員（人事/會計） | `civil` | 學校只是分發單位，考科屬公職體系 |
| 教保員 | `teacher-childcare` | 考生族群與幼教師重疊 |
| 保險代理人/經紀人/公證人 | `prof-insurance` | 專技考試（考選部辦） |
| 保險業務員（人身/產險） | `fin-insurance` | 壽險/產險公會辦，性質是金融業從業 |
| CFA / FRM / CAIA | `fin-international` | 職涯定位是資產管理/風險管理 |
| 獸醫師 | `prof-medical` | 衛福部醫事人員類科（獸醫是農委會/農業部管的，但考選部歸醫事類） |
| AI 認證（AZ-AI-102、PMLE） | 同時掛 `it-azure/it-gcp` + `it-ai` | tag 多對多，不硬歸一類 |
| TPVQT | `lang-english` | 雖用於入學但本質是語言檢定 |
| 替代役（消防替代役） | **不收錄** | 兵役非職業考試 |
| BULATS | **不收錄** | 2018 停辦 |
| 公費留學 | `acad-grad` | 性質是研究所升學 |
| 繁星 / 個申 / 分發 | **不進 taxonomy**（做 `/guides` 頁） | 是入學管道，非考試 |

## Schema 落地策略

### 方案 A（保守）：純前端 `deriveGroup(exam)` regex
- 在 `index.html` 新增 `examGroups` 陣列（類似 `examCategories`），key 是 `{cat_slug}-{group_slug}`
- `deriveGroup(exam)` 依 `exam.name` 正則推導 group，類似目前 `deriveSubCategory`
- 優點：零 migration，純 UI 層驗證分群是否合理
- 缺點：group 代碼綁死 UI，SQL 無法 group by，SEO URL（`/catalog/civil/admin`）做不到

### 方案 B（推薦）：`exams.group_slug TEXT NULLABLE`
- 新增欄位，資料用 one-time backfill SQL 填入（基於方案 A 的 regex）
- URL 結構擴充：`#/catalog/{cat}/{group}` 支援 deep link
- SQL 可 `GROUP BY group_slug`，後台統計友善
- 缺點：一次 migration，要小心撞 RLS

### 方案 C（終極）：`exam_groups` 表
- `exam_groups (slug PK, category_id FK, name, description, sort_order, icon)`
- `exams.group_slug FK exam_groups`
- 支援 group 描述頁、圖示、管理員維護
- 缺點：需要 CRUD UI、初期過度設計

**建議路徑**：方案 A → 3 個月驗證分群 → 升級方案 B → 題庫 widget POC 階段再升方案 C。和 `kaonow_category_hub_roadmap.md` 的漸進路線一致。

## 等級 attribute schema 建議

```sql
ALTER TABLE exams ADD COLUMN level_label TEXT NULLABLE;
-- 例：'甲級', '乙級', '丙級', '單一級', '三等', '四等', '五等',
--     'N1', 'N2', 'N3', 'N4', 'N5', 'B1', 'B2', 'C1',
--     'Foundational', 'Associate', 'Professional', 'Expert', 'Specialty',
--     '高考三級', '普考', '初等',
--     'Level I', 'Level II', 'Level III'  (CFA)
ALTER TABLE exams ADD COLUMN level_order INT NULLABLE;  -- 同一 group 內排序
```

前端 badge 位置：考試卡片右上角（跟現有「題庫建置中」徽章同列）。

## 熱門 Top N pin 機制

每個 2nd-level 群底下 pin 1-3 張「熱門考試卡」，資料來源三選一：
1. **硬編**：`hot_in_group BOOLEAN` + `sort_order`（快，但死板）
2. **流量驅動**：跑 `SELECT exam_id, count FROM question_attempts ... GROUP BY exam_id` 定期重排（動態但需有流量）
3. **主觀運營**：後台管理員拖拉排序（長期方案）

**建議**：v1 用方案 1 硬編 + 運營端人工維護；流量起來後自動切方案 2。

## 改這個模組時的地雷

- **group_slug 一旦上線就不能改** —— 跟 `examCategories.id` 一樣會出現在 URL（`/catalog/civil/admin`），改了會破壞所有已分享/書籤的連結
- **AI / 跨類別證照** —— 不強求一個證照只進一個 group；多對多 tag 更健康（未來若升級方案 C，`exam_group_assignments` 表）
- **等級 `level_label` 不進 slug** —— 同一考試的不同級別共用一個 slug（例：`osh-a` 是「甲種」，`osh-b` 是「乙種」），level 只是 badge，不影響分層
- **熱門 top 不寫死在 taxonomy** —— taxonomy 是穩定結構，hot list 是週期性運營產物，分開維護
- **跨類邊界改判時** —— 改完 `exams.category_id` 要同時更新 `group_slug`、題庫 `subject` 對應關係、chapter 結構（大工程，謹慎）

## 驗證 / 快速檢查

### 每個 group 有幾個 exam
```sql
SELECT category_id, group_slug, count(*)
  FROM exams
 WHERE is_active
 GROUP BY category_id, group_slug
 ORDER BY category_id, group_slug;
```

### 沒被分到 group 的 exam
```sql
SELECT id, name, category_id FROM exams WHERE group_slug IS NULL AND is_active;
```

## 待辦 / 延伸

- [x] 按本文件 `examGroups` 陣列實作前端方案 A（2026-04-23 完成，index.html `examGroups` + `deriveGroup`，catalog 頁按群分組渲染）
- [x] 修正 9 個 exam 的 categoryId（警特 4 + 海巡 1 → military-police；職安衛 3 → tech-cert，2026-04-23）
- [ ] 確認 72 個 group_slug 是否有衝突（跨類不能重複）
- [ ] 補齊 `level_label` schema migration + data backfill
- [ ] `/guides/admission/*` 升學入學管道資訊頁（academic 類專屬）
- [ ] 熱門 Top N pin 機制 v1（硬編方案 1）
- [ ] 類別詳情頁（`#/catalog/{cat}/{group}`）URL + router 支援
