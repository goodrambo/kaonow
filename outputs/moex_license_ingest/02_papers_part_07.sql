-- moex_license_ingest 02_papers batch 7/7 (7 rows)

INSERT INTO public.exam_papers (id, exam_id, subject_id, roc_year, paper_title, source_family, source_ref, question_count, meta, is_active)
VALUES
  ('fire-eq-tech-moex-108-b8d45639', 'fire-eq-tech', 'sub-fire-eq-tech-03', 108, '消防設備士－消防法規概要（108 年度）', 'moex-gov-tw', '{"moex_exam_code": "108060", "moex_c": "502", "moex_s": "0908", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE),
  ('fire-eq-tech-moex-108-99dbadc8', 'fire-eq-tech', 'sub-fire-eq-tech-04', 108, '消防設備士－警報與避難系統消防安全設備概要（108 年度）', 'moex-gov-tw', '{"moex_exam_code": "108060", "moex_c": "502", "moex_s": "0909", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE),
  ('fire-eq-tech-moex-107-a98764b7', 'fire-eq-tech', 'sub-fire-eq-tech-01', 107, '消防設備士－水與化學系統消防安全設備概要（107 年度）', 'moex-gov-tw', '{"moex_exam_code": "107060", "moex_c": "502", "moex_s": "0910", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE),
  ('fire-eq-tech-moex-107-99dbadc8', 'fire-eq-tech', 'sub-fire-eq-tech-04', 107, '消防設備士－警報與避難系統消防安全設備概要（107 年度）', 'moex-gov-tw', '{"moex_exam_code": "107060", "moex_c": "502", "moex_s": "0909", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE),
  ('fire-eq-tech-moex-106-a98764b7', 'fire-eq-tech', 'sub-fire-eq-tech-01', 106, '消防設備士－水與化學系統消防安全設備概要（106 年度）', 'moex-gov-tw', '{"moex_exam_code": "106060", "moex_c": "502", "moex_s": "0910", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE),
  ('fire-eq-tech-moex-106-99dbadc8', 'fire-eq-tech', 'sub-fire-eq-tech-04', 106, '消防設備士－警報與避難系統消防安全設備概要（106 年度）', 'moex-gov-tw', '{"moex_exam_code": "106060", "moex_c": "502", "moex_s": "0909", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE),
  ('fire-eq-tech-moex-101-d69d8efd', 'fire-eq-tech', 'sub-fire-eq-tech-02', 101, '消防設備士－消防法規（101 年度）', 'moex-gov-tw', '{"moex_exam_code": "101070", "moex_c": "901", "moex_s": "0902", "moex_q": "1"}'::jsonb, 0, '{}'::jsonb, TRUE)
ON CONFLICT (id) DO UPDATE SET paper_title=EXCLUDED.paper_title, subject_id=EXCLUDED.subject_id, source_family=EXCLUDED.source_family, source_ref=EXCLUDED.source_ref, is_active=TRUE;
