#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
KaoNow 六大系統題庫擴充生成器
輸出:
  - supabase_schema_v5.sql (UPSERT exams + chapters)
  - exams_patch.js (更新 index.html 的 exams 陣列, 整段取代)
"""
import json, os, re, sys

OUT = os.path.dirname(os.path.abspath(__file__))

# ========== 資料定義 ==========
EXAMS = {
  # ── 1. 國家技術士（tech-cert）──────────────────────────────────
  'tech-cert': [
    # 電機電子類
    ('elec-c', '室內配線（屋內線路裝修）丙級', '室內配線丙', '屋內電路裝修基礎技能，水電/室內設計從業必備',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '水電工、建築從業人員', 3, 15000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('電學基本概念', 20), ('配線器材規範', 20), ('電路設計與施工', 20), ('安全法規', 20)]),
    ('elec-b', '室內配線（屋內線路裝修）乙級', '室內配線乙', '具獨立施工能力之中階技術士',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '具丙級基礎之電機從業者', 4, 8000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('進階電學理論', 20), ('負載計算', 20), ('工程實作', 20), ('法規進階', 20)]),
    ('elec-a', '室內配線甲級', '室內配線甲', '高階電氣技術主管資格',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 160, '具乙級 2 年以上經驗者', 5, 2000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('高壓配電設計', 20), ('工程管理', 20), ('特殊場所施工', 20), ('法規精熟', 20)]),
    ('ind-wire-c', '工業配線丙級', '工業配線丙', '工廠自動化配線技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '機電、自動化從業者', 3, 10000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('電動機控制', 20), ('配線圖識讀', 20), ('PLC基礎', 20), ('故障排除', 20)]),
    ('ind-wire-b', '工業配線乙級', '工業配線乙', '自動化控制進階技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '自動化工程師', 4, 5000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('PLC進階程式', 25), ('伺服控制', 25), ('變頻器應用', 25), ('系統整合', 25)]),
    ('hvac-c', '冷凍空調裝修丙級', '冷凍空調丙', '冷氣維修/安裝基礎技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '空調從業人員', 3, 8000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('冷凍原理', 20), ('壓縮機與冷媒', 20), ('電路控制', 20), ('安裝維修', 20)]),
    ('hvac-b', '冷凍空調裝修乙級', '冷凍空調乙', '大型空調系統技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '空調工程師', 4, 3000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('大型系統設計', 25), ('節能規劃', 25), ('施工管理', 25), ('法規精熟', 25)]),
    ('weld-c', '電銲丙級', '電銲丙', '金屬焊接基礎技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '金屬加工從業者', 3, 5000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('焊接基礎', 25), ('材料識別', 25), ('焊接實作', 25), ('安全衛生', 25)]),
    ('tig-weld', '氬氣鎢極電銲單一級', '氬銲', '精密焊接技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 100, '精密金屬加工', 4, 2000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('氬銲原理', 25), ('不鏽鋼焊接', 25), ('鋁合金焊接', 25), ('品質檢驗', 25)]),
    ('auto-c', '汽車修護丙級', '汽修丙', '汽車維修基礎技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '汽修從業者', 3, 12000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('引擎系統', 20), ('底盤系統', 20), ('電機電子', 20), ('保修實務', 20)]),
    ('auto-b', '汽車修護乙級', '汽修乙', '汽車故障診斷進階技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '資深汽修技師', 4, 5000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('電子噴射', 25), ('自動變速', 25), ('電腦診斷', 25), ('混合動力', 25)]),
    ('moto-c', '機車修護丙級', '機修丙', '機車維修基礎技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '機車維修從業者', 3, 6000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('機車引擎', 25), ('電路系統', 25), ('傳動系統', 25), ('診斷實作', 25)]),
    # 資訊類
    ('swapp-c', '電腦軟體應用丙級', '電軟應丙', '辦公軟體操作基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '學生、轉職者', 2, 80000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('文書處理', 25), ('電子試算表', 25), ('簡報製作', 25), ('網路應用', 25)]),
    ('swapp-b', '電腦軟體應用乙級', '電軟應乙', '進階辦公軟體與資料庫',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '資訊從業人員', 3, 25000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('進階文書與樣式', 25), ('資料庫應用', 25), ('VBA巨集', 25), ('系統整合', 25)]),
    ('swdesign-b', '電腦軟體設計乙級', '電軟設乙', '程式設計與系統開發',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '程式設計師', 4, 5000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('演算法', 25), ('資料結構', 25), ('物件導向', 25), ('系統分析', 25)]),
    ('pchw-c', '電腦硬體裝修丙級', '電腦硬體丙', '電腦組裝維修基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '電腦從業者', 2, 15000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('硬體原理', 25), ('作業系統', 25), ('故障排除', 25), ('網路設定', 25)]),
    ('pchw-b', '電腦硬體裝修乙級', '電腦硬體乙', '進階硬體維護與網路',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '資訊維護人員', 3, 6000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('伺服器硬體', 25), ('網路架構', 25), ('資安防護', 25), ('故障診斷', 25)]),
    ('webdesign-c', '網頁設計丙級', '網頁設計丙', 'HTML/CSS 靜態網頁設計',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '網頁初學者', 2, 20000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('HTML結構', 25), ('CSS樣式', 25), ('圖像處理', 25), ('版面設計', 25)]),
    ('webdesign-b', '網頁設計乙級', '網頁設計乙', '動態網頁與後端整合',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '網頁工程師', 3, 8000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('JavaScript進階', 25), ('後端程式', 25), ('資料庫連結', 25), ('響應式設計', 25)]),
    ('visualdesign-c', '視覺傳達設計丙級', '視傳丙', '平面設計基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '設計科系學生', 2, 12000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('設計原理', 25), ('色彩學', 25), ('Illustrator', 25), ('Photoshop', 25)]),
    # 餐飲類
    ('cook-c', '中餐烹調（葷食）丙級', '中餐葷丙', '中式料理基本技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '餐飲從業/學生', 3, 100000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('食材處理', 25), ('刀工', 25), ('烹調技法', 25), ('食品衛生', 25)]),
    ('cook-v-c', '中餐烹調（素食）丙級', '中餐素丙', '素食料理基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '素食餐飲', 3, 20000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('素食食材', 25), ('刀工與調味', 25), ('烹調技法', 25), ('衛生安全', 25)]),
    ('cook-b', '中餐烹調乙級', '中餐乙', '中式料理進階技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '主廚、餐飲主管', 4, 15000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('宴席設計', 25), ('成本控制', 25), ('進階技法', 25), ('管理實務', 25)]),
    ('western-c', '西餐烹調丙級', '西餐丙', '西式料理基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '西餐從業者', 3, 25000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('西式食材', 25), ('烹調法', 25), ('擺盤藝術', 25), ('衛生安全', 25)]),
    ('bread-c', '烘焙食品丙級', '烘焙丙', '麵包、蛋糕、西點基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '烘焙從業/學生', 3, 50000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('原料識別', 25), ('麵糰製作', 25), ('烘焙技法', 25), ('食品衛生', 25)]),
    ('bread-b', '烘焙食品乙級', '烘焙乙', '進階烘焙與創新產品',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '烘焙師、店長', 4, 10000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('配方設計', 25), ('創意產品', 25), ('品質控管', 25), ('成本管理', 25)]),
    ('noodle-c', '中式麵食加工丙級', '中式麵食丙', '麵條、饅頭、包子製作',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '麵食製作者', 3, 8000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('麵糰製作', 25), ('發麵技法', 25), ('成型技術', 25), ('衛生安全', 25)]),
    ('rice-c', '中式米食加工丙級', '中式米食丙', '米食加工技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '米食製作者', 3, 5000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('米食原料', 25), ('加工技法', 25), ('產品製作', 25), ('衛生安全', 25)]),
    ('bartend-c', '調酒丙級', '調酒丙', '調酒基礎技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '酒吧從業者', 3, 6000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('酒類認識', 25), ('調酒技法', 25), ('吧檯管理', 25), ('服務禮儀', 25)]),
    # 美容美髮類
    ('hair-c', '女子美髮丙級', '美髮丙', '美髮基礎技術',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '美髮從業者', 3, 30000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('剪髮技術', 25), ('染燙技術', 25), ('髮型設計', 25), ('衛生安全', 25)]),
    ('hair-b', '女子美髮乙級', '美髮乙', '進階美髮與造型設計',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '資深美髮師', 4, 8000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('進階剪染', 25), ('造型設計', 25), ('沙龍管理', 25), ('時尚趨勢', 25)]),
    ('beauty-c', '美容丙級', '美容丙', '臉部護理與化妝基礎',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '美容從業者', 3, 25000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('皮膚學', 25), ('護膚手技', 25), ('化妝技巧', 25), ('衛生安全', 25)]),
    ('beauty-b', '美容乙級', '美容乙', '進階美容與專業芳療',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 100, '資深美容師', 4, 6000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('進階皮膚學', 25), ('芳療精油', 25), ('經營管理', 25), ('新娘彩妝', 25)]),
    # 營建與其他
    ('forklift', '堆高機操作單一級', '堆高機', '倉儲物流必備執照',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '倉儲、物流從業者', 2, 30000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 60, 90, 60, [
       ('機械構造', 25), ('操作技術', 25), ('安全衛生', 25), ('作業實務', 25)]),
    ('care-giver', '照顧服務員單一級', '照服員', '長照服務執業資格',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 90, '長照從業人員', 3, 40000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('老人照顧', 25), ('身體照顧', 25), ('安全協助', 25), ('緊急處理', 25)]),
    ('nanny', '保母人員單一級', '保母', '托育人員必備證照',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 126, '托育人員', 3, 15000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('嬰幼兒發展', 25), ('教保實務', 25), ('營養保健', 25), ('安全與法規', 25)]),
    ('archi-draft-b', '建築製圖乙級', '建築製圖乙', '建築圖面繪製技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '建築繪圖員', 3, 6000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('建築製圖基礎', 25), ('CAD應用', 25), ('施工圖', 25), ('法規規範', 25)]),
    ('interior-mgr-b', '建築物室內裝修工程管理乙級', '室內裝修工程管理乙', '室內裝修工程主管資格',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '室內裝修業者', 4, 8000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('施工規劃', 25), ('法規檢討', 25), ('成本管控', 25), ('品質安全', 25)]),
    ('gardening-c', '園藝丙級', '園藝丙', '植栽養護基礎技能',
     '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '園藝從業者', 3, 5000,
     'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', '', 80, 100, 60, [
       ('植物識別', 25), ('栽培技術', 25), ('病蟲害防治', 25), ('景觀維護', 25)]),
  ],

  # ── 2. 公務人員考試（civil）──────────────────────────────────
  'civil': [
    ('gaokao-1', '高考一級', '高考一級', '博士級任用之頂級公職考試',
     '考選部', '筆試', 0, '博士學位者', 5, 500,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 60, 120, 50, [
       ('國文與英文', 20), ('法學知識', 20), ('專業科目一', 30), ('專業科目二', 30)]),
    ('gaokao-2', '高考二級', '高考二級', '碩士級任用之高階公職',
     '考選部', '筆試', 0, '碩士學位者', 5, 3000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 60, 120, 50, [
       ('國文與英文', 20), ('法學知識', 20), ('專業科目一', 30), ('專業科目二', 30)]),
    ('gaokao-3', '高考三級', '高考三級', '大學畢業任用公職主流管道',
     '考選部', '筆試', 0, '大學畢業以上', 4, 35000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('共同科目', 25), ('憲法與行政法', 25), ('專業科目一', 25), ('專業科目二', 25)]),
    ('pukao', '普通考試', '普考', '高中職以上任用公職管道',
     '考選部', '筆試', 0, '高中職以上', 3, 25000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('共同科目', 25), ('法學知識與英文', 25), ('專業科目一', 25), ('專業科目二', 25)]),
    ('chukao', '初等考試', '初等', '不限學歷任用公職管道',
     '考選部', '筆試', 0, '18歲以上國民', 2, 30000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 100, 120, 50, [
       ('國文', 25), ('公民與英文', 25), ('專業科目一', 25), ('專業科目二', 25)]),
    ('railway-senior', '鐵路特考高員級', '鐵高員', '鐵路系統高階主管任用',
     '考選部', '筆試', 0, '大學畢業', 4, 5000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('共同科目', 25), ('鐵路法規', 25), ('運輸管理', 25), ('專業科目', 25)]),
    ('railway-junior', '鐵路特考員級', '鐵員級', '鐵路系統主要人力管道',
     '考選部', '筆試', 0, '高中職以上', 3, 15000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('共同科目', 25), ('鐵路法規', 25), ('運輸學', 25), ('專業科目', 25)]),
    ('railway-assistant', '鐵路特考佐級', '鐵佐級', '鐵路站務/運務基層人員',
     '考選部', '筆試', 0, '高中以下', 2, 25000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 100, 120, 50, [
       ('國文', 25), ('英文', 25), ('公民', 25), ('專業科目', 25)]),
    ('police-3', '警察特考三等', '警特三等', '警察大學畢業之警官任用',
     '內政部警政署', '筆試＋體能測驗', 0, '警大/警察系畢業', 4, 5000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('警察法規', 25), ('刑事訴訟法', 25), ('犯罪學', 25), ('警察實務', 25)]),
    ('police-4', '警察特考四等', '警特四等', '警專畢業之基層警員',
     '內政部警政署', '筆試＋體能測驗', 0, '警專畢業', 3, 10000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('警察法規', 25), ('中華民國憲法', 25), ('法學緒論', 25), ('刑法概要', 25)]),
    ('police-gen-3', '一般警察特考三等', '一般警三', '一般生報考之警官',
     '內政部警政署', '筆試＋體能測驗', 0, '大學畢業', 4, 8000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('警察法規', 25), ('刑事訴訟法', 25), ('犯罪學', 25), ('警察情境實務', 25)]),
    ('police-gen-4', '一般警察特考四等', '一般警四', '一般生基層警員管道',
     '內政部警政署', '筆試＋體能測驗', 0, '高中職以上', 3, 20000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('警察法規', 25), ('憲法與刑法概要', 25), ('英文', 25), ('警察情境實務', 25)]),
    ('judicial-3', '司法特考三等', '司法三等', '法官助理、書記官等司法人員',
     '考選部', '筆試', 0, '大學畢業', 4, 6000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('憲法', 25), ('刑法與刑事訴訟法', 25), ('民法與民事訴訟法', 25), ('專業科目', 25)]),
    ('judicial-4', '司法特考四等', '司法四等', '法警、執達員、監所管理員',
     '考選部', '筆試', 0, '高中職以上', 3, 15000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('國文', 25), ('法學知識', 25), ('刑法概要', 25), ('專業科目', 25)]),
    ('judicial-5', '司法特考五等', '司法五等', '錄事、庭務員等基層司法',
     '考選部', '筆試', 0, '不限學歷', 2, 10000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 100, 120, 50, [
       ('國文', 25), ('公民與英文', 25), ('法學大意', 25), ('專業科目', 25)]),
    ('customs-3', '關務特考三等', '關務三等', '海關稅務主管',
     '考選部', '筆試', 0, '大學畢業', 4, 2000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('國際貿易', 25), ('關稅法', 25), ('英文', 25), ('專業科目', 25)]),
    ('customs-4', '關務特考四等', '關務四等', '海關基層人員',
     '考選部', '筆試', 0, '高中職以上', 3, 5000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('國文英文', 25), ('關稅法規', 25), ('貿易實務', 25), ('專業科目', 25)]),
    ('coastguard-3', '海巡特考三等', '海巡三等', '海巡署高階任用',
     '考選部', '筆試＋體能測驗', 0, '大學畢業', 4, 1500,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('海巡法規', 25), ('刑事法', 25), ('海洋政策', 25), ('專業科目', 25)]),
    ('diplomatic', '外交特考三等', '外交特考', '外交官晉用管道',
     '考選部', '筆試', 0, '大學畢業且具外語能力', 5, 800,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 60, 120, 50, [
       ('國際法', 25), ('國際關係', 25), ('外國語', 25), ('專業科目', 25)]),
    ('local-3', '地方特考三等', '地特三等', '地方政府公務員',
     '考選部', '筆試', 0, '大學畢業', 4, 20000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('共同科目', 25), ('地方自治法規', 25), ('專業科目一', 25), ('專業科目二', 25)]),
    ('local-4', '地方特考四等', '地特四等', '地方政府中階人員',
     '考選部', '筆試', 0, '高中職以上', 3, 25000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('共同科目', 25), ('法學知識', 25), ('專業科目一', 25), ('專業科目二', 25)]),
    ('investigation', '調查局特考', '調查局', '法務部調查局特考',
     '考選部', '筆試＋體能測驗', 0, '大學畢業', 4, 3000,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('國家安全', 25), ('刑法', 25), ('專業知能', 25), ('情報實務', 25)]),
    ('immigration-3', '移民行政特考三等', '移民三等', '移民署高階人員',
     '考選部', '筆試', 0, '大學畢業', 4, 2500,
     'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50, [
       ('入出國法規', 25), ('國際公法', 25), ('移民情勢', 25), ('英文', 25)]),
  ],

  # ── 3. 語言能力檢定（language）──────────────────────────────
  'language': [
    ('toeic', 'TOEIC 多益測驗', 'TOEIC', '台灣最普及之英語能力測驗',
     'ETS Taiwan', '聽力與閱讀筆試', 0, '求職、升遷、畢業門檻', 3, 400000,
     'https://www.toeic.com.tw/', 'https://www.toeic.com.tw/', '', 200, 120, 550, [
       ('Listening', 50), ('Reading', 50)]),
    ('toeic-spw', 'TOEIC 口說與寫作測驗', 'TOEIC S&W', '多益口說寫作進階測驗',
     'ETS Taiwan', '口說與寫作', 0, '進階求職者', 4, 30000,
     'https://www.toeic.com.tw/', 'https://www.toeic.com.tw/', '', 80, 80, 140, [
       ('Speaking', 25), ('Writing', 25)]),
    ('gept-elem', '全民英檢初級', 'GEPT初級', '國中畢業程度',
     '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '國中生、社會人士', 2, 100000,
     'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', '', 80, 120, 80, [
       ('Listening', 25), ('Reading', 25), ('Speaking', 25), ('Writing', 25)]),
    ('gept-int', '全民英檢中級', 'GEPT中級', '高中畢業程度（大學申請常用）',
     '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '高中生、大學申請', 3, 120000,
     'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', '', 80, 120, 80, [
       ('Listening', 25), ('Reading', 25), ('Speaking', 25), ('Writing', 25)]),
    ('gept-hint', '全民英檢中高級', 'GEPT中高級', '大學非英文主修畢業程度',
     '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '大學生、研究所申請', 4, 60000,
     'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', '', 80, 120, 80, [
       ('Listening', 25), ('Reading', 25), ('Speaking', 25), ('Writing', 25)]),
    ('gept-adv', '全民英檢高級', 'GEPT高級', '大學英文主修畢業程度',
     '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '英語專業人士', 5, 10000,
     'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', '', 80, 120, 80, [
       ('Listening', 25), ('Reading', 25), ('Speaking', 25), ('Writing', 25)]),
    ('ielts', 'IELTS 雅思', 'IELTS', '英語系國家留學/移民主流測驗',
     'British Council / IDP', '筆試＋面試口說', 0, '海外留學、移民', 4, 50000,
     'https://www.ielts.org/', 'https://www.ielts.com.tw/', '', 60, 165, 60, [
       ('Listening', 25), ('Reading', 25), ('Writing', 25), ('Speaking', 25)]),
    ('toefl-ibt', 'TOEFL iBT 托福', 'TOEFL iBT', '美系留學必備測驗',
     'ETS', '電腦測驗', 0, '美加留學申請', 4, 30000,
     'https://www.ets.org/toefl/', 'https://www.ets.org/toefl/', '', 100, 180, 80, [
       ('Reading', 25), ('Listening', 25), ('Speaking', 25), ('Writing', 25)]),
    ('jlpt-n5', '日語能力試驗 JLPT N5', 'JLPT N5', '日語初學者認證',
     '日本國際交流基金會', '筆試', 0, '日語初學者', 2, 15000,
     'https://www.jlpt.jp/', 'https://www.jlpt.tw/', '', 60, 105, 80, [
       ('文字語彙', 33), ('文法讀解', 34), ('聽解', 33)]),
    ('jlpt-n4', '日語能力試驗 JLPT N4', 'JLPT N4', '日語基礎能力認證',
     '日本國際交流基金會', '筆試', 0, '日語學習約一年', 2, 20000,
     'https://www.jlpt.jp/', 'https://www.jlpt.tw/', '', 70, 125, 90, [
       ('文字語彙', 33), ('文法讀解', 34), ('聽解', 33)]),
    ('jlpt-n3', '日語能力試驗 JLPT N3', 'JLPT N3', '日語中等能力（常用門檻）',
     '日本國際交流基金會', '筆試', 0, '日語進階學習者', 3, 25000,
     'https://www.jlpt.jp/', 'https://www.jlpt.tw/', '', 80, 140, 95, [
       ('言語知識', 33), ('讀解', 34), ('聽解', 33)]),
    ('jlpt-n2', '日語能力試驗 JLPT N2', 'JLPT N2', '日語中高級（日商工作門檻）',
     '日本國際交流基金會', '筆試', 0, '日商求職者', 4, 35000,
     'https://www.jlpt.jp/', 'https://www.jlpt.tw/', '', 90, 155, 90, [
       ('言語知識', 33), ('讀解', 34), ('聽解', 33)]),
    ('jlpt-n1', '日語能力試驗 JLPT N1', 'JLPT N1', '日語最高等級認證',
     '日本國際交流基金會', '筆試', 0, '日語專業人士', 5, 15000,
     'https://www.jlpt.jp/', 'https://www.jlpt.tw/', '', 100, 170, 100, [
       ('言語知識', 33), ('讀解', 34), ('聽解', 33)]),
    ('tocfl', '華語文能力測驗 TOCFL', 'TOCFL', '外籍人士華語能力認證',
     '國家華語測驗推動工作委員會', '電腦或筆試', 0, '外籍學生、求職者', 3, 20000,
     'https://tocfl.edu.tw/', 'https://tocfl.edu.tw/', '', 100, 120, 60, [
       ('聽力測驗', 50), ('閱讀測驗', 50)]),
    ('topik-1', '韓語能力測驗 TOPIK I', 'TOPIK I', '韓語初級（1-2級）',
     '韓國國立國際教育院', '筆試', 0, '韓語初學者', 2, 8000,
     'https://www.topik.go.kr/', 'https://topik.com.tw/', '', 70, 100, 80, [
       ('듣기 聽力', 50), ('읽기 閱讀', 50)]),
    ('topik-2', '韓語能力測驗 TOPIK II', 'TOPIK II', '韓語中高級（3-6級）',
     '韓國國立國際教育院', '筆試', 0, '韓語進階學習者', 4, 12000,
     'https://www.topik.go.kr/', 'https://topik.com.tw/', '', 100, 180, 120, [
       ('듣기 聽力', 33), ('쓰기 寫作', 33), ('읽기 閱讀', 34)]),
    ('hsk', 'HSK 漢語水平考試', 'HSK', '中國大陸華語能力認證（分1-6級）',
     '中國國家漢辦', '筆試', 0, '外籍華語學習者', 3, 5000,
     'https://www.chinesetest.cn/', 'https://www.chinesetest.cn/', '', 60, 90, 60, [
       ('聽力', 33), ('閱讀', 33), ('書寫', 34)]),
  ],

  # ── 4. 升學考試（entrance）──────────────────────────────
  'entrance': [
    ('gsat', '大學學科能力測驗', '學測', '大學申請入學主要依據',
     '大學入學考試中心', '筆試', 0, '高中三年級生', 4, 130000,
     'https://www.ceec.edu.tw/', 'https://www.ceec.edu.tw/', '', 60, 80, 60, [
       ('國文', 20), ('英文', 20), ('數學A/B', 20), ('社會/自然', 20), ('國語文寫作', 20)]),
    ('ast', '分科測驗', '分科', '大學分發入學採計（原指考）',
     '大學入學考試中心', '筆試', 0, '高中三年級生', 5, 40000,
     'https://www.ceec.edu.tw/', 'https://www.ceec.edu.tw/', '', 60, 80, 60, [
       ('數學甲', 25), ('歷史/地理/公民', 25), ('物理/化學/生物', 25), ('專業科目', 25)]),
    ('tcat', '四技二專統一入學測驗', '統測', '技職體系升學主要管道',
     '技專校院入學測驗中心', '筆試', 0, '高職三年級生', 4, 110000,
     'https://www.tcte.edu.tw/', 'https://www.tcte.edu.tw/', '', 80, 100, 60, [
       ('共同科目（國英數）', 30), ('專業科目（一）', 35), ('專業科目（二）', 35)]),
    ('cap', '國中教育會考', '會考', '國中生升高中職重要依據',
     '國中教育會考推動工作委員會', '筆試', 0, '國三學生', 3, 190000,
     'https://cap.rcpet.edu.tw/', 'https://cap.rcpet.edu.tw/', '', 48, 70, 60, [
       ('國文', 20), ('英語', 20), ('數學', 20), ('社會', 20), ('自然', 20)]),
    ('english-listening', '高中英語聽力測驗', '英聽', '大學入學採計之英聽測驗',
     '大學入學考試中心', '聽力筆試', 0, '高中三年級生', 3, 110000,
     'https://www.ceec.edu.tw/', 'https://www.ceec.edu.tw/', '', 40, 60, 60, [
       ('短篇聽解', 25), ('對話聽解', 25), ('長篇聽解', 25), ('綜合測驗', 25)]),
    ('transfer-2', '二技入學測驗', '二技統測', '專科升二技入學管道',
     '技專校院入學測驗中心', '筆試', 0, '二專畢業生', 3, 20000,
     'https://www.tcte.edu.tw/', 'https://www.tcte.edu.tw/', '', 80, 100, 60, [
       ('共同科目', 33), ('專業科目（一）', 33), ('專業科目（二）', 34)]),
    ('public-scholar', '公費留學考試', '公費留學', '教育部公費留學人才選拔',
     '教育部', '筆試', 0, '大學畢業以上', 5, 1000,
     'https://ws.moe.edu.tw/', 'https://ws.moe.edu.tw/', '', 60, 120, 60, [
       ('國文', 25), ('英文', 25), ('專門科目一', 25), ('專門科目二', 25)]),
    ('high-ent', '高中特色招生考試', '特招', '高中特色班級招生測驗',
     '各直轄市教育局', '筆試', 0, '國三學生', 3, 15000,
     'https://www.k12ea.gov.tw/', 'https://www.k12ea.gov.tw/', '', 60, 90, 60, [
       ('國文', 25), ('英文', 25), ('數學', 25), ('專業評量', 25)]),
  ],

  # ── 5. 金融商業證照（finance）──────────────────────────────
  'finance': [
    ('trust', '信託業業務人員', '信託業務', '信託業法定必要資格',
     '台灣金融研訓院', '筆試', 0, '銀行、信託從業者', 3, 30000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70, [
       ('信託法規與實務', 40), ('信託業務與產品', 40)]),
    ('internal-audit', '銀行內部控制與內部稽核', '內控稽核', '銀行業法定必要資格',
     '台灣金融研訓院', '筆試', 0, '銀行內稽、法遵', 4, 25000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70, [
       ('內控法規', 25), ('內稽實務', 25), ('風險管理', 25), ('洗錢防制', 25)]),
    ('sec-audit', '證券暨期貨業內部控制與內部稽核', '證期內控稽核', '證券期貨業內控法定資格',
     '台灣金融研訓院', '筆試', 0, '證券期貨從業者', 4, 8000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70, [
       ('證期法規', 25), ('內稽實務', 25), ('風險管理', 25), ('洗錢防制', 25)]),
    ('ins-audit', '保險業內部控制與內部稽核', '保險內控稽核', '保險業內控法定資格',
     '台灣金融研訓院', '筆試', 0, '保險從業者', 4, 6000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70, [
       ('保險法規', 25), ('內稽實務', 25), ('風險管理', 25), ('洗錢防制', 25)]),
    ('sec-sales', '證券商業務員', '證券業務員', '證券從業基本資格',
     '中華民國證券商業同業公會', '筆試', 0, '證券業求職者', 3, 40000,
     'https://www.csa.org.tw/', 'https://www.sitca.org.tw/', '', 100, 120, 70, [
       ('證券法規', 30), ('證券投資', 35), ('實務操作', 35)]),
    ('sec-senior', '證券商高級業務員', '高業', '證券進階業務資格',
     '中華民國證券商業同業公會', '筆試', 0, '進階證券業務', 4, 20000,
     'https://www.csa.org.tw/', 'https://www.sitca.org.tw/', '', 100, 120, 70, [
       ('證券交易法', 25), ('高業法規', 25), ('投資學', 25), ('財務分析', 25)]),
    ('futures-sales', '期貨商業務員', '期貨業務員', '期貨從業基本資格',
     '中華民國期貨業商業同業公會', '筆試', 0, '期貨業求職者', 3, 15000,
     'https://www.futures.org.tw/', 'https://www.sitca.org.tw/', '', 100, 120, 70, [
       ('期貨法規', 25), ('期貨交易', 25), ('期貨投資', 25), ('風險管理', 25)]),
    ('invest-consult', '投信投顧業務員', '投信投顧', '投信/投顧從業資格',
     '中華民國證券投資信託暨顧問商業同業公會', '筆試', 0, '投信投顧業求職', 3, 25000,
     'https://www.sitca.org.tw/', 'https://www.sitca.org.tw/', '', 100, 120, 70, [
       ('法規與職業道德', 25), ('投資學', 25), ('財務分析', 25), ('經濟學', 25)]),
    ('derivatives', '衍生性金融商品銷售人員', '衍商', '銷售衍生性商品資格',
     '台灣金融研訓院', '筆試', 0, '理專、銷售人員', 4, 15000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', '', 80, 120, 70, [
       ('衍商概念', 25), ('商品特性', 25), ('銷售實務', 25), ('風險揭露', 25)]),
    ('structured', '結構型商品銷售人員', '結構商品', '結構商品銷售資格',
     '台灣金融研訓院', '筆試', 0, '理專、銷售人員', 4, 12000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', '', 80, 120, 70, [
       ('結構商品概念', 25), ('商品評價', 25), ('銷售規範', 25), ('風險管理', 25)]),
    ('life-ins', '人身保險業務員', '壽險業務員', '壽險銷售法定資格',
     '壽險公會', '筆試', 0, '壽險業務員', 2, 150000,
     'https://www.lia-roc.org.tw/', 'https://www.lia-roc.org.tw/', '', 50, 60, 70, [
       ('壽險法規', 25), ('壽險商品', 25), ('核保理賠', 25), ('業務倫理', 25)]),
    ('property-ins', '財產保險業務員', '產險業務員', '產險銷售法定資格',
     '產險公會', '筆試', 0, '產險業務員', 2, 80000,
     'https://www.nlia.org.tw/', 'https://www.nlia.org.tw/', '', 50, 60, 70, [
       ('產險法規', 25), ('產險商品', 25), ('核保理賠', 25), ('業務倫理', 25)]),
    ('invest-ins', '投資型保險商品業務員', '投資型保險', '投資型保單銷售資格',
     '壽險公會', '筆試', 0, '進階保險業務', 3, 60000,
     'https://www.lia-roc.org.tw/', 'https://www.lia-roc.org.tw/', '', 50, 60, 70, [
       ('投資型商品法規', 25), ('投資學基礎', 25), ('商品特性', 25), ('銷售實務', 25)]),
    ('life-agent', '人身保險代理人', '壽險代理人', '壽險代理人執業資格',
     '考選部', '筆試', 0, '保險代理人、仲介業', 4, 5000,
     'https://wwwq.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', '', 80, 120, 60, [
       ('保險法規', 25), ('保險學', 25), ('人身保險實務', 25), ('保險行銷', 25)]),
    ('property-agent', '財產保險代理人', '產險代理人', '產險代理人執業資格',
     '考選部', '筆試', 0, '產險代理業', 4, 3000,
     'https://wwwq.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', '', 80, 120, 60, [
       ('保險法規', 25), ('保險學', 25), ('財產保險實務', 25), ('保險行銷', 25)]),
    ('afp', 'AFP 理財規劃顧問', 'AFP', 'FPAT 認證之理財規劃師',
     '台灣理財顧問認證協會 FPAT', '筆試', 0, '銀行理專、財富管理', 4, 3000,
     'https://www.fpat.org.tw/', 'https://www.fpat.org.tw/', '', 100, 180, 70, [
       ('財務規劃總論', 20), ('投資規劃', 20), ('風險管理與保險', 20), ('稅務與退休', 20), ('全方位個案', 20)]),
    ('cfp', 'CFP 認證理財規劃顧問', 'CFP', '國際認可之頂級理財認證',
     '台灣理財顧問認證協會 FPAT', '筆試', 0, '資深理財顧問', 5, 500,
     'https://www.fpat.org.tw/', 'https://www.fpat.org.tw/', '', 100, 240, 70, [
       ('財務規劃總論', 20), ('投資規劃', 20), ('風險管理', 20), ('稅務規劃', 20), ('退休與遺產', 20)]),
    ('frm', 'FRM 金融風險管理師', 'FRM', '國際金融風險管理認證',
     'GARP', '英文筆試', 0, '風控從業者', 5, 500,
     'https://www.garp.org/', 'https://www.garp.org/', '', 100, 240, 70, [
       ('基礎風險概念', 25), ('量化分析', 25), ('金融市場與商品', 25), ('風險模型', 25)]),
    ('cfa', 'CFA 特許金融分析師', 'CFA', '全球金融分析頂級認證',
     'CFA Institute', '英文筆試', 0, '資深金融從業者', 5, 800,
     'https://www.cfainstitute.org/', 'https://www.cfainstitute.org/', '', 90, 135, 70, [
       ('道德與職業準則', 15), ('定量方法與經濟學', 15), ('財務報表分析', 15), ('投資工具', 25), ('組合管理', 30)]),
    ('aml', '金融防制洗錢專業人員', '洗錢防制', '法遵必要資格',
     '台灣金融研訓院', '筆試', 0, '銀行法遵、洗錢防制', 3, 40000,
     'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', '', 80, 120, 70, [
       ('洗錢防制法規', 25), ('金融機構實務', 25), ('可疑交易申報', 25), ('國際規範', 25)]),
    ('sec-analyst', '證券投資分析人員', '證券分析師', '證券分析師資格',
     '考選部/證基會', '筆試', 0, '資深分析師', 5, 1500,
     'https://www.csa.org.tw/', 'https://www.csa.org.tw/', '', 100, 180, 60, [
       ('證券投資與財務分析', 25), ('會計及財務報表分析', 25), ('經濟學', 25), ('投資組合管理', 25)]),
  ],

  # ── 6. 資訊科技國際認證（it-cert）──────────────────────────
  'it-cert': [
    ('tqcplus-office', 'TQC+ 專業知識', 'TQC+', '電腦技能基礎認證',
     '財團法人中華民國電腦技能基金會 CSF', '上機測驗', 0, '學生、社會新鮮人', 2, 100000,
     'https://www.csf.org.tw/', 'https://www.tqcplus.org.tw/', '', 50, 60, 70, [
       ('Word 進階', 25), ('Excel 進階', 25), ('PowerPoint 進階', 25), ('網際網路應用', 25)]),
    ('tqcplus-prog', 'TQC+ 程式設計', 'TQC+程式', '程式設計能力認證',
     'CSF', '上機測驗', 0, '程式初學者、學生', 3, 30000,
     'https://www.csf.org.tw/', 'https://www.tqcplus.org.tw/', '', 10, 100, 70, [
       ('Python 實例', 25), ('Java 程式', 25), ('C 程式', 25), ('邏輯運算', 25)]),
    ('aws-ccp', 'AWS Certified Cloud Practitioner', 'AWS CCP', 'AWS 雲端基礎認證',
     'AWS', '電腦測驗', 0, 'IT 人員、管理者', 3, 10000,
     'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', '', 65, 90, 70, [
       ('AWS 雲端概念', 26), ('安全與合規', 25), ('技術核心服務', 33), ('計費與定價', 16)]),
    ('aws-saa', 'AWS Certified Solutions Architect – Associate', 'AWS SAA', 'AWS 解決方案架構師',
     'AWS', '電腦測驗', 0, '雲端架構師', 4, 15000,
     'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', '', 65, 130, 72, [
       ('彈性架構設計', 30), ('高效架構設計', 28), ('安全架構', 24), ('成本最佳化', 18)]),
    ('aws-sap', 'AWS Certified Solutions Architect – Professional', 'AWS SAP', 'AWS 專業架構師',
     'AWS', '電腦測驗', 0, '資深雲端架構師', 5, 3000,
     'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', '', 75, 180, 75, [
       ('複雜組織設計', 26), ('新解決方案設計', 29), ('持續改善', 25), ('加速遷移', 20)]),
    ('aws-dva', 'AWS Certified Developer – Associate', 'AWS DVA', 'AWS 開發者認證',
     'AWS', '電腦測驗', 0, '雲端應用開發者', 4, 5000,
     'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', '', 65, 130, 72, [
       ('開發 AWS 服務', 32), ('安全', 26), ('部署', 24), ('疑難排解', 18)]),
    ('aws-soa', 'AWS Certified SysOps Administrator – Associate', 'AWS SOA', 'AWS 系統管理認證',
     'AWS', '電腦測驗', 0, 'IT 系統維運人員', 4, 4000,
     'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', '', 65, 180, 72, [
       ('監控日誌與修復', 20), ('可靠性與持續性', 16), ('部署預配', 18), ('安全合規', 16), ('網路內容傳遞', 18), ('成本最佳化', 12)]),
    ('azure-900', 'Microsoft Azure Fundamentals', 'AZ-900', 'Azure 雲端基礎認證',
     'Microsoft', '電腦測驗', 0, 'IT 新手、業務', 2, 8000,
     'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', '', 40, 85, 70, [
       ('雲端概念', 25), ('Azure 架構服務', 35), ('Azure 管理與治理', 30), ('定價服務', 10)]),
    ('azure-104', 'Microsoft Azure Administrator', 'AZ-104', 'Azure 管理員認證',
     'Microsoft', '電腦測驗', 0, 'Azure 系統管理員', 4, 5000,
     'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', '', 40, 120, 70, [
       ('身分管理', 20), ('儲存體管理', 20), ('計算資源', 25), ('虛擬網路', 20), ('監控備份', 15)]),
    ('azure-204', 'Microsoft Azure Developer', 'AZ-204', 'Azure 開發者認證',
     'Microsoft', '電腦測驗', 0, '雲端應用開發者', 4, 3000,
     'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', '', 40, 150, 70, [
       ('Azure 計算解決方案', 25), ('Azure 儲存體', 20), ('Azure 安全性', 20), ('監控疑難排解', 20), ('連線取用 Azure', 15)]),
    ('azure-305', 'Microsoft Azure Solutions Architect Expert', 'AZ-305', 'Azure 專家架構師',
     'Microsoft', '電腦測驗', 0, '資深雲端架構師', 5, 2000,
     'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', '', 60, 150, 70, [
       ('身分治理監控', 25), ('資料儲存設計', 25), ('商務持續性', 25), ('基礎架構設計', 25)]),
    ('gcp-ace', 'Google Cloud Associate Cloud Engineer', 'GCP ACE', 'Google 雲端工程師',
     'Google Cloud', '電腦測驗', 0, 'GCP 工程師', 4, 3000,
     'https://cloud.google.com/certification/', 'https://cloud.google.com/certification/', '', 50, 120, 70, [
       ('環境設定', 25), ('規劃配置解決方案', 25), ('部署實作', 25), ('維運配置存取', 25)]),
    ('gcp-pca', 'Google Cloud Professional Cloud Architect', 'GCP PCA', 'Google 專業架構師',
     'Google Cloud', '電腦測驗', 0, '資深雲端架構師', 5, 1500,
     'https://cloud.google.com/certification/', 'https://cloud.google.com/certification/', '', 50, 120, 70, [
       ('設計與規劃', 25), ('管理解決方案', 25), ('安全合規', 25), ('最佳化與商業流程', 25)]),
    ('comptia-a', 'CompTIA A+', 'A+', 'IT 硬體與作業系統入門認證',
     'CompTIA', '電腦測驗', 0, 'IT 新手、技術支援', 3, 5000,
     'https://www.comptia.org/certifications/a', 'https://www.comptia.org/certifications/a', '', 90, 90, 70, [
       ('行動裝置', 15), ('網路技術', 20), ('硬體維護', 27), ('虛擬化與雲端', 12), ('硬體故障排除', 26)]),
    ('comptia-net', 'CompTIA Network+', 'Network+', '網路技術基礎認證',
     'CompTIA', '電腦測驗', 0, '網路工程師入門', 3, 4000,
     'https://www.comptia.org/certifications/network', 'https://www.comptia.org/certifications/network', '', 90, 90, 72, [
       ('網路基礎', 24), ('網路實作', 19), ('網路維運', 16), ('網路安全', 19), ('疑難排解', 22)]),
    ('comptia-sec', 'CompTIA Security+', 'Security+', '資安基礎國際認證',
     'CompTIA', '電腦測驗', 0, '資安從業者入門', 4, 6000,
     'https://www.comptia.org/certifications/security', 'https://www.comptia.org/certifications/security', '', 90, 90, 75, [
       ('威脅攻擊漏洞', 24), ('架構設計', 21), ('實作', 25), ('維運應變', 16), ('治理風險合規', 14)]),
    ('ccna', 'Cisco CCNA', 'CCNA', 'Cisco 網路工程師認證',
     'Cisco', '電腦測驗', 0, '網路工程師', 4, 4000,
     'https://www.cisco.com/c/en/us/training-events/training-certifications/', 'https://www.cisco.com/c/en/us/training-events/', '', 100, 120, 82, [
       ('網路基礎', 20), ('網路存取', 20), ('IP 連線', 25), ('IP 服務', 10), ('安全基礎', 15), ('自動化可程式化', 10)]),
    ('ccnp', 'Cisco CCNP Enterprise', 'CCNP', 'Cisco 網路專家認證',
     'Cisco', '電腦測驗', 0, '資深網路工程師', 5, 1500,
     'https://www.cisco.com/c/en/us/training-events/training-certifications/', 'https://www.cisco.com/c/en/us/training-events/', '', 100, 120, 82, [
       ('核心技術', 25), ('路由技術', 25), ('交換技術', 25), ('SD-WAN', 25)]),
    ('pmp', 'PMP Project Management Professional', 'PMP', '國際專案管理師認證',
     'PMI', '電腦測驗', 0, '專案經理、PM', 4, 8000,
     'https://www.pmi.org/certifications/project-management-pmp', 'https://www.pmi.org/certifications/', '', 180, 230, 70, [
       ('人員層面', 42), ('流程層面', 50), ('商業環境', 8)]),
    ('pmi-acp', 'PMI Agile Certified Practitioner', 'PMI-ACP', '敏捷專案管理認證',
     'PMI', '電腦測驗', 0, '敏捷專案、Scrum', 4, 1500,
     'https://www.pmi.org/certifications/agile-acp', 'https://www.pmi.org/certifications/', '', 120, 180, 70, [
       ('敏捷原則思維', 16), ('價值驅動交付', 20), ('利害關係人', 17), ('團隊績效', 16), ('調整監控', 11), ('問題解決', 10), ('持續改善', 10)]),
    ('scrum-master', 'Certified ScrumMaster CSM', 'CSM', 'Scrum 敏捷認證',
     'Scrum Alliance', '線上測驗', 0, 'Scrum Master', 3, 2000,
     'https://www.scrumalliance.org/', 'https://www.scrumalliance.org/', '', 50, 60, 74, [
       ('Scrum 價值', 25), ('角色職責', 25), ('事件流程', 25), ('工件產出', 25)]),
    ('cissp', 'CISSP 資訊系統安全專家', 'CISSP', '國際資安頂級認證',
     'ISC2', '電腦測驗', 0, '資深資安經理', 5, 1000,
     'https://www.isc2.org/Certifications/CISSP', 'https://www.isc2.org/Certifications/CISSP', '', 125, 240, 70, [
       ('安全風險管理', 15), ('資產安全', 10), ('安全架構', 13), ('網路安全', 14), ('身分存取', 13), ('安全評估', 12), ('安全維運', 13), ('軟體安全', 10)]),
    ('cisa', 'CISA 資訊系統稽核師', 'CISA', 'IT 稽核國際認證',
     'ISACA', '電腦測驗', 0, 'IT 稽核師', 5, 1500,
     'https://www.isaca.org/credentialing/cisa', 'https://www.isaca.org/credentialing/cisa', '', 150, 240, 70, [
       ('資訊系統稽核流程', 21), ('IT 治理管理', 17), ('資訊系統開發', 12), ('IT 運營', 23), ('資訊資產保護', 27)]),
    ('itil', 'ITIL 4 Foundation', 'ITIL', 'IT 服務管理國際認證',
     'AXELOS', '電腦測驗', 0, 'IT 服務管理人員', 3, 3000,
     'https://www.axelos.com/certifications/', 'https://www.axelos.com/certifications/', '', 40, 60, 65, [
       ('服務管理概念', 25), ('ITIL 4 框架', 25), ('實作維度', 25), ('實踐管理', 25)]),
    ('oracle-oca', 'Oracle Database OCA', 'OCA', 'Oracle 資料庫管理員認證',
     'Oracle', '電腦測驗', 0, 'DBA 初學者', 4, 1500,
     'https://education.oracle.com/certification', 'https://education.oracle.com/certification', '', 80, 120, 65, [
       ('SQL 基礎', 30), ('資料庫管理', 30), ('備份還原', 20), ('效能調校', 20)]),
  ],
}

# ========== 產生 SQL ==========
def sql_esc(s):
  return s.replace("'", "''")

sql_parts = [
  "-- ═══════════════════════════════════════════════════════════════════",
  "-- KaoNow schema v5 — 六大系統題庫擴充 (UPSERT)",
  "-- 2026-04",
  "-- ═══════════════════════════════════════════════════════════════════",
  "",
]

total_exams = 0
total_chapters = 0
for cat, exams in EXAMS.items():
  sql_parts.append(f"-- ── {cat} ({len(exams)} 筆) ──")
  for e in exams:
    (eid, name, short, desc, issuer, fmt, hours, aud, diff, cand,
     url, reg, bank, mq, mt, mp, chapters) = e
    total_exams += 1
    bank_val = f"'{sql_esc(bank)}'" if bank else "NULL"
    sql_parts.append(f"""INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('{eid}', '{cat}', '{sql_esc(name)}', '{sql_esc(short)}', '{sql_esc(desc)}', '{sql_esc(issuer)}', '{sql_esc(fmt)}', {hours}, '{sql_esc(aud)}', {diff}, {cand}, FALSE, 'free', 10, '{url}', '{reg}', {bank_val}, {mq}, {mt}, {mp})
ON CONFLICT (id) DO UPDATE SET
  category_id = EXCLUDED.category_id,
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  difficulty = EXCLUDED.difficulty,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();""")
    for idx, (chap_name, qcount) in enumerate(chapters):
      cid = f"{eid}-ch{idx}"
      total_chapters += 1
      sql_parts.append(f"""INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('{cid}', '{eid}', {idx}, '{sql_esc(chap_name)}', {qcount}, {idx})
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();""")
  sql_parts.append("")

sql_parts.append(f"-- 共新增/更新 {total_exams} 個考試, {total_chapters} 個章節")

with open(os.path.join(OUT, '..', 'supabase_schema_v5.sql'), 'w') as f:
  f.write("\n".join(sql_parts))

# ========== 產生 JS exams 陣列更新 patch ==========
js_items = []
for cat, exams in EXAMS.items():
  for e in exams:
    (eid, name, short, desc, issuer, fmt, hours, aud, diff, cand,
     url, reg, bank, mq, mt, mp, chapters) = e
    chapters_js = ','.join([
      f"{{id:{i},name:{json.dumps(cn, ensure_ascii=False)},count:{qc}}}"
      for i, (cn, qc) in enumerate(chapters)
    ])
    bank_v = bank if bank else url
    duration_v = f"durationHours:{hours}," if hours else ""
    js_items.append(
      f"  {{id:'{eid}',categoryId:'{cat}',available:false,"
      f"name:{json.dumps(name, ensure_ascii=False)},short:{json.dumps(short, ensure_ascii=False)},"
      f"desc:{json.dumps(desc, ensure_ascii=False)},"
      f"issuer:{json.dumps(issuer, ensure_ascii=False)},examFormat:{json.dumps(fmt, ensure_ascii=False)},"
      f"{duration_v}"
      f"mock_question_count:{mq},mock_time_minutes:{mt},mock_pass_score:{mp},"
      f"links:{{official:'{url}',reg:'{reg}',bank:'{bank_v}'}},"
      f"chapters:[{chapters_js}]}}"
    )

with open(os.path.join(OUT, 'six_systems_exams.js'), 'w') as f:
  f.write(",\n".join(js_items))
  f.write("\n")

print(f"✓ 已生成 supabase_schema_v5.sql ({total_exams} 考試 / {total_chapters} 章節)")
print(f"✓ 已生成 six_systems_exams.js")
print(f"統計:")
for cat, exams in EXAMS.items():
  print(f"  {cat}: {len(exams)} 筆")
print(f"合計: {total_exams} 筆")
