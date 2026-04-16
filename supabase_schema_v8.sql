-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v8 — 誠實標註：osh-a 題庫 source 修正為 ai_generated
-- 2026-04-16
-- ═══════════════════════════════════════════════════════════════════
-- 背景：
--   v1 初始化時手動 INSERT 了 153 題 osh-a 題目（由 Claude 依法規訓練
--   知識撰寫，非官方歷屆試題）。v2 執行時把「所有現存題」預設標成
--   source='official'，導致 osh-a AI 題被錯誤標記為官方題。
--
-- 本 migration 做三件事：
--   1. 把 exam_id='osh-a' 的所有題目 source 改為 'ai_generated'
--      （補上 reviewed_at=NOW() 讓它們繼續在 questions_published view 顯示；
--       更新 source_meta 以誠實記錄來源）
--   2. 清掉測試殘留的「【AI 生成測試題】」題目前綴（右上 badge 已取代）
--
-- 可重複執行（冪等）。
-- ═══════════════════════════════════════════════════════════════════

BEGIN;

-- 1. 翻改 source：osh-a 所有題目從 official → ai_generated
UPDATE public.questions
SET
  source = 'ai_generated',
  reviewed_at = COALESCE(reviewed_at, NOW()),  -- 只有第一次 migrate 時補現在時間
  source_meta = jsonb_build_object(
    'generated_by',   'Claude (Anthropic)',
    'generation_mode','manual_authoring_from_legal_knowledge',
    'note',           '由 Claude 依台灣職安法／職安衛管理辦法訓練知識生成，非官方歷屆試題',
    'disclaimer',     '答案與解析基於法規現行條文，如與最新修法不符請回報',
    'migrated_at',    NOW()
  ),
  updated_at = NOW()
WHERE exam_id = 'osh-a'
  AND source = 'official';   -- 僅改之前誤標的，已正確標記的不動

-- 2. 清掉測試階段殘留的「【AI 生成測試題】」題目前綴
--    （當初測 AI pipeline 時在題目開頭加的辨識字串，現在右上已有 badge 不需要了）
--    為了安全只處理 source='ai_generated' 的題，避免誤傷任何合法以【AI...】開頭的題幹
UPDATE public.questions
SET
  question_text = regexp_replace(question_text, '^【AI[^】]*】\s*', ''),
  updated_at = NOW()
WHERE source = 'ai_generated'
  AND question_text ~ '^【AI[^】]*】';

-- 3. 列印結果（用於驗證）
DO $$
DECLARE
  v_count INTEGER;
  v_cleaned INTEGER;
BEGIN
  SELECT COUNT(*) INTO v_count
  FROM public.questions
  WHERE exam_id='osh-a' AND source='ai_generated';
  RAISE NOTICE 'osh-a ai_generated 題目數：%', v_count;

  SELECT COUNT(*) INTO v_cleaned
  FROM public.questions
  WHERE question_text ~ '^【AI';
  RAISE NOTICE '殘留【AI...】前綴題目數（應為 0）：%', v_cleaned;
END $$;

COMMIT;

-- ═══════════════════════════════════════════════════════════════════
-- 驗證：
--   SELECT source, COUNT(*) FROM public.questions
--   WHERE exam_id='osh-a' GROUP BY source;
--
--   -- 確認前端還讀得到（view 有篩 reviewed_at）
--   SELECT COUNT(*) FROM public.questions_published WHERE exam_id='osh-a';
-- ═══════════════════════════════════════════════════════════════════
