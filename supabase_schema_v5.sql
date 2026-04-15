-- ═══════════════════════════════════════════════════════════════════
-- KaoNow schema v5 — 六大系統題庫擴充 (UPSERT)
-- 2026-04
-- ═══════════════════════════════════════════════════════════════════

-- ── tech-cert (39 筆) ──
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('elec-c', 'tech-cert', '室內配線（屋內線路裝修）丙級', '室內配線丙', '屋內電路裝修基礎技能，水電/室內設計從業必備', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '水電工、建築從業人員', 3, 15000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-c-ch0', 'elec-c', 0, '電學基本概念', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-c-ch1', 'elec-c', 1, '配線器材規範', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-c-ch2', 'elec-c', 2, '電路設計與施工', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-c-ch3', 'elec-c', 3, '安全法規', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('elec-b', 'tech-cert', '室內配線（屋內線路裝修）乙級', '室內配線乙', '具獨立施工能力之中階技術士', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '具丙級基礎之電機從業者', 4, 8000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-b-ch0', 'elec-b', 0, '進階電學理論', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-b-ch1', 'elec-b', 1, '負載計算', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-b-ch2', 'elec-b', 2, '工程實作', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-b-ch3', 'elec-b', 3, '法規進階', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('elec-a', 'tech-cert', '室內配線甲級', '室內配線甲', '高階電氣技術主管資格', '勞動部勞動力發展署', '學科筆試＋術科實作', 160, '具乙級 2 年以上經驗者', 5, 2000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-a-ch0', 'elec-a', 0, '高壓配電設計', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-a-ch1', 'elec-a', 1, '工程管理', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-a-ch2', 'elec-a', 2, '特殊場所施工', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('elec-a-ch3', 'elec-a', 3, '法規精熟', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ind-wire-c', 'tech-cert', '工業配線丙級', '工業配線丙', '工廠自動化配線技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '機電、自動化從業者', 3, 10000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-c-ch0', 'ind-wire-c', 0, '電動機控制', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-c-ch1', 'ind-wire-c', 1, '配線圖識讀', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-c-ch2', 'ind-wire-c', 2, 'PLC基礎', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-c-ch3', 'ind-wire-c', 3, '故障排除', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ind-wire-b', 'tech-cert', '工業配線乙級', '工業配線乙', '自動化控制進階技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '自動化工程師', 4, 5000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-b-ch0', 'ind-wire-b', 0, 'PLC進階程式', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-b-ch1', 'ind-wire-b', 1, '伺服控制', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-b-ch2', 'ind-wire-b', 2, '變頻器應用', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ind-wire-b-ch3', 'ind-wire-b', 3, '系統整合', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('hvac-c', 'tech-cert', '冷凍空調裝修丙級', '冷凍空調丙', '冷氣維修/安裝基礎技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '空調從業人員', 3, 8000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-c-ch0', 'hvac-c', 0, '冷凍原理', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-c-ch1', 'hvac-c', 1, '壓縮機與冷媒', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-c-ch2', 'hvac-c', 2, '電路控制', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-c-ch3', 'hvac-c', 3, '安裝維修', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('hvac-b', 'tech-cert', '冷凍空調裝修乙級', '冷凍空調乙', '大型空調系統技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '空調工程師', 4, 3000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-b-ch0', 'hvac-b', 0, '大型系統設計', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-b-ch1', 'hvac-b', 1, '節能規劃', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-b-ch2', 'hvac-b', 2, '施工管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hvac-b-ch3', 'hvac-b', 3, '法規精熟', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('weld-c', 'tech-cert', '電銲丙級', '電銲丙', '金屬焊接基礎技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '金屬加工從業者', 3, 5000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('weld-c-ch0', 'weld-c', 0, '焊接基礎', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('weld-c-ch1', 'weld-c', 1, '材料識別', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('weld-c-ch2', 'weld-c', 2, '焊接實作', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('weld-c-ch3', 'weld-c', 3, '安全衛生', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('tig-weld', 'tech-cert', '氬氣鎢極電銲單一級', '氬銲', '精密焊接技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 100, '精密金屬加工', 4, 2000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tig-weld-ch0', 'tig-weld', 0, '氬銲原理', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tig-weld-ch1', 'tig-weld', 1, '不鏽鋼焊接', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tig-weld-ch2', 'tig-weld', 2, '鋁合金焊接', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tig-weld-ch3', 'tig-weld', 3, '品質檢驗', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('auto-c', 'tech-cert', '汽車修護丙級', '汽修丙', '汽車維修基礎技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '汽修從業者', 3, 12000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-c-ch0', 'auto-c', 0, '引擎系統', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-c-ch1', 'auto-c', 1, '底盤系統', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-c-ch2', 'auto-c', 2, '電機電子', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-c-ch3', 'auto-c', 3, '保修實務', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('auto-b', 'tech-cert', '汽車修護乙級', '汽修乙', '汽車故障診斷進階技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '資深汽修技師', 4, 5000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-b-ch0', 'auto-b', 0, '電子噴射', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-b-ch1', 'auto-b', 1, '自動變速', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-b-ch2', 'auto-b', 2, '電腦診斷', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('auto-b-ch3', 'auto-b', 3, '混合動力', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('moto-c', 'tech-cert', '機車修護丙級', '機修丙', '機車維修基礎技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '機車維修從業者', 3, 6000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('moto-c-ch0', 'moto-c', 0, '機車引擎', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('moto-c-ch1', 'moto-c', 1, '電路系統', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('moto-c-ch2', 'moto-c', 2, '傳動系統', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('moto-c-ch3', 'moto-c', 3, '診斷實作', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('swapp-c', 'tech-cert', '電腦軟體應用丙級', '電軟應丙', '辦公軟體操作基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '學生、轉職者', 2, 80000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-c-ch0', 'swapp-c', 0, '文書處理', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-c-ch1', 'swapp-c', 1, '電子試算表', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-c-ch2', 'swapp-c', 2, '簡報製作', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-c-ch3', 'swapp-c', 3, '網路應用', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('swapp-b', 'tech-cert', '電腦軟體應用乙級', '電軟應乙', '進階辦公軟體與資料庫', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '資訊從業人員', 3, 25000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-b-ch0', 'swapp-b', 0, '進階文書與樣式', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-b-ch1', 'swapp-b', 1, '資料庫應用', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-b-ch2', 'swapp-b', 2, 'VBA巨集', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swapp-b-ch3', 'swapp-b', 3, '系統整合', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('swdesign-b', 'tech-cert', '電腦軟體設計乙級', '電軟設乙', '程式設計與系統開發', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '程式設計師', 4, 5000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swdesign-b-ch0', 'swdesign-b', 0, '演算法', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swdesign-b-ch1', 'swdesign-b', 1, '資料結構', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swdesign-b-ch2', 'swdesign-b', 2, '物件導向', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('swdesign-b-ch3', 'swdesign-b', 3, '系統分析', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('pchw-c', 'tech-cert', '電腦硬體裝修丙級', '電腦硬體丙', '電腦組裝維修基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '電腦從業者', 2, 15000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-c-ch0', 'pchw-c', 0, '硬體原理', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-c-ch1', 'pchw-c', 1, '作業系統', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-c-ch2', 'pchw-c', 2, '故障排除', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-c-ch3', 'pchw-c', 3, '網路設定', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('pchw-b', 'tech-cert', '電腦硬體裝修乙級', '電腦硬體乙', '進階硬體維護與網路', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '資訊維護人員', 3, 6000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-b-ch0', 'pchw-b', 0, '伺服器硬體', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-b-ch1', 'pchw-b', 1, '網路架構', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-b-ch2', 'pchw-b', 2, '資安防護', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pchw-b-ch3', 'pchw-b', 3, '故障診斷', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('webdesign-c', 'tech-cert', '網頁設計丙級', '網頁設計丙', 'HTML/CSS 靜態網頁設計', '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '網頁初學者', 2, 20000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-c-ch0', 'webdesign-c', 0, 'HTML結構', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-c-ch1', 'webdesign-c', 1, 'CSS樣式', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-c-ch2', 'webdesign-c', 2, '圖像處理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-c-ch3', 'webdesign-c', 3, '版面設計', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('webdesign-b', 'tech-cert', '網頁設計乙級', '網頁設計乙', '動態網頁與後端整合', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '網頁工程師', 3, 8000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-b-ch0', 'webdesign-b', 0, 'JavaScript進階', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-b-ch1', 'webdesign-b', 1, '後端程式', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-b-ch2', 'webdesign-b', 2, '資料庫連結', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('webdesign-b-ch3', 'webdesign-b', 3, '響應式設計', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('visualdesign-c', 'tech-cert', '視覺傳達設計丙級', '視傳丙', '平面設計基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '設計科系學生', 2, 12000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('visualdesign-c-ch0', 'visualdesign-c', 0, '設計原理', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('visualdesign-c-ch1', 'visualdesign-c', 1, '色彩學', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('visualdesign-c-ch2', 'visualdesign-c', 2, 'Illustrator', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('visualdesign-c-ch3', 'visualdesign-c', 3, 'Photoshop', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cook-c', 'tech-cert', '中餐烹調（葷食）丙級', '中餐葷丙', '中式料理基本技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '餐飲從業/學生', 3, 100000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-c-ch0', 'cook-c', 0, '食材處理', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-c-ch1', 'cook-c', 1, '刀工', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-c-ch2', 'cook-c', 2, '烹調技法', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-c-ch3', 'cook-c', 3, '食品衛生', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cook-v-c', 'tech-cert', '中餐烹調（素食）丙級', '中餐素丙', '素食料理基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '素食餐飲', 3, 20000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-v-c-ch0', 'cook-v-c', 0, '素食食材', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-v-c-ch1', 'cook-v-c', 1, '刀工與調味', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-v-c-ch2', 'cook-v-c', 2, '烹調技法', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-v-c-ch3', 'cook-v-c', 3, '衛生安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cook-b', 'tech-cert', '中餐烹調乙級', '中餐乙', '中式料理進階技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '主廚、餐飲主管', 4, 15000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-b-ch0', 'cook-b', 0, '宴席設計', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-b-ch1', 'cook-b', 1, '成本控制', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-b-ch2', 'cook-b', 2, '進階技法', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cook-b-ch3', 'cook-b', 3, '管理實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('western-c', 'tech-cert', '西餐烹調丙級', '西餐丙', '西式料理基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '西餐從業者', 3, 25000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('western-c-ch0', 'western-c', 0, '西式食材', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('western-c-ch1', 'western-c', 1, '烹調法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('western-c-ch2', 'western-c', 2, '擺盤藝術', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('western-c-ch3', 'western-c', 3, '衛生安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('bread-c', 'tech-cert', '烘焙食品丙級', '烘焙丙', '麵包、蛋糕、西點基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '烘焙從業/學生', 3, 50000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-c-ch0', 'bread-c', 0, '原料識別', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-c-ch1', 'bread-c', 1, '麵糰製作', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-c-ch2', 'bread-c', 2, '烘焙技法', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-c-ch3', 'bread-c', 3, '食品衛生', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('bread-b', 'tech-cert', '烘焙食品乙級', '烘焙乙', '進階烘焙與創新產品', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '烘焙師、店長', 4, 10000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-b-ch0', 'bread-b', 0, '配方設計', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-b-ch1', 'bread-b', 1, '創意產品', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-b-ch2', 'bread-b', 2, '品質控管', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bread-b-ch3', 'bread-b', 3, '成本管理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('noodle-c', 'tech-cert', '中式麵食加工丙級', '中式麵食丙', '麵條、饅頭、包子製作', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '麵食製作者', 3, 8000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('noodle-c-ch0', 'noodle-c', 0, '麵糰製作', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('noodle-c-ch1', 'noodle-c', 1, '發麵技法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('noodle-c-ch2', 'noodle-c', 2, '成型技術', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('noodle-c-ch3', 'noodle-c', 3, '衛生安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('rice-c', 'tech-cert', '中式米食加工丙級', '中式米食丙', '米食加工技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '米食製作者', 3, 5000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('rice-c-ch0', 'rice-c', 0, '米食原料', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('rice-c-ch1', 'rice-c', 1, '加工技法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('rice-c-ch2', 'rice-c', 2, '產品製作', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('rice-c-ch3', 'rice-c', 3, '衛生安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('bartend-c', 'tech-cert', '調酒丙級', '調酒丙', '調酒基礎技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '酒吧從業者', 3, 6000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bartend-c-ch0', 'bartend-c', 0, '酒類認識', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bartend-c-ch1', 'bartend-c', 1, '調酒技法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bartend-c-ch2', 'bartend-c', 2, '吧檯管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('bartend-c-ch3', 'bartend-c', 3, '服務禮儀', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('hair-c', 'tech-cert', '女子美髮丙級', '美髮丙', '美髮基礎技術', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '美髮從業者', 3, 30000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-c-ch0', 'hair-c', 0, '剪髮技術', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-c-ch1', 'hair-c', 1, '染燙技術', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-c-ch2', 'hair-c', 2, '髮型設計', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-c-ch3', 'hair-c', 3, '衛生安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('hair-b', 'tech-cert', '女子美髮乙級', '美髮乙', '進階美髮與造型設計', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '資深美髮師', 4, 8000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-b-ch0', 'hair-b', 0, '進階剪染', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-b-ch1', 'hair-b', 1, '造型設計', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-b-ch2', 'hair-b', 2, '沙龍管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hair-b-ch3', 'hair-b', 3, '時尚趨勢', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('beauty-c', 'tech-cert', '美容丙級', '美容丙', '臉部護理與化妝基礎', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '美容從業者', 3, 25000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-c-ch0', 'beauty-c', 0, '皮膚學', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-c-ch1', 'beauty-c', 1, '護膚手技', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-c-ch2', 'beauty-c', 2, '化妝技巧', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-c-ch3', 'beauty-c', 3, '衛生安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('beauty-b', 'tech-cert', '美容乙級', '美容乙', '進階美容與專業芳療', '勞動部勞動力發展署', '學科筆試＋術科實作', 100, '資深美容師', 4, 6000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-b-ch0', 'beauty-b', 0, '進階皮膚學', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-b-ch1', 'beauty-b', 1, '芳療精油', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-b-ch2', 'beauty-b', 2, '經營管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('beauty-b-ch3', 'beauty-b', 3, '新娘彩妝', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('forklift', 'tech-cert', '堆高機操作單一級', '堆高機', '倉儲物流必備執照', '勞動部勞動力發展署', '學科筆試＋術科實作', 40, '倉儲、物流從業者', 2, 30000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 60, 90, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('forklift-ch0', 'forklift', 0, '機械構造', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('forklift-ch1', 'forklift', 1, '操作技術', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('forklift-ch2', 'forklift', 2, '安全衛生', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('forklift-ch3', 'forklift', 3, '作業實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('care-giver', 'tech-cert', '照顧服務員單一級', '照服員', '長照服務執業資格', '勞動部勞動力發展署', '學科筆試＋術科實作', 90, '長照從業人員', 3, 40000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('care-giver-ch0', 'care-giver', 0, '老人照顧', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('care-giver-ch1', 'care-giver', 1, '身體照顧', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('care-giver-ch2', 'care-giver', 2, '安全協助', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('care-giver-ch3', 'care-giver', 3, '緊急處理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('nanny', 'tech-cert', '保母人員單一級', '保母', '托育人員必備證照', '勞動部勞動力發展署', '學科筆試＋術科實作', 126, '托育人員', 3, 15000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('nanny-ch0', 'nanny', 0, '嬰幼兒發展', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('nanny-ch1', 'nanny', 1, '教保實務', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('nanny-ch2', 'nanny', 2, '營養保健', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('nanny-ch3', 'nanny', 3, '安全與法規', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('archi-draft-b', 'tech-cert', '建築製圖乙級', '建築製圖乙', '建築圖面繪製技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 80, '建築繪圖員', 3, 6000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('archi-draft-b-ch0', 'archi-draft-b', 0, '建築製圖基礎', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('archi-draft-b-ch1', 'archi-draft-b', 1, 'CAD應用', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('archi-draft-b-ch2', 'archi-draft-b', 2, '施工圖', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('archi-draft-b-ch3', 'archi-draft-b', 3, '法規規範', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('interior-mgr-b', 'tech-cert', '建築物室內裝修工程管理乙級', '室內裝修工程管理乙', '室內裝修工程主管資格', '勞動部勞動力發展署', '學科筆試＋術科實作', 120, '室內裝修業者', 4, 8000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('interior-mgr-b-ch0', 'interior-mgr-b', 0, '施工規劃', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('interior-mgr-b-ch1', 'interior-mgr-b', 1, '法規檢討', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('interior-mgr-b-ch2', 'interior-mgr-b', 2, '成本管控', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('interior-mgr-b-ch3', 'interior-mgr-b', 3, '品質安全', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gardening-c', 'tech-cert', '園藝丙級', '園藝丙', '植栽養護基礎技能', '勞動部勞動力發展署', '學科筆試＋術科實作', 60, '園藝從業者', 3, 5000, FALSE, 'free', 10, 'https://skill.tcte.edu.tw/', 'https://skill.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gardening-c-ch0', 'gardening-c', 0, '植物識別', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gardening-c-ch1', 'gardening-c', 1, '栽培技術', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gardening-c-ch2', 'gardening-c', 2, '病蟲害防治', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gardening-c-ch3', 'gardening-c', 3, '景觀維護', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();

-- ── civil (23 筆) ──
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gaokao-1', 'civil', '高考一級', '高考一級', '博士級任用之頂級公職考試', '考選部', '筆試', 0, '博士學位者', 5, 500, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 60, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-1-ch0', 'gaokao-1', 0, '國文與英文', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-1-ch1', 'gaokao-1', 1, '法學知識', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-1-ch2', 'gaokao-1', 2, '專業科目一', 30, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-1-ch3', 'gaokao-1', 3, '專業科目二', 30, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gaokao-2', 'civil', '高考二級', '高考二級', '碩士級任用之高階公職', '考選部', '筆試', 0, '碩士學位者', 5, 3000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 60, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-2-ch0', 'gaokao-2', 0, '國文與英文', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-2-ch1', 'gaokao-2', 1, '法學知識', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-2-ch2', 'gaokao-2', 2, '專業科目一', 30, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-2-ch3', 'gaokao-2', 3, '專業科目二', 30, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gaokao-3', 'civil', '高考三級', '高考三級', '大學畢業任用公職主流管道', '考選部', '筆試', 0, '大學畢業以上', 4, 35000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-3-ch0', 'gaokao-3', 0, '共同科目', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-3-ch1', 'gaokao-3', 1, '憲法與行政法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-3-ch2', 'gaokao-3', 2, '專業科目一', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gaokao-3-ch3', 'gaokao-3', 3, '專業科目二', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('pukao', 'civil', '普通考試', '普考', '高中職以上任用公職管道', '考選部', '筆試', 0, '高中職以上', 3, 25000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pukao-ch0', 'pukao', 0, '共同科目', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pukao-ch1', 'pukao', 1, '法學知識與英文', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pukao-ch2', 'pukao', 2, '專業科目一', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pukao-ch3', 'pukao', 3, '專業科目二', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('chukao', 'civil', '初等考試', '初等', '不限學歷任用公職管道', '考選部', '筆試', 0, '18歲以上國民', 2, 30000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 100, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('chukao-ch0', 'chukao', 0, '國文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('chukao-ch1', 'chukao', 1, '公民與英文', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('chukao-ch2', 'chukao', 2, '專業科目一', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('chukao-ch3', 'chukao', 3, '專業科目二', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('railway-senior', 'civil', '鐵路特考高員級', '鐵高員', '鐵路系統高階主管任用', '考選部', '筆試', 0, '大學畢業', 4, 5000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-senior-ch0', 'railway-senior', 0, '共同科目', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-senior-ch1', 'railway-senior', 1, '鐵路法規', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-senior-ch2', 'railway-senior', 2, '運輸管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-senior-ch3', 'railway-senior', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('railway-junior', 'civil', '鐵路特考員級', '鐵員級', '鐵路系統主要人力管道', '考選部', '筆試', 0, '高中職以上', 3, 15000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-junior-ch0', 'railway-junior', 0, '共同科目', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-junior-ch1', 'railway-junior', 1, '鐵路法規', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-junior-ch2', 'railway-junior', 2, '運輸學', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-junior-ch3', 'railway-junior', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('railway-assistant', 'civil', '鐵路特考佐級', '鐵佐級', '鐵路站務/運務基層人員', '考選部', '筆試', 0, '高中以下', 2, 25000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 100, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-assistant-ch0', 'railway-assistant', 0, '國文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-assistant-ch1', 'railway-assistant', 1, '英文', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-assistant-ch2', 'railway-assistant', 2, '公民', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('railway-assistant-ch3', 'railway-assistant', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('police-3', 'civil', '警察特考三等', '警特三等', '警察大學畢業之警官任用', '內政部警政署', '筆試＋體能測驗', 0, '警大/警察系畢業', 4, 5000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-3-ch0', 'police-3', 0, '警察法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-3-ch1', 'police-3', 1, '刑事訴訟法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-3-ch2', 'police-3', 2, '犯罪學', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-3-ch3', 'police-3', 3, '警察實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('police-4', 'civil', '警察特考四等', '警特四等', '警專畢業之基層警員', '內政部警政署', '筆試＋體能測驗', 0, '警專畢業', 3, 10000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-4-ch0', 'police-4', 0, '警察法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-4-ch1', 'police-4', 1, '中華民國憲法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-4-ch2', 'police-4', 2, '法學緒論', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-4-ch3', 'police-4', 3, '刑法概要', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('police-gen-3', 'civil', '一般警察特考三等', '一般警三', '一般生報考之警官', '內政部警政署', '筆試＋體能測驗', 0, '大學畢業', 4, 8000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-3-ch0', 'police-gen-3', 0, '警察法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-3-ch1', 'police-gen-3', 1, '刑事訴訟法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-3-ch2', 'police-gen-3', 2, '犯罪學', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-3-ch3', 'police-gen-3', 3, '警察情境實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('police-gen-4', 'civil', '一般警察特考四等', '一般警四', '一般生基層警員管道', '內政部警政署', '筆試＋體能測驗', 0, '高中職以上', 3, 20000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-4-ch0', 'police-gen-4', 0, '警察法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-4-ch1', 'police-gen-4', 1, '憲法與刑法概要', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-4-ch2', 'police-gen-4', 2, '英文', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('police-gen-4-ch3', 'police-gen-4', 3, '警察情境實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('judicial-3', 'civil', '司法特考三等', '司法三等', '法官助理、書記官等司法人員', '考選部', '筆試', 0, '大學畢業', 4, 6000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-3-ch0', 'judicial-3', 0, '憲法', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-3-ch1', 'judicial-3', 1, '刑法與刑事訴訟法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-3-ch2', 'judicial-3', 2, '民法與民事訴訟法', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-3-ch3', 'judicial-3', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('judicial-4', 'civil', '司法特考四等', '司法四等', '法警、執達員、監所管理員', '考選部', '筆試', 0, '高中職以上', 3, 15000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-4-ch0', 'judicial-4', 0, '國文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-4-ch1', 'judicial-4', 1, '法學知識', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-4-ch2', 'judicial-4', 2, '刑法概要', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-4-ch3', 'judicial-4', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('judicial-5', 'civil', '司法特考五等', '司法五等', '錄事、庭務員等基層司法', '考選部', '筆試', 0, '不限學歷', 2, 10000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 100, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-5-ch0', 'judicial-5', 0, '國文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-5-ch1', 'judicial-5', 1, '公民與英文', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-5-ch2', 'judicial-5', 2, '法學大意', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('judicial-5-ch3', 'judicial-5', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('customs-3', 'civil', '關務特考三等', '關務三等', '海關稅務主管', '考選部', '筆試', 0, '大學畢業', 4, 2000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-3-ch0', 'customs-3', 0, '國際貿易', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-3-ch1', 'customs-3', 1, '關稅法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-3-ch2', 'customs-3', 2, '英文', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-3-ch3', 'customs-3', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('customs-4', 'civil', '關務特考四等', '關務四等', '海關基層人員', '考選部', '筆試', 0, '高中職以上', 3, 5000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-4-ch0', 'customs-4', 0, '國文英文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-4-ch1', 'customs-4', 1, '關稅法規', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-4-ch2', 'customs-4', 2, '貿易實務', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('customs-4-ch3', 'customs-4', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('coastguard-3', 'civil', '海巡特考三等', '海巡三等', '海巡署高階任用', '考選部', '筆試＋體能測驗', 0, '大學畢業', 4, 1500, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('coastguard-3-ch0', 'coastguard-3', 0, '海巡法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('coastguard-3-ch1', 'coastguard-3', 1, '刑事法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('coastguard-3-ch2', 'coastguard-3', 2, '海洋政策', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('coastguard-3-ch3', 'coastguard-3', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('diplomatic', 'civil', '外交特考三等', '外交特考', '外交官晉用管道', '考選部', '筆試', 0, '大學畢業且具外語能力', 5, 800, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 60, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('diplomatic-ch0', 'diplomatic', 0, '國際法', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('diplomatic-ch1', 'diplomatic', 1, '國際關係', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('diplomatic-ch2', 'diplomatic', 2, '外國語', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('diplomatic-ch3', 'diplomatic', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('local-3', 'civil', '地方特考三等', '地特三等', '地方政府公務員', '考選部', '筆試', 0, '大學畢業', 4, 20000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-3-ch0', 'local-3', 0, '共同科目', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-3-ch1', 'local-3', 1, '地方自治法規', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-3-ch2', 'local-3', 2, '專業科目一', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-3-ch3', 'local-3', 3, '專業科目二', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('local-4', 'civil', '地方特考四等', '地特四等', '地方政府中階人員', '考選部', '筆試', 0, '高中職以上', 3, 25000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-4-ch0', 'local-4', 0, '共同科目', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-4-ch1', 'local-4', 1, '法學知識', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-4-ch2', 'local-4', 2, '專業科目一', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('local-4-ch3', 'local-4', 3, '專業科目二', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('investigation', 'civil', '調查局特考', '調查局', '法務部調查局特考', '考選部', '筆試＋體能測驗', 0, '大學畢業', 4, 3000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('investigation-ch0', 'investigation', 0, '國家安全', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('investigation-ch1', 'investigation', 1, '刑法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('investigation-ch2', 'investigation', 2, '專業知能', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('investigation-ch3', 'investigation', 3, '情報實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('immigration-3', 'civil', '移民行政特考三等', '移民三等', '移民署高階人員', '考選部', '筆試', 0, '大學畢業', 4, 2500, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://register.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', 80, 120, 50)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('immigration-3-ch0', 'immigration-3', 0, '入出國法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('immigration-3-ch1', 'immigration-3', 1, '國際公法', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('immigration-3-ch2', 'immigration-3', 2, '移民情勢', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('immigration-3-ch3', 'immigration-3', 3, '英文', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();

-- ── language (17 筆) ──
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('toeic', 'language', 'TOEIC 多益測驗', 'TOEIC', '台灣最普及之英語能力測驗', 'ETS Taiwan', '聽力與閱讀筆試', 0, '求職、升遷、畢業門檻', 3, 400000, FALSE, 'free', 10, 'https://www.toeic.com.tw/', 'https://www.toeic.com.tw/', NULL, 200, 120, 550)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toeic-ch0', 'toeic', 0, 'Listening', 50, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toeic-ch1', 'toeic', 1, 'Reading', 50, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('toeic-spw', 'language', 'TOEIC 口說與寫作測驗', 'TOEIC S&W', '多益口說寫作進階測驗', 'ETS Taiwan', '口說與寫作', 0, '進階求職者', 4, 30000, FALSE, 'free', 10, 'https://www.toeic.com.tw/', 'https://www.toeic.com.tw/', NULL, 80, 80, 140)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toeic-spw-ch0', 'toeic-spw', 0, 'Speaking', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toeic-spw-ch1', 'toeic-spw', 1, 'Writing', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gept-elem', 'language', '全民英檢初級', 'GEPT初級', '國中畢業程度', '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '國中生、社會人士', 2, 100000, FALSE, 'free', 10, 'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', NULL, 80, 120, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-elem-ch0', 'gept-elem', 0, 'Listening', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-elem-ch1', 'gept-elem', 1, 'Reading', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-elem-ch2', 'gept-elem', 2, 'Speaking', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-elem-ch3', 'gept-elem', 3, 'Writing', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gept-int', 'language', '全民英檢中級', 'GEPT中級', '高中畢業程度（大學申請常用）', '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '高中生、大學申請', 3, 120000, FALSE, 'free', 10, 'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', NULL, 80, 120, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-int-ch0', 'gept-int', 0, 'Listening', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-int-ch1', 'gept-int', 1, 'Reading', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-int-ch2', 'gept-int', 2, 'Speaking', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-int-ch3', 'gept-int', 3, 'Writing', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gept-hint', 'language', '全民英檢中高級', 'GEPT中高級', '大學非英文主修畢業程度', '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '大學生、研究所申請', 4, 60000, FALSE, 'free', 10, 'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', NULL, 80, 120, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-hint-ch0', 'gept-hint', 0, 'Listening', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-hint-ch1', 'gept-hint', 1, 'Reading', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-hint-ch2', 'gept-hint', 2, 'Speaking', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-hint-ch3', 'gept-hint', 3, 'Writing', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gept-adv', 'language', '全民英檢高級', 'GEPT高級', '大學英文主修畢業程度', '財團法人語言訓練測驗中心 LTTC', '四技檢定', 0, '英語專業人士', 5, 10000, FALSE, 'free', 10, 'https://www.lttc.ntu.edu.tw/', 'https://reg.lttc.ntu.edu.tw/', NULL, 80, 120, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-adv-ch0', 'gept-adv', 0, 'Listening', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-adv-ch1', 'gept-adv', 1, 'Reading', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-adv-ch2', 'gept-adv', 2, 'Speaking', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gept-adv-ch3', 'gept-adv', 3, 'Writing', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ielts', 'language', 'IELTS 雅思', 'IELTS', '英語系國家留學/移民主流測驗', 'British Council / IDP', '筆試＋面試口說', 0, '海外留學、移民', 4, 50000, FALSE, 'free', 10, 'https://www.ielts.org/', 'https://www.ielts.com.tw/', NULL, 60, 165, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ielts-ch0', 'ielts', 0, 'Listening', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ielts-ch1', 'ielts', 1, 'Reading', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ielts-ch2', 'ielts', 2, 'Writing', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ielts-ch3', 'ielts', 3, 'Speaking', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('toefl-ibt', 'language', 'TOEFL iBT 托福', 'TOEFL iBT', '美系留學必備測驗', 'ETS', '電腦測驗', 0, '美加留學申請', 4, 30000, FALSE, 'free', 10, 'https://www.ets.org/toefl/', 'https://www.ets.org/toefl/', NULL, 100, 180, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toefl-ibt-ch0', 'toefl-ibt', 0, 'Reading', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toefl-ibt-ch1', 'toefl-ibt', 1, 'Listening', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toefl-ibt-ch2', 'toefl-ibt', 2, 'Speaking', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('toefl-ibt-ch3', 'toefl-ibt', 3, 'Writing', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('jlpt-n5', 'language', '日語能力試驗 JLPT N5', 'JLPT N5', '日語初學者認證', '日本國際交流基金會', '筆試', 0, '日語初學者', 2, 15000, FALSE, 'free', 10, 'https://www.jlpt.jp/', 'https://www.jlpt.tw/', NULL, 60, 105, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n5-ch0', 'jlpt-n5', 0, '文字語彙', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n5-ch1', 'jlpt-n5', 1, '文法讀解', 34, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n5-ch2', 'jlpt-n5', 2, '聽解', 33, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('jlpt-n4', 'language', '日語能力試驗 JLPT N4', 'JLPT N4', '日語基礎能力認證', '日本國際交流基金會', '筆試', 0, '日語學習約一年', 2, 20000, FALSE, 'free', 10, 'https://www.jlpt.jp/', 'https://www.jlpt.tw/', NULL, 70, 125, 90)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n4-ch0', 'jlpt-n4', 0, '文字語彙', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n4-ch1', 'jlpt-n4', 1, '文法讀解', 34, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n4-ch2', 'jlpt-n4', 2, '聽解', 33, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('jlpt-n3', 'language', '日語能力試驗 JLPT N3', 'JLPT N3', '日語中等能力（常用門檻）', '日本國際交流基金會', '筆試', 0, '日語進階學習者', 3, 25000, FALSE, 'free', 10, 'https://www.jlpt.jp/', 'https://www.jlpt.tw/', NULL, 80, 140, 95)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n3-ch0', 'jlpt-n3', 0, '言語知識', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n3-ch1', 'jlpt-n3', 1, '讀解', 34, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n3-ch2', 'jlpt-n3', 2, '聽解', 33, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('jlpt-n2', 'language', '日語能力試驗 JLPT N2', 'JLPT N2', '日語中高級（日商工作門檻）', '日本國際交流基金會', '筆試', 0, '日商求職者', 4, 35000, FALSE, 'free', 10, 'https://www.jlpt.jp/', 'https://www.jlpt.tw/', NULL, 90, 155, 90)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n2-ch0', 'jlpt-n2', 0, '言語知識', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n2-ch1', 'jlpt-n2', 1, '讀解', 34, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n2-ch2', 'jlpt-n2', 2, '聽解', 33, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('jlpt-n1', 'language', '日語能力試驗 JLPT N1', 'JLPT N1', '日語最高等級認證', '日本國際交流基金會', '筆試', 0, '日語專業人士', 5, 15000, FALSE, 'free', 10, 'https://www.jlpt.jp/', 'https://www.jlpt.tw/', NULL, 100, 170, 100)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n1-ch0', 'jlpt-n1', 0, '言語知識', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n1-ch1', 'jlpt-n1', 1, '讀解', 34, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('jlpt-n1-ch2', 'jlpt-n1', 2, '聽解', 33, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('tocfl', 'language', '華語文能力測驗 TOCFL', 'TOCFL', '外籍人士華語能力認證', '國家華語測驗推動工作委員會', '電腦或筆試', 0, '外籍學生、求職者', 3, 20000, FALSE, 'free', 10, 'https://tocfl.edu.tw/', 'https://tocfl.edu.tw/', NULL, 100, 120, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tocfl-ch0', 'tocfl', 0, '聽力測驗', 50, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tocfl-ch1', 'tocfl', 1, '閱讀測驗', 50, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('topik-1', 'language', '韓語能力測驗 TOPIK I', 'TOPIK I', '韓語初級（1-2級）', '韓國國立國際教育院', '筆試', 0, '韓語初學者', 2, 8000, FALSE, 'free', 10, 'https://www.topik.go.kr/', 'https://topik.com.tw/', NULL, 70, 100, 80)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('topik-1-ch0', 'topik-1', 0, '듣기 聽力', 50, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('topik-1-ch1', 'topik-1', 1, '읽기 閱讀', 50, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('topik-2', 'language', '韓語能力測驗 TOPIK II', 'TOPIK II', '韓語中高級（3-6級）', '韓國國立國際教育院', '筆試', 0, '韓語進階學習者', 4, 12000, FALSE, 'free', 10, 'https://www.topik.go.kr/', 'https://topik.com.tw/', NULL, 100, 180, 120)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('topik-2-ch0', 'topik-2', 0, '듣기 聽力', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('topik-2-ch1', 'topik-2', 1, '쓰기 寫作', 33, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('topik-2-ch2', 'topik-2', 2, '읽기 閱讀', 34, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('hsk', 'language', 'HSK 漢語水平考試', 'HSK', '中國大陸華語能力認證（分1-6級）', '中國國家漢辦', '筆試', 0, '外籍華語學習者', 3, 5000, FALSE, 'free', 10, 'https://www.chinesetest.cn/', 'https://www.chinesetest.cn/', NULL, 60, 90, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hsk-ch0', 'hsk', 0, '聽力', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hsk-ch1', 'hsk', 1, '閱讀', 33, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('hsk-ch2', 'hsk', 2, '書寫', 34, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();

-- ── entrance (8 筆) ──
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gsat', 'entrance', '大學學科能力測驗', '學測', '大學申請入學主要依據', '大學入學考試中心', '筆試', 0, '高中三年級生', 4, 130000, FALSE, 'free', 10, 'https://www.ceec.edu.tw/', 'https://www.ceec.edu.tw/', NULL, 60, 80, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gsat-ch0', 'gsat', 0, '國文', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gsat-ch1', 'gsat', 1, '英文', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gsat-ch2', 'gsat', 2, '數學A/B', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gsat-ch3', 'gsat', 3, '社會/自然', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gsat-ch4', 'gsat', 4, '國語文寫作', 20, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ast', 'entrance', '分科測驗', '分科', '大學分發入學採計（原指考）', '大學入學考試中心', '筆試', 0, '高中三年級生', 5, 40000, FALSE, 'free', 10, 'https://www.ceec.edu.tw/', 'https://www.ceec.edu.tw/', NULL, 60, 80, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ast-ch0', 'ast', 0, '數學甲', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ast-ch1', 'ast', 1, '歷史/地理/公民', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ast-ch2', 'ast', 2, '物理/化學/生物', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ast-ch3', 'ast', 3, '專業科目', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('tcat', 'entrance', '四技二專統一入學測驗', '統測', '技職體系升學主要管道', '技專校院入學測驗中心', '筆試', 0, '高職三年級生', 4, 110000, FALSE, 'free', 10, 'https://www.tcte.edu.tw/', 'https://www.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tcat-ch0', 'tcat', 0, '共同科目（國英數）', 30, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tcat-ch1', 'tcat', 1, '專業科目（一）', 35, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tcat-ch2', 'tcat', 2, '專業科目（二）', 35, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cap', 'entrance', '國中教育會考', '會考', '國中生升高中職重要依據', '國中教育會考推動工作委員會', '筆試', 0, '國三學生', 3, 190000, FALSE, 'free', 10, 'https://cap.rcpet.edu.tw/', 'https://cap.rcpet.edu.tw/', NULL, 48, 70, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cap-ch0', 'cap', 0, '國文', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cap-ch1', 'cap', 1, '英語', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cap-ch2', 'cap', 2, '數學', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cap-ch3', 'cap', 3, '社會', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cap-ch4', 'cap', 4, '自然', 20, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('english-listening', 'entrance', '高中英語聽力測驗', '英聽', '大學入學採計之英聽測驗', '大學入學考試中心', '聽力筆試', 0, '高中三年級生', 3, 110000, FALSE, 'free', 10, 'https://www.ceec.edu.tw/', 'https://www.ceec.edu.tw/', NULL, 40, 60, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('english-listening-ch0', 'english-listening', 0, '短篇聽解', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('english-listening-ch1', 'english-listening', 1, '對話聽解', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('english-listening-ch2', 'english-listening', 2, '長篇聽解', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('english-listening-ch3', 'english-listening', 3, '綜合測驗', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('transfer-2', 'entrance', '二技入學測驗', '二技統測', '專科升二技入學管道', '技專校院入學測驗中心', '筆試', 0, '二專畢業生', 3, 20000, FALSE, 'free', 10, 'https://www.tcte.edu.tw/', 'https://www.tcte.edu.tw/', NULL, 80, 100, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('transfer-2-ch0', 'transfer-2', 0, '共同科目', 33, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('transfer-2-ch1', 'transfer-2', 1, '專業科目（一）', 33, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('transfer-2-ch2', 'transfer-2', 2, '專業科目（二）', 34, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('public-scholar', 'entrance', '公費留學考試', '公費留學', '教育部公費留學人才選拔', '教育部', '筆試', 0, '大學畢業以上', 5, 1000, FALSE, 'free', 10, 'https://ws.moe.edu.tw/', 'https://ws.moe.edu.tw/', NULL, 60, 120, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('public-scholar-ch0', 'public-scholar', 0, '國文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('public-scholar-ch1', 'public-scholar', 1, '英文', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('public-scholar-ch2', 'public-scholar', 2, '專門科目一', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('public-scholar-ch3', 'public-scholar', 3, '專門科目二', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('high-ent', 'entrance', '高中特色招生考試', '特招', '高中特色班級招生測驗', '各直轄市教育局', '筆試', 0, '國三學生', 3, 15000, FALSE, 'free', 10, 'https://www.k12ea.gov.tw/', 'https://www.k12ea.gov.tw/', NULL, 60, 90, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('high-ent-ch0', 'high-ent', 0, '國文', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('high-ent-ch1', 'high-ent', 1, '英文', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('high-ent-ch2', 'high-ent', 2, '數學', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('high-ent-ch3', 'high-ent', 3, '專業評量', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();

-- ── finance (21 筆) ──
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('trust', 'finance', '信託業業務人員', '信託業務', '信託業法定必要資格', '台灣金融研訓院', '筆試', 0, '銀行、信託從業者', 3, 30000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('trust-ch0', 'trust', 0, '信託法規與實務', 40, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('trust-ch1', 'trust', 1, '信託業務與產品', 40, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('internal-audit', 'finance', '銀行內部控制與內部稽核', '內控稽核', '銀行業法定必要資格', '台灣金融研訓院', '筆試', 0, '銀行內稽、法遵', 4, 25000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('internal-audit-ch0', 'internal-audit', 0, '內控法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('internal-audit-ch1', 'internal-audit', 1, '內稽實務', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('internal-audit-ch2', 'internal-audit', 2, '風險管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('internal-audit-ch3', 'internal-audit', 3, '洗錢防制', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('sec-audit', 'finance', '證券暨期貨業內部控制與內部稽核', '證期內控稽核', '證券期貨業內控法定資格', '台灣金融研訓院', '筆試', 0, '證券期貨從業者', 4, 8000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-audit-ch0', 'sec-audit', 0, '證期法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-audit-ch1', 'sec-audit', 1, '內稽實務', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-audit-ch2', 'sec-audit', 2, '風險管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-audit-ch3', 'sec-audit', 3, '洗錢防制', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ins-audit', 'finance', '保險業內部控制與內部稽核', '保險內控稽核', '保險業內控法定資格', '台灣金融研訓院', '筆試', 0, '保險從業者', 4, 6000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', 'https://www.tabf.org.tw/', 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ins-audit-ch0', 'ins-audit', 0, '保險法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ins-audit-ch1', 'ins-audit', 1, '內稽實務', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ins-audit-ch2', 'ins-audit', 2, '風險管理', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ins-audit-ch3', 'ins-audit', 3, '洗錢防制', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('sec-sales', 'finance', '證券商業務員', '證券業務員', '證券從業基本資格', '中華民國證券商業同業公會', '筆試', 0, '證券業求職者', 3, 40000, FALSE, 'free', 10, 'https://www.csa.org.tw/', 'https://www.sitca.org.tw/', NULL, 100, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-sales-ch0', 'sec-sales', 0, '證券法規', 30, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-sales-ch1', 'sec-sales', 1, '證券投資', 35, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-sales-ch2', 'sec-sales', 2, '實務操作', 35, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('sec-senior', 'finance', '證券商高級業務員', '高業', '證券進階業務資格', '中華民國證券商業同業公會', '筆試', 0, '進階證券業務', 4, 20000, FALSE, 'free', 10, 'https://www.csa.org.tw/', 'https://www.sitca.org.tw/', NULL, 100, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-senior-ch0', 'sec-senior', 0, '證券交易法', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-senior-ch1', 'sec-senior', 1, '高業法規', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-senior-ch2', 'sec-senior', 2, '投資學', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-senior-ch3', 'sec-senior', 3, '財務分析', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('futures-sales', 'finance', '期貨商業務員', '期貨業務員', '期貨從業基本資格', '中華民國期貨業商業同業公會', '筆試', 0, '期貨業求職者', 3, 15000, FALSE, 'free', 10, 'https://www.futures.org.tw/', 'https://www.sitca.org.tw/', NULL, 100, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('futures-sales-ch0', 'futures-sales', 0, '期貨法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('futures-sales-ch1', 'futures-sales', 1, '期貨交易', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('futures-sales-ch2', 'futures-sales', 2, '期貨投資', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('futures-sales-ch3', 'futures-sales', 3, '風險管理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('invest-consult', 'finance', '投信投顧業務員', '投信投顧', '投信/投顧從業資格', '中華民國證券投資信託暨顧問商業同業公會', '筆試', 0, '投信投顧業求職', 3, 25000, FALSE, 'free', 10, 'https://www.sitca.org.tw/', 'https://www.sitca.org.tw/', NULL, 100, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-consult-ch0', 'invest-consult', 0, '法規與職業道德', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-consult-ch1', 'invest-consult', 1, '投資學', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-consult-ch2', 'invest-consult', 2, '財務分析', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-consult-ch3', 'invest-consult', 3, '經濟學', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('derivatives', 'finance', '衍生性金融商品銷售人員', '衍商', '銷售衍生性商品資格', '台灣金融研訓院', '筆試', 0, '理專、銷售人員', 4, 15000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', NULL, 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('derivatives-ch0', 'derivatives', 0, '衍商概念', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('derivatives-ch1', 'derivatives', 1, '商品特性', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('derivatives-ch2', 'derivatives', 2, '銷售實務', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('derivatives-ch3', 'derivatives', 3, '風險揭露', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('structured', 'finance', '結構型商品銷售人員', '結構商品', '結構商品銷售資格', '台灣金融研訓院', '筆試', 0, '理專、銷售人員', 4, 12000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', NULL, 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('structured-ch0', 'structured', 0, '結構商品概念', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('structured-ch1', 'structured', 1, '商品評價', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('structured-ch2', 'structured', 2, '銷售規範', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('structured-ch3', 'structured', 3, '風險管理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('life-ins', 'finance', '人身保險業務員', '壽險業務員', '壽險銷售法定資格', '壽險公會', '筆試', 0, '壽險業務員', 2, 150000, FALSE, 'free', 10, 'https://www.lia-roc.org.tw/', 'https://www.lia-roc.org.tw/', NULL, 50, 60, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-ins-ch0', 'life-ins', 0, '壽險法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-ins-ch1', 'life-ins', 1, '壽險商品', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-ins-ch2', 'life-ins', 2, '核保理賠', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-ins-ch3', 'life-ins', 3, '業務倫理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('property-ins', 'finance', '財產保險業務員', '產險業務員', '產險銷售法定資格', '產險公會', '筆試', 0, '產險業務員', 2, 80000, FALSE, 'free', 10, 'https://www.nlia.org.tw/', 'https://www.nlia.org.tw/', NULL, 50, 60, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-ins-ch0', 'property-ins', 0, '產險法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-ins-ch1', 'property-ins', 1, '產險商品', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-ins-ch2', 'property-ins', 2, '核保理賠', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-ins-ch3', 'property-ins', 3, '業務倫理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('invest-ins', 'finance', '投資型保險商品業務員', '投資型保險', '投資型保單銷售資格', '壽險公會', '筆試', 0, '進階保險業務', 3, 60000, FALSE, 'free', 10, 'https://www.lia-roc.org.tw/', 'https://www.lia-roc.org.tw/', NULL, 50, 60, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-ins-ch0', 'invest-ins', 0, '投資型商品法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-ins-ch1', 'invest-ins', 1, '投資學基礎', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-ins-ch2', 'invest-ins', 2, '商品特性', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('invest-ins-ch3', 'invest-ins', 3, '銷售實務', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('life-agent', 'finance', '人身保險代理人', '壽險代理人', '壽險代理人執業資格', '考選部', '筆試', 0, '保險代理人、仲介業', 4, 5000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', NULL, 80, 120, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-agent-ch0', 'life-agent', 0, '保險法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-agent-ch1', 'life-agent', 1, '保險學', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-agent-ch2', 'life-agent', 2, '人身保險實務', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('life-agent-ch3', 'life-agent', 3, '保險行銷', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('property-agent', 'finance', '財產保險代理人', '產險代理人', '產險代理人執業資格', '考選部', '筆試', 0, '產險代理業', 4, 3000, FALSE, 'free', 10, 'https://wwwq.moex.gov.tw/', 'https://wwwq.moex.gov.tw/', NULL, 80, 120, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-agent-ch0', 'property-agent', 0, '保險法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-agent-ch1', 'property-agent', 1, '保險學', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-agent-ch2', 'property-agent', 2, '財產保險實務', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('property-agent-ch3', 'property-agent', 3, '保險行銷', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('afp', 'finance', 'AFP 理財規劃顧問', 'AFP', 'FPAT 認證之理財規劃師', '台灣理財顧問認證協會 FPAT', '筆試', 0, '銀行理專、財富管理', 4, 3000, FALSE, 'free', 10, 'https://www.fpat.org.tw/', 'https://www.fpat.org.tw/', NULL, 100, 180, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('afp-ch0', 'afp', 0, '財務規劃總論', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('afp-ch1', 'afp', 1, '投資規劃', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('afp-ch2', 'afp', 2, '風險管理與保險', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('afp-ch3', 'afp', 3, '稅務與退休', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('afp-ch4', 'afp', 4, '全方位個案', 20, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cfp', 'finance', 'CFP 認證理財規劃顧問', 'CFP', '國際認可之頂級理財認證', '台灣理財顧問認證協會 FPAT', '筆試', 0, '資深理財顧問', 5, 500, FALSE, 'free', 10, 'https://www.fpat.org.tw/', 'https://www.fpat.org.tw/', NULL, 100, 240, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfp-ch0', 'cfp', 0, '財務規劃總論', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfp-ch1', 'cfp', 1, '投資規劃', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfp-ch2', 'cfp', 2, '風險管理', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfp-ch3', 'cfp', 3, '稅務規劃', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfp-ch4', 'cfp', 4, '退休與遺產', 20, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('frm', 'finance', 'FRM 金融風險管理師', 'FRM', '國際金融風險管理認證', 'GARP', '英文筆試', 0, '風控從業者', 5, 500, FALSE, 'free', 10, 'https://www.garp.org/', 'https://www.garp.org/', NULL, 100, 240, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('frm-ch0', 'frm', 0, '基礎風險概念', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('frm-ch1', 'frm', 1, '量化分析', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('frm-ch2', 'frm', 2, '金融市場與商品', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('frm-ch3', 'frm', 3, '風險模型', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cfa', 'finance', 'CFA 特許金融分析師', 'CFA', '全球金融分析頂級認證', 'CFA Institute', '英文筆試', 0, '資深金融從業者', 5, 800, FALSE, 'free', 10, 'https://www.cfainstitute.org/', 'https://www.cfainstitute.org/', NULL, 90, 135, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfa-ch0', 'cfa', 0, '道德與職業準則', 15, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfa-ch1', 'cfa', 1, '定量方法與經濟學', 15, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfa-ch2', 'cfa', 2, '財務報表分析', 15, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfa-ch3', 'cfa', 3, '投資工具', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cfa-ch4', 'cfa', 4, '組合管理', 30, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('aml', 'finance', '金融防制洗錢專業人員', '洗錢防制', '法遵必要資格', '台灣金融研訓院', '筆試', 0, '銀行法遵、洗錢防制', 3, 40000, FALSE, 'free', 10, 'https://www.tabf.org.tw/', 'https://register.tabf.org.tw/', NULL, 80, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aml-ch0', 'aml', 0, '洗錢防制法規', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aml-ch1', 'aml', 1, '金融機構實務', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aml-ch2', 'aml', 2, '可疑交易申報', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aml-ch3', 'aml', 3, '國際規範', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('sec-analyst', 'finance', '證券投資分析人員', '證券分析師', '證券分析師資格', '考選部/證基會', '筆試', 0, '資深分析師', 5, 1500, FALSE, 'free', 10, 'https://www.csa.org.tw/', 'https://www.csa.org.tw/', NULL, 100, 180, 60)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-analyst-ch0', 'sec-analyst', 0, '證券投資與財務分析', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-analyst-ch1', 'sec-analyst', 1, '會計及財務報表分析', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-analyst-ch2', 'sec-analyst', 2, '經濟學', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('sec-analyst-ch3', 'sec-analyst', 3, '投資組合管理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();

-- ── it-cert (25 筆) ──
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('tqcplus-office', 'it-cert', 'TQC+ 專業知識', 'TQC+', '電腦技能基礎認證', '財團法人中華民國電腦技能基金會 CSF', '上機測驗', 0, '學生、社會新鮮人', 2, 100000, FALSE, 'free', 10, 'https://www.csf.org.tw/', 'https://www.tqcplus.org.tw/', NULL, 50, 60, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-office-ch0', 'tqcplus-office', 0, 'Word 進階', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-office-ch1', 'tqcplus-office', 1, 'Excel 進階', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-office-ch2', 'tqcplus-office', 2, 'PowerPoint 進階', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-office-ch3', 'tqcplus-office', 3, '網際網路應用', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('tqcplus-prog', 'it-cert', 'TQC+ 程式設計', 'TQC+程式', '程式設計能力認證', 'CSF', '上機測驗', 0, '程式初學者、學生', 3, 30000, FALSE, 'free', 10, 'https://www.csf.org.tw/', 'https://www.tqcplus.org.tw/', NULL, 10, 100, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-prog-ch0', 'tqcplus-prog', 0, 'Python 實例', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-prog-ch1', 'tqcplus-prog', 1, 'Java 程式', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-prog-ch2', 'tqcplus-prog', 2, 'C 程式', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('tqcplus-prog-ch3', 'tqcplus-prog', 3, '邏輯運算', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('aws-ccp', 'it-cert', 'AWS Certified Cloud Practitioner', 'AWS CCP', 'AWS 雲端基礎認證', 'AWS', '電腦測驗', 0, 'IT 人員、管理者', 3, 10000, FALSE, 'free', 10, 'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', NULL, 65, 90, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-ccp-ch0', 'aws-ccp', 0, 'AWS 雲端概念', 26, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-ccp-ch1', 'aws-ccp', 1, '安全與合規', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-ccp-ch2', 'aws-ccp', 2, '技術核心服務', 33, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-ccp-ch3', 'aws-ccp', 3, '計費與定價', 16, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('aws-saa', 'it-cert', 'AWS Certified Solutions Architect – Associate', 'AWS SAA', 'AWS 解決方案架構師', 'AWS', '電腦測驗', 0, '雲端架構師', 4, 15000, FALSE, 'free', 10, 'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', NULL, 65, 130, 72)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-saa-ch0', 'aws-saa', 0, '彈性架構設計', 30, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-saa-ch1', 'aws-saa', 1, '高效架構設計', 28, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-saa-ch2', 'aws-saa', 2, '安全架構', 24, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-saa-ch3', 'aws-saa', 3, '成本最佳化', 18, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('aws-sap', 'it-cert', 'AWS Certified Solutions Architect – Professional', 'AWS SAP', 'AWS 專業架構師', 'AWS', '電腦測驗', 0, '資深雲端架構師', 5, 3000, FALSE, 'free', 10, 'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', NULL, 75, 180, 75)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-sap-ch0', 'aws-sap', 0, '複雜組織設計', 26, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-sap-ch1', 'aws-sap', 1, '新解決方案設計', 29, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-sap-ch2', 'aws-sap', 2, '持續改善', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-sap-ch3', 'aws-sap', 3, '加速遷移', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('aws-dva', 'it-cert', 'AWS Certified Developer – Associate', 'AWS DVA', 'AWS 開發者認證', 'AWS', '電腦測驗', 0, '雲端應用開發者', 4, 5000, FALSE, 'free', 10, 'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', NULL, 65, 130, 72)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-dva-ch0', 'aws-dva', 0, '開發 AWS 服務', 32, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-dva-ch1', 'aws-dva', 1, '安全', 26, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-dva-ch2', 'aws-dva', 2, '部署', 24, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-dva-ch3', 'aws-dva', 3, '疑難排解', 18, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('aws-soa', 'it-cert', 'AWS Certified SysOps Administrator – Associate', 'AWS SOA', 'AWS 系統管理認證', 'AWS', '電腦測驗', 0, 'IT 系統維運人員', 4, 4000, FALSE, 'free', 10, 'https://aws.amazon.com/certification/', 'https://aws.amazon.com/certification/', NULL, 65, 180, 72)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-soa-ch0', 'aws-soa', 0, '監控日誌與修復', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-soa-ch1', 'aws-soa', 1, '可靠性與持續性', 16, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-soa-ch2', 'aws-soa', 2, '部署預配', 18, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-soa-ch3', 'aws-soa', 3, '安全合規', 16, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-soa-ch4', 'aws-soa', 4, '網路內容傳遞', 18, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('aws-soa-ch5', 'aws-soa', 5, '成本最佳化', 12, 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('azure-900', 'it-cert', 'Microsoft Azure Fundamentals', 'AZ-900', 'Azure 雲端基礎認證', 'Microsoft', '電腦測驗', 0, 'IT 新手、業務', 2, 8000, FALSE, 'free', 10, 'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', NULL, 40, 85, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-900-ch0', 'azure-900', 0, '雲端概念', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-900-ch1', 'azure-900', 1, 'Azure 架構服務', 35, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-900-ch2', 'azure-900', 2, 'Azure 管理與治理', 30, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-900-ch3', 'azure-900', 3, '定價服務', 10, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('azure-104', 'it-cert', 'Microsoft Azure Administrator', 'AZ-104', 'Azure 管理員認證', 'Microsoft', '電腦測驗', 0, 'Azure 系統管理員', 4, 5000, FALSE, 'free', 10, 'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', NULL, 40, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-104-ch0', 'azure-104', 0, '身分管理', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-104-ch1', 'azure-104', 1, '儲存體管理', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-104-ch2', 'azure-104', 2, '計算資源', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-104-ch3', 'azure-104', 3, '虛擬網路', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-104-ch4', 'azure-104', 4, '監控備份', 15, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('azure-204', 'it-cert', 'Microsoft Azure Developer', 'AZ-204', 'Azure 開發者認證', 'Microsoft', '電腦測驗', 0, '雲端應用開發者', 4, 3000, FALSE, 'free', 10, 'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', NULL, 40, 150, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-204-ch0', 'azure-204', 0, 'Azure 計算解決方案', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-204-ch1', 'azure-204', 1, 'Azure 儲存體', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-204-ch2', 'azure-204', 2, 'Azure 安全性', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-204-ch3', 'azure-204', 3, '監控疑難排解', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-204-ch4', 'azure-204', 4, '連線取用 Azure', 15, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('azure-305', 'it-cert', 'Microsoft Azure Solutions Architect Expert', 'AZ-305', 'Azure 專家架構師', 'Microsoft', '電腦測驗', 0, '資深雲端架構師', 5, 2000, FALSE, 'free', 10, 'https://learn.microsoft.com/certifications/', 'https://learn.microsoft.com/certifications/', NULL, 60, 150, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-305-ch0', 'azure-305', 0, '身分治理監控', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-305-ch1', 'azure-305', 1, '資料儲存設計', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-305-ch2', 'azure-305', 2, '商務持續性', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('azure-305-ch3', 'azure-305', 3, '基礎架構設計', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gcp-ace', 'it-cert', 'Google Cloud Associate Cloud Engineer', 'GCP ACE', 'Google 雲端工程師', 'Google Cloud', '電腦測驗', 0, 'GCP 工程師', 4, 3000, FALSE, 'free', 10, 'https://cloud.google.com/certification/', 'https://cloud.google.com/certification/', NULL, 50, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-ace-ch0', 'gcp-ace', 0, '環境設定', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-ace-ch1', 'gcp-ace', 1, '規劃配置解決方案', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-ace-ch2', 'gcp-ace', 2, '部署實作', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-ace-ch3', 'gcp-ace', 3, '維運配置存取', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('gcp-pca', 'it-cert', 'Google Cloud Professional Cloud Architect', 'GCP PCA', 'Google 專業架構師', 'Google Cloud', '電腦測驗', 0, '資深雲端架構師', 5, 1500, FALSE, 'free', 10, 'https://cloud.google.com/certification/', 'https://cloud.google.com/certification/', NULL, 50, 120, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-pca-ch0', 'gcp-pca', 0, '設計與規劃', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-pca-ch1', 'gcp-pca', 1, '管理解決方案', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-pca-ch2', 'gcp-pca', 2, '安全合規', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('gcp-pca-ch3', 'gcp-pca', 3, '最佳化與商業流程', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('comptia-a', 'it-cert', 'CompTIA A+', 'A+', 'IT 硬體與作業系統入門認證', 'CompTIA', '電腦測驗', 0, 'IT 新手、技術支援', 3, 5000, FALSE, 'free', 10, 'https://www.comptia.org/certifications/a', 'https://www.comptia.org/certifications/a', NULL, 90, 90, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-a-ch0', 'comptia-a', 0, '行動裝置', 15, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-a-ch1', 'comptia-a', 1, '網路技術', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-a-ch2', 'comptia-a', 2, '硬體維護', 27, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-a-ch3', 'comptia-a', 3, '虛擬化與雲端', 12, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-a-ch4', 'comptia-a', 4, '硬體故障排除', 26, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('comptia-net', 'it-cert', 'CompTIA Network+', 'Network+', '網路技術基礎認證', 'CompTIA', '電腦測驗', 0, '網路工程師入門', 3, 4000, FALSE, 'free', 10, 'https://www.comptia.org/certifications/network', 'https://www.comptia.org/certifications/network', NULL, 90, 90, 72)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-net-ch0', 'comptia-net', 0, '網路基礎', 24, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-net-ch1', 'comptia-net', 1, '網路實作', 19, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-net-ch2', 'comptia-net', 2, '網路維運', 16, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-net-ch3', 'comptia-net', 3, '網路安全', 19, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-net-ch4', 'comptia-net', 4, '疑難排解', 22, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('comptia-sec', 'it-cert', 'CompTIA Security+', 'Security+', '資安基礎國際認證', 'CompTIA', '電腦測驗', 0, '資安從業者入門', 4, 6000, FALSE, 'free', 10, 'https://www.comptia.org/certifications/security', 'https://www.comptia.org/certifications/security', NULL, 90, 90, 75)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-sec-ch0', 'comptia-sec', 0, '威脅攻擊漏洞', 24, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-sec-ch1', 'comptia-sec', 1, '架構設計', 21, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-sec-ch2', 'comptia-sec', 2, '實作', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-sec-ch3', 'comptia-sec', 3, '維運應變', 16, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('comptia-sec-ch4', 'comptia-sec', 4, '治理風險合規', 14, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ccna', 'it-cert', 'Cisco CCNA', 'CCNA', 'Cisco 網路工程師認證', 'Cisco', '電腦測驗', 0, '網路工程師', 4, 4000, FALSE, 'free', 10, 'https://www.cisco.com/c/en/us/training-events/training-certifications/', 'https://www.cisco.com/c/en/us/training-events/', NULL, 100, 120, 82)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccna-ch0', 'ccna', 0, '網路基礎', 20, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccna-ch1', 'ccna', 1, '網路存取', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccna-ch2', 'ccna', 2, 'IP 連線', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccna-ch3', 'ccna', 3, 'IP 服務', 10, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccna-ch4', 'ccna', 4, '安全基礎', 15, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccna-ch5', 'ccna', 5, '自動化可程式化', 10, 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('ccnp', 'it-cert', 'Cisco CCNP Enterprise', 'CCNP', 'Cisco 網路專家認證', 'Cisco', '電腦測驗', 0, '資深網路工程師', 5, 1500, FALSE, 'free', 10, 'https://www.cisco.com/c/en/us/training-events/training-certifications/', 'https://www.cisco.com/c/en/us/training-events/', NULL, 100, 120, 82)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccnp-ch0', 'ccnp', 0, '核心技術', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccnp-ch1', 'ccnp', 1, '路由技術', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccnp-ch2', 'ccnp', 2, '交換技術', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('ccnp-ch3', 'ccnp', 3, 'SD-WAN', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('pmp', 'it-cert', 'PMP Project Management Professional', 'PMP', '國際專案管理師認證', 'PMI', '電腦測驗', 0, '專案經理、PM', 4, 8000, FALSE, 'free', 10, 'https://www.pmi.org/certifications/project-management-pmp', 'https://www.pmi.org/certifications/', NULL, 180, 230, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmp-ch0', 'pmp', 0, '人員層面', 42, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmp-ch1', 'pmp', 1, '流程層面', 50, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmp-ch2', 'pmp', 2, '商業環境', 8, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('pmi-acp', 'it-cert', 'PMI Agile Certified Practitioner', 'PMI-ACP', '敏捷專案管理認證', 'PMI', '電腦測驗', 0, '敏捷專案、Scrum', 4, 1500, FALSE, 'free', 10, 'https://www.pmi.org/certifications/agile-acp', 'https://www.pmi.org/certifications/', NULL, 120, 180, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch0', 'pmi-acp', 0, '敏捷原則思維', 16, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch1', 'pmi-acp', 1, '價值驅動交付', 20, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch2', 'pmi-acp', 2, '利害關係人', 17, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch3', 'pmi-acp', 3, '團隊績效', 16, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch4', 'pmi-acp', 4, '調整監控', 11, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch5', 'pmi-acp', 5, '問題解決', 10, 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('pmi-acp-ch6', 'pmi-acp', 6, '持續改善', 10, 6)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('scrum-master', 'it-cert', 'Certified ScrumMaster CSM', 'CSM', 'Scrum 敏捷認證', 'Scrum Alliance', '線上測驗', 0, 'Scrum Master', 3, 2000, FALSE, 'free', 10, 'https://www.scrumalliance.org/', 'https://www.scrumalliance.org/', NULL, 50, 60, 74)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('scrum-master-ch0', 'scrum-master', 0, 'Scrum 價值', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('scrum-master-ch1', 'scrum-master', 1, '角色職責', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('scrum-master-ch2', 'scrum-master', 2, '事件流程', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('scrum-master-ch3', 'scrum-master', 3, '工件產出', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cissp', 'it-cert', 'CISSP 資訊系統安全專家', 'CISSP', '國際資安頂級認證', 'ISC2', '電腦測驗', 0, '資深資安經理', 5, 1000, FALSE, 'free', 10, 'https://www.isc2.org/Certifications/CISSP', 'https://www.isc2.org/Certifications/CISSP', NULL, 125, 240, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch0', 'cissp', 0, '安全風險管理', 15, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch1', 'cissp', 1, '資產安全', 10, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch2', 'cissp', 2, '安全架構', 13, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch3', 'cissp', 3, '網路安全', 14, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch4', 'cissp', 4, '身分存取', 13, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch5', 'cissp', 5, '安全評估', 12, 5)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch6', 'cissp', 6, '安全維運', 13, 6)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cissp-ch7', 'cissp', 7, '軟體安全', 10, 7)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('cisa', 'it-cert', 'CISA 資訊系統稽核師', 'CISA', 'IT 稽核國際認證', 'ISACA', '電腦測驗', 0, 'IT 稽核師', 5, 1500, FALSE, 'free', 10, 'https://www.isaca.org/credentialing/cisa', 'https://www.isaca.org/credentialing/cisa', NULL, 150, 240, 70)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cisa-ch0', 'cisa', 0, '資訊系統稽核流程', 21, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cisa-ch1', 'cisa', 1, 'IT 治理管理', 17, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cisa-ch2', 'cisa', 2, '資訊系統開發', 12, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cisa-ch3', 'cisa', 3, 'IT 運營', 23, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('cisa-ch4', 'cisa', 4, '資訊資產保護', 27, 4)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('itil', 'it-cert', 'ITIL 4 Foundation', 'ITIL', 'IT 服務管理國際認證', 'AXELOS', '電腦測驗', 0, 'IT 服務管理人員', 3, 3000, FALSE, 'free', 10, 'https://www.axelos.com/certifications/', 'https://www.axelos.com/certifications/', NULL, 40, 60, 65)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('itil-ch0', 'itil', 0, '服務管理概念', 25, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('itil-ch1', 'itil', 1, 'ITIL 4 框架', 25, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('itil-ch2', 'itil', 2, '實作維度', 25, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('itil-ch3', 'itil', 3, '實踐管理', 25, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.exams (id, category_id, name, short_name, description, issuer, exam_format, duration_hours, target_audience, difficulty, annual_candidates, is_available, tier_requirement, free_daily_question_limit, official_url, registration_url, official_bank_url, mock_question_count, mock_time_minutes, mock_pass_score) VALUES
  ('oracle-oca', 'it-cert', 'Oracle Database OCA', 'OCA', 'Oracle 資料庫管理員認證', 'Oracle', '電腦測驗', 0, 'DBA 初學者', 4, 1500, FALSE, 'free', 10, 'https://education.oracle.com/certification', 'https://education.oracle.com/certification', NULL, 80, 120, 65)
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
  updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('oracle-oca-ch0', 'oracle-oca', 0, 'SQL 基礎', 30, 0)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('oracle-oca-ch1', 'oracle-oca', 1, '資料庫管理', 30, 1)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('oracle-oca-ch2', 'oracle-oca', 2, '備份還原', 20, 2)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();
INSERT INTO public.chapters (id, exam_id, chapter_number, name, question_count, sort_order) VALUES
  ('oracle-oca-ch3', 'oracle-oca', 3, '效能調校', 20, 3)
ON CONFLICT (id) DO UPDATE SET name = EXCLUDED.name, question_count = EXCLUDED.question_count, updated_at = NOW();

-- 共新增/更新 133 個考試, 533 個章節