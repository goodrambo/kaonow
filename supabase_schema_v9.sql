-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v9 — 還原 osh-a correct_answer（修復 2026-04-17 誤傷）
-- 2026-04-19
-- ═══════════════════════════════════════════════════════════════════
-- 背景：
--   2026-04-17 做的大批 correct_answer 1-indexed → 0-indexed migration，
--   用粗判準「值 0 不動、1-4 全 -1」，對 6 個 1-indexed 科目正確。
--   但 osh-a 是全庫唯一一個 0-indexed 的科（AI 生成時用 Python 慣例），
--   被誤判成 1-indexed 也跟著 -1，造成 146/154 題真解偏移 +1。
--
-- 修復方式：
--   從 _backup_correct_answer_20260417 還原 osh-a 的原始 correct_answer。
--
-- Dry-run 驗證（2026-04-19）：
--   ✅ backup 表存在、7393 筆（osh-a 154 筆）
--   ✅ osh-a 當前分布 0(104)+1(43)+2(7)  ← 明顯偏移
--   ✅ osh-a backup 原始分布 0(8)+1(96)+2(43)+3(7)  ← 鐵證 0-indexed（無 4）
--   ✅ diff 146 筆、same 8 筆
--   ✅ 其他科目無殘留 MAX≥4（之前 migration 做對）
--
-- 冪等：重跑不會再改資料，但 pre-check 會偵測 diff_count!=146 並 raise。
-- 若要重跑請先手動比對是否預期。
-- ═══════════════════════════════════════════════════════════════════

DO $mig$
DECLARE
  v_backup_exists INTEGER;
  v_diff_pre     INTEGER;
  v_updated      INTEGER;
  v_post_0       INTEGER;
  v_post_1       INTEGER;
  v_post_2       INTEGER;
  v_post_3       INTEGER;
  v_post_other   INTEGER;
BEGIN
  -- ─── Pre-check 1：backup 表必須存在 ─────────────────────────────
  SELECT COUNT(*) INTO v_backup_exists
  FROM information_schema.tables
  WHERE table_schema='public' AND table_name='_backup_correct_answer_20260417';

  IF v_backup_exists = 0 THEN
    RAISE EXCEPTION 'Pre-check FAILED: _backup_correct_answer_20260417 表不存在，無法還原';
  END IF;

  -- ─── Pre-check 2：osh-a 預期 diff=146（偏移 146 題）─────────────
  SELECT COUNT(*) INTO v_diff_pre
  FROM public.questions q
  JOIN public._backup_correct_answer_20260417 b ON b.id = q.id
  WHERE q.exam_id = 'osh-a'
    AND q.correct_answer IS DISTINCT FROM b.original_correct_answer;

  IF v_diff_pre != 146 THEN
    RAISE EXCEPTION 'Pre-check FAILED: 預期 osh-a diff=146，實際=%，資料狀態已改變，請重新 dry-run', v_diff_pre;
  END IF;

  RAISE NOTICE 'Pre-check passed: backup 表存在、osh-a 有 146 筆偏移待還原';

  -- ─── 實作 UPDATE：從 backup 還原 ─────────────────────────────────
  UPDATE public.questions q
  SET correct_answer = b.original_correct_answer,
      updated_at     = NOW()
  FROM public._backup_correct_answer_20260417 b
  WHERE q.id = b.id
    AND q.exam_id = 'osh-a'
    AND q.correct_answer IS DISTINCT FROM b.original_correct_answer;

  GET DIAGNOSTICS v_updated = ROW_COUNT;
  RAISE NOTICE 'UPDATE 完成：實際改動 % 筆', v_updated;

  IF v_updated != 146 THEN
    RAISE EXCEPTION 'UPDATE 異常：預期改 146 筆，實際 % 筆，自動 rollback', v_updated;
  END IF;

  -- ─── Post-check：osh-a 應回到 0(8)+1(96)+2(43)+3(7)，無其他值 ───
  SELECT
    COUNT(*) FILTER (WHERE correct_answer = 0),
    COUNT(*) FILTER (WHERE correct_answer = 1),
    COUNT(*) FILTER (WHERE correct_answer = 2),
    COUNT(*) FILTER (WHERE correct_answer = 3),
    COUNT(*) FILTER (WHERE correct_answer NOT IN (0,1,2,3))
  INTO v_post_0, v_post_1, v_post_2, v_post_3, v_post_other
  FROM public.questions
  WHERE exam_id='osh-a' AND is_active=TRUE;

  IF v_post_0 != 8 OR v_post_1 != 96 OR v_post_2 != 43 OR v_post_3 != 7 OR v_post_other != 0 THEN
    RAISE EXCEPTION 'Post-check FAILED：osh-a 分布 %/%/%/% (其他=%)，預期 8/96/43/7 (其他=0)，自動 rollback',
      v_post_0, v_post_1, v_post_2, v_post_3, v_post_other;
  END IF;

  RAISE NOTICE 'Post-check passed: osh-a 分布 0=% 1=% 2=% 3=% (其他=%)', v_post_0, v_post_1, v_post_2, v_post_3, v_post_other;
  RAISE NOTICE '✅ osh-a correct_answer 還原完成，%  筆題目 explanation 與高亮選項現在應該一致', v_updated;
END
$mig$;

-- ═══════════════════════════════════════════════════════════════════
-- 手動驗證（選做）：
--   -- 1. 分布確認
--   SELECT correct_answer, COUNT(*) FROM public.questions
--   WHERE exam_id='osh-a' GROUP BY correct_answer ORDER BY correct_answer;
--   -- 期望：0=8, 1=96, 2=43, 3=7
--
--   -- 2. 抽 5 題人工看答案
--   SELECT id, correct_answer, LEFT(question_text, 40) FROM public.questions
--   WHERE exam_id='osh-a' ORDER BY RANDOM() LIMIT 5;
--
--   -- 3. 前端驗證
--   到 kaonow.com → 甲種職安衛 → 隨機抽 10 題，確認「正解高亮」=「explanation 指向」
-- ═══════════════════════════════════════════════════════════════════
