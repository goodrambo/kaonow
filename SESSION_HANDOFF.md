# KaoNow — Session Handoff

> 上次更新：2026-04-19（考試專區 UI/UX 重設計 + URL 重構）
> 下個 session 建議目標：類別頁 hub widget POC（等題庫補完），或 SEO 用 History API 去 `#`

---

## 1. 目前上線狀態（kaonow.com / main 分支）

### 本 session 新上線的

考試專區（`#/catalog`）全面重設計，三個 commit 漸進推上線：

| commit | 主題 |
|---|---|
| `63ce0ca` | Discovery-first landing：bento + hero 3 tiles + 熱門考試 4 欄 grid |
| `754b392` | Option B：大 chip bar 全站隱藏，breadcrumb 取代，`#catalog-grid` 4 欄對齊 hot-grid |
| `8408d80` | URL 拆分：新增 `#/category/{catId}` 路由 |
| `eb37cd7` | URL 收斂：`/category` 合併進 `/catalog/{catId}`，bookmark 搬到 `/my/bookmarks` |

### 其他仍在線的穩定功能

- 登入態 nav、avatar dropdown、`/#/me` dashboard、welcome modal 雙模式、「先不設定」清目標
- `html.auth-ready` FOUC gate、`rerenderAfterAuth()` 解硬刷新 race
- ECPay 付款（Edge Function + billing module，審核中）

---

## 2. 設計哲學（別偏離）

- **乾淨簡潔 + 通用型介面優先**，競品很醜是我們的切入點
- v1 不做 persona-switching，只放 80% 使用者都在意的 widget
- 沒目標也要能用：有些人就是想先刷題、不想先設定
- 類別頁要變族群 hub（不同考生在意的資訊不同），但**等題庫和解答都補齊了再做**

---

## 3. 最終 URL 結構（2026-04-19 定稿）

```
#/home                  首頁
#/catalog               考試專區 landing（bento + 熱門 + 3 tiles）
#/catalog/{catId}       單一類別頁（validated against examCategories；
                        未知 id 自動 redirect 回 /catalog）
#/my/bookmarks          收藏清單（從 catalog 搬出來，跟 /me 並列的 user-state namespace）
#/exam/{examId}         單一考試
#/subject/{subjectId}   單一科目
#/me                    個人頁 dashboard
#/review                練習回顧
#/pricing               訂閱方案
#/quiz, #/result        練習 + 結果頁
```

**legacy redirect**：`#/category/{catId}` 會自動轉 `#/catalog/{catId}`（放一陣子就能清掉）

**Router 實作重點**（`index.html` ~line 2689）：
- 所有 `state.catalogFilter = ...` 的寫入**只在 router 裡**（唯一 source of truth）
- 點擊發起者一律呼叫 `nav()` 而非直接 mutate state → 瀏覽器 back/forward 原生 work
- catId 必須在 `examCategories` 裡才接受，否則 redirect 回 landing

---

## 4. 考試專區現在的視覺結構

**Landing (`#/catalog`)**：
- Hero 3 tiles：繼續上次 / 我的收藏 / 最近瀏覽（data-nav 或 data-filter 或 data-scroll）
- 熱門考試 4 欄 `.hot-grid`（硬編 4 個 id，沒做動態排序）
- Bento 類別 grid `.cat-grid` 4 欄
  - Feature card span 2 欄：用 `pickFeatureCategory(bookmarkSet)` 決定（收藏 >=2 > 最近看 >=2 > default `prof-exam`）
  - Feature 有調色盤（`CAT_PALETTE`）+ `CAT_PREVIEW` 預覽 chips
- 大 `#catalog-filter` chip bar **永遠隱藏**（bento 取代）

**類別頁 (`#/catalog/{catId}`)**：
- Breadcrumb `.catalog-crumb`：`← 所有類別 · {icon} {name} · N 個考試`（搜尋/收藏也用這條）
- Back button 呼叫 `nav('catalog')`
- `#catalog-grid` 4 欄 × 考試卡片（scoped 4-col override，`.exam-grid` 預設不動，/me 頁不受影響）
- Sub-filter chip 保留（技術士 / 公職 / 語檢 / 學術有子分類）

**CSS block** 在 `index.html` line ~228–280（`.hero-wrap`、`.tile`、`.hot-grid`、`.cat-grid`、`.cat-card.feature` palette vars、`.catalog-crumb`、`#catalog-grid` 4 欄 override）

---

## 5. 關鍵架構備忘

單檔 SPA：`index.html`（~6000 行），inline CSS + Supabase JS CDN。

**Hash router**：line ~2689，`switch(page)` 形式；`nav(p)` helper = `location.hash='#/'+p`

**Auth 狀態管理**：
- `cloud.isLoggedIn()` / `cloud.currentUser()` / `cloud.init()` / `cloud.logout()`
- Supabase token key: `sb-myvfboezhnzgovowhaff-auth-token`
- `updateAuthUI()` 加 `html.auth-ready` class；FOUC rule `html:not(.auth-ready) [data-when]{display:none}`

**localStorage keys**：
- `kaonow_target_exam` → `{examId, examDate, ts}`
- `kaonow_last_exam` → 上次做的考試 id（hero 第一個 tile 的資料源）
- `kaonow_recent_viewed` → 最近看過的 id 陣列
- `kaonow_bookmarks` → 收藏 id set
- `kaonow_welcome_dismissed` → 1 表示關過歡迎 modal

**Welcome modal 雙模式**：`openWelcomeModal(isSwitching)`，模式存在 `window._welcomeIsSwitching`

---

## 6. 會踩的坑（workflow）

1. **`.git/index.lock` 無法 unlink**（virtiofs mount 權限）
   - 每次 commit 失敗看到 `Operation not permitted` 就：`rm -f .git/index.lock`（Mac terminal 跑）
   - 這 session 踩了 2 次

2. **沙箱 proxy 擋 `git push` (403)**、**擋 `kaonow.com` 等外部網域 curl**
   - push 從 Mac terminal 跑；要驗 live 用 Chrome MCP（`mcp__Claude_in_Chrome__*`）

3. **zsh `!` 歷史展開會吃 commit message**
   - 含 `!`、變數、反引號時用 heredoc + `<<'EOF'` 單引號 delimiter

4. **GitHub Pages cache ~30-60s** — push 完不要馬上驗；先檢查 `router.toString().includes('case ...')` 確認新版到了才跑驗證套件

5. **`state.catalogFilter` 單一 source of truth 是 router**，click 發起者不要再 mutate state（會繞過 URL）

6. **寫 explanation 或批次題目前**：先確認 `correct_answer` 0/1-indexed 慣例（7385/7393 題 off-by-one bug；詳 auto-memory）

7. **validator 禁止手抄 `correct_answer`**：必須從 `raw_*.json` 讀

---

## 7. Router 核心程式碼速查（`index.html` ~2689）

```js
switch(page){
  case 'home':
    document.getElementById('screen-home').classList.add('active');
    renderHome();
    break;

  case 'catalog': {
    // /catalog          → landing
    // /catalog/{catId}  → category page (validated)
    document.getElementById('screen-catalog').classList.add('active');
    if (!arg) {
      state.catalogFilter = 'all';
    } else if (examCategories.some(c => c.id === arg)) {
      state.catalogFilter = arg;
    } else {
      nav('catalog'); return;  // unknown → redirect
    }
    state.catalogSubFilter = null;
    state.catalogSearch = '';
    const inp = document.getElementById('catalog-search-input');
    if (inp) inp.value = '';
    renderCatalog();
    break;
  }

  case 'my': {
    if (arg === 'bookmarks') {
      document.getElementById('screen-catalog').classList.add('active');
      state.catalogFilter = '__bookmark';
      // ... render
    } else { nav('me'); return; }
    break;
  }

  // Deprecated legacy redirect
  case 'category': nav(arg ? 'catalog/'+arg : 'catalog'); return;

  case 'exam': ...
  case 'subject': ...
  case 'me': ...
}
```

---

## 8. 下個 session 候選（未承諾順序）

### A. 類別頁 hub widget POC（阻塞中，等題庫）

路線：**先 (1) 共用 shell + 類別專屬 widget 帶，後續再升級 (3) per-category 客製 renderer**。不走 tabs 方案。POC 類別挑 `tech-cert`（唯一 `is_available=true` 的 `osh-a` 在這類）。

widget 候選：
- 🔧 技術士：下次報名倒數、術科考場分布、實作梯次
- 🏛 專技高普：近三年錄取率、考科 weight、考古題統計
- 🗣 語檢：分數對照、有效期限、商業價值排行
- 💼 公職：缺額／報考比、各地發榜時間

資料源先寫前端 JSON 試 layout，驗證有停留再決定是否開 `category_meta` 表。**阻塞**：需要題庫 + 解答 + 報名時間等資料維度齊了才有意義。

### B. SEO 升級：去 `#`（History API + GitHub Pages 404.html trick）

工作量 ~30 分鐘。做法：
- 複製一份 `index.html` 成 `404.html`（或用 `spa-github-pages` template）
- Router 從 `location.pathname` 讀而非 `location.hash`
- `nav()` 改用 `history.pushState()`
- 所有 `<a href="#/...">` 加 click interceptor
- 加 `BreadcrumbList` JSON-LD structured data

做之前要想清楚：題庫還沒齊，Google 爬到也沒內容排名；等題庫補完再做更划算。

### C. 熱門考試動態排序

目前 4 個是硬編的。之後 user 多了可以改成按 bookmark count 或 answer count 排序。但現在流量小，不急。

### D. catalog 搜尋結果的 breadcrumb 文案可以優化

目前搜尋時顯示「🔍 「關鍵字」的搜尋結果」— 如果有零結果還會繼續 breadcrumb，要不要改成空狀態？

---

## 9. 外部整合現況

- **ECPay 付款**：三個 Edge Function + 前端 billing module 已完成並上線；廠商代號 3497735 審核中，stage 測試遇 10200141 是預期；備援測試值可驗證。詳見 auto-memory `kaonow_ecpay_integration_status.md`
- **Supabase project id**：`myvfboezhnzgovowhaff`
- **GitHub**：`goodrambo/kaonow`，main 分支 → GitHub Pages → `kaonow.com`（custom domain + CNAME + .nojekyll）
- **唯一 `is_available=true` 的 exam**：`osh-a`（甲種職安衛，屬 `tech-cert` 類別）

---

## 10. auto-memory（跨 session persistent，已存）

`~/.auto-memory/MEMORY.md` 目前有：
- `kaonow_correct_answer_indexing_bug.md`
- `kaonow_validator_no_manual_correct_answer.md`
- `kaonow_ecpay_integration_status.md`
- `kaonow_design_philosophy.md`
- `kaonow_category_hub_roadmap.md`（**本 session 新增**：類別頁 hub 路線圖 + 阻塞在題庫建置）

這份 `SESSION_HANDOFF.md` 是專案內可視紀錄；auto-memory 是 Claude 自動讀的那份。

---

## 11. 驗證新 session 接手時可以跑的 checklist

1. `git log --oneline -5` 應看到 `eb37cd7 refactor(router): consolidate catalog namespace`
2. `kaonow.com/#/catalog` 應顯示 bento（7 張類別卡）+ 3 tiles + hot-grid
3. `kaonow.com/#/catalog/tech-cert` 應顯示 breadcrumb「← 所有類別 · 🔧 技術士證照 · 61 個考試」+ 4 欄 grid
4. `kaonow.com/#/my/bookmarks` 應顯示 breadcrumb「⭐ 我的收藏」
5. `kaonow.com/#/category/tech-cert`（legacy）應自動 redirect 到 `/catalog/tech-cert`
6. `kaonow.com/#/catalog/not-real-id` 應 redirect 回 `/catalog` landing
