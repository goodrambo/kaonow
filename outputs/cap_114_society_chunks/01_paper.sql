-- paper cap-114-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-114-society', 'cap', 'sub-cap-social',
  114, '114 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/114/114P_Society.pdf", "pdf_sha1": "a2859bc348a7", "answer_pdf_sha1": "6a98d676c5b0"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T18:39:26+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();