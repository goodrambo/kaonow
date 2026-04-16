# 原始資料收集進度

> Pilot run: 2026-04-16

## Pilot 結果：全數失敗（網路層擋掉）

本 session 在 Cowork 環境中執行，egress 被限制為白名單：
僅允許 `*.anthropic.com`、`anthropic.com`、`claude.com`、`*.claude.com`。

實測被擋掉的網域：
- `trains.osha.gov.tw`（職安署）→ blocked
- `wwwq.moex.gov.tw`（考選部）→ blocked
- `skill.tcte.edu.tw`（技能檢定）→ blocked
- `www.gept.org.tw`（LTTC）→ blocked
- `www.jlpt.jp`（日檢）→ blocked
- `yamol.tw`（阿摩題庫）→ blocked

錯誤代碼：`cowork-egress-blocked`
所有 158 個考試的官方來源、所有民間題庫站，都在白名單之外。

## 可用的替代
- `WebSearch` 能跑，但只返回標題+摘要片段，無法取得題目內文
- 使用者可在 Settings → Capabilities 新增網域到白名單（但 158 個考試橫跨數十個網域）

## 結論
- [!] osh-a（網路擋）
- [!] elec-c（網路擋）
- [!] gept-int（網路擋）
- [!] toeic（網路擋）
- [!] jlpt-n3（網路擋）

**此 session 無法執行大規模資料收集任務**。應改走 openclaw（Computer Use）路線，或由使用者手動下載後放到 `raw/`。
