-- ════════════════════════════════════════════════════════════════════
-- KaoNow Supabase Complete Schema v1.0
-- ════════════════════════════════════════════════════════════════════
-- 在 Supabase SQL Editor 一次貼上執行
-- 此檔案是 idempotent（可重複執行），會清掉舊表重建
-- ════════════════════════════════════════════════════════════════════

-- ═══════════ 1. EXTENSIONS ═══════════════════════════════════════════
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ═══════════ 2. CLEAN SLATE（重複執行用） ═══════════════════════════
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS public.handle_new_user CASCADE;
DROP FUNCTION IF EXISTS public.update_progress_on_attempt CASCADE;
DROP FUNCTION IF EXISTS public.set_updated_at CASCADE;

DROP TABLE IF EXISTS public.user_events CASCADE;
DROP TABLE IF EXISTS public.webhook_events CASCADE;
DROP TABLE IF EXISTS public.notifications CASCADE;
DROP TABLE IF EXISTS public.study_plans CASCADE;
DROP TABLE IF EXISTS public.exam_reminders CASCADE;
DROP TABLE IF EXISTS public.bookmarks CASCADE;
DROP TABLE IF EXISTS public.user_stats CASCADE;
DROP TABLE IF EXISTS public.exam_progress CASCADE;
DROP TABLE IF EXISTS public.chapter_progress CASCADE;
DROP TABLE IF EXISTS public.question_attempts CASCADE;
DROP TABLE IF EXISTS public.exam_sessions CASCADE;
DROP TABLE IF EXISTS public.payment_transactions CASCADE;
DROP TABLE IF EXISTS public.subscriptions CASCADE;
DROP TABLE IF EXISTS public.profiles CASCADE;
DROP TABLE IF EXISTS public.exam_news CASCADE;
DROP TABLE IF EXISTS public.lectures CASCADE;
DROP TABLE IF EXISTS public.questions CASCADE;
DROP TABLE IF EXISTS public.chapters CASCADE;
DROP TABLE IF EXISTS public.exams CASCADE;
DROP TABLE IF EXISTS public.exam_categories CASCADE;
DROP TABLE IF EXISTS public.promo_codes CASCADE;
DROP TABLE IF EXISTS public.admin_users CASCADE;
DROP TABLE IF EXISTS public.app_settings CASCADE;

-- ═══════════ 3. CONTENT TABLES（無用戶依賴） ════════════════════════

-- 3.1 考試類別（7 大系統）
CREATE TABLE public.exam_categories (
  id            TEXT PRIMARY KEY,
  name          TEXT NOT NULL,
  icon          TEXT,
  color         TEXT,
  text_color    TEXT,
  description   TEXT,
  sort_order    INTEGER DEFAULT 0,
  is_active     BOOLEAN DEFAULT TRUE,
  created_at    TIMESTAMPTZ DEFAULT NOW()
);

-- 3.2 考試
CREATE TABLE public.exams (
  id                        TEXT PRIMARY KEY,
  category_id               TEXT REFERENCES public.exam_categories(id) NOT NULL,
  name                      TEXT NOT NULL,
  short_name                TEXT,
  description               TEXT,
  issuer                    TEXT,
  exam_format               TEXT,
  duration_hours            INTEGER,
  target_audience           TEXT,
  difficulty                INTEGER CHECK (difficulty BETWEEN 1 AND 5),
  annual_candidates         INTEGER,
  is_available              BOOLEAN DEFAULT FALSE,
  tier_requirement          TEXT DEFAULT 'free' CHECK (tier_requirement IN ('free','standard','pro')),
  free_daily_question_limit INTEGER DEFAULT 10,
  official_url              TEXT,
  registration_url          TEXT,
  official_bank_url         TEXT,
  next_exam_date            DATE,
  meta                      JSONB DEFAULT '{}',
  sort_order                INTEGER DEFAULT 0,
  created_at                TIMESTAMPTZ DEFAULT NOW(),
  updated_at                TIMESTAMPTZ DEFAULT NOW()
);

-- 3.3 章節
CREATE TABLE public.chapters (
  id              TEXT PRIMARY KEY,
  exam_id         TEXT REFERENCES public.exams(id) ON DELETE CASCADE NOT NULL,
  chapter_number  INTEGER NOT NULL,
  name            TEXT NOT NULL,
  description     TEXT,
  question_count  INTEGER DEFAULT 0,
  sort_order      INTEGER DEFAULT 0,
  created_at      TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(exam_id, chapter_number)
);

-- 3.4 題目
CREATE TABLE public.questions (
  id              TEXT PRIMARY KEY,
  exam_id         TEXT REFERENCES public.exams(id) ON DELETE CASCADE NOT NULL,
  chapter_id      TEXT REFERENCES public.chapters(id) ON DELETE SET NULL,
  question_text   TEXT NOT NULL,
  options         JSONB NOT NULL,
  correct_answer  INTEGER NOT NULL CHECK (correct_answer >= 0),
  explanation     TEXT,
  difficulty      INTEGER DEFAULT 3 CHECK (difficulty BETWEEN 1 AND 5),
  source          TEXT,
  tags            TEXT[],
  is_active       BOOLEAN DEFAULT TRUE,
  version         INTEGER DEFAULT 1,
  times_answered  INTEGER DEFAULT 0,
  times_correct   INTEGER DEFAULT 0,
  created_at      TIMESTAMPTZ DEFAULT NOW(),
  updated_at      TIMESTAMPTZ DEFAULT NOW()
);

-- 3.5 講義
CREATE TABLE public.lectures (
  id              UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  exam_id         TEXT REFERENCES public.exams(id) ON DELETE CASCADE NOT NULL,
  chapter_id      TEXT REFERENCES public.chapters(id) ON DELETE SET NULL,
  title           TEXT NOT NULL,
  content         TEXT NOT NULL,
  length_minutes  INTEGER,
  is_pro_only     BOOLEAN DEFAULT FALSE,
  sort_order      INTEGER DEFAULT 0,
  created_at      TIMESTAMPTZ DEFAULT NOW(),
  updated_at      TIMESTAMPTZ DEFAULT NOW()
);

-- 3.6 考試新聞
CREATE TABLE public.exam_news (
  id            UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  exam_id       TEXT REFERENCES public.exams(id) ON DELETE CASCADE,
  category_id   TEXT REFERENCES public.exam_categories(id),
  title         TEXT NOT NULL,
  summary       TEXT,
  content       TEXT,
  source_name   TEXT,
  source_url    TEXT,
  image_url     TEXT,
  published_at  DATE,
  is_featured   BOOLEAN DEFAULT FALSE,
  created_at    TIMESTAMPTZ DEFAULT NOW()
);

-- 3.7 促銷碼
CREATE TABLE public.promo_codes (
  id                 UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  code               TEXT UNIQUE NOT NULL,
  discount_type      TEXT NOT NULL CHECK (discount_type IN ('percentage','fixed')),
  discount_value     INTEGER NOT NULL,
  max_uses           INTEGER,
  used_count         INTEGER DEFAULT 0,
  max_uses_per_user  INTEGER DEFAULT 1,
  valid_from         TIMESTAMPTZ,
  valid_until        TIMESTAMPTZ,
  applicable_tiers   TEXT[],
  first_time_only    BOOLEAN DEFAULT FALSE,
  is_active          BOOLEAN DEFAULT TRUE,
  created_by         UUID,
  created_at         TIMESTAMPTZ DEFAULT NOW()
);

-- ═══════════ 4. USER & SUBSCRIPTION TABLES ══════════════════════════

-- 4.1 用戶資料
CREATE TABLE public.profiles (
  id                       UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  display_name             TEXT,
  email                    TEXT,
  avatar_url               TEXT,
  phone                    TEXT,
  locale                   TEXT DEFAULT 'zh-TW',
  timezone                 TEXT DEFAULT 'Asia/Taipei',
  referral_code            TEXT UNIQUE,
  referred_by              UUID REFERENCES auth.users(id),
  current_tier             TEXT DEFAULT 'free' CHECK (current_tier IN ('free','standard','pro')),
  current_subscription_id  UUID,
  onboarded                BOOLEAN DEFAULT FALSE,
  marketing_opt_in         BOOLEAN DEFAULT FALSE,
  meta                     JSONB DEFAULT '{}',
  created_at               TIMESTAMPTZ DEFAULT NOW(),
  updated_at               TIMESTAMPTZ DEFAULT NOW()
);

-- 4.2 訂閱
CREATE TABLE public.subscriptions (
  id                        UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id                   UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  tier                      TEXT NOT NULL CHECK (tier IN ('standard','pro')),
  status                    TEXT NOT NULL CHECK (status IN ('active','cancelled','expired','pending','past_due')),
  billing_period            TEXT CHECK (billing_period IN ('monthly','quarterly','semi_annual','annual')),
  amount_twd                INTEGER,
  started_at                TIMESTAMPTZ,
  current_period_end        TIMESTAMPTZ,
  cancelled_at              TIMESTAMPTZ,
  cancel_at_period_end      BOOLEAN DEFAULT FALSE,
  auto_renew                BOOLEAN DEFAULT TRUE,
  payment_gateway           TEXT,
  gateway_customer_id       TEXT,
  gateway_subscription_id   TEXT,
  promo_code_id             UUID REFERENCES public.promo_codes(id),
  meta                      JSONB DEFAULT '{}',
  created_at                TIMESTAMPTZ DEFAULT NOW(),
  updated_at                TIMESTAMPTZ DEFAULT NOW()
);

-- 4.3 付款交易
CREATE TABLE public.payment_transactions (
  id                  UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id             UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  subscription_id     UUID REFERENCES public.subscriptions(id) ON DELETE SET NULL,
  amount_twd          INTEGER NOT NULL,
  currency            TEXT DEFAULT 'TWD',
  status              TEXT NOT NULL CHECK (status IN ('pending','succeeded','failed','refunded')),
  payment_gateway     TEXT NOT NULL,
  gateway_order_id    TEXT UNIQUE NOT NULL,
  gateway_trade_no    TEXT,
  payment_method      TEXT,
  invoice_number      TEXT,
  invoice_issued_at   TIMESTAMPTZ,
  raw_webhook         JSONB,
  failure_reason      TEXT,
  paid_at             TIMESTAMPTZ,
  created_at          TIMESTAMPTZ DEFAULT NOW()
);

-- ═══════════ 5. LEARNING TABLES ═════════════════════════════════════

-- 5.1 測驗 Session
CREATE TABLE public.exam_sessions (
  id                UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id           UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  exam_id           TEXT REFERENCES public.exams(id) NOT NULL,
  chapter_id        TEXT REFERENCES public.chapters(id),
  mode              TEXT NOT NULL CHECK (mode IN ('random','mock','chapter','weak','review_wrong','bookmarks')),
  total_questions   INTEGER,
  correct_count     INTEGER,
  score_percent     INTEGER,
  duration_seconds  INTEGER,
  is_completed      BOOLEAN DEFAULT FALSE,
  started_at        TIMESTAMPTZ DEFAULT NOW(),
  completed_at      TIMESTAMPTZ
);

-- 5.2 答題紀錄（原始資料）
CREATE TABLE public.question_attempts (
  id                  UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  session_id          UUID REFERENCES public.exam_sessions(id) ON DELETE CASCADE NOT NULL,
  user_id             UUID NOT NULL,
  question_id         TEXT REFERENCES public.questions(id) NOT NULL,
  exam_id             TEXT NOT NULL,
  chapter_id          TEXT,
  selected_answer     INTEGER,
  is_correct          BOOLEAN,
  time_spent_seconds  INTEGER,
  attempted_at        TIMESTAMPTZ DEFAULT NOW()
);

-- 5.3 章節進度（聚合）
CREATE TABLE public.chapter_progress (
  user_id            UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  exam_id            TEXT REFERENCES public.exams(id),
  chapter_id         TEXT REFERENCES public.chapters(id),
  total_attempts     INTEGER DEFAULT 0,
  correct_attempts   INTEGER DEFAULT 0,
  mastery_level      INTEGER DEFAULT 0 CHECK (mastery_level BETWEEN 0 AND 5),
  last_attempted_at  TIMESTAMPTZ,
  updated_at         TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (user_id, exam_id, chapter_id)
);

-- 5.4 考試進度（聚合）
CREATE TABLE public.exam_progress (
  user_id              UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  exam_id              TEXT REFERENCES public.exams(id),
  total_attempts       INTEGER DEFAULT 0,
  correct_attempts     INTEGER DEFAULT 0,
  total_sessions       INTEGER DEFAULT 0,
  best_mock_score      INTEGER,
  current_streak       INTEGER DEFAULT 0,
  max_streak           INTEGER DEFAULT 0,
  first_practiced_at   TIMESTAMPTZ,
  last_practiced_at    TIMESTAMPTZ,
  updated_at           TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (user_id, exam_id)
);

-- 5.5 用戶總統計
CREATE TABLE public.user_stats (
  user_id                    UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  total_questions_answered   INTEGER DEFAULT 0,
  total_correct              INTEGER DEFAULT 0,
  total_sessions             INTEGER DEFAULT 0,
  total_study_seconds        INTEGER DEFAULT 0,
  exams_practiced            INTEGER DEFAULT 0,
  current_streak             INTEGER DEFAULT 0,
  max_streak                 INTEGER DEFAULT 0,
  longest_study_day_seconds  INTEGER DEFAULT 0,
  updated_at                 TIMESTAMPTZ DEFAULT NOW()
);

-- ═══════════ 6. PERSONAL FEATURES ═══════════════════════════════════

-- 6.1 收藏題目
CREATE TABLE public.bookmarks (
  id           UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id      UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  question_id  TEXT REFERENCES public.questions(id) ON DELETE CASCADE NOT NULL,
  note         TEXT,
  created_at   TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, question_id)
);

-- 6.2 考試日期提醒
CREATE TABLE public.exam_reminders (
  id              UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id         UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  exam_id         TEXT REFERENCES public.exams(id),
  exam_date       DATE NOT NULL,
  label           TEXT,
  reminder_days   INTEGER[] DEFAULT ARRAY[7,1],
  notified_at     TIMESTAMPTZ[],
  is_active       BOOLEAN DEFAULT TRUE,
  created_at      TIMESTAMPTZ DEFAULT NOW()
);

-- 6.3 學習計畫（Pro 功能）
CREATE TABLE public.study_plans (
  id                       UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id                  UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  exam_id                  TEXT REFERENCES public.exams(id) NOT NULL,
  target_date              DATE,
  daily_target_questions   INTEGER DEFAULT 20,
  current_phase            TEXT,
  ai_recommendations       JSONB,
  is_active                BOOLEAN DEFAULT TRUE,
  created_at               TIMESTAMPTZ DEFAULT NOW(),
  updated_at               TIMESTAMPTZ DEFAULT NOW()
);

-- 6.4 站內通知
CREATE TABLE public.notifications (
  id          UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id     UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  type        TEXT NOT NULL,
  title       TEXT NOT NULL,
  body        TEXT,
  action_url  TEXT,
  is_read     BOOLEAN DEFAULT FALSE,
  read_at     TIMESTAMPTZ,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- ═══════════ 7. SYSTEM & ADMIN ══════════════════════════════════════

-- 7.1 Webhook 事件
CREATE TABLE public.webhook_events (
  id                  UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  source              TEXT NOT NULL,
  event_type          TEXT,
  external_event_id   TEXT,
  payload             JSONB NOT NULL,
  status              TEXT DEFAULT 'received' CHECK (status IN ('received','processed','failed')),
  attempts            INTEGER DEFAULT 0,
  last_error          TEXT,
  received_at         TIMESTAMPTZ DEFAULT NOW(),
  processed_at        TIMESTAMPTZ,
  UNIQUE(source, external_event_id)
);

-- 7.2 用戶行為事件
CREATE TABLE public.user_events (
  id          UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id     UUID,
  event_type  TEXT NOT NULL,
  event_data  JSONB,
  ip_address  INET,
  user_agent  TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- 7.3 管理員
CREATE TABLE public.admin_users (
  user_id     UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  role        TEXT NOT NULL CHECK (role IN ('super_admin','content_editor','support')),
  granted_at  TIMESTAMPTZ DEFAULT NOW(),
  granted_by  UUID
);

-- 7.4 App 設定
CREATE TABLE public.app_settings (
  key          TEXT PRIMARY KEY,
  value        JSONB NOT NULL,
  description  TEXT,
  updated_at   TIMESTAMPTZ DEFAULT NOW()
);

-- ═══════════ 8. INDEXES（查詢效能） ═════════════════════════════════
CREATE INDEX idx_questions_exam_chapter ON public.questions(exam_id, chapter_id) WHERE is_active;
CREATE INDEX idx_questions_active        ON public.questions(is_active) WHERE is_active;
CREATE INDEX idx_lectures_exam           ON public.lectures(exam_id, sort_order);
CREATE INDEX idx_news_exam_published     ON public.exam_news(exam_id, published_at DESC);
CREATE INDEX idx_exams_category          ON public.exams(category_id, is_available);

CREATE INDEX idx_subs_user_status        ON public.subscriptions(user_id, status);
CREATE INDEX idx_subs_period_end         ON public.subscriptions(current_period_end) WHERE status='active';
CREATE INDEX idx_payments_user           ON public.payment_transactions(user_id, paid_at DESC);
CREATE INDEX idx_payments_gateway_order  ON public.payment_transactions(gateway_order_id);

CREATE INDEX idx_sessions_user_time      ON public.exam_sessions(user_id, completed_at DESC);
CREATE INDEX idx_sessions_user_exam      ON public.exam_sessions(user_id, exam_id);
CREATE INDEX idx_attempts_user_time      ON public.question_attempts(user_id, attempted_at DESC);
CREATE INDEX idx_attempts_user_question  ON public.question_attempts(user_id, question_id);
CREATE INDEX idx_attempts_session        ON public.question_attempts(session_id);
CREATE INDEX idx_attempts_wrong          ON public.question_attempts(user_id, exam_id) WHERE is_correct = FALSE;

CREATE INDEX idx_bookmarks_user          ON public.bookmarks(user_id, created_at DESC);
CREATE INDEX idx_reminders_user_active   ON public.exam_reminders(user_id, exam_date) WHERE is_active;
CREATE INDEX idx_notifications_user_unread ON public.notifications(user_id, created_at DESC) WHERE NOT is_read;

CREATE INDEX idx_webhook_status          ON public.webhook_events(status, received_at) WHERE status != 'processed';
CREATE INDEX idx_user_events_type        ON public.user_events(user_id, event_type, created_at DESC);

-- ═══════════ 9. FUNCTIONS & TRIGGERS ═════════════════════════════════

-- 9.1 通用 updated_at 自動更新
CREATE OR REPLACE FUNCTION public.set_updated_at()
RETURNS TRIGGER AS $$
BEGIN NEW.updated_at = NOW(); RETURN NEW; END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_profiles_updated      BEFORE UPDATE ON public.profiles      FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
CREATE TRIGGER trg_subs_updated          BEFORE UPDATE ON public.subscriptions FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
CREATE TRIGGER trg_exams_updated         BEFORE UPDATE ON public.exams         FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
CREATE TRIGGER trg_questions_updated     BEFORE UPDATE ON public.questions     FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
CREATE TRIGGER trg_lectures_updated      BEFORE UPDATE ON public.lectures      FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
CREATE TRIGGER trg_app_settings_updated  BEFORE UPDATE ON public.app_settings  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- 9.2 新用戶自動建立 profile + user_stats + 邀請碼
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
DECLARE new_referral TEXT;
BEGIN
  -- 產生 8 字符邀請碼
  new_referral := UPPER(SUBSTRING(MD5(NEW.id::TEXT) FROM 1 FOR 8));

  INSERT INTO public.profiles (id, display_name, email, avatar_url, referral_code)
  VALUES (
    NEW.id,
    COALESCE(
      NEW.raw_user_meta_data->>'full_name',
      NEW.raw_user_meta_data->>'name',
      split_part(NEW.email, '@', 1)
    ),
    NEW.email,
    NEW.raw_user_meta_data->>'avatar_url',
    new_referral
  ) ON CONFLICT (id) DO NOTHING;

  INSERT INTO public.user_stats (user_id) VALUES (NEW.id) ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- 9.3 答題後自動更新所有聚合表
CREATE OR REPLACE FUNCTION public.update_progress_on_attempt()
RETURNS TRIGGER AS $$
BEGIN
  -- 更新題目熱門度 + 難度指標
  UPDATE public.questions SET
    times_answered = times_answered + 1,
    times_correct  = times_correct + CASE WHEN NEW.is_correct THEN 1 ELSE 0 END
  WHERE id = NEW.question_id;

  -- 章節進度（upsert）
  IF NEW.chapter_id IS NOT NULL THEN
    INSERT INTO public.chapter_progress (
      user_id, exam_id, chapter_id, total_attempts, correct_attempts, last_attempted_at, updated_at
    ) VALUES (
      NEW.user_id, NEW.exam_id, NEW.chapter_id, 1,
      CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
      NEW.attempted_at, NOW()
    )
    ON CONFLICT (user_id, exam_id, chapter_id) DO UPDATE SET
      total_attempts    = public.chapter_progress.total_attempts + 1,
      correct_attempts  = public.chapter_progress.correct_attempts + CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
      last_attempted_at = NEW.attempted_at,
      updated_at        = NOW();
  END IF;

  -- 考試進度（upsert，含連勝）
  INSERT INTO public.exam_progress (
    user_id, exam_id, total_attempts, correct_attempts,
    current_streak, max_streak,
    first_practiced_at, last_practiced_at, updated_at
  ) VALUES (
    NEW.user_id, NEW.exam_id, 1,
    CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    NEW.attempted_at, NEW.attempted_at, NOW()
  )
  ON CONFLICT (user_id, exam_id) DO UPDATE SET
    total_attempts    = public.exam_progress.total_attempts + 1,
    correct_attempts  = public.exam_progress.correct_attempts + CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    current_streak    = CASE WHEN NEW.is_correct THEN public.exam_progress.current_streak + 1 ELSE 0 END,
    max_streak        = GREATEST(public.exam_progress.max_streak,
                                 CASE WHEN NEW.is_correct THEN public.exam_progress.current_streak + 1 ELSE 0 END),
    last_practiced_at = NEW.attempted_at,
    updated_at        = NOW();

  -- 用戶總統計
  INSERT INTO public.user_stats (
    user_id, total_questions_answered, total_correct,
    current_streak, max_streak, updated_at
  ) VALUES (
    NEW.user_id, 1,
    CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    NOW()
  )
  ON CONFLICT (user_id) DO UPDATE SET
    total_questions_answered = public.user_stats.total_questions_answered + 1,
    total_correct            = public.user_stats.total_correct + CASE WHEN NEW.is_correct THEN 1 ELSE 0 END,
    current_streak           = CASE WHEN NEW.is_correct THEN public.user_stats.current_streak + 1 ELSE 0 END,
    max_streak               = GREATEST(public.user_stats.max_streak,
                                        CASE WHEN NEW.is_correct THEN public.user_stats.current_streak + 1 ELSE 0 END),
    updated_at               = NOW();

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER trg_attempt_update_progress
  AFTER INSERT ON public.question_attempts
  FOR EACH ROW EXECUTE FUNCTION public.update_progress_on_attempt();

-- ═══════════ 10. ROW LEVEL SECURITY ═════════════════════════════════

-- 10.1 啟用 RLS
ALTER TABLE public.profiles              ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subscriptions         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.payment_transactions  ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exam_sessions         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.question_attempts     ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.chapter_progress      ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exam_progress         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_stats            ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.bookmarks             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exam_reminders        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.study_plans           ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.notifications         ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exam_categories       ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exams                 ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.chapters              ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.lectures              ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.exam_news             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.promo_codes           ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.admin_users           ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.app_settings          ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.webhook_events        ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_events           ENABLE ROW LEVEL SECURITY;

-- 10.2 公開內容：所有人可讀
CREATE POLICY anon_read ON public.exam_categories FOR SELECT USING (TRUE);
CREATE POLICY anon_read ON public.exams           FOR SELECT USING (TRUE);
CREATE POLICY anon_read ON public.chapters        FOR SELECT USING (TRUE);
CREATE POLICY anon_read ON public.questions       FOR SELECT USING (is_active);
CREATE POLICY anon_read ON public.lectures        FOR SELECT USING (TRUE);
CREATE POLICY anon_read ON public.exam_news       FOR SELECT USING (TRUE);

-- 10.3 用戶私人資料
CREATE POLICY own_select ON public.profiles FOR SELECT USING (auth.uid() = id);
CREATE POLICY own_insert ON public.profiles FOR INSERT WITH CHECK (auth.uid() = id);
CREATE POLICY own_update ON public.profiles FOR UPDATE USING (auth.uid() = id);

CREATE POLICY own_select ON public.subscriptions FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY own_select ON public.payment_transactions FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY own_select ON public.exam_sessions FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY own_insert ON public.exam_sessions FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY own_update ON public.exam_sessions FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY own_select ON public.question_attempts FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY own_insert ON public.question_attempts FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY own_select ON public.chapter_progress FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY own_select ON public.exam_progress    FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY own_select ON public.user_stats       FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY own_all ON public.bookmarks       FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
CREATE POLICY own_all ON public.exam_reminders  FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
CREATE POLICY own_all ON public.study_plans     FOR ALL USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

CREATE POLICY own_select ON public.notifications FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY own_update ON public.notifications FOR UPDATE USING (auth.uid() = user_id);

-- 10.4 管理員專用表（用 service_role 從後端寫入）
-- promo_codes / webhook_events / user_events / admin_users / app_settings：
-- 不開 anon RLS policy，只能用 service_role key（後端 webhook handler 使用）

-- ═══════════ 11. SEED DATA ═══════════════════════════════════════════

-- 11.1 7 大考試類別
INSERT INTO public.exam_categories (id, name, icon, color, text_color, description, sort_order) VALUES
('tech-cert',  '國家技術士技能檢定',         '🔧', '#FFF3E0', '#BF5300', '勞動部主管，246種職類，每年3梯次',           1),
('prof-exam',  '專門職業及技術人員考試',     '🏛', '#E8F0E8', '#2D5F2D', '考選部主管，律師、醫師、護理師等執業資格', 2),
('civil',      '公務人員考試',               '📋', '#EDE8F5', '#5B21B6', '高考、普考、初等及各類特考',                3),
('language',   '語言能力檢定',               '🌐', '#E3F2FD', '#1565C0', 'TOEIC、GEPT、IELTS、TOEFL、JLPT等',         4),
('academic',   '升學考試',                   '🎓', '#E8F5E9', '#1B5E20', '學測、分科測驗、統測、會考',                 5),
('finance',    '金融商業證照',               '💼', '#FFF8E1', '#B45309', '信託、內控、證券、保險、CFP等',              6),
('it-cert',    '資訊科技國際認證',           '💻', '#F3E8FF', '#6B21A8', 'TQC+、AWS、CompTIA、PMP等',                  7);

-- 11.2 考試（含 35+ 筆，先放幾個關鍵的，其他可從 index.html 同步匯入）
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, is_available, official_url, registration_url, official_bank_url, sort_order) VALUES
('osh-a',     'prof-exam',  '甲種職業安全衛生業務主管',     '甲種職安衛',   '勞動部認證，事業單位負責人必備。5大章節、42小時訓練時數。', '勞動部職業安全衛生署',    '筆試・選擇題', 42,   TRUE,  'https://www.osha.gov.tw',     'https://www.osha.gov.tw',     'https://www.osha.gov.tw',                                  1),
('osh-b',     'prof-exam',  '乙種職業安全衛生業務主管',     '乙種職安衛',   '中小型事業單位安全衛生管理人員，訓練時數35小時。',          '勞動部職業安全衛生署',    '筆試・選擇題', 35,   FALSE, 'https://www.osha.gov.tw',      NULL, NULL, 2),
('osh-c',     'prof-exam',  '丙種職業安全衛生業務主管',     '丙種職安衛',   '小型事業單位基礎職安衛證照，訓練時數21小時。',              '勞動部職業安全衛生署',    '筆試・選擇題', 21,   FALSE, 'https://www.osha.gov.tw',      NULL, NULL, 3),
('elec-c',    'tech-cert',  '室內配線（屋內線路裝修）丙級', '室內配線丙級', '全台年報考人數最多的技術士職類（逾15萬人/年）。',           '勞動力發展署技能檢定中心', '學科＋術科',   NULL, FALSE, 'https://skill.tcte.edu.tw', 'https://gov.tw/USV', 'http://slhs.tw/bestcontent.asp?examid=t00700',           10),
('cooking-c', 'tech-cert',  '中餐烹調丙級',                 '中餐烹調丙級', '年考生逾10萬人，餐飲業基本門檻。',                          '勞動力發展署技能檢定中心', '學科＋術科',   NULL, FALSE, 'https://skill.tcte.edu.tw', 'https://gov.tw/USV', 'https://onlinetest.tw',                                  11);

-- 11.3 osh-a 章節
INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
('osh-a-ch0', 'osh-a', 0, '職業安全衛生相關法規',     1),
('osh-a-ch1', 'osh-a', 1, '職業安全衛生管理概論',     2),
('osh-a-ch2', 'osh-a', 2, '安全管理與危害預防',       3),
('osh-a-ch3', 'osh-a', 3, '衛生管理與健康保護',       4),
('osh-a-ch4', 'osh-a', 4, '職業安全衛生教育訓練',     5);

-- 11.4 153 題題庫匯入（從 index.html 萃取）

INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-001', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》規定，下列何者屬於「危險性機械」？', '[{"key": "A", "text": "固定式起重機"}, {"key": "B", "text": "研磨機"}, {"key": "C", "text": "車床"}, {"key": "D", "text": "鑽床"}]'::JSONB, 0, '依法第16條，危險性機械包括固定式起重機、移動式起重機、人字臂起重桿、營建用升降機、營建用提升機及吊籠。研磨機、車床、鑽床屬一般機械設備。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-002', 'osh-a', 'osh-a-ch0', '事業單位勞工人數達幾人以上，應設管理單位及置管理人員？', '[{"key": "A", "text": "30人"}, {"key": "B", "text": "50人"}, {"key": "C", "text": "100人"}, {"key": "D", "text": "200人"}]'::JSONB, 0, '依法第23條，勞工人數在30人以上者，應依規模及性質設管理單位與管理人員。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-003', 'osh-a', 'osh-a-ch0', '僱用勞工人數在幾人以上，應設置職業安全衛生委員會？', '[{"key": "A", "text": "30人"}, {"key": "B", "text": "50人"}, {"key": "C", "text": "100人"}, {"key": "D", "text": "200人"}]'::JSONB, 2, '依《職業安全衛生管理辦法》，100人以上事業單位應設職安衛委員會，至少每3個月開會一次。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-004', 'osh-a', 'osh-a-ch0', '工作場所發生哪種災害，雇主應於8小時內通報勞動檢查機構？', '[{"key": "A", "text": "勞工受傷需住院"}, {"key": "B", "text": "發生死亡災害"}, {"key": "C", "text": "勞工輕微擦傷"}, {"key": "D", "text": "機械故障停工"}]'::JSONB, 1, '依法第37條，發生死亡災害、罹災人數3人以上或指定災害，應於8小時內通報勞動檢查機構。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-005', 'osh-a', 'osh-a-ch0', '勞動檢查員進入事業單位實施檢查，下列何者正確？', '[{"key": "A", "text": "雇主可以拒絕"}, {"key": "B", "text": "需事先通知"}, {"key": "C", "text": "得隨時進入"}, {"key": "D", "text": "需取得搜索票"}]'::JSONB, 2, '依《勞動檢查法》第14條，勞動檢查員執行職務得隨時進入事業單位，任何人不得無故拒絕。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-006', 'osh-a', 'osh-a-ch0', '原事業單位違反職安法致承攬人勞工發生職業災害，應如何負責？', '[{"key": "A", "text": "由承攬人單獨負責"}, {"key": "B", "text": "負連帶賠償責任"}, {"key": "C", "text": "由勞保局負責"}, {"key": "D", "text": "可免除責任"}]'::JSONB, 1, '依法第25條，原事業單位違反職安法致承攬人勞工職業災害，與承攬人負連帶賠償責任，再承攬者亦同。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-007', 'osh-a', 'osh-a-ch0', '職業安全衛生委員會應至少每幾個月開會一次？', '[{"key": "A", "text": "1個月"}, {"key": "B", "text": "2個月"}, {"key": "C", "text": "3個月"}, {"key": "D", "text": "6個月"}]'::JSONB, 2, '依《職業安全衛生管理辦法》，職安衛委員會至少每3個月開會一次，應由雇主或代理人擔任主任委員。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-008', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，雇主對有母性健康危害之虞工作，應採取何種措施？', '[{"key": "A", "text": "禁止女性勞工從事"}, {"key": "B", "text": "實施危害評估並採適當保護措施"}, {"key": "C", "text": "增加工資補償"}, {"key": "D", "text": "提供額外休假"}]'::JSONB, 1, '依法第31條，雇主應對有母性健康危害之虞的工作，採危害評估、控制及分級管理措施，並視評估結果調整工作。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-009', 'osh-a', 'osh-a-ch0', '安全衛生工作守則訂定後，應報經何者備查後公告實施？', '[{"key": "A", "text": "勞動部"}, {"key": "B", "text": "當地勞動檢查機構"}, {"key": "C", "text": "職安衛委員會"}, {"key": "D", "text": "縣市政府"}]'::JSONB, 1, '依法第34條，雇主應會同勞工代表訂定安全衛生工作守則，報經當地勞動檢查機構備查後公告實施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-010', 'osh-a', 'osh-a-ch0', '依職安法規定，雇主對具有危險性之設備，應向哪個機構申請檢查合格後才能使用？', '[{"key": "A", "text": "衛生福利部"}, {"key": "B", "text": "勞動部"}, {"key": "C", "text": "檢查機構或中央指定代行檢查機構"}, {"key": "D", "text": "地方政府"}]'::JSONB, 2, '依法第16條，危險性機械或設備須經檢查機構或中央主管機關指定之代行檢查機構檢查合格，方可使用。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-011', 'osh-a', 'osh-a-ch0', '職安法所稱「主管機關」，在中央為哪個部會？', '[{"key": "A", "text": "衛生福利部"}, {"key": "B", "text": "勞動部"}, {"key": "C", "text": "內政部"}, {"key": "D", "text": "經濟部"}]'::JSONB, 1, '依法第2條，中央主管機關為勞動部，直轄市主管機關為直轄市政府，縣（市）主管機關為縣（市）政府。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-012', 'osh-a', 'osh-a-ch0', '雇主對作業環境或危害應採取哪種危害防止計畫優先順序？', '[{"key": "A", "text": "個人防護具→工程控制→消除危害"}, {"key": "B", "text": "消除危害→取代→工程控制→行政管理→個人防護具"}, {"key": "C", "text": "行政管理→個人防護具→工程控制"}, {"key": "D", "text": "個人防護具為最優先措施"}]'::JSONB, 1, '危害防止的優先順序為：消除危害→取代（低危害替代）→工程控制→行政管理→個人防護具（PPE），消除危害最優先。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-013', 'osh-a', 'osh-a-ch0', '依法，雇主應對員工定期實施健康檢查，一般健康檢查頻率為何？', '[{"key": "A", "text": "每年一次"}, {"key": "B", "text": "每2年一次"}, {"key": "C", "text": "每3年一次"}, {"key": "D", "text": "依勞工年齡而定"}]'::JSONB, 3, '依《勞工健康保護規則》，40歲以上每年一次；未滿40歲者，視年齡區段為每2年或每5年一次，故依年齡而定。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-014', 'osh-a', 'osh-a-ch0', '事業單位工作場所發生職業災害，雇主除採取緊急措施外，應即調查災害原因及採取必要措施的期限為何？', '[{"key": "A", "text": "24小時內"}, {"key": "B", "text": "3日內"}, {"key": "C", "text": "7日內"}, {"key": "D", "text": "15日內"}]'::JSONB, 1, '依法第37條，雇主應即採取必要措施，並於3日內通報勞動檢查機構（死亡及重大災害須於8小時內通報）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-015', 'osh-a', 'osh-a-ch0', '依職安法，違反職業安全衛生工作守則之勞工，雇主得對其實施何種措施？', '[{"key": "A", "text": "立即解雇"}, {"key": "B", "text": "依規定予以告誡或懲處"}, {"key": "C", "text": "向主管機關申報"}, {"key": "D", "text": "罰款扣薪"}]'::JSONB, 1, '依法第34條，勞工不遵守安全衛生工作守則，雇主得依規定予以告誡或懲處，但應依照既有勞動法令規定辦理。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-016', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，工作者發現職場有立即危險時，有何種權利？', '[{"key": "A", "text": "只能向主管報告"}, {"key": "B", "text": "有權立即撤離現場"}, {"key": "C", "text": "應等雇主指示再行動"}, {"key": "D", "text": "需繼續工作直到危險排除"}]'::JSONB, 1, '依法第18條，工作場所有立即發生危險之虞，工作者得在不危及其他工作者安全情形下，自行撤離危險場所。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-017', 'osh-a', 'osh-a-ch0', '下列哪種職業災害通報不需在8小時內？', '[{"key": "A", "text": "死亡災害"}, {"key": "B", "text": "罹災人數達3人以上"}, {"key": "C", "text": "罹災人數達1人但需住院"}, {"key": "D", "text": "中央主管機關指定公告之災害"}]'::JSONB, 2, '依法第37條，8小時內通報的條件是：死亡、罹災3人以上、或指定公告之災害。1人住院的情形，應於3日內通報即可。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-018', 'osh-a', 'osh-a-ch0', '高壓氣體製造安全技術員的資格取得是依據哪個法規？', '[{"key": "A", "text": "職業安全衛生法"}, {"key": "B", "text": "勞動基準法"}, {"key": "C", "text": "危險性機械及設備安全檢查規則"}, {"key": "D", "text": "高壓氣體勞工安全規則"}]'::JSONB, 2, '高壓氣體相關設備的技術員資格，依《危險性機械及設備安全檢查規則》的規定辦理。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-019', 'osh-a', 'osh-a-ch0', '依法，職業安全衛生主管機關對事業單位工作場所進行檢查時，事業單位應如何配合？', '[{"key": "A", "text": "可拒絕無預告之檢查"}, {"key": "B", "text": "應提供必要之設施及資料配合"}, {"key": "C", "text": "可要求先行預約再受檢"}, {"key": "D", "text": "無義務配合"}]'::JSONB, 1, '依《勞動檢查法》，事業單位對勞動檢查機構實施之檢查，應提供必要之設施及資料予以配合，不得拒絕或規避。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-020', 'osh-a', 'osh-a-ch0', '依《職業安全衛生管理辦法》，甲類事業單位應設置職業安全衛生管理員的最低人數依何因素決定？', '[{"key": "A", "text": "事業單位資本額"}, {"key": "B", "text": "勞工人數"}, {"key": "C", "text": "事業單位場所面積"}, {"key": "D", "text": "危害等級"}]'::JSONB, 1, '職安衛管理員的設置人數主要依勞工人數決定，人數越多，所需管理員越多，甲類為高危害性質之事業單位。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-021', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》規定，何種情況下雇主得免除職業災害補償責任？', '[{"key": "A", "text": "勞工自行違反操作程序"}, {"key": "B", "text": "天災引起且非人力所能抗拒"}, {"key": "C", "text": "勞工有酒駕行為"}, {"key": "D", "text": "雇主已採取適當安全措施"}]'::JSONB, 1, '依法第84條，職業災害如係因天災或其他不可抗力所致，且雇主已盡職安義務，始得減輕或免除補償責任。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-022', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法施行細則》，「危害性化學品」包含下列何者？', '[{"key": "A", "text": "僅含有毒物質"}, {"key": "B", "text": "危險物及有害物"}, {"key": "C", "text": "一般清潔用品"}, {"key": "D", "text": "所有化學品"}]'::JSONB, 1, '依施行細則，危害性化學品指的是危險物（如易燃、爆炸性物質）及有害物（如有毒、腐蝕性物質）兩大類。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-023', 'osh-a', 'osh-a-ch0', '依《職業安全衛生設施規則》，雇主應確保機械的防護設備在使用前已確實安裝，違反此規定最高可處多少罰鍰？', '[{"key": "A", "text": "新台幣3萬元"}, {"key": "B", "text": "新台幣15萬元"}, {"key": "C", "text": "新台幣30萬元"}, {"key": "D", "text": "新台幣100萬元"}]'::JSONB, 2, '依職安法第43條，違反機械防護設備設置等規定，主管機關可處新台幣3萬至30萬元不等罰鍰。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-024', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，下列何者是「職業安全衛生管理計畫」必須包含的內容之一？', '[{"key": "A", "text": "員工薪資規劃"}, {"key": "B", "text": "作業環境監測計畫"}, {"key": "C", "text": "員工請假管理"}, {"key": "D", "text": "倉儲管理規定"}]'::JSONB, 1, '依法第23條，職安衛管理計畫應包含工作環境或作業危害辨識、評估及控制、安全衛生作業標準、作業環境監測等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-025', 'osh-a', 'osh-a-ch0', '依《勞動檢查法》，勞動檢查員執行檢查後，認有違反法令規定應予改善，應如何處理？', '[{"key": "A", "text": "當場罰款"}, {"key": "B", "text": "通知事業單位限期改善"}, {"key": "C", "text": "立即停工"}, {"key": "D", "text": "移送司法機關"}]'::JSONB, 1, '依《勞動檢查法》第26條，勞動檢查員認定有違反法令情形，應通知事業單位限期改善，並得停工或採取必要措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-026', 'osh-a', 'osh-a-ch0', '職安法中「工作者」的定義，下列何者正確？', '[{"key": "A", "text": "僅包含有薪資的受僱勞工"}, {"key": "B", "text": "包含受僱勞工、自營作業者及接受訓練者"}, {"key": "C", "text": "只限全職員工"}, {"key": "D", "text": "外籍移工不包含在內"}]'::JSONB, 1, '依法第2條，工作者指受僱勞工、自營作業者及接受職業訓練者，不限國籍或僱用型態。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-027', 'osh-a', 'osh-a-ch0', '依《職業安全衛生設施規則》第243條，對地電壓幾伏特以上的電氣設備應裝設漏電斷路器？', '[{"key": "A", "text": "100V"}, {"key": "B", "text": "150V"}, {"key": "C", "text": "200V"}, {"key": "D", "text": "220V"}]'::JSONB, 1, '對地電壓在150V以上的電氣設備，或在導電性良好場所（金屬板、潮濕地面等）使用移動式或攜帶式電動機具，應裝設漏電斷路器。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-028', 'osh-a', 'osh-a-ch0', '依職安法，事業單位與承攬人共同作業時，原事業單位應負哪些協調義務？', '[{"key": "A", "text": "無需協調，各自負責"}, {"key": "B", "text": "應指定現場協調員進行安全衛生協調"}]'::JSONB, 1, '依法第27條，原事業單位應採取協調聯絡、巡視作業場所、整體性危害預防計畫等措施。（此為簡化版題目，正式考試會有四選項）');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-029', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，對於職業災害的補償，下列何者敘述正確？', '[{"key": "A", "text": "職業災害補償與民事損害賠償可以同時主張"}, {"key": "B", "text": "職業災害補償取得後不得再請求民事損害賠償"}, {"key": "C", "text": "職業災害補償僅限於身體傷害"}, {"key": "D", "text": "補償金額由雇主自行決定"}]'::JSONB, 0, '依民法及勞基法規定，職業災害補償（勞基法）與民事損害賠償可同時主張，但可扣抵重複部分。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-030', 'osh-a', 'osh-a-ch0', '依法，雇主對於在職勞工在職前應使其接受哪種訓練？', '[{"key": "A", "text": "只需在職一般教育訓練"}, {"key": "B", "text": "特殊教育訓練"}, {"key": "C", "text": "適於各工作之安全衛生教育訓練"}, {"key": "D", "text": "法令課程"}]'::JSONB, 2, '依法第32條，雇主對新僱勞工或在職勞工於變更工作前，應使其接受適於各工作必要之安全衛生教育訓練。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-031', 'osh-a', 'osh-a-ch0', '《職業安全衛生法》中對於特別危害健康作業的健康管理，主管機關應如何分級？', '[{"key": "A", "text": "不需分級"}, {"key": "B", "text": "分為一般及特殊兩類"}, {"key": "C", "text": "依職業病風險分四級管理"}, {"key": "D", "text": "依工作年限分類"}]'::JSONB, 2, '依《勞工健康保護規則》，特別危害健康作業的健康管理分為第一至第四級，依健康狀況採取不同的管理措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-032', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，設置職業安全衛生管理員之事業單位，其管理員應具備何種資格？', '[{"key": "A", "text": "任何大學畢業即可"}, {"key": "B", "text": "須持有職業安全管理師、衛生管理師或相關訓練合格證書"}, {"key": "C", "text": "須具備10年工作經驗"}, {"key": "D", "text": "只需雇主指定即可"}]'::JSONB, 1, '依《職業安全衛生管理辦法》，職安衛管理員應具備職業安全管理師、職業衛生管理師或職業安全衛生管理員資格。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-033', 'osh-a', 'osh-a-ch0', '依職安法，雇主使勞工從事危險性工作時，應採取之措施不包含下列何者？', '[{"key": "A", "text": "危害告知"}, {"key": "B", "text": "提供適當防護具"}, {"key": "C", "text": "安全衛生教育訓練"}, {"key": "D", "text": "提高薪資補償危險"}]'::JSONB, 3, '職安法規定雇主應採取危害告知、提供防護具、實施訓練等措施。提高薪資不屬於職安措施，且不能以薪資替代安全措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-034', 'osh-a', 'osh-a-ch0', '依《職業安全衛生設施規則》，局限空間作業前，氧氣濃度應確認在幾%以上？', '[{"key": "A", "text": "16%"}, {"key": "B", "text": "18%"}, {"key": "C", "text": "20%"}, {"key": "D", "text": "21%"}]'::JSONB, 1, '局限空間作業前應確認空氣中氧氣濃度在18%以上，低於18%屬缺氧環境，勞工不得進入，應先通風換氣。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-035', 'osh-a', 'osh-a-ch0', '依勞動檢查法，勞動檢查員發現工作場所有立即發生危險之虞時，得為何種處置？', '[{"key": "A", "text": "僅能開具改善通知"}, {"key": "B", "text": "得當場要求停工"}, {"key": "C", "text": "需提報上級核准後始得處置"}, {"key": "D", "text": "只能拍照存證"}]'::JSONB, 1, '依《勞動檢查法》第28條，有立即危險之虞時，檢查員得當場要求雇主採取安全措施，包括停工。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-036', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，下列何種行為屬於雇主的積極義務？', '[{"key": "A", "text": "僅在發生事故後才需採取措施"}, {"key": "B", "text": "事前預防危害的發生"}, {"key": "C", "text": "僅在勞工要求時提供防護具"}, {"key": "D", "text": "不需主動通知危害"}]'::JSONB, 1, '職安法精神是事前預防優於事後補救，雇主有積極預防、辨識危害、評估風險及採取控制措施的義務。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-037', 'osh-a', 'osh-a-ch0', '依法，職業安全衛生法的適用範圍為何？', '[{"key": "A", "text": "僅適用工廠"}, {"key": "B", "text": "僅適用特定行業"}, {"key": "C", "text": "各業雇用勞工從事工作之場所"}, {"key": "D", "text": "僅限公共工程"}]'::JSONB, 2, '依法第2條，職安衛法適用於各業雇用勞工從事工作之場所，適用範圍廣泛，不限特定行業。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-038', 'osh-a', 'osh-a-ch0', '依《職業安全衛生設施規則》，高度幾公尺以上工作場所邊緣應設護欄等防護設備？', '[{"key": "A", "text": "1公尺"}, {"key": "B", "text": "1.5公尺"}, {"key": "C", "text": "2公尺"}, {"key": "D", "text": "3公尺"}]'::JSONB, 2, '依設施規則第224條，高度2公尺以上的工作場所邊緣及開口部分，有墜落危險之虞者，應設護欄、護蓋或安全網。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-039', 'osh-a', 'osh-a-ch0', '職安法中「自動檢查」的目的為何？', '[{"key": "A", "text": "取代政府勞動檢查"}, {"key": "B", "text": "讓雇主自行發現並改善危害"}, {"key": "C", "text": "讓勞工自行管理安全"}, {"key": "D", "text": "降低政府管制負擔"}]'::JSONB, 1, '自動檢查制度的目的在於讓事業單位主動對設備、作業環境等進行定期自主檢點，及早發現並消除危害。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-040', 'osh-a', 'osh-a-ch0', '依《職業安全衛生法》，事業單位於施工前應擬訂工程施工安全衛生計畫的最低金額門檻為何？', '[{"key": "A", "text": "500萬元"}, {"key": "B", "text": "1000萬元"}, {"key": "C", "text": "3000萬元"}, {"key": "D", "text": "5000萬元"}]'::JSONB, 1, '依相關規定，符合一定規模（約1000萬元以上）的施工工程，承攬人應擬訂施工安全衛生計畫，報請原事業單位備查。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch0-041', 'osh-a', 'osh-a-ch0', '依職安法，雇主應提供符合安全標準的作業環境，此義務屬於哪種法律概念？', '[{"key": "A", "text": "契約義務"}, {"key": "B", "text": "法定義務"}, {"key": "C", "text": "道德義務"}, {"key": "D", "text": "習慣法義務"}]'::JSONB, 1, '職安法明文規定雇主保障勞工安全衛生的義務，屬於法定義務，不論勞動契約是否有約定，雇主均應履行。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-001', 'osh-a', 'osh-a-ch1', '安全衛生管理系統PDCA循環中，C代表什麼？', '[{"key": "A", "text": "Control控制"}, {"key": "B", "text": "Check查核"}, {"key": "C", "text": "Change變更"}, {"key": "D", "text": "Correct矯正"}]'::JSONB, 1, 'PDCA為Plan計畫、Do執行、Check查核、Act行動改善，C代表Check查核階段，評估執行成效是否達到目標。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-002', 'osh-a', 'osh-a-ch1', '下列何者不是風險評估的步驟？', '[{"key": "A", "text": "辨識危害"}, {"key": "B", "text": "評估風險"}, {"key": "C", "text": "決定控制措施"}, {"key": "D", "text": "懲處違規勞工"}]'::JSONB, 3, '風險評估步驟：辨識危害→評估風險→決定控制措施→執行→監督與審查。懲處違規勞工不屬風險評估步驟。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-003', 'osh-a', 'osh-a-ch1', '職安衛管理計畫中，最高決策者應為何人？', '[{"key": "A", "text": "安全衛生管理員"}, {"key": "B", "text": "現場主管"}, {"key": "C", "text": "事業經營負責人"}, {"key": "D", "text": "勞工代表"}]'::JSONB, 2, '依管理系統精神，事業經營負責人（雇主）為安全衛生最高決策者，展現最高管理階層的承諾與領導。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-004', 'osh-a', 'osh-a-ch1', 'ISO 45001職安衛管理系統中，「領導與工作者參與」要素包含哪項？', '[{"key": "A", "text": "危害鑑別"}, {"key": "B", "text": "內部稽核"}, {"key": "C", "text": "管理階層承諾"}, {"key": "D", "text": "緊急應變"}]'::JSONB, 2, 'ISO 45001中「領導與工作者參與」包含最高管理階層承諾、安全衛生政策制定、工作者及代表的參與與諮商。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-005', 'osh-a', 'osh-a-ch1', '風險控制措施的優先順序，下列何者最優先？', '[{"key": "A", "text": "使用個人防護具"}, {"key": "B", "text": "工程控制"}, {"key": "C", "text": "消除危害"}, {"key": "D", "text": "行政管理"}]'::JSONB, 2, '風險控制優先序：消除危害→取代（以低危害替代）→工程控制→行政管理→個人防護具，消除危害最優先。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-006', 'osh-a', 'osh-a-ch1', '安全衛生工作守則應由誰負責訂定？', '[{"key": "A", "text": "勞工自行訂定"}, {"key": "B", "text": "政府機關統一制定"}, {"key": "C", "text": "雇主會同勞工代表訂定"}, {"key": "D", "text": "工會單方面訂定"}]'::JSONB, 2, '依職安法第34條，安全衛生工作守則應由雇主會同勞工代表共同訂定，報主管機關備查後公告實施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-007', 'osh-a', 'osh-a-ch1', '「海因里希法則（1:29:300）」說明什麼？', '[{"key": "A", "text": "1件重傷：29件輕傷：300件無傷事故"}, {"key": "B", "text": "1件死亡：29件重傷：300件輕傷"}, {"key": "C", "text": "1件事故：29件近似事故：300件不安全行為"}, {"key": "D", "text": "1件職業病：29件慢性病：300件亞健康"}]'::JSONB, 0, '海因里希法則指出，每1件嚴重傷害事故背後有29件輕傷事故和300件無傷事故（未遂事件），強調預防未遂事件的重要性。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-008', 'osh-a', 'osh-a-ch1', '職業安全衛生管理系統(OSHMS)的最終目標為何？', '[{"key": "A", "text": "通過認證取得競爭優勢"}, {"key": "B", "text": "持續改善職場安全衛生績效以預防事故"}, {"key": "C", "text": "達到最低法規遵循要求"}, {"key": "D", "text": "降低保險費用"}]'::JSONB, 1, 'OSHMS最終目標是持續改善職場安全衛生績效，預防職業災害及職業病，保護工作者健康。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-009', 'osh-a', 'osh-a-ch1', '下列何者屬於「不安全行為」(unsafe act)？', '[{"key": "A", "text": "地板潮濕未放警示牌"}, {"key": "B", "text": "缺乏護欄"}, {"key": "C", "text": "未依規定佩戴安全帽"}, {"key": "D", "text": "電氣設備老舊"}]'::JSONB, 2, '不安全行為指工作者個人行為上的缺失；不安全環境指設備或環境的危險狀態。未戴安全帽屬個人行為問題。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-010', 'osh-a', 'osh-a-ch1', '危害辨識的常用方法「What-If分析法」主要適用於哪種情況？', '[{"key": "A", "text": "事故發生後的原因分析"}, {"key": "B", "text": "設計或操作流程的系統性危害辨識"}, {"key": "C", "text": "法規遵循查核"}, {"key": "D", "text": "個人健康評估"}]'::JSONB, 1, 'What-If分析法透過「如果…會發生什麼？」的問題方式，對設計或操作流程進行系統性危害辨識，屬於預防性分析。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-011', 'osh-a', 'osh-a-ch1', '「失誤模式與影響分析(FMEA)」是哪種安全分析方法？', '[{"key": "A", "text": "事故後調查方法"}, {"key": "B", "text": "自下而上的失誤分析方法"}, {"key": "C", "text": "自上而下的失誤分析方法"}, {"key": "D", "text": "僅適用化工廠的方法"}]'::JSONB, 1, 'FMEA（Failure Mode and Effects Analysis）是自下而上的分析方法，從零組件或子系統的失誤模式出發，分析其對系統的影響。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-012', 'osh-a', 'osh-a-ch1', '「故障樹分析(FTA)」是哪種安全分析方法？', '[{"key": "A", "text": "自下而上的失誤分析"}, {"key": "B", "text": "自上而下的系統失誤分析"}, {"key": "C", "text": "設備保養計畫"}, {"key": "D", "text": "人因分析工具"}]'::JSONB, 1, 'FTA（Fault Tree Analysis）是自上而下的分析方法，從頂端事件（如意外）出發，逐層追溯可能導致的原因（邏輯樹狀圖）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-013', 'osh-a', 'osh-a-ch1', '下列何者是職業安全衛生管理系統的「稽核」主要目的？', '[{"key": "A", "text": "懲處管理人員"}, {"key": "B", "text": "驗證系統是否有效運作及符合計畫要求"}, {"key": "C", "text": "對外宣傳公司形象"}, {"key": "D", "text": "取代勞動檢查"}]'::JSONB, 1, '稽核目的在驗證管理系統是否有效運作、符合既定計畫及法規要求，並提供改善依據，不是懲處手段。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-014', 'osh-a', 'osh-a-ch1', '「事故金字塔」概念強調什麼？', '[{"key": "A", "text": "重大事故比小事故重要"}, {"key": "B", "text": "應重視輕微事故和未遂事件的預防"}, {"key": "C", "text": "事故調查應由外部機構執行"}, {"key": "D", "text": "安全成本與生產效率相衝突"}]'::JSONB, 1, '事故金字塔（海因里希法則的延伸）強調，大量輕微事故和未遂事件是重大事故的前兆，預防要從底層做起。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-015', 'osh-a', 'osh-a-ch1', '職場安全文化的核心特徵為何？', '[{"key": "A", "text": "主要靠罰則推動安全"}, {"key": "B", "text": "組織各層級對安全的共同承諾與積極態度"}, {"key": "C", "text": "僅強調規定與手冊"}, {"key": "D", "text": "以成本效益評估安全投入"}]'::JSONB, 1, '正向的安全文化強調組織各層級（從高層到基層）對安全的共同承諾、主動積極的態度，以及開放的溝通文化。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-016', 'osh-a', 'osh-a-ch1', '「殘餘風險」(residual risk)的定義為何？', '[{"key": "A", "text": "尚未評估的風險"}, {"key": "B", "text": "採取控制措施後仍然存在的風險"}, {"key": "C", "text": "可以接受的最大風險值"}, {"key": "D", "text": "超出法規要求的風險"}]'::JSONB, 1, '殘餘風險指採取所有可行的風險控制措施之後，仍然存在且無法完全消除的風險。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-017', 'osh-a', 'osh-a-ch1', '工作安全分析（JSA/JHA）的步驟順序正確為何？', '[{"key": "A", "text": "選定工作→列出步驟→辨識危害→採取措施"}, {"key": "B", "text": "辨識危害→列出步驟→選定工作→採取措施"}, {"key": "C", "text": "採取措施→選定工作→辨識危害→列出步驟"}, {"key": "D", "text": "選定工作→辨識危害→採取措施→列出步驟"}]'::JSONB, 0, '工作安全分析（JSA/Job Hazard Analysis）的正確步驟：①選定要分析的工作②逐步分解工作步驟③辨識每一步驟的危害④制定控制措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-018', 'osh-a', 'osh-a-ch1', '依ISO 45001，「脈絡（Context）」指的是什麼？', '[{"key": "A", "text": "組織的辦公環境"}, {"key": "B", "text": "影響組織能達成OHSMS目標的內外部因素"}, {"key": "C", "text": "員工的工作背景"}, {"key": "D", "text": "業務流程描述"}]'::JSONB, 1, 'ISO 45001中的「組織脈絡」指影響組織OHSMS目標達成的內外部因素，包含法規環境、利害關係人需求、組織文化等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-019', 'osh-a', 'osh-a-ch1', '「危害」(Hazard)與「風險」(Risk)的差異為何？', '[{"key": "A", "text": "兩者意義相同"}, {"key": "B", "text": "危害是危害來源或狀況，風險是危害造成傷害的可能性與嚴重度的組合"}, {"key": "C", "text": "風險比危害更嚴重"}, {"key": "D", "text": "危害是指事故後果，風險是指可能性"}]'::JSONB, 1, '危害（Hazard）是可能造成傷害的來源、狀況或行為；風險（Risk）是危害事件的可能性（Likelihood）與嚴重度（Severity）的組合。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-020', 'osh-a', 'osh-a-ch1', '職場安全衛生管理中，「管理承諾」(Management Commitment)的重要性為何？', '[{"key": "A", "text": "僅是形式要件，實質影響不大"}, {"key": "B", "text": "是建立正向安全文化的基礎，直接影響整體安全績效"}, {"key": "C", "text": "只在通過認證時才需要展現"}, {"key": "D", "text": "主要用於應付勞動檢查"}]'::JSONB, 1, '管理承諾（尤其是最高管理者的承諾）是建立正向安全文化的基礎，直接影響資源分配、員工態度與整體安全績效。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-021', 'osh-a', 'osh-a-ch1', '「近失事故（Near-Miss）」報告制度的主要目的為何？', '[{"key": "A", "text": "懲處差點造成事故的員工"}, {"key": "B", "text": "分析未遂事件，預防未來的實際事故"}, {"key": "C", "text": "符合法規要求的書面作業"}, {"key": "D", "text": "作為保險申報依據"}]'::JSONB, 1, '近失事故（Near-Miss）是未造成傷害但差點發生的事件，透過報告和分析這類事件，可以找出系統弱點並加以改善，預防未來事故。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-022', 'osh-a', 'osh-a-ch1', '下列哪個是「主動式」安全衛生績效指標（Leading Indicator）？', '[{"key": "A", "text": "事故發生率"}, {"key": "B", "text": "職業病件數"}, {"key": "C", "text": "安全訓練完成率"}, {"key": "D", "text": "職業傷害嚴重度"}]'::JSONB, 2, '主動式（領先）指標反映事故前的預防活動，如訓練完成率、安全觀察次數；落後指標（Lagging Indicator）如事故率，反映已發生的結果。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-023', 'osh-a', 'osh-a-ch1', '「OHSAS 18001」與「ISO 45001」的關係為何？', '[{"key": "A", "text": "兩者是完全不同的標準"}, {"key": "B", "text": "ISO 45001是OHSAS 18001的升級版，已取代後者"}, {"key": "C", "text": "OHSAS 18001是ISO 45001的升級版"}, {"key": "D", "text": "兩者可同時並行認證"}]'::JSONB, 1, 'ISO 45001於2018年發布，2021年OHSAS 18001正式廢止，ISO 45001已完全取代OHSAS 18001，成為職安衛管理系統的國際標準。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-024', 'osh-a', 'osh-a-ch1', '職安衛風險評估中，「風險矩陣」(Risk Matrix)主要用來評估什麼？', '[{"key": "A", "text": "設備價值"}, {"key": "B", "text": "風險的可能性與嚴重度，以決定風險等級"}, {"key": "C", "text": "勞工薪資水準"}, {"key": "D", "text": "生產效率"}]'::JSONB, 1, '風險矩陣是以「可能性（發生機率）」與「嚴重度（後果）」兩個維度，交叉評估風險等級，決定是否可接受及所需控制措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-025', 'osh-a', 'osh-a-ch1', '下列何者屬於「行政管理控制」(Administrative Control)措施？', '[{"key": "A", "text": "安裝機器護罩"}, {"key": "B", "text": "以低毒性物質取代高毒性物質"}, {"key": "C", "text": "實施作業輪班降低暴露時間"}, {"key": "D", "text": "提供個人呼吸防護具"}]'::JSONB, 2, '行政管理控制包括：工作輪班、工作程序制定、訓練教育、警告標示等；工程控制是改變設備/環境；取代是消除或減少危害來源。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-026', 'osh-a', 'osh-a-ch1', '職業安全衛生內部稽核應由誰執行？', '[{"key": "A", "text": "必須由外部機構執行"}, {"key": "B", "text": "可由受過訓練的內部人員執行"}, {"key": "C", "text": "只能由最高管理者執行"}, {"key": "D", "text": "委由勞動檢查機構代為執行"}]'::JSONB, 1, '內部稽核可由受訓練的組織內部人員執行，但稽核人員不應稽核自己的工作區域（獨立性原則）；外部稽核由認證機構執行。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-027', 'osh-a', 'osh-a-ch1', '「工作場所風險評估」完成後，應多久更新一次？', '[{"key": "A", "text": "每10年一次"}, {"key": "B", "text": "定期或在重大變更、事故後重新評估"}, {"key": "C", "text": "只需評估一次"}, {"key": "D", "text": "在政府要求時才需更新"}]'::JSONB, 1, '風險評估應定期更新（如每年或依規定頻率），並在工作流程重大變更、新設備引入、事故發生後，或法規改變時重新評估。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-028', 'osh-a', 'osh-a-ch1', '下列何者是「系統安全分析」中的「能量跡象圖（Energy Trace & Barrier Analysis）」的核心概念？', '[{"key": "A", "text": "追蹤能量使用效率"}, {"key": "B", "text": "分析不受控制的能量釋放是事故的根本原因"}, {"key": "C", "text": "評估設備耗能情況"}, {"key": "D", "text": "計算能源成本"}]'::JSONB, 1, '能量理論認為幾乎所有事故都涉及不受控制的能量釋放（如動能、熱能、電能等），屬Haddon能量模型的應用。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-029', 'osh-a', 'osh-a-ch1', '「事故調查」的主要目的應為何？', '[{"key": "A", "text": "找出犯錯的員工並予以懲處"}, {"key": "B", "text": "找出根本原因（Root Cause）以防止類似事故再發"}, {"key": "C", "text": "快速結案以減少法律責任"}, {"key": "D", "text": "滿足保險公司的要求"}]'::JSONB, 1, '事故調查的核心目的是找出事故的直接原因和根本原因（Root Cause），以採取有效的改善措施，防止類似事故再次發生。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch1-030', 'osh-a', 'osh-a-ch1', '工廠推行「5S」活動，與職業安全衛生有何關聯？', '[{"key": "A", "text": "5S是純生產管理工具，與安全無關"}, {"key": "B", "text": "5S中的整理、整頓、清掃可消除許多工作場所危害"}, {"key": "C", "text": "5S主要目的是提升產品品質"}, {"key": "D", "text": "5S活動由品管部門負責，安全衛生部門不介入"}]'::JSONB, 1, '5S（整理、整頓、清掃、清潔、素養）中整理去除不必要物品、整頓定位、清掃去除污染源，可消除絆倒、滑倒等許多危害，與職安衛密切相關。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-001', 'osh-a', 'osh-a-ch2', '對地電壓幾伏特以上電氣設備應裝設漏電斷路器？', '[{"key": "A", "text": "100V"}, {"key": "B", "text": "150V"}, {"key": "C", "text": "200V"}, {"key": "D", "text": "220V"}]'::JSONB, 1, '依設施規則第243條，對地電壓150V以上電氣設備，或在導電性良好場所使用移動式電動機具，應裝設感電防止用漏電斷路器。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-002', 'osh-a', 'osh-a-ch2', '局限空間作業前，氧氣濃度應在多少%以上？', '[{"key": "A", "text": "16%"}, {"key": "B", "text": "18%"}, {"key": "C", "text": "20%"}, {"key": "D", "text": "21%"}]'::JSONB, 1, '依設施規則，局限空間應確認氧氣濃度18%以上，低於18%屬缺氧環境，勞工不得進入，需先通風換氣。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-003', 'osh-a', 'osh-a-ch2', '墜落災害防止的最優先對策為何？', '[{"key": "A", "text": "使用安全帶"}, {"key": "B", "text": "設置護欄"}, {"key": "C", "text": "張掛安全網"}, {"key": "D", "text": "限制作業時間"}]'::JSONB, 1, '依危害控制優先序：設護欄（工程控制/消除危害）→安全網→安全帶（個人防護具）。設置護欄最優先。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-004', 'osh-a', 'osh-a-ch2', '特高壓係指超過幾伏特之電壓？', '[{"key": "A", "text": "600V"}, {"key": "B", "text": "3,300V"}, {"key": "C", "text": "11,400V"}, {"key": "D", "text": "22,800V"}]'::JSONB, 3, '依設施規則：低壓≤600V，高壓600V至22,800V，特高壓>22,800V。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-005', 'osh-a', 'osh-a-ch2', '有機溶劑作業場所應設置何種通風裝置？', '[{"key": "A", "text": "自然通風即可"}, {"key": "B", "text": "整體換氣或局部排氣裝置"}, {"key": "C", "text": "僅需配戴口罩"}, {"key": "D", "text": "定期開窗通風"}]'::JSONB, 1, '依《有機溶劑中毒預防規則》，有機溶劑作業場所應設密閉設備、局部排氣或整體換氣裝置，防止勞工中毒。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-006', 'osh-a', 'osh-a-ch2', '高度幾公尺以上工作場所邊緣應設護欄等防護設備？', '[{"key": "A", "text": "1公尺"}, {"key": "B", "text": "1.5公尺"}, {"key": "C", "text": "2公尺"}, {"key": "D", "text": "3公尺"}]'::JSONB, 2, '依設施規則第224條，高度2公尺以上工作場所邊緣及開口，有墜落危險之虞者，應設護欄、護蓋或安全網。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-007', 'osh-a', 'osh-a-ch2', '物質安全資料表（SDS/Safety Data Sheet）共有幾個項目？', '[{"key": "A", "text": "8項"}, {"key": "B", "text": "12項"}, {"key": "C", "text": "16項"}, {"key": "D", "text": "20項"}]'::JSONB, 2, '依GHS制度，SDS（安全資料表）標準格式共有16個必要項目，包括物質名稱、危害辨識、成分、急救措施等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-008', 'osh-a', 'osh-a-ch2', '下列哪種滅火劑不適用於電氣火災（C類火災）？', '[{"key": "A", "text": "二氧化碳滅火劑"}, {"key": "B", "text": "乾粉滅火劑"}, {"key": "C", "text": "泡沫滅火劑"}, {"key": "D", "text": "鹵素系（海龍）滅火劑"}]'::JSONB, 2, '泡沫滅火劑含水分，導電性高，不可用於電氣設備火災（C類）。CO2、乾粉、鹵素系均可用於電氣火災。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-009', 'osh-a', 'osh-a-ch2', '「缺氧症預防規則」定義缺氧狀態的氧氣濃度為低於多少？', '[{"key": "A", "text": "19%"}, {"key": "B", "text": "18%"}, {"key": "C", "text": "16%"}, {"key": "D", "text": "21%"}]'::JSONB, 1, '依《缺氧症預防規則》，氧氣濃度未滿18%的狀態稱為缺氧，勞工進入此類場所需有防護措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-010', 'osh-a', 'osh-a-ch2', '移動式起重機作業時，起重機司機、吊掛作業勞工及地面作業監視人員的通聯，應以何種方式進行？', '[{"key": "A", "text": "手機通話"}, {"key": "B", "text": "事先約定的手號信號"}, {"key": "C", "text": "口頭喊叫"}, {"key": "D", "text": "不需要特別通聯"}]'::JSONB, 1, '依規定，起重機作業應以事先約定好的手號信號（或對講機）進行溝通，以確保作業人員明確了解吊運指令，防止意外。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-011', 'osh-a', 'osh-a-ch2', '作業環境中常用的粉塵控制方法，下列何者屬於「工程控制」？', '[{"key": "A", "text": "縮短作業時間"}, {"key": "B", "text": "要求工人戴口罩"}, {"key": "C", "text": "設置局部排氣裝置"}, {"key": "D", "text": "進行健康檢查"}]'::JSONB, 2, '設置局部排氣裝置（Local Exhaust Ventilation）屬於工程控制，直接從粉塵產生源頭排除；縮短時間屬行政控制；口罩屬PPE。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-012', 'osh-a', 'osh-a-ch2', '依「高空作業」相關規定，從事高空作業時，安全帶掛鉤應掛在何處？', '[{"key": "A", "text": "腰部以下固定物"}, {"key": "B", "text": "高於頭部以上的固定物或滑動式安全扣環"}, {"key": "C", "text": "任意固定物"}, {"key": "D", "text": "不需要掛鉤"}]'::JSONB, 1, '安全帶的掛鉤點應高於作業者頭部，或使用滑動式扣環（Self-retracting Lifeline），以確保墜落距離最小，提高保護效果。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-013', 'osh-a', 'osh-a-ch2', '下列何者不屬於「密閉空間（局限空間）」的特徵？', '[{"key": "A", "text": "開口有限、不足以讓人自由進出"}, {"key": "B", "text": "通風換氣不良"}, {"key": "C", "text": "非供人員持續佔用而設計"}, {"key": "D", "text": "空間寬大且通風良好"}]'::JSONB, 3, '局限空間特徵：進出口受限、非持續使用設計、通風不良、可能含有害氣體或缺氧。空間寬大且通風良好不屬其特徵。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-014', 'osh-a', 'osh-a-ch2', '輸配電架空線路下方施工作業，最主要的危害為何？', '[{"key": "A", "text": "噪音危害"}, {"key": "B", "text": "電擊（感電）危害"}, {"key": "C", "text": "振動危害"}, {"key": "D", "text": "熱危害"}]'::JSONB, 1, '在高壓架空電線下方施工，最主要的危害是電擊（感電），設備或機具若碰觸到帶電線路，會造成嚴重傷亡。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-015', 'osh-a', 'osh-a-ch2', '依規定，一般化學品的物質安全資料表（SDS）應在採購後何時提供給使用者？', '[{"key": "A", "text": "使用前"}, {"key": "B", "text": "交貨時隨附"}, {"key": "C", "text": "採購後30天內"}, {"key": "D", "text": "勞工要求時才需提供"}]'::JSONB, 1, '依職安法，雇主應確保危害性化學品在使用前，SDS（安全資料表）已提供給相關勞工，通常在交貨時隨附。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-016', 'osh-a', 'osh-a-ch2', '手持式電動工具的使用，何種情況下觸電風險最高？', '[{"key": "A", "text": "在乾燥室內使用"}, {"key": "B", "text": "在潮濕或潮濕場所使用"}, {"key": "C", "text": "穿著厚底鞋作業"}, {"key": "D", "text": "使用雙重絕緣工具"}]'::JSONB, 1, '潮濕環境下（如戶外、地下、鑄造場等），人體電阻降低，觸電電流增大，電擊（感電）風險最高。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-017', 'osh-a', 'osh-a-ch2', '「物理性爆炸」與「化學性爆炸」的主要差異為何？', '[{"key": "A", "text": "兩者沒有本質差異"}, {"key": "B", "text": "物理性爆炸源於壓力突然釋放，化學性爆炸涉及化學反應"}, {"key": "C", "text": "物理性爆炸比化學性爆炸更危險"}, {"key": "D", "text": "化學性爆炸不產生高溫"}]'::JSONB, 1, '物理性爆炸如鍋爐或高壓氣體容器破裂，源於壓力突然釋放；化學性爆炸如火藥爆炸，涉及快速氧化等化學反應並釋放大量能量。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-018', 'osh-a', 'osh-a-ch2', '「可燃性氣體」爆炸需要同時具備哪三個條件（火災三角形）？', '[{"key": "A", "text": "可燃物、助燃劑、引火源"}, {"key": "B", "text": "可燃物、濕度、溫度"}, {"key": "C", "text": "可燃物、低溫、高壓"}, {"key": "D", "text": "助燃劑、水分、溫度"}]'::JSONB, 0, '火災（爆炸）三角形：可燃物（Fuel）+ 助燃劑（Oxidizer，通常是氧氣）+ 引火源（Ignition Source），三者缺一不可。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-019', 'osh-a', 'osh-a-ch2', '下列何者是預防機械傷害（夾捲）最有效的工程控制措施？', '[{"key": "A", "text": "對機械部件噴漆提醒"}, {"key": "B", "text": "設置固定式安全護罩（Fixed Guard）"}, {"key": "C", "text": "張貼警告標示"}, {"key": "D", "text": "教育訓練工人注意"}]'::JSONB, 1, '固定式安全護罩是直接覆蓋危險運動部件的工程控制，可有效防止肢體進入夾捲區，是最有效的機械安全措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-020', 'osh-a', 'osh-a-ch2', '依「鉛中毒預防規則」，鉛作業場所的吸菸及飲食行為是否被允許？', '[{"key": "A", "text": "允許，但需在休息時間進行"}, {"key": "B", "text": "嚴格禁止在作業場所飲食吸菸"}, {"key": "C", "text": "只允許飲水"}, {"key": "D", "text": "雇主自行規定"}]'::JSONB, 1, '依《鉛中毒預防規則》，鉛作業場所嚴格禁止飲食、吸菸，以防止鉛由口腔途徑進入人體。作業後必須徹底洗手。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-021', 'osh-a', 'osh-a-ch2', '對於起重機作業，「額定荷重」的定義為何？', '[{"key": "A", "text": "起重機最大設計荷重的120%"}, {"key": "B", "text": "起重機在各種作業條件下可安全吊升的最大荷重"}, {"key": "C", "text": "起重機自重加上吊具重量"}, {"key": "D", "text": "起重機在最差條件下的荷重"}]'::JSONB, 1, '額定荷重（Rated Capacity/SWL, Safe Working Load）是起重機在特定作業狀況（臂長、作業半徑等）下，可安全吊升的最大荷重。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-022', 'osh-a', 'osh-a-ch2', '下列何者不是焊接作業的主要危害？', '[{"key": "A", "text": "弧光傷害眼睛"}, {"key": "B", "text": "有毒焊接煙塵"}, {"key": "C", "text": "觸電危害"}, {"key": "D", "text": "噪音污染"}]'::JSONB, 3, '焊接主要危害包括弧光（紫外線/紅外線）傷眼、有毒金屬焰（如錳、氧化鐵）、觸電（尤其是電弧焊）、火災爆炸。噪音非焊接的主要危害。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-023', 'osh-a', 'osh-a-ch2', '實施高架作業前，應考慮的主要安全措施為何？', '[{"key": "A", "text": "確認天氣良好"}, {"key": "B", "text": "評估跌落高度與使用適當防護設備（護欄、安全網、安全帶）"}, {"key": "C", "text": "提高日照強度"}, {"key": "D", "text": "僅提醒工人注意"}]'::JSONB, 1, '高架作業前應確認作業高度、設置護欄或安全網（工程控制），若無法設置則使用安全帶（個人防護），並評估作業環境。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-024', 'osh-a', 'osh-a-ch2', '「選擇性聽力損失（Noise-Induced Hearing Loss）」最先受損的頻率為何？', '[{"key": "A", "text": "250Hz（低頻）"}, {"key": "B", "text": "1000Hz"}, {"key": "C", "text": "4000Hz（高頻）"}, {"key": "D", "text": "所有頻率同時受損"}]'::JSONB, 2, '噪音性聽力損失（NIHL）最先且最典型受損的是4000Hz（4kHz）頻率，在聽力圖上呈現「4kHz缺口（Notch）」。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-025', 'osh-a', 'osh-a-ch2', '依《危險性機械及設備安全檢查規則》，鍋爐的使用前檢查由誰執行？', '[{"key": "A", "text": "雇主自行執行"}, {"key": "B", "text": "勞動部指定之檢查機構"}, {"key": "C", "text": "地方衛生局"}, {"key": "D", "text": "ISO認證機構"}]'::JSONB, 1, '依規則，鍋爐、壓力容器、起重機等危險性機械或設備，使用前須申請勞動部指定之檢查機構實施竣工/定期檢查。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-026', 'osh-a', 'osh-a-ch2', '下列哪種呼吸防護具適用於氧氣濃度不足的環境？', '[{"key": "A", "text": "防塵口罩"}, {"key": "B", "text": "防毒面具（活性碳過濾）"}, {"key": "C", "text": "供氣式呼吸防護具（SCBA/空氣瓶）"}, {"key": "D", "text": "有機蒸氣面具"}]'::JSONB, 2, '缺氧環境（<18%氧氣）必須使用供氣式呼吸防護具（如自攜式空氣呼吸器SCBA），依靠外部供氣，不能使用依賴現場空氣的濾式防毒面具。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-027', 'osh-a', 'osh-a-ch2', '「局部排氣裝置（LEV）」的設計目的為何？', '[{"key": "A", "text": "提供新鮮空氣給工人"}, {"key": "B", "text": "在危害物質散布至工作環境前，從發生源直接排除"}, {"key": "C", "text": "稀釋整體環境中的有害物"}, {"key": "D", "text": "降低作業場所溫度"}]'::JSONB, 1, '局部排氣裝置（Local Exhaust Ventilation）在危害物質（粉塵、有機溶劑蒸氣等）從發生源散布前，直接從源頭捕集並排除，效果優於整體換氣。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-028', 'osh-a', 'osh-a-ch2', '依規定，進入局限空間前必須執行的氣體監測不包含下列何者？', '[{"key": "A", "text": "氧氣濃度"}, {"key": "B", "text": "可燃性氣體濃度"}, {"key": "C", "text": "有害氣體（如H2S、CO）濃度"}, {"key": "D", "text": "二氧化碳產生量"}]'::JSONB, 3, '進入局限空間前必測：①氧氣濃度（≥18%）②可燃氣體濃度（<爆炸下限25%）③有毒氣體（H2S、CO等）。CO2雖需注意，但法規主要規定前三項。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-029', 'osh-a', 'osh-a-ch2', '下列何者是防止工作場所火災爆炸最基本的工程控制措施？', '[{"key": "A", "text": "配置滅火器"}, {"key": "B", "text": "消除或隔離引火源"}, {"key": "C", "text": "訓練工人緊急疏散"}, {"key": "D", "text": "定期演練消防行動"}]'::JSONB, 1, '防止火災爆炸最根本的工程控制是消除或隔離引火源（如防爆電器、禁止明火、靜電接地等），從源頭消除爆炸三角形的一個要素。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-030', 'osh-a', 'osh-a-ch2', '下列何者是工業界常用的「連鎖裝置（Interlock）」主要用途？', '[{"key": "A", "text": "防止設備被盜"}, {"key": "B", "text": "確保防護設備被移除時機器自動停機"}, {"key": "C", "text": "記錄設備使用時間"}, {"key": "D", "text": "控制設備溫度"}]'::JSONB, 1, '連鎖裝置（Interlock）的主要安全用途是確保防護設備（護罩、護欄）被移除或開啟時，機器自動停機，防止人員在機器運轉時接觸危險部件。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-031', 'osh-a', 'osh-a-ch2', '搬運重物時，正確的人工物料搬運（Manual Handling）姿勢為何？', '[{"key": "A", "text": "彎腰用背部力量搬起"}, {"key": "B", "text": "保持背部挺直，以腿部肌肉出力搬起"}, {"key": "C", "text": "扭轉身體抬起"}, {"key": "D", "text": "只用手臂力量"}]'::JSONB, 1, '正確搬運姿勢：保持背部挺直、屈膝蹲低，靠近重物，用腿部肌肉（大肌群）出力，避免背部彎曲扭轉以防腰傷。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-032', 'osh-a', 'osh-a-ch2', '「化學品暴露限值（OEL/TLV）」的定義最接近何者？', '[{"key": "A", "text": "任何暴露都有害的濃度"}, {"key": "B", "text": "大部分工作者每日反覆暴露而不造成不良健康影響的濃度"}, {"key": "C", "text": "立即危及生命的濃度"}, {"key": "D", "text": "引發急性中毒的濃度"}]'::JSONB, 1, 'OEL（職業暴露限值）如ACGIH的TLV-TWA，指幾乎所有工作者每天8小時、每週40小時反覆暴露，不致對健康產生不良影響的平均濃度。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch2-033', 'osh-a', 'osh-a-ch2', '工作場所的「應急逃生路線」設計，應遵循哪項原則？', '[{"key": "A", "text": "路線越多越好，至少10條"}, {"key": "B", "text": "緊急出口應鎖住以防入侵"}, {"key": "C", "text": "確保逃生路徑保持暢通，標示清楚且有緊急照明"}, {"key": "D", "text": "逃生路線設計不需考慮殘障人士"}]'::JSONB, 2, '應急逃生路線設計應：路徑暢通無障礙物、有清楚的緊急出口標示、具備緊急照明、至少有兩個獨立方向的逃生路線，並考慮行動不便人員。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-001', 'osh-a', 'osh-a-ch3', '一般健康檢查的紀錄應保存幾年？', '[{"key": "A", "text": "3年"}, {"key": "B", "text": "5年"}, {"key": "C", "text": "7年"}, {"key": "D", "text": "10年"}]'::JSONB, 2, '依《勞工健康保護規則》，雇主對勞工一般健康檢查紀錄應保存7年；特殊健康檢查紀錄保存10年以上（部分游離輻射作業30年）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-002', 'osh-a', 'osh-a-ch3', '特殊作業勞工每年應接受幾次特殊健康檢查？', '[{"key": "A", "text": "1次"}, {"key": "B", "text": "2次"}, {"key": "C", "text": "3次"}, {"key": "D", "text": "視作業類別而定"}]'::JSONB, 0, '依《勞工健康保護規則》，從事特別危害健康作業的勞工，雇主每年應定期實施1次特殊健康檢查。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-003', 'osh-a', 'osh-a-ch3', '工作場所噪音超過幾dB時，應採取工程控制等措施？', '[{"key": "A", "text": "80dB"}, {"key": "B", "text": "85dB"}, {"key": "C", "text": "90dB"}, {"key": "D", "text": "95dB"}]'::JSONB, 2, '依設施規則，8小時日時量平均音壓級超過90dB時，雇主應採工程控制（如隔音、吸音）、縮短暴露時間等措施。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-004', 'osh-a', 'osh-a-ch3', '高溫場所工作之勞工，每日工作時間不得超過幾小時？', '[{"key": "A", "text": "4小時"}, {"key": "B", "text": "6小時"}, {"key": "C", "text": "8小時"}, {"key": "D", "text": "10小時"}]'::JSONB, 1, '依《高溫作業勞工作息時間標準》，高溫場所工作之勞工每日工作時間不得超過6小時，且應給予適當休息。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-005', 'osh-a', 'osh-a-ch3', '哪種化學物質可能導致「水俁病」？', '[{"key": "A", "text": "鉛化合物"}, {"key": "B", "text": "汞化合物"}, {"key": "C", "text": "鉻化合物"}, {"key": "D", "text": "鎘化合物"}]'::JSONB, 1, '水俁病由有機汞（甲基汞）中毒引起，主要症狀為神經損害、致畸胎。水俁病最早在日本水俁市發現，因工廠排放含汞廢水污染魚類所致。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-006', 'osh-a', 'osh-a-ch3', '黑球溫度測量用黑色銅球直徑應為幾公分？', '[{"key": "A", "text": "10cm"}, {"key": "B", "text": "12cm"}, {"key": "C", "text": "15cm"}, {"key": "D", "text": "20cm"}]'::JSONB, 2, '黑球溫度計使用直徑15公分的中空黑色銅球，插入溫度計量取輻射熱效應，代表環境輻射熱。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-007', 'osh-a', 'osh-a-ch3', '「鎘」中毒引起的職業病稱為什麼？', '[{"key": "A", "text": "矽肺症"}, {"key": "B", "text": "痛痛病"}, {"key": "C", "text": "水俁病"}, {"key": "D", "text": "塵肺症"}]'::JSONB, 1, '鎘中毒可引起「痛痛病」（又稱伊泰伊泰病），主要影響腎臟和骨骼，1955年首先在日本富山縣神通川流域發現。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-008', 'osh-a', 'osh-a-ch3', '「游離輻射」對人體最敏感的組織為何？', '[{"key": "A", "text": "骨骼"}, {"key": "B", "text": "造血器官（骨髓）"}, {"key": "C", "text": "皮膚"}, {"key": "D", "text": "神經系統"}]'::JSONB, 1, '造血器官（骨髓）、性腺、眼晶狀體對游離輻射最為敏感，骨髓受輻射損傷可造成造血功能障礙。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-009', 'osh-a', 'osh-a-ch3', '預防矽肺症（職業性塵肺病），最根本的控制方法為何？', '[{"key": "A", "text": "定期胸部X光檢查"}, {"key": "B", "text": "使用有效的防塵口罩"}, {"key": "C", "text": "控制作業環境粉塵濃度（工程控制）"}, {"key": "D", "text": "縮短工作時數"}]'::JSONB, 2, '矽肺症最根本的預防是控制作業環境中游離二氧化矽（SiO2）粉塵濃度（工程控制），如濕式作業、局部排氣，而非依賴個人防護具。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-010', 'osh-a', 'osh-a-ch3', '「職業性噪音引起的聽力損失（NIHL）」最先發生在哪個頻率？', '[{"key": "A", "text": "250Hz"}, {"key": "B", "text": "1,000Hz"}, {"key": "C", "text": "4,000Hz"}, {"key": "D", "text": "8,000Hz"}]'::JSONB, 2, 'NIHL（噪音性聽力損失）最先且典型受損頻率為4,000Hz，在聽力圖上呈現「4kHz缺口（Notch）」現象，早期無明顯主觀感受。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-011', 'osh-a', 'osh-a-ch3', '「全身振動」主要危害哪個系統？', '[{"key": "A", "text": "消化系統"}, {"key": "B", "text": "呼吸系統"}, {"key": "C", "text": "脊椎和下背部（肌肉骨骼系統）"}, {"key": "D", "text": "視覺系統"}]'::JSONB, 2, '全身振動（WBV，如搭乘工程機械、車輛等）主要危害脊椎和下背部，可引起腰痛、椎間盤損傷等肌肉骨骼疾病。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-012', 'osh-a', 'osh-a-ch3', '「手臂振動症候群」（HAV）的主要症狀為何？', '[{"key": "A", "text": "手臂骨折"}, {"key": "B", "text": "手指末梢血液循環障礙（白指症）"}, {"key": "C", "text": "手腕扭傷"}, {"key": "D", "text": "肩部脫臼"}]'::JSONB, 1, '手臂振動症候群（Hand-Arm Vibration Syndrome，HAVS）主要症狀是Raynaud現象（白指症），即手指末梢血液循環障礙，手指在寒冷時出現蒼白、麻木。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-013', 'osh-a', 'osh-a-ch3', '「人因工程」(Ergonomics)的目的在於何者？', '[{"key": "A", "text": "提高機器效率"}, {"key": "B", "text": "設計工作以適合工作者的能力與限制，減少職業傷害"}, {"key": "C", "text": "增加工作強度"}, {"key": "D", "text": "降低設備成本"}]'::JSONB, 1, '人因工程（Ergonomics）的目的是透過設計工作、工具、工作站，使其符合人體結構和能力，減少職業性肌肉骨骼傷害（MSD），提升效率與舒適性。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-014', 'osh-a', 'osh-a-ch3', '長期暴露於有機溶劑可能引起哪種職業病？', '[{"key": "A", "text": "矽肺症"}, {"key": "B", "text": "塵肺症"}, {"key": "C", "text": "有機溶劑中毒（肝腎傷害、神經毒性）"}, {"key": "D", "text": "噪音性聽力損失"}]'::JSONB, 2, '長期暴露有機溶劑（苯、甲苯、二甲苯等）可引起慢性有機溶劑中毒，症狀包括肝腎功能損傷、中樞神經系統傷害（頭暈、認知障礙）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-015', 'osh-a', 'osh-a-ch3', '「塵肺症」是由什麼原因引起的職業病？', '[{"key": "A", "text": "長期高溫作業"}, {"key": "B", "text": "長期吸入無機粉塵沉積在肺部"}, {"key": "C", "text": "接觸有機溶劑"}, {"key": "D", "text": "重金屬中毒"}]'::JSONB, 1, '塵肺症（Pneumoconiosis）是因長期吸入礦物性/無機粉塵（如矽塵、石綿、煤塵）沉積在肺部，引起纖維化病變，最常見的是矽肺症。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-016', 'osh-a', 'osh-a-ch3', '依《勞工健康保護規則》，從事哪類作業的勞工，健康檢查紀錄需保存30年？', '[{"key": "A", "text": "高溫作業"}, {"key": "B", "text": "粉塵作業"}, {"key": "C", "text": "游離輻射作業"}, {"key": "D", "text": "有機溶劑作業"}]'::JSONB, 2, '依規則，從事游離輻射作業勞工的特殊健康檢查紀錄，保存期限最長，應保存至少30年（其他特殊作業一般為10年）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-017', 'osh-a', 'osh-a-ch3', '「職業性皮膚病」最常見的致因為何？', '[{"key": "A", "text": "紫外線過度暴露"}, {"key": "B", "text": "接觸刺激性或致敏性化學品（接觸性皮膚炎）"}, {"key": "C", "text": "振動暴露"}, {"key": "D", "text": "電磁波暴露"}]'::JSONB, 1, '職業性皮膚病最常見的是接觸性皮膚炎（Contact Dermatitis），由直接接觸刺激性物質（如清潔劑、酸鹼）或致敏物質引起，占職業病相當大比例。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-018', 'osh-a', 'osh-a-ch3', '「石綿（Asbestos）」接觸最主要引起的疾病為何？', '[{"key": "A", "text": "矽肺症"}, {"key": "B", "text": "石綿肺症與間皮瘤（Mesothelioma）"}, {"key": "C", "text": "鉛中毒"}, {"key": "D", "text": "噪音性聽力損失"}]'::JSONB, 1, '石綿接觸可引起石綿肺症（Asbestosis）、肺癌及惡性間皮瘤（Mesothelioma，主要發生在胸膜），潛伏期可長達20~40年。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-019', 'osh-a', 'osh-a-ch3', '「工作壓力」引起的健康問題，屬於何種職業危害？', '[{"key": "A", "text": "物理性危害"}, {"key": "B", "text": "化學性危害"}, {"key": "C", "text": "心理社會性危害（Psychosocial Hazard）"}, {"key": "D", "text": "生物性危害"}]'::JSONB, 2, '工作壓力、暴力、騷擾等屬於心理社會性危害（Psychosocial Hazard），可引起工作倦怠、焦慮、抑鬱、心血管疾病等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-020', 'osh-a', 'osh-a-ch3', '「物理性危害」包含下列何者？', '[{"key": "A", "text": "有機溶劑"}, {"key": "B", "text": "病毒感染"}, {"key": "C", "text": "噪音、振動、輻射"}, {"key": "D", "text": "工作壓力"}]'::JSONB, 2, '物理性危害包括噪音、振動、游離/非游離輻射、極端溫度（高溫、低溫）、氣壓等；化學性危害是各種有害化學品；生物性是微生物；心理社會是壓力、暴力。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-021', 'osh-a', 'osh-a-ch3', '「呼吸性粉塵（Respirable Dust）」的特性為何？', '[{"key": "A", "text": "粒徑大於100微米"}, {"key": "B", "text": "粒徑小於10微米，可到達肺泡"}, {"key": "C", "text": "顏色呈白色"}, {"key": "D", "text": "密度特別高"}]'::JSONB, 1, '呼吸性粉塵指粒徑較小（一般<10µm，尤其<4µm）的粉塵，能穿越上呼吸道防禦機制，沉積在肺泡，造成塵肺症等嚴重疾病。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-022', 'osh-a', 'osh-a-ch3', '「生物性危害（Biological Hazard）」最常見於哪種工作環境？', '[{"key": "A", "text": "電子工廠"}, {"key": "B", "text": "醫療機構、農業和污水處理"}, {"key": "C", "text": "金屬冶煉廠"}, {"key": "D", "text": "辦公室"}]'::JSONB, 1, '生物性危害（如細菌、病毒、真菌、寄生蟲等）最常見於醫療機構（血液傳播疾病）、農業（人畜共通傳染病）、污水處理（腸道病原體）等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-023', 'osh-a', 'osh-a-ch3', '「熱衰竭（Heat Exhaustion）」與「熱中暑（Heat Stroke）」的最主要區別為何？', '[{"key": "A", "text": "兩者症狀完全相同"}, {"key": "B", "text": "熱中暑有中樞體溫調節失效（高燒>40°C）且為生命威脅"}, {"key": "C", "text": "熱衰竭比熱中暑嚴重"}, {"key": "D", "text": "熱衰竭須立即送醫，熱中暑可自行恢復"}]'::JSONB, 1, '熱衰竭：大量流汗、頭暈、皮膚濕冷，體溫可能正常或略升，通常可恢復。熱中暑（Heat Stroke）：體溫調節失效、體溫>40°C、皮膚乾燥熱、可能無汗、意識障礙，屬醫療緊急狀況。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-024', 'osh-a', 'osh-a-ch3', '噪音暴露的控制措施，依優先順序應為何？', '[{"key": "A", "text": "先提供耳塞，再考慮工程控制"}, {"key": "B", "text": "消除或降低噪音源→工程隔音→行政管理（輪班）→個人防護（耳塞/耳罩）"}, {"key": "C", "text": "只需要工人戴耳塞"}, {"key": "D", "text": "行政管理優先於工程控制"}]'::JSONB, 1, '噪音控制優先序：①消除/替換噪音源②工程控制（隔音、吸音、防振）③行政管理（工作輪換縮短暴露）④個人防護（耳塞、耳罩）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-025', 'osh-a', 'osh-a-ch3', '「職業暴露限值（OEL）時間加權平均值（TWA）」的計算基礎為何？', '[{"key": "A", "text": "每小時最大暴露濃度"}, {"key": "B", "text": "8小時工作日的平均暴露濃度"}, {"key": "C", "text": "30分鐘最大暴露值"}, {"key": "D", "text": "單次暴露的峰值"}]'::JSONB, 1, 'OEL-TWA（時間加權平均值）以8小時工作日為基礎，計算整個工作班次的加權平均暴露濃度，代表長期反覆暴露的健康基準值。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-026', 'osh-a', 'osh-a-ch3', '依《勞工健康保護規則》，健康管理的分級中，第一級管理的意義為何？', '[{"key": "A", "text": "需要立即停止作業"}, {"key": "B", "text": "健康正常，可繼續工作並進行一般健康促進"}, {"key": "C", "text": "需要特殊醫療介入"}, {"key": "D", "text": "限制從事特定作業"}]'::JSONB, 1, '健康管理分級：第一級（正常）繼續工作；第二級（異常但未達職業病標準）加強追蹤；第三級（疑似職業病）需醫師評估；第四級（確認職業病）需醫療處置。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-027', 'osh-a', 'osh-a-ch3', '「非游離輻射（Non-Ionizing Radiation）」包含下列何者？', '[{"key": "A", "text": "X射線"}, {"key": "B", "text": "伽瑪射線"}, {"key": "C", "text": "紫外線（UV）、可見光、紅外線（IR）、微波、無線電波"}, {"key": "D", "text": "阿爾法粒子"}]'::JSONB, 2, '非游離輻射包括：紫外線（UV）、可見光、紅外線（IR）、微波（Microwave）、無線電波（RF）等。X射線、伽瑪射線、α/β粒子屬游離輻射。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-028', 'osh-a', 'osh-a-ch3', '「工作場所職業健康護理師」的主要職責不包含下列何者？', '[{"key": "A", "text": "健康評估與監測"}, {"key": "B", "text": "職業危害調查"}, {"key": "C", "text": "診斷治療職業病"}, {"key": "D", "text": "健康諮詢與衛教"}]'::JSONB, 2, '職業健康護理師負責健康評估、監測、職業危害調查、健康諮詢等；「診斷治療職業病」屬醫師職責，護理師不得獨立執行診斷治療。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch3-029', 'osh-a', 'osh-a-ch3', '長期低頻率暴露於游離輻射的慢性效應，下列何者最受關注？', '[{"key": "A", "text": "急性放射症候群"}, {"key": "B", "text": "癌症（尤其是白血病和固態癌）的風險增加"}, {"key": "C", "text": "立即性皮膚灼傷"}, {"key": "D", "text": "神經系統急性損傷"}]'::JSONB, 1, '慢性（低劑量長期）游離輻射暴露最主要的慢性效應是癌症風險增加，包括白血病、甲狀腺癌、骨髓癌等，其影響有數年至數十年的潛伏期。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-001', 'osh-a', 'osh-a-ch4', '甲種職業安全衛生業務主管訓練時數不得少於幾小時？', '[{"key": "A", "text": "21小時"}, {"key": "B", "text": "35小時"}, {"key": "C", "text": "42小時"}, {"key": "D", "text": "115小時"}]'::JSONB, 2, '依《職業安全衛生教育訓練規則》，甲種職安衛業務主管訓練時數不得少於42小時；乙種35小時；丙種21小時。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-002', 'osh-a', 'osh-a-ch4', '職業安全衛生業務主管在職教育訓練應每幾年接受一次？', '[{"key": "A", "text": "1年"}, {"key": "B", "text": "2年"}, {"key": "C", "text": "3年"}, {"key": "D", "text": "5年"}]'::JSONB, 1, '依訓練規則，職安衛業務主管每2年至少應接受在職教育訓練一次，每次不得少於6小時。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-003', 'osh-a', 'osh-a-ch4', '新僱勞工或變更工作前應接受的一般安全衛生教育訓練，時數不得少於幾小時？', '[{"key": "A", "text": "1小時"}, {"key": "B", "text": "2小時"}, {"key": "C", "text": "3小時"}, {"key": "D", "text": "6小時"}]'::JSONB, 2, '依訓練規則第17條，新僱或變更工作前應接受適於工作必要的一般安全衛生教育訓練，不得少於3小時。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-004', 'osh-a', 'osh-a-ch4', '下列哪種人員的訓練時數最長？', '[{"key": "A", "text": "丙種職安衛業務主管"}, {"key": "B", "text": "乙種職安衛業務主管"}, {"key": "C", "text": "甲種職安衛業務主管"}, {"key": "D", "text": "一般勞工"}]'::JSONB, 2, '各級訓練時數：甲種42小時 > 乙種35小時 > 丙種21小時 > 一般勞工3小時。甲種業務主管訓練時數最長。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-005', 'osh-a', 'osh-a-ch4', '依訓練規則，從事缺氧危險作業主管的安全衛生訓練時數為幾小時？', '[{"key": "A", "text": "6小時"}, {"key": "B", "text": "12小時"}, {"key": "C", "text": "18小時"}, {"key": "D", "text": "24小時"}]'::JSONB, 1, '依《職業安全衛生教育訓練規則》，缺氧危險作業主管訓練時數為18小時（依規則規定，請以最新版規則為準）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-006', 'osh-a', 'osh-a-ch4', '「職業安全衛生管理師」與「職業安全衛生管理員」的主要差異為何？', '[{"key": "A", "text": "兩者職責完全相同"}, {"key": "B", "text": "管理師有更高的學歷及實務要求，職責較廣"}, {"key": "C", "text": "管理員比管理師需要更多訓練"}, {"key": "D", "text": "兩者可由同一人擔任"}]'::JSONB, 1, '職安衛管理師需具備特定學歷（如工業安全相關科系）及實務經驗，負責較廣泛的管理工作；管理員資格相對較低，負責較具體的事務性工作。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-007', 'osh-a', 'osh-a-ch4', '緊急應變演練應多久進行一次？', '[{"key": "A", "text": "每年至少一次"}, {"key": "B", "text": "每5年一次"}, {"key": "C", "text": "僅在發生災害後"}, {"key": "D", "text": "不需定期演練"}]'::JSONB, 0, '依規定及管理實務，緊急應變演練（消防演習、疏散演練等）應每年至少實施一次，以確保員工熟悉緊急程序。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-008', 'osh-a', 'osh-a-ch4', '從事「粉塵危害預防」的特定安全衛生教育訓練，內容應包含何者？', '[{"key": "A", "text": "財務管理"}, {"key": "B", "text": "相關法規、粉塵危害、防護具使用及緊急應變"}, {"key": "C", "text": "行銷技巧"}, {"key": "D", "text": "生產效率提升"}]'::JSONB, 1, '特定危害作業的訓練內容須涵蓋：相關法規、危害特性與健康影響、防護設備及個人防護具的使用、緊急應變措施等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-009', 'osh-a', 'osh-a-ch4', '職業安全衛生教育訓練的「成效評估」應包含哪四個層次（依Kirkpatrick模型）？', '[{"key": "A", "text": "理論、實務、考試、應用"}, {"key": "B", "text": "反應、學習、行為、結果"}, {"key": "C", "text": "觀察、訓練、測驗、回顧"}, {"key": "D", "text": "計畫、執行、查核、改善"}]'::JSONB, 1, 'Kirkpatrick四層次評估：Level 1反應（學員滿意度）→Level 2學習（知識/技能獲得）→Level 3行為（工作行為改變）→Level 4結果（組織績效改善）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-010', 'osh-a', 'osh-a-ch4', '依法，雇主應保存教育訓練紀錄幾年？', '[{"key": "A", "text": "1年"}, {"key": "B", "text": "3年"}, {"key": "C", "text": "5年"}, {"key": "D", "text": "10年"}]'::JSONB, 1, '依《職業安全衛生教育訓練規則》，雇主應保存教育訓練紀錄，一般應保存3年以備查核。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-011', 'osh-a', 'osh-a-ch4', '哪種教育訓練方式最適合訓練工作人員的「技能操作」？', '[{"key": "A", "text": "講課（課堂授課）"}, {"key": "B", "text": "閱讀教材"}, {"key": "C", "text": "實作（On-the-Job Training, OJT）"}, {"key": "D", "text": "線上測驗"}]'::JSONB, 2, '技能操作訓練最有效的方式是實作訓練（OJT, On-the-Job Training），在實際工作環境中演示和練習，比單純課堂教學更有效。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-012', 'osh-a', 'osh-a-ch4', '從事「高壓氣體」作業的勞工，依規定需接受幾小時以上的安全教育訓練？', '[{"key": "A", "text": "3小時"}, {"key": "B", "text": "6小時"}, {"key": "C", "text": "18小時"}, {"key": "D", "text": "依雇主規定"}]'::JSONB, 2, '依訓練規則，高壓氣體製造安全技術員等特定職類需接受18小時以上的專業訓練（各職類時數依規則規定）。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-013', 'osh-a', 'osh-a-ch4', '「職業安全衛生教育訓練」的主要目的為何？', '[{"key": "A", "text": "增加雇主利潤"}, {"key": "B", "text": "提升勞工的安全衛生知識、技能與態度，預防職業災害"}, {"key": "C", "text": "滿足法規的最低要求"}, {"key": "D", "text": "取代雇主的安全管理責任"}]'::JSONB, 1, '職安衛教育訓練目的是提升工作者的危害認知、安全操作技能及安全態度，進而預防職業災害，保護工作者健康，而非僅為法規合規。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-014', 'osh-a', 'osh-a-ch4', '從事「有機溶劑作業」的相關主管，應接受至少幾小時的專業訓練？', '[{"key": "A", "text": "6小時"}, {"key": "B", "text": "12小時"}, {"key": "C", "text": "18小時"}, {"key": "D", "text": "24小時"}]'::JSONB, 2, '依訓練規則，有機溶劑作業主管需接受18小時以上的訓練，包含法規、危害特性、安全作業程序等。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-015', 'osh-a', 'osh-a-ch4', '教育訓練需求分析（TNA）的目的為何？', '[{"key": "A", "text": "決定訓練預算"}, {"key": "B", "text": "找出組織的訓練需求與差距，確保訓練資源用在最需要的地方"}, {"key": "C", "text": "讓所有員工接受相同訓練"}, {"key": "D", "text": "取得ISO認證"}]'::JSONB, 1, '訓練需求分析（Training Needs Analysis, TNA）的目的是分析組織、工作及個人三個層次的訓練缺口，確保訓練課程針對實際需求，有效使用資源。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-016', 'osh-a', 'osh-a-ch4', '依訓練規則，安全衛生業務主管的訓練機構，需向哪個機關申請認可？', '[{"key": "A", "text": "地方政府"}, {"key": "B", "text": "勞動部"}, {"key": "C", "text": "衛生福利部"}, {"key": "D", "text": "教育部"}]'::JSONB, 1, '依《職業安全衛生教育訓練規則》，辦理安全衛生業務主管訓練的機構，需向中央主管機關（勞動部）申請認可，才可辦理合法訓練。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-017', 'osh-a', 'osh-a-ch4', '「現場教育訓練（OJT）」的優點包含何者？', '[{"key": "A", "text": "成本高，但效果最差"}, {"key": "B", "text": "直接在真實工作環境中訓練，學以致用效果高"}, {"key": "C", "text": "只適合新進員工"}, {"key": "D", "text": "需大量事前準備，彈性差"}]'::JSONB, 1, 'OJT（現場訓練）優點：在真實工作場所訓練、立即應用、成本相對低、可依學員進度調整；缺點是品質取決於師傅素質，有時安全風險較高。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-018', 'osh-a', 'osh-a-ch4', '從事起重機具「操作」的勞工，除了基本3小時訓練外，還需接受哪種特定訓練？', '[{"key": "A", "text": "不需額外訓練"}, {"key": "B", "text": "特定設備的操作訓練及技術士檢定"}, {"key": "C", "text": "只需閱讀操作手冊"}, {"key": "D", "text": "完成在職訓練即可"}]'::JSONB, 1, '操作危險性機械（如固定式起重機）的勞工，除一般訓練外，需接受特定設備操作訓練，部分職類並需取得技術士證照，方可獨立操作。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-019', 'osh-a', 'osh-a-ch4', '「安全觀察（Safety Observation）」作為訓練工具的主要目的為何？', '[{"key": "A", "text": "懲處違規員工"}, {"key": "B", "text": "藉由觀察實際工作行為，提供即時回饋，強化安全行為"}, {"key": "C", "text": "記錄員工缺失供日後懲處"}, {"key": "D", "text": "滿足稽核要求"}]'::JSONB, 1, '安全觀察程序（Behavior-Based Safety的核心工具）是觀察工作者的實際行為，給予正向鼓勵安全行為、即時糾正不安全行為的回饋，作為行為改變工具。');
INSERT INTO public.questions (id, exam_id, chapter_id, question_text, options, correct_answer, explanation) VALUES ('osh-a-ch4-020', 'osh-a', 'osh-a-ch4', '對於高風險作業（如局限空間、高空作業），訓練後還應採取何種措施確保安全？', '[{"key": "A", "text": "不需額外措施，訓練後即可作業"}, {"key": "B", "text": "需實際演練並取得「許可作業（Permit-To-Work）」才能執行"}, {"key": "C", "text": "只需口頭確認已受訓"}, {"key": "D", "text": "雇主自行決定"}]'::JSONB, 1, '高風險作業（如局限空間進入、高空作業、熱工作業）訓練完成後，作業前仍需申請「工作許可證（Permit-To-Work, PTW）」，確認危害已控制，才能開始作業。');

-- 更新章節題數快取
UPDATE public.chapters SET question_count = (
  SELECT COUNT(*) FROM public.questions WHERE chapter_id = chapters.id AND is_active
);

-- 11.5 預設 App 設定
INSERT INTO public.app_settings (key, value, description) VALUES
('pricing', '{"standard": {"monthly": 199, "quarterly": 499, "annual": 1999}, "pro": {"monthly": 349, "semi_annual": 1849}}'::JSONB, '訂閱方案定價'),
('free_limits', '{"daily_questions": 10, "mock_exam_per_week": 1}'::JSONB, '免費版限制'),
('feature_flags', '{"ai_analysis": false, "leaderboard": false, "referral_program": false}'::JSONB, '功能開關');

-- ═══════════════════════════════════════════════════════════════════
-- 完成！全部表、index、trigger、RLS 與 153 題已建立
-- ═══════════════════════════════════════════════════════════════════
