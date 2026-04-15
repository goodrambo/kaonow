-- ═══════════════════════════════════════════════════════════════════
-- KaoNow Schema v4 — 專門職業及技術人員考試完整擴充
-- ═══════════════════════════════════════════════════════════════════
-- 以 UPSERT 方式同步 25 個專技考試到 exams 表，同時建立章節結構。
-- 可重複執行；現有 osh-a 資料不會被覆蓋（keep_existing:true）
-- ═══════════════════════════════════════════════════════════════════

-- 確保 issuer 和相關欄位存在（以防未執行過 v2/v3）
-- v2 已加 source、source_meta 等；v3 已加 mock_* 欄位


-- ── 乙種職業安全衛生業務主管 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'osh-b', 'prof-exam',
  '乙種職業安全衛生業務主管', '乙種職安衛',
  '中小型事業單位安全衛生管理人員必備，訓練時數 35 小時。是甲種之前的準備證照，內容涵蓋面較廣但深度較淺。', '勞動部職業安全衛生署',
  '筆試・選擇題',
  35,
  '中小型事業單位負責人、管理階層',
  50000,
  FALSE, 'free', 10,
  'https://www.osha.gov.tw',
  'https://www.osha.gov.tw',
  'https://www.osha.gov.tw',
  40,
  60,
  80,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-b-ch0', 'osh-b', 0, '職業安全衛生相關法規', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-b-ch1', 'osh-b', 1, '職業安全衛生管理概論', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-b-ch2', 'osh-b', 2, '安全管理與危害預防', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-b-ch3', 'osh-b', 3, '衛生管理與健康保護', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 丙種職業安全衛生業務主管 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'osh-c', 'prof-exam',
  '丙種職業安全衛生業務主管', '丙種職安衛',
  '小型事業單位基礎職安衛證照，訓練時數 21 小時。適合入門職安衛管理的人員。', '勞動部職業安全衛生署',
  '筆試・選擇題',
  21,
  '小型事業單位負責人、基層主管',
  80000,
  FALSE, 'free', 10,
  'https://www.osha.gov.tw',
  'https://www.osha.gov.tw',
  'https://www.osha.gov.tw',
  40,
  60,
  80,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-c-ch0', 'osh-c', 0, '職業安全衛生法規基礎', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-c-ch1', 'osh-c', 1, '事業單位安全衛生管理', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('osh-c-ch2', 'osh-c', 2, '職業災害案例分析', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 律師考試 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'lawyer', 'prof-exam',
  '律師考試', '律師',
  '考選部辦理，分三階段（選擇題→申論題→錄取）。通過後尚須實習 6 個月才能執業，是法學院畢業生主要職涯起點。', '考選部',
  '筆試（兩階段）',
  NULL,
  '法學院畢業生',
  7000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('lawyer-ch0', 'lawyer', 0, '公法（憲法、行政法）', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('lawyer-ch1', 'lawyer', 1, '民法與民事訴訟法', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('lawyer-ch2', 'lawyer', 2, '刑法與刑事訴訟法', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('lawyer-ch3', 'lawyer', 3, '商事法（公司、票據、保險）', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('lawyer-ch4', 'lawyer', 4, '國文（作文與測驗）', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 會計師考試 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'cpa', 'prof-exam',
  '會計師考試', '會計師',
  '考選部辦理，通過後可簽證財務報表，是財會專業的頂點。5 科筆試，每科平均 50 分以上且有 4 科通過才算考過。', '考選部',
  '筆試・申論題',
  NULL,
  '會計、財金相關科系畢業生',
  4000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  50,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('cpa-ch0', 'cpa', 0, '中級會計學', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('cpa-ch1', 'cpa', 1, '高級會計學', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('cpa-ch2', 'cpa', 2, '審計學', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('cpa-ch3', 'cpa', 3, '成本與管理會計', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('cpa-ch4', 'cpa', 4, '稅務法規', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 記帳士 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'bookkeeper', 'prof-exam',
  '記帳士', '記帳士',
  '協助中小企業辦理帳務、報稅。普考等級，門檻較會計師低，但也是進入財會行業的入門證照。', '考選部',
  '筆試',
  NULL,
  '財會相關從業人員、中小企業主',
  2000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('bookkeeper-ch0', 'bookkeeper', 0, '國文（作文、測驗）', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('bookkeeper-ch1', 'bookkeeper', 1, '會計學概要', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('bookkeeper-ch2', 'bookkeeper', 2, '租稅申報實務', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('bookkeeper-ch3', 'bookkeeper', 3, '稅務相關法規概要', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('bookkeeper-ch4', 'bookkeeper', 4, '記帳相關法規概要', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 醫師考試 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'physician', 'prof-exam',
  '醫師考試', '醫師',
  '考選部辦理，分兩階段（基礎醫學 / 臨床醫學）。通過後經畢業後一般醫學訓練（PGY）才能執業，是台灣執業門檻最高的考試之一。', '考選部',
  '筆試（兩階段）',
  NULL,
  '醫學系學生（四年級以上可報第一階段）',
  1300,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  80,
  100,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physician-ch0', 'physician', 0, '基礎醫學（解剖、生理、生化）', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physician-ch1', 'physician', 1, '病理學與藥理學', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physician-ch2', 'physician', 2, '內科學', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physician-ch3', 'physician', 3, '外科學', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physician-ch4', 'physician', 4, '婦幼與其他臨床科', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 牙醫師考試 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'dentist', 'prof-exam',
  '牙醫師考試', '牙醫師',
  '考選部辦理，分兩階段。牙醫系畢業後的執業門檻，通過後尚須完成 PGY 一般醫學訓練。', '考選部',
  '筆試（兩階段）',
  NULL,
  '牙醫系畢業生',
  500,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  80,
  100,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('dentist-ch0', 'dentist', 0, '牙醫基礎學科', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('dentist-ch1', 'dentist', 1, '口腔病理與放射線', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('dentist-ch2', 'dentist', 2, '補綴、牙髓、膺復', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('dentist-ch3', 'dentist', 3, '口腔外科與牙周', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 中醫師考試 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'tcm-doctor', 'prof-exam',
  '中醫師考試', '中醫師',
  '考選部辦理，中醫系畢業生的執業門檻。考試涵蓋傳統中醫與西醫基礎知識。', '考選部',
  '筆試',
  NULL,
  '中醫系畢業生',
  400,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('tcm-doctor-ch0', 'tcm-doctor', 0, '中醫基礎理論', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('tcm-doctor-ch1', 'tcm-doctor', 1, '中藥學與方劑', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('tcm-doctor-ch2', 'tcm-doctor', 2, '中醫臨床各科', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('tcm-doctor-ch3', 'tcm-doctor', 3, '西醫基礎', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 藥師考試 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'pharmacist', 'prof-exam',
  '藥師考試', '藥師',
  '考選部辦理，分兩階段。藥學系畢業後需通過才能執業，涵蓋藥理、調劑、藥事法規等。', '考選部',
  '筆試（兩階段）',
  NULL,
  '藥學系畢業生',
  2500,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('pharmacist-ch0', 'pharmacist', 0, '藥理學與藥物治療', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('pharmacist-ch1', 'pharmacist', 1, '藥劑學', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('pharmacist-ch2', 'pharmacist', 2, '藥物分析', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('pharmacist-ch3', 'pharmacist', 3, '生藥學與中藥學', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('pharmacist-ch4', 'pharmacist', 4, '藥事行政與法規', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 護理師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'nurse', 'prof-exam',
  '護理師', '護理師',
  '考選部辦理，護理系畢業後的執業資格。全台每年最多人報考的專技考試之一，及格率約 40-50%。', '考選部',
  '筆試',
  NULL,
  '護理系畢業生',
  6000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  80,
  100,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('nurse-ch0', 'nurse', 0, '基本護理學', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('nurse-ch1', 'nurse', 1, '內外科護理學', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('nurse-ch2', 'nurse', 2, '婦幼護理學', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('nurse-ch3', 'nurse', 3, '精神護理學', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('nurse-ch4', 'nurse', 4, '社區衛生護理學', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 物理治療師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'physical-therapist', 'prof-exam',
  '物理治療師', '物理治療師',
  '物理治療系畢業的執業門檻。考試內容涵蓋神經、骨科、小兒、心肺等四大領域。', '考選部',
  '筆試',
  NULL,
  '物理治療系畢業生',
  800,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physical-therapist-ch0', 'physical-therapist', 0, '基礎醫學與運動生理', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physical-therapist-ch1', 'physical-therapist', 1, '神經物理治療', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physical-therapist-ch2', 'physical-therapist', 2, '骨科物理治療', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('physical-therapist-ch3', 'physical-therapist', 3, '小兒與心肺物理治療', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 職能治療師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'occupational-therapist', 'prof-exam',
  '職能治療師', '職能治療師',
  '職能治療系畢業的執業門檻。協助病患恢復日常活動能力，涵蓋生理、小兒、精神、老人四大領域。', '考選部',
  '筆試',
  NULL,
  '職能治療系畢業生',
  600,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('occupational-therapist-ch0', 'occupational-therapist', 0, '生理職能治療', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('occupational-therapist-ch1', 'occupational-therapist', 1, '精神職能治療', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('occupational-therapist-ch2', 'occupational-therapist', 2, '小兒職能治療', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('occupational-therapist-ch3', 'occupational-therapist', 3, '老人與健康促進', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 社會工作師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'social-worker', 'prof-exam',
  '社會工作師', '社工師',
  '社會工作相關科系畢業後的執業證照，是社福機構、醫院社工部門的必備資格。', '考選部',
  '筆試',
  NULL,
  '社工、社福相關科系畢業生',
  3000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('social-worker-ch0', 'social-worker', 0, '社會工作', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('social-worker-ch1', 'social-worker', 1, '社會政策與立法', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('social-worker-ch2', 'social-worker', 2, '人類行為與社會環境', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('social-worker-ch3', 'social-worker', 3, '社會工作研究方法', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('social-worker-ch4', 'social-worker', 4, '社會工作直接服務', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 公共衛生師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'public-health-specialist', 'prof-exam',
  '公共衛生師', '公共衛生師',
  '2020 年新設的專技考試。涵蓋生物統計、流行病學、環境與職業衛生、衛生行政與管理、健康促進。', '考選部',
  '筆試',
  NULL,
  '公共衛生相關科系畢業生',
  700,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('public-health-specialist-ch0', 'public-health-specialist', 0, '生物統計學', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('public-health-specialist-ch1', 'public-health-specialist', 1, '流行病學', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('public-health-specialist-ch2', 'public-health-specialist', 2, '環境與職業衛生', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('public-health-specialist-ch3', 'public-health-specialist', 3, '衛生行政與管理', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('public-health-specialist-ch4', 'public-health-specialist', 4, '健康社會行為與健康促進', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 建築師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'architect', 'prof-exam',
  '建築師', '建築師',
  '考選部辦理。6 科筆試 + 設計題，是建築業頂點證照。通過後可開業設計、監造建築物。', '考選部',
  '筆試＋設計',
  NULL,
  '建築相關科系畢業生，須具實務經驗',
  1000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('architect-ch0', 'architect', 0, '建築計畫與設計', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('architect-ch1', 'architect', 1, '建築構造與施工', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('architect-ch2', 'architect', 2, '敷地計畫與都市設計', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('architect-ch3', 'architect', 3, '營建法規', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('architect-ch4', 'architect', 4, '建築環境控制', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('architect-ch5', 'architect', 5, '建築結構', 6)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 土木工程技師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'civil-engineer', 'prof-exam',
  '土木工程技師', '土木技師',
  '考選部辦理技師考試，土木工程相關科系畢業後的進階證照。通過後可簽證結構設計。', '考選部',
  '筆試',
  NULL,
  '土木、結構相關科系畢業生',
  1500,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  40,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('civil-engineer-ch0', 'civil-engineer', 0, '結構分析', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('civil-engineer-ch1', 'civil-engineer', 1, '結構設計（RC、鋼結構）', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('civil-engineer-ch2', 'civil-engineer', 2, '大地工程與工程地質', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('civil-engineer-ch3', 'civil-engineer', 3, '測量學', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('civil-engineer-ch4', 'civil-engineer', 4, '營建管理與施工', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 電機工程技師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'electrical-engineer', 'prof-exam',
  '電機工程技師', '電機技師',
  '考選部辦理技師考試。電機工程相關從業者的進階認證，涵蓋電力系統、電機機械、控制系統等。', '考選部',
  '筆試',
  NULL,
  '電機、電子相關科系畢業生',
  1000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  40,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('electrical-engineer-ch0', 'electrical-engineer', 0, '電路學', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('electrical-engineer-ch1', 'electrical-engineer', 1, '電機機械', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('electrical-engineer-ch2', 'electrical-engineer', 2, '電力系統', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('electrical-engineer-ch3', 'electrical-engineer', 3, '控制系統', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('electrical-engineer-ch4', 'electrical-engineer', 4, '電磁學', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 不動產估價師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'real-estate-appraiser', 'prof-exam',
  '不動產估價師', '不動產估價師',
  '考選部辦理，從事不動產價值鑑定的執業資格。薪資水準高，搭配地政士、不動產經紀人是業界「三合一」組合。', '考選部',
  '筆試＋答題卷',
  NULL,
  '地政、土木、建築、財經相關科系畢業生',
  1500,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-appraiser-ch0', 'real-estate-appraiser', 0, '不動產估價理論', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-appraiser-ch1', 'real-estate-appraiser', 1, '不動產估價實務', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-appraiser-ch2', 'real-estate-appraiser', 2, '不動產投資分析', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-appraiser-ch3', 'real-estate-appraiser', 3, '土地法規', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-appraiser-ch4', 'real-estate-appraiser', 4, '不動產經濟學', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 不動產經紀人 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'real-estate', 'prof-exam',
  '不動產經紀人', '不動產經紀人',
  '房仲業從業必備。依不動產經紀業管理條例，房屋仲介人員每 20 人至少要有一位不動產經紀人。', '考選部',
  '筆試',
  NULL,
  '房地產業、法律、財經相關從業人員',
  5000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-ch0', 'real-estate', 0, '民法概要', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-ch1', 'real-estate', 1, '不動產估價概要', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-ch2', 'real-estate', 2, '不動產經紀相關法規', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('real-estate-ch3', 'real-estate', 3, '土地法與稅法', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 地政士（土地代書） ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'land-agent', 'prof-exam',
  '地政士（土地代書）', '地政士',
  '俗稱「土地代書」。辦理土地登記、不動產買賣過戶、契約書撰擬等，市場穩定、資格含金量高。', '考選部',
  '筆試',
  NULL,
  '地政、法律、財經相關從業人員',
  3000,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  50,
  90,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('land-agent-ch0', 'land-agent', 0, '民法概要（物權、債編）', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('land-agent-ch1', 'land-agent', 1, '土地法規', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('land-agent-ch2', 'land-agent', 2, '土地登記實務', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('land-agent-ch3', 'land-agent', 3, '土地稅法', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('land-agent-ch4', 'land-agent', 4, '信託法概要', 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('land-agent-ch5', 'land-agent', 5, '國文（作文與測驗）', 6)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 保險代理人 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'insurance-agent', 'prof-exam',
  '保險代理人', '保險代理人',
  '考選部辦理。取得後可開設保險代理人公司，代理多家保險公司業務。', '考選部',
  '筆試',
  NULL,
  '保險業、金融業從業人員',
  500,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  40,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('insurance-agent-ch0', 'insurance-agent', 0, '保險學概要', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('insurance-agent-ch1', 'insurance-agent', 1, '保險法規概要', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('insurance-agent-ch2', 'insurance-agent', 2, '人身保險', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('insurance-agent-ch3', 'insurance-agent', 3, '財產保險', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 民間公證人 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'notary-public', 'prof-exam',
  '民間公證人', '民間公證人',
  '專門辦理法院認證文書、契約公證的執業資格。需具律師資格 3 年以上或相關經驗才能應考。', '考選部',
  '筆試',
  NULL,
  '律師、法律系畢業且有實務經驗者',
  200,
  FALSE, 'free', 10,
  'https://wwwc.moex.gov.tw/main/exam/wFrmExamInformation.aspx',
  'https://register.moex.gov.tw',
  'https://wwwq.moex.gov.tw',
  40,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('notary-public-ch0', 'notary-public', 0, '公證法規', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('notary-public-ch1', 'notary-public', 1, '民法概要', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('notary-public-ch2', 'notary-public', 2, '商事法', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('notary-public-ch3', 'notary-public', 3, '國際私法與涉外法律', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── 導遊人員（華語/外語） ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'guide', 'prof-exam',
  '導遊人員（華語/外語）', '導遊領隊',
  '交通部觀光署主管。觀光業必備，分華語導遊、外語導遊、華語領隊、外語領隊四類。', '交通部觀光署',
  '筆試',
  NULL,
  '觀光、外語相關從業者',
  3000,
  FALSE, 'free', 10,
  'https://register-exam.tad.gov.tw/tourism',
  'https://register-exam.tad.gov.tw/tourism',
  'https://register-exam.tad.gov.tw/tourism',
  80,
  80,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('guide-ch0', 'guide', 0, '觀光資源概要', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('guide-ch1', 'guide', 1, '導遊實務', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('guide-ch2', 'guide', 2, '觀光行政與法規', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('guide-ch3', 'guide', 3, '兩岸與國際禮儀', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ── AI 應用規劃師 ──
INSERT INTO public.exams (
  id, category_id, name, short_name, description, issuer, exam_format,
  duration_hours, target_audience, annual_candidates,
  is_available, tier_requirement, free_daily_question_limit,
  official_url, registration_url, official_bank_url,
  mock_question_count, mock_time_minutes, mock_pass_score,
  sort_order
) VALUES (
  'ai-planner', 'prof-exam',
  'AI 應用規劃師', 'AI 應用規劃師',
  '經濟部產業發展署推出的 AI 產業人才認證。涵蓋 AI 應用導入、專案管理、場域規劃。', '經濟部產業發展署',
  '筆試＋實作',
  NULL,
  'IT/PM/顧問、想轉 AI 職缺者',
  5000,
  FALSE, 'free', 10,
  'https://aiplanner.org.tw',
  'https://aiplanner.org.tw',
  'https://aiplanner.org.tw',
  50,
  60,
  60,
  0
) ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  short_name = EXCLUDED.short_name,
  description = EXCLUDED.description,
  issuer = EXCLUDED.issuer,
  exam_format = EXCLUDED.exam_format,
  duration_hours = EXCLUDED.duration_hours,
  target_audience = EXCLUDED.target_audience,
  annual_candidates = EXCLUDED.annual_candidates,
  official_url = EXCLUDED.official_url,
  registration_url = EXCLUDED.registration_url,
  official_bank_url = EXCLUDED.official_bank_url,
  mock_question_count = EXCLUDED.mock_question_count,
  mock_time_minutes = EXCLUDED.mock_time_minutes,
  mock_pass_score = EXCLUDED.mock_pass_score,
  updated_at = NOW();


INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('ai-planner-ch0', 'ai-planner', 0, 'AI 技術概論', 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('ai-planner-ch1', 'ai-planner', 1, 'AI 應用場域分析', 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('ai-planner-ch2', 'ai-planner', 2, 'AI 專案規劃與管理', 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;

INSERT INTO public.chapters (id, exam_id, chapter_number, name, sort_order) VALUES
  ('ai-planner-ch3', 'ai-planner', 3, '資料與倫理', 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, updated_at = NOW() WHERE FALSE;


-- ═══════════════════════════════════════════════════════════════════
-- 完成！25 個專技考試 + 章節結構同步到 Supabase
-- ═══════════════════════════════════════════════════════════════════
