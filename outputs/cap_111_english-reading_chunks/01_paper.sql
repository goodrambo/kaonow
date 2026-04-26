-- paper cap-111-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-111-english-reading', 'cap', 'sub-cap-english-reading',
  111, '111 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/111/111P_English.pdf", "pdf_sha1": "6e92f9b7c696", "answer_pdf_sha1": "5db25b41f664"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();