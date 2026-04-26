-- paper cap-110-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-110-chinese', 'cap', 'sub-cap-chinese',
  110, '110 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/110/110P_Chinese.pdf", "pdf_sha1": "e0d22e4351f7", "answer_pdf_sha1": "bbb08ff8c483"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T16:59:36+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();