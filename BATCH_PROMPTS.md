# 題庫建置 — 批次 Prompt 清單

> **怎麼用**：每開一個新對話，從下面**照順序**複製一個 code block 貼進去就好。
> 建議做完一批打勾 `[x]`、commit 一次、換下一批。
> **總共 74 批**，每批 1-3 個考試，完成後覆蓋全部 158 個考試 + 59 個 v6 科目。
>
> **起手原則**：每批 prompt 已內建「讀 context.md + QUESTION_BANK_ROADMAP.md」指令；Claude 會自動接上全部規範。

---

## M1 · 職安衛 + 公職共用科目（5 批）

- [ ] **Batch 01** — 乙/丙種職安衛
```
我要繼續建置 KaoNow 題庫（專案目標：158 個考試全部做完）。
這批處理：乙種職業安全衛生業務主管（osh-b）+ 丙種職業安全衛生業務主管（osh-c）

請先讀 context.md 和 QUESTION_BANK_ROADMAP.md，然後：
1. 這兩個考試架構跟已完成的 osh-a 高度相似，複用章節架構
2. 題目來源參考：
   - 勞動部職安署訓練系統：https://trains.osha.gov.tw/
   - 職安一點通題庫彙整：http://www.osh-soeasy.com/exam.html
   - 或用我提供的官方 PDF
3. 每個考試目標：5 章 + 100+ 題 + 每章骨架講義
4. subject_id 使用 sub-osh-b / sub-osh-c（先在 subjects 表確認是否存在，若無先 INSERT）

我會貼官方 PDF / 讓你從上述來源抓。先跟我確認要怎麼起手。
```

- [ ] **Batch 02** — 國文 + 英文（公職共用）
```
我要繼續建置 KaoNow 題庫。這批處理公職共用科目：
- 國文（sub-chinese）
- 英文（sub-english）

請先讀 context.md 和 QUESTION_BANK_ROADMAP.md，特別注意 §7「共用科目 v6 特殊處理」。
官方題目來源：考選部試題搜尋 https://wwwq.moex.gov.tw/
從近 3 年高考/普考抓該科目的共同科目題，各科 80-100 題。

題目 exam_id 填 NULL，subject_id 填科目 id。
```

- [ ] **Batch 03** — 行政法 + 憲法（公職共用）
```
我要繼續建置 KaoNow 題庫。這批處理公職核心共用科目：
- 行政法（sub-admin-law）— 涵蓋高考/普考/警察三等/律師
- 憲法（sub-constitution）— 涵蓋律師/公職/法學

請先讀 context.md 和 QUESTION_BANK_ROADMAP.md §7 共用科目處理。
來源：考選部試題搜尋（近 3-5 年高考/普考行政法考題）
目標：各科目 100+ 題 + 4-5 章骨架。
```

- [ ] **Batch 04** — 法學緒論 + 民法概要
```
我要繼續建置 KaoNow 題庫。這批處理：
- 法學緒論（sub-law-intro）
- 民法概要（sub-civil-law-basic）

共用科目處理方式同 roadmap §7。
來源：考選部試題搜尋。各科目 80+ 題。
```

- [ ] **Batch 05** — 經濟學 + 會計學基礎（公職/商業共用）
```
我要繼續建置 KaoNow 題庫。這批處理：
- 經濟學（sub-economics）
- 會計學基礎（sub-accounting）

來源：考選部歷屆 + 公開題庫。各科目 80+ 題。
```

---

## M2 · 技術士熱門類別（12 批）

- [ ] **Batch 06** — 電氣類丙/乙級
```
我要繼續建置 KaoNow 題庫。這批處理技術士電氣類：
- 室內配線（屋內線路裝修）丙級（elec-c）
- 室內配線（屋內線路裝修）乙級（elec-b）

來源：https://skill.tcte.edu.tw/ 學科試題下載
各 80-120 題 + 4-5 章。
```

- [ ] **Batch 07** — 室內配線甲級 + 工業配線
```
我要繼續建置 KaoNow 題庫。這批處理：
- 室內配線甲級（elec-a）
- 工業配線丙級（ind-wire-c）
- 工業配線乙級（ind-wire-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 08** — 冷凍空調
```
我要繼續建置 KaoNow 題庫。這批處理：
- 冷凍空調裝修丙級（hvac-c）
- 冷凍空調裝修乙級（hvac-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 09** — 電銲
```
我要繼續建置 KaoNow 題庫。這批處理：
- 電銲丙級（weld-c）
- 氬氣鎢極電銲單一級（tig-weld）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 10** — 汽機車修護
```
我要繼續建置 KaoNow 題庫。這批處理：
- 汽車修護丙級（auto-c）
- 汽車修護乙級（auto-b）
- 機車修護丙級（moto-c）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 11** — 電腦軟體應用/設計
```
我要繼續建置 KaoNow 題庫。這批處理：
- 電腦軟體應用丙級（swapp-c）
- 電腦軟體應用乙級（swapp-b）
- 電腦軟體設計乙級（swdesign-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 12** — 電腦硬體
```
我要繼續建置 KaoNow 題庫。這批處理：
- 電腦硬體裝修丙級（pchw-c）
- 電腦硬體裝修乙級（pchw-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 13** — 網頁設計
```
我要繼續建置 KaoNow 題庫。這批處理：
- 網頁設計丙級（webdesign-c）
- 網頁設計乙級（webdesign-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 14** — 視覺傳達設計
```
我要繼續建置 KaoNow 題庫。這批處理：
- 視覺傳達設計丙級（visualdesign-c）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 15** — 中餐烹調
```
我要繼續建置 KaoNow 題庫。這批處理技術士餐飲類：
- 中餐烹調（葷食）丙級（cook-c）
- 中餐烹調（素食）丙級（cook-v-c）
- 中餐烹調乙級（cook-b）

來源：skill.tcte.edu.tw（學科為主，術科不在系統範圍）
```

- [ ] **Batch 16** — 西餐 + 烘焙
```
我要繼續建置 KaoNow 題庫。這批處理：
- 西餐烹調丙級（western-c）
- 烘焙食品丙級（bread-c）
- 烘焙食品乙級（bread-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 17** — 麵食/米食 + 調酒
```
我要繼續建置 KaoNow 題庫。這批處理：
- 中式麵食加工丙級（noodle-c）
- 中式米食加工丙級（rice-c）
- 調酒丙級（bartend-c）

來源：skill.tcte.edu.tw
```

---

## M3 · 技術士剩餘類別（7 批）

- [ ] **Batch 18** — 美髮
```
我要繼續建置 KaoNow 題庫。這批處理：
- 女子美髮丙級（hair-c）
- 女子美髮乙級（hair-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 19** — 美容
```
我要繼續建置 KaoNow 題庫。這批處理：
- 美容丙級（beauty-c）
- 美容乙級（beauty-b）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 20** — 服務類單一級
```
我要繼續建置 KaoNow 題庫。這批處理：
- 堆高機操作單一級（forklift）
- 照顧服務員單一級（care-giver）
- 保母人員單一級（nanny）

來源：skill.tcte.edu.tw
```

- [ ] **Batch 21** — 建築 + 園藝
```
我要繼續建置 KaoNow 題庫。這批處理：
- 建築製圖乙級（archi-draft-b）
- 建築物室內裝修工程管理乙級（interior-mgr-b）
- 園藝丙級（gardening-c）

來源：skill.tcte.edu.tw
```

---

## M4 · 專技人員（8 批）

- [ ] **Batch 22** — 律師考試
```
我要繼續建置 KaoNow 題庫。這批處理律師考試（lawyer）。
律師採 v6 多科架構（7 科：憲法/行政法/民法/民訴/刑法/刑訴/商事法），
其中憲法/行政法如已在 Batch 03 建好可共用；本批聚焦專業科目。
新建 subject：sub-civil-law, sub-civ-proc, sub-criminal-law, sub-crim-proc, sub-commerce
各 60+ 題。
來源：考選部試題搜尋。
```

- [ ] **Batch 23** — 會計師 + 記帳士
```
我要繼續建置 KaoNow 題庫。這批處理：
- 會計師考試（cpa）
- 記帳士（bookkeeper）

採 v6 多科架構；新增 sub-cost-acct, sub-audit, sub-tax-law 等。
來源：考選部試題搜尋。
```

- [ ] **Batch 24** — 醫師 + 牙醫 + 中醫
```
我要繼續建置 KaoNow 題庫。這批處理：
- 醫師考試（physician）
- 牙醫師考試（dentist）
- 中醫師考試（tcm-doctor）

採 v6 多科架構。來源：考選部試題搜尋。
```

- [ ] **Batch 25** — 藥師 + 護理師
```
我要繼續建置 KaoNow 題庫。這批處理：
- 藥師考試（pharmacist）
- 護理師（nurse）— 年考人數最多的醫事人員

來源：考選部試題搜尋。
```

- [ ] **Batch 26** — 物理治療 + 職能治療
```
我要繼續建置 KaoNow 題庫。這批處理：
- 物理治療師（physical-therapist）
- 職能治療師（occupational-therapist）

來源：考選部試題搜尋。
```

- [ ] **Batch 27** — 社工 + 公衛
```
我要繼續建置 KaoNow 題庫。這批處理：
- 社會工作師（social-worker）
- 公共衛生師（public-health-specialist）

來源：考選部試題搜尋。
```

- [ ] **Batch 28** — 建築師 + 土木 + 電機
```
我要繼續建置 KaoNow 題庫。這批處理：
- 建築師（architect）
- 土木工程技師（civil-engineer）
- 電機工程技師（electrical-engineer）

來源：考選部試題搜尋。
```

- [ ] **Batch 29** — 不動產類
```
我要繼續建置 KaoNow 題庫。這批處理：
- 不動產估價師（real-estate-appraiser）
- 不動產經紀人（real-estate）
- 地政士（land-agent）

來源：考選部試題搜尋。
```

- [ ] **Batch 30** — 保險 + 公證 + 導遊 + AI 規劃師
```
我要繼續建置 KaoNow 題庫。這批處理：
- 保險代理人（insurance-agent）
- 民間公證人（notary-public）
- 導遊人員（guide）
- AI 應用規劃師（ai-planner）— 經濟部產業署

前三者來源：考選部。AI 規劃師來源：經濟部產業發展署官方。
```

---

## M5 · 語言檢定（9 批）

> 語言類多有版權問題（TOEIC/TOEFL/IELTS 官方題目不可引用），需**原創擬真題**或使用官方樣題。

- [ ] **Batch 31** — TOEIC（擬真題）
```
我要繼續建置 KaoNow 題庫。這批處理：
- TOEIC 多益測驗（toeic）
- TOEIC 口說與寫作測驗（toeic-spw）

⚠️ 版權：TOEIC 官方題目有版權，不可原文引用。
做法：依 ETS 公開的題型樣本（reading/listening 各 part），原創擬真題 80+ 題，source 標 'community' 並加 reviewed_at。
目標：聽力 4 parts + 閱讀 3 parts 各有代表題。
```

- [ ] **Batch 32** — 全民英檢 初級 + 中級
```
我要繼續建置 KaoNow 題庫。這批處理：
- 全民英檢初級（gept-elem）
- 全民英檢中級（gept-int）— 大學申請常用

官方有釋出部分樣題：https://www.gept.org.tw/
其餘原創擬真題。各 80+ 題。
```

- [ ] **Batch 33** — 全民英檢 中高級 + 高級
```
我要繼續建置 KaoNow 題庫。這批處理：
- 全民英檢中高級（gept-hint）
- 全民英檢高級（gept-adv）

官方樣題 + 原創擬真題。
```

- [ ] **Batch 34** — IELTS + TOEFL
```
我要繼續建置 KaoNow 題庫。這批處理：
- IELTS 雅思（ielts）
- TOEFL iBT 托福（toefl-ibt）

⚠️ 全版權保護，不可原文引用官方題目。
做法：依公開題型樣本原創擬真題。各 60+ 題。
```

- [ ] **Batch 35** — JLPT N5 + N4（日檢入門）
```
我要繼續建置 KaoNow 題庫。這批處理：
- JLPT N5（jlpt-n5）
- JLPT N4（jlpt-n4）

官方只釋出樣題；其餘原創擬真題。各 60+ 題。
```

- [ ] **Batch 36** — JLPT N3 + N2
```
我要繼續建置 KaoNow 題庫。這批處理：
- JLPT N3（jlpt-n3）
- JLPT N2（jlpt-n2）— 求職最常要求的級別

各 60+ 題擬真題。
```

- [ ] **Batch 37** — JLPT N1
```
我要繼續建置 KaoNow 題庫。這批處理：
- JLPT N1（jlpt-n1）— 日檢最高級

80+ 題擬真題。
```

- [ ] **Batch 38** — TOCFL + HSK（華語）
```
我要繼續建置 KaoNow 題庫。這批處理：
- 華語文能力測驗 TOCFL（tocfl）
- HSK 漢語水平考試（hsk）

TOCFL 官方有釋出樣題（https://tocfl.edu.tw/）；HSK 需原創擬真題。
```

- [ ] **Batch 39** — TOPIK 韓語
```
我要繼續建置 KaoNow 題庫。這批處理：
- TOPIK I（topik-1）
- TOPIK II（topik-2）

官方樣題 + 擬真題。
```

---

## M6 · 升學（5 批）

- [ ] **Batch 40** — 學測 共用科目（國文/英文）
```
我要繼續建置 KaoNow 題庫。這批處理學測共用科目：
- sub-gsat-chinese（學測國文）
- sub-gsat-english（學測英文）

來源：大考中心 https://www.ceec.edu.tw/（歷屆完整釋出）
近 5 年 × 每年 40+ 題 = 200+ 題/科。
```

- [ ] **Batch 41** — 學測 數學 A + B
```
我要繼續建置 KaoNow 題庫。這批處理：
- sub-gsat-math-a（學測數學 A）— 自然組
- sub-gsat-math-b（學測數學 B）— 社會組

來源：大考中心歷屆。各 100+ 題。
```

- [ ] **Batch 42** — 學測 自然 + 社會
```
我要繼續建置 KaoNow 題庫。這批處理：
- sub-gsat-science（學測自然）
- sub-gsat-social（學測社會）

來源：大考中心歷屆。各 80+ 題。
```

- [ ] **Batch 43** — 分科測驗
```
我要繼續建置 KaoNow 題庫。這批處理分科測驗（ast）7 科：
sub-ast-math-a, sub-ast-physics, sub-ast-chemistry, sub-ast-biology, sub-ast-history, sub-ast-geography, sub-ast-civics

來源：大考中心歷屆。各 60+ 題（共約 420 題，可能需分次完成）。
```

- [ ] **Batch 44** — 統測 + 會考 + 其他
```
我要繼續建置 KaoNow 題庫。這批處理：
- 四技二專統一入學測驗（tcat）
- 國中教育會考（cap）
- 高中英語聽力測驗（english-listening）
- 二技入學測驗（transfer-2）
- 公費留學考試（public-scholar）
- 高中特色招生考試（high-ent）

各 60+ 題。來源：各考試辦理單位官方釋出題目。
```

---

## M7 · 金融商業（11 批）

- [ ] **Batch 45** — 信託 + 銀行稽核
```
我要繼續建置 KaoNow 題庫。這批處理：
- 信託業業務人員（trust）
- 銀行內部控制與內部稽核（internal-audit）

來源：金融研訓院、證券商同業公會公開題庫。各 80+ 題。
```

- [ ] **Batch 46** — 證券/保險稽核
```
我要繼續建置 KaoNow 題庫。這批處理：
- 證券暨期貨業內部控制與內部稽核（sec-audit）
- 保險業內部控制與內部稽核（ins-audit）

來源：證期會、保發中心公開題庫。
```

- [ ] **Batch 47** — 證券業務員
```
我要繼續建置 KaoNow 題庫。這批處理：
- 證券商業務員（sec-sales）
- 證券商高級業務員（sec-senior）

來源：證基會考題下載 https://www.sfi.org.tw/exam/exam6/exam6-3 。各 100+ 題。
```

- [ ] **Batch 48** — 期貨 + 投信投顧
```
我要繼續建置 KaoNow 題庫。這批處理：
- 期貨商業務員（futures-sales）
- 投信投顧業務員（invest-consult）

來源：證基會公開題庫。
```

- [ ] **Batch 49** — 衍生性 + 結構型商品
```
我要繼續建置 KaoNow 題庫。這批處理：
- 衍生性金融商品銷售人員（derivatives）
- 結構型商品銷售人員（structured）

來源：證基會。
```

- [ ] **Batch 50** — 人壽/財產/投資型保險
```
我要繼續建置 KaoNow 題庫。這批處理：
- 人身保險業務員（life-ins）
- 財產保險業務員（property-ins）
- 投資型保險商品業務員（invest-ins）

來源：壽險公會、產險公會 https://www.lia-roc.org.tw/ / https://www.nlia.org.tw/
```

- [ ] **Batch 51** — 保險代理人
```
我要繼續建置 KaoNow 題庫。這批處理：
- 人身保險代理人（life-agent）
- 財產保險代理人（property-agent）

來源：保發中心、保險事業發展中心。
```

- [ ] **Batch 52** — 理財規劃（AFP + CFP）
```
我要繼續建置 KaoNow 題庫。這批處理：
- AFP 理財規劃顧問（afp）
- CFP 認證理財規劃顧問（cfp）

來源：台灣理財規劃產業發展促進會 https://www.fpat.org.tw/
```

- [ ] **Batch 53** — FRM + CFA（國際認證）
```
我要繼續建置 KaoNow 題庫。這批處理：
- FRM 金融風險管理師（frm）— GARP
- CFA 特許金融分析師（cfa）— CFA Institute

⚠️ 版權：兩者均為國際認證，官方題目有版權。需依 curriculum 原創擬真題。
各 60+ 題，全英文。
```

- [ ] **Batch 54** — AML + 證券分析
```
我要繼續建置 KaoNow 題庫。這批處理：
- 金融防制洗錢專業人員（aml）
- 證券投資分析人員（sec-analyst）

來源：台灣金融研訓院、證基會。
```

---

## M8 · IT 認證（11 批）

> IT 認證多為國際商業認證（AWS/Azure/GCP/CompTIA 等），**官方題目全版權**。
> 做法：依官方 exam guide 的範疇原創擬真題；**絕對不可使用 brain dump 網站題目**（版權 + 違反 NDA）。

- [ ] **Batch 55** — TQC+ 系列
```
我要繼續建置 KaoNow 題庫。這批處理：
- TQC+ 專業知識（tqcplus-office）
- TQC+ 程式設計（tqcplus-prog）

來源：TQC 線上題庫 https://exam.tqc.org.tw/TQCexamonline/
```

- [ ] **Batch 56** — AWS 基礎（CCP + SAA）
```
我要繼續建置 KaoNow 題庫。這批處理：
- AWS Certified Cloud Practitioner（aws-ccp）
- AWS Solutions Architect Associate（aws-saa）

⚠️ 版權：AWS 官方題目全版權。依 exam guide 範疇原創擬真題，各 60+ 題全英文。
```

- [ ] **Batch 57** — AWS 進階（SAP + DVA + SOA）
```
我要繼續建置 KaoNow 題庫。這批處理：
- AWS Solutions Architect Professional（aws-sap）
- AWS Developer Associate（aws-dva）
- AWS SysOps Administrator Associate（aws-soa）

⚠️ 依 exam guide 原創擬真題。
```

- [ ] **Batch 58** — Azure 基礎（900 + 104）
```
我要繼續建置 KaoNow 題庫。這批處理：
- Azure Fundamentals AZ-900（azure-900）
- Azure Administrator AZ-104（azure-104）

⚠️ 依 Microsoft Learn 的 exam skills outline 原創擬真題。
```

- [ ] **Batch 59** — Azure 進階（204 + 305）
```
我要繼續建置 KaoNow 題庫。這批處理：
- Azure Developer AZ-204（azure-204）
- Azure Solutions Architect AZ-305（azure-305）

⚠️ 依 Microsoft Learn 原創擬真題。
```

- [ ] **Batch 60** — GCP（ACE + PCA）
```
我要繼續建置 KaoNow 題庫。這批處理：
- GCP Associate Cloud Engineer（gcp-ace）
- GCP Professional Cloud Architect（gcp-pca）

⚠️ 依 Google Cloud exam guide 原創擬真題。
```

- [ ] **Batch 61** — CompTIA 系列
```
我要繼續建置 KaoNow 題庫。這批處理：
- CompTIA A+（comptia-a）
- CompTIA Network+（comptia-net）
- CompTIA Security+（comptia-sec）

⚠️ 依 CompTIA exam objectives 原創擬真題。
```

- [ ] **Batch 62** — Cisco（CCNA + CCNP）
```
我要繼續建置 KaoNow 題庫。這批處理：
- Cisco CCNA（ccna）
- Cisco CCNP Enterprise（ccnp）

⚠️ 依 Cisco exam topics 原創擬真題。
```

- [ ] **Batch 63** — 專案管理（PMP + ACP + CSM）
```
我要繼續建置 KaoNow 題庫。這批處理：
- PMP（pmp）
- PMI-ACP（pmi-acp）
- Certified ScrumMaster CSM（scrum-master）

⚠️ 依 PMI / Scrum Alliance 官方範疇原創擬真題。
```

- [ ] **Batch 64** — 資安（CISSP + CISA）
```
我要繼續建置 KaoNow 題庫。這批處理：
- CISSP 資訊系統安全專家（cissp）— 8 domains
- CISA 資訊系統稽核師（cisa）— 5 domains

⚠️ 依 ISC2 / ISACA 範疇原創擬真題。
```

- [ ] **Batch 65** — ITIL + Oracle
```
我要繼續建置 KaoNow 題庫。這批處理：
- ITIL 4 Foundation（itil）
- Oracle Database OCA（oracle-oca）

⚠️ 依官方 exam topics 原創擬真題。
```

---

## M9 · 公職特考 + 學測長尾（10 批）

> 公職考試多採 v6 多類科架構；若共用科目（國文/英文/行政法/憲法）已在 M1 完成，這些考試主要靠對應就能有題。
> 本區只處理**各特考專屬的專業科目**。

- [ ] **Batch 66** — 高考三級 專業（行政組）
```
我要繼續建置 KaoNow 題庫。這批處理高考三級 一般行政類科的專業科目：
sub-admin（行政學）+ sub-public-admin（公共政策）

來源：考選部。各 80+ 題。
```

- [ ] **Batch 67** — 高考三級 專業（民政/人事組）
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-civil-affairs（地方政府與政治）+ sub-personnel（現行考銓制度）

來源：考選部。各 80+ 題。
```

- [ ] **Batch 68** — 高考 + 普考 專業（財稅）
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-tax-admin（財政學）+ sub-tax-law（稅務法規）

來源：考選部。各 80+ 題。
```

- [ ] **Batch 69** — 警察特考 專業
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-police-admin（警察行政法規）+ sub-criminal-prevention（犯罪預防）

來源：考選部警察特考歷屆。
```

- [ ] **Batch 70** — 司法特考 專業
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-court-clerk（訴訟法）+ sub-prosecutor-asst（法學知識）

來源：考選部司法特考歷屆。
```

- [ ] **Batch 71** — 鐵路特考 專業
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-railway-op（運輸學）+ sub-railway-mech（機械原理）

來源：考選部鐵路特考歷屆。
```

- [ ] **Batch 72** — 關務/海巡/移民
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-customs-law（關稅法規）+ sub-coast-guard（海洋事務）+ sub-immigration-law（入出國及移民法規）

來源：考選部。各 60+ 題。
```

- [ ] **Batch 73** — 外交 + 調查局
```
我要繼續建置 KaoNow 題庫。這批處理：
sub-international-law（國際公法）+ sub-investigation（刑事訴訟法）

來源：考選部。各 60+ 題。
```

- [ ] **Batch 74** — 校準冷門考試 metadata + 審核
```
我要繼續建置 KaoNow 題庫。最後一批：
1. 巡視所有標 available=FALSE 的考試，檢查每個是否已對應到 subject 有題庫
2. 將可用的考試批次 UPDATE available=TRUE
3. 對冷門考試補 metadata（官方 URL、報考人數、描述細節）
4. 前端驗證：用 catalog 搜尋、隨機進各類別至少 3 個考試，確保都能順利進入練習流程
```

---

## 📊 進度追蹤

完成批次後回到本文件打勾（把 `- [ ]` 改成 `- [x]`），並 commit。

**當前進度**：0 / 74 批

---

## 備註

- 所有批次的 prompt 都已嵌入「讀 context.md 和 QUESTION_BANK_ROADMAP.md」，Claude 會自動套用 §3 資料格式規範、§8 審核 checklist、§9 常見陷阱。
- 如果某批的資料量過大（例如分科測驗 7 科 × 60 題），Claude 會主動拆成子批次請你多開一個對話。
- 遇到版權敏感考試（TOEIC/AWS/CISSP 等）務必走**原創擬真題**路線，`source` 標 `community`、`reviewed_at` 必填，才會進入 `questions_published` view。
