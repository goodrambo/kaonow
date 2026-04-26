/**
 * KaoNow QA L1 — 資料層靜態檢查
 *
 * 用法：
 *   1. 開 https://kaonow.com 登入後進入任一 exam 的 quiz（讓 cache 載入）
 *   2. F12 打開 console
 *   3. 把整支貼進去執行
 *   4. 看 console 輸出 / 把 window.__qaResult 複製給 Claude / 寫進報告
 *
 * 設計筆記：
 *   - 純 read-only，不會打 supabase / 不會修 cache
 *   - 從 localStorage["kaonow_q16_<exam_id>"] 抓題庫
 *   - assertion 清單見 docs/qa-reports/README.md
 */

(() => {
  // ---- 1. 找出所有已 cache 的 exam ----
  const examCacheKeys = Object.keys(localStorage)
    .filter(k => /^kaonow_q\d+_/.test(k))
    .map(k => ({ key: k, examId: k.replace(/^kaonow_q\d+_/, '') }));

  if (examCacheKeys.length === 0) {
    console.warn('[QA-L1] 找不到任何 exam cache。先進入一個 exam 的 quiz 載入 cache 再跑。');
    return;
  }
  console.log('[QA-L1] 找到 cache:', examCacheKeys.map(e => e.examId).join(', '));

  // ---- 2. 對每個 exam 跑檢查 ----
  const allResults = {};
  for (const { key, examId } of examCacheKeys) {
    const cache = JSON.parse(localStorage.getItem(key));
    const questions = cache.data;
    if (!Array.isArray(questions)) continue;
    const ids = new Set(questions.map(q => q.id));
    const issues = [];
    const stats = { total: questions.length, by_subject: {}, by_type: {}, by_source: {} };

    const push = (q, sev, code, detail) => issues.push({
      id: q.id, paper_id: q.paper_id, subject: q.subject_id, sev, code, ...detail
    });

    for (const q of questions) {
      stats.by_subject[q.subject_id] = (stats.by_subject[q.subject_id] || 0) + 1;
      stats.by_type[q.type] = (stats.by_type[q.type] || 0) + 1;
      stats.by_source[q.source] = (stats.by_source[q.source] || 0) + 1;
      const allText = [q.q, q.exp, ...(q.opts || [])].join('|');

      // ---- BLOCKER ----
      if (!q.q || q.q.trim().length === 0) push(q, 'blocker', 'EMPTY_Q', {});
      if (!q.opts || !Array.isArray(q.opts)) push(q, 'blocker', 'NO_OPTS', {});
      else {
        if (q.opts.length < 2) push(q, 'blocker', 'OPTS_TOO_FEW', { n: q.opts.length });
        if (q.opts.some(o => !o || (typeof o === 'string' && o.trim() === ''))) {
          push(q, 'blocker', 'OPT_EMPTY', { opts: q.opts, q: q.q?.slice(0, 250), ans: q.ans });
        }
      }
      if (q.type === 'single_choice') {
        if (typeof q.ans !== 'number') push(q, 'blocker', 'ANS_NOT_NUM', { ans: q.ans, ans_type: typeof q.ans });
        else if (Array.isArray(q.opts) && (q.ans < 0 || q.ans >= q.opts.length)) {
          push(q, 'blocker', 'ANS_OUT_OF_RANGE', { ans: q.ans, opts_len: q.opts.length });
        }
      }

      // ---- MAJOR ----
      if (q.opts && Array.isArray(q.opts)) {
        const seen = new Set(); let dup = false;
        for (const o of q.opts) { const k = (o || '').trim(); if (seen.has(k) && k) { dup = true; break; } seen.add(k); }
        if (dup) push(q, 'major', 'OPT_DUP', { opts: q.opts, q: q.q?.slice(0, 200) });
      }
      if (!q.exp || q.exp.trim().length < 10) push(q, 'major', 'EXP_MISSING', { exp_len: (q.exp || '').length });
      if (allText && /\\\\(frac|sqrt|sum|int|cdot|times|alpha|beta|gamma|theta|pi)/.test(allText)) {
        push(q, 'major', 'KATEX_DOUBLE_ESC', { q: q.q?.slice(0, 250), opts: q.opts });
      }
      if (q.q && /如(下|右|左|上)?圖|見圖|圖[\(（]/.test(q.q)) {
        const hasImg = q.img || (q.media && (q.media.image_url || q.media.images));
        if (!hasImg) push(q, 'major', 'IMG_MISSING', { q: q.q?.slice(0, 200) });
      }
      if (q.parent_id && !ids.has(q.parent_id)) {
        push(q, 'major', 'PARENT_PASSAGE_MISSING', { parent_id: q.parent_id });
      }
    }

    const sevCount = issues.reduce((a, i) => { a[i.sev] = (a[i.sev] || 0) + 1; return a; }, {});
    const codeCount = issues.reduce((a, i) => { a[i.code] = (a[i.code] || 0) + 1; return a; }, {});

    allResults[examId] = {
      cache_ts: new Date(cache.ts).toISOString(),
      stats,
      sev_count: sevCount,
      code_count: codeCount,
      issues,
    };

    console.log(`[QA-L1] ${examId}: ${questions.length} 題, ${issues.length} issues (${JSON.stringify(sevCount)})`);
  }

  window.__qaResult = allResults;
  console.log('[QA-L1] 完成。完整結果在 window.__qaResult');
  console.log('[QA-L1] 複製：copy(JSON.stringify(window.__qaResult))');
  return allResults;
})();
