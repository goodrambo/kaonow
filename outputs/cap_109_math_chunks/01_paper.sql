-- paper cap-109-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-109-math', 'cap', 'sub-cap-math',
  109, '109 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/109/109P_Math150DPI.pdf", "pdf_sha1": "551f42c20633", "answer_pdf_sha1": "64e8d2b7d3a1"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();