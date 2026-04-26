-- paper cap-104-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-104-chinese', 'cap', 'sub-cap-chinese',
  104, '104 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/104/104P_Chinese.pdf", "pdf_sha1": "d8389a61e98a", "answer_pdf_sha1": "c729af5ae186"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T16:59:36+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-104-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-104-english-reading', 'cap', 'sub-cap-english-reading',
  104, '104 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/104/104P_English.pdf", "pdf_sha1": "7e06d678a537", "answer_pdf_sha1": "c729af5ae186"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-104-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-104-math', 'cap', 'sub-cap-math',
  104, '104 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/104/104P_Math.pdf", "pdf_sha1": "f4fb2891ed30", "answer_pdf_sha1": "c729af5ae186"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-104-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-104-society', 'cap', 'sub-cap-social',
  104, '104 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/104/104P_Society.pdf", "pdf_sha1": "120f2a4be097", "answer_pdf_sha1": "c729af5ae186"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-105-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-105-chinese', 'cap', 'sub-cap-chinese',
  105, '105 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/105/105P_Chinese150DPI.pdf", "pdf_sha1": "9643cac0c05a", "answer_pdf_sha1": "e4e2292682e2"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-105-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-105-english-reading', 'cap', 'sub-cap-english-reading',
  105, '105 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/105/105P_English150DPI.pdf", "pdf_sha1": "8d9695f6f61b", "answer_pdf_sha1": "e4e2292682e2"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-105-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-105-math', 'cap', 'sub-cap-math',
  105, '105 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/105/105P_Math150DPI.pdf", "pdf_sha1": "38269b505e4e", "answer_pdf_sha1": "e4e2292682e2"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-105-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-105-society', 'cap', 'sub-cap-social',
  105, '105 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/105/105P_Society150DPI.pdf", "pdf_sha1": "6955cd94c1bb", "answer_pdf_sha1": "e4e2292682e2"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-106-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-106-chinese', 'cap', 'sub-cap-chinese',
  106, '106 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/106/106P_Chinese150DPI.pdf", "pdf_sha1": "97fdb0fabe32", "answer_pdf_sha1": "0fa526cf1539"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:37+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-106-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-106-english-reading', 'cap', 'sub-cap-english-reading',
  106, '106 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/106/106P_English150DPI.pdf", "pdf_sha1": "bdb4f62524e6", "answer_pdf_sha1": "0fa526cf1539"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-106-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-106-math', 'cap', 'sub-cap-math',
  106, '106 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/106/106P_Math150DPI.pdf", "pdf_sha1": "b378ee559c35", "answer_pdf_sha1": "0fa526cf1539"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-106-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-106-society', 'cap', 'sub-cap-social',
  106, '106 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/106/106P_Society150DPI.pdf", "pdf_sha1": "3dae370215e1", "answer_pdf_sha1": "0fa526cf1539"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-107-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-107-chinese', 'cap', 'sub-cap-chinese',
  107, '107 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/107/107P_Chinese.pdf", "pdf_sha1": "2d7d32b90c63", "answer_pdf_sha1": "05a67d1d6082"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-107-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-107-english-reading', 'cap', 'sub-cap-english-reading',
  107, '107 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/107/107P_English.pdf", "pdf_sha1": "68699662d5b2", "answer_pdf_sha1": "05a67d1d6082"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-107-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-107-math', 'cap', 'sub-cap-math',
  107, '107 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/107/107P_Math.pdf", "pdf_sha1": "802b13af9b18", "answer_pdf_sha1": "05a67d1d6082"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-107-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-107-society', 'cap', 'sub-cap-social',
  107, '107 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/107/107P_Society.pdf", "pdf_sha1": "f2d1c3f41a4f", "answer_pdf_sha1": "05a67d1d6082"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-108-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-108-chinese', 'cap', 'sub-cap-chinese',
  108, '108 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/108/108P_Chinese150DPI.pdf", "pdf_sha1": "3524d2dcb418", "answer_pdf_sha1": "71bcc8be1a46"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:38+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-108-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-108-english-reading', 'cap', 'sub-cap-english-reading',
  108, '108 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/108/108P_English150DPI.pdf", "pdf_sha1": "c53c93460131", "answer_pdf_sha1": "71bcc8be1a46"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-108-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-108-math', 'cap', 'sub-cap-math',
  108, '108 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/108/108P_Math150DPI.pdf", "pdf_sha1": "494859e1fd87", "answer_pdf_sha1": "71bcc8be1a46"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-108-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-108-society', 'cap', 'sub-cap-social',
  108, '108 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/108/108P_Society150DPI.pdf", "pdf_sha1": "f43eb7872bea", "answer_pdf_sha1": "71bcc8be1a46"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-109-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-109-chinese', 'cap', 'sub-cap-chinese',
  109, '109 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/109/109P_Chinese150DPI-2.pdf", "pdf_sha1": "17ed74d9cea4", "answer_pdf_sha1": "64e8d2b7d3a1"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-109-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-109-english-reading', 'cap', 'sub-cap-english-reading',
  109, '109 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/109/109P_English150DPI.pdf", "pdf_sha1": "26792f0afea3", "answer_pdf_sha1": "64e8d2b7d3a1"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

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
-- ---

-- paper cap-109-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-109-society', 'cap', 'sub-cap-social',
  109, '109 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/109/109P_Society150DPI.pdf", "pdf_sha1": "16c3c9d61729", "answer_pdf_sha1": "64e8d2b7d3a1"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

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
-- ---

-- paper cap-110-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-110-english-reading', 'cap', 'sub-cap-english-reading',
  110, '110 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/110/110P_English.pdf", "pdf_sha1": "cae155b30a50", "answer_pdf_sha1": "bbb08ff8c483"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-110-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-110-math', 'cap', 'sub-cap-math',
  110, '110 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/110/110P_Math.pdf", "pdf_sha1": "7cc040862a87", "answer_pdf_sha1": "bbb08ff8c483"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-110-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-110-society', 'cap', 'sub-cap-social',
  110, '110 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/110/110P_Society.pdf", "pdf_sha1": "582e77c3260a", "answer_pdf_sha1": "bbb08ff8c483"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-111-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-111-chinese', 'cap', 'sub-cap-chinese',
  111, '111 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/111/111P_Chinese.pdf", "pdf_sha1": "a6fe6a465aa1", "answer_pdf_sha1": "5db25b41f664"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

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
-- ---

-- paper cap-111-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-111-math', 'cap', 'sub-cap-math',
  111, '111 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/111/111P_Math.pdf", "pdf_sha1": "0e1f53571a26", "answer_pdf_sha1": "5db25b41f664"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-111-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-111-society', 'cap', 'sub-cap-social',
  111, '111 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/111/111P_Society.pdf", "pdf_sha1": "017dd4352325", "answer_pdf_sha1": "5db25b41f664"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-112-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-112-chinese', 'cap', 'sub-cap-chinese',
  112, '112 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/112/112P_Chinese.pdf", "pdf_sha1": "d20b649a6a5c", "answer_pdf_sha1": "16ca7e0abba6"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-112-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-112-english-reading', 'cap', 'sub-cap-english-reading',
  112, '112 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/112/112P_English.pdf", "pdf_sha1": "cf3633650349", "answer_pdf_sha1": "16ca7e0abba6"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-112-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-112-math', 'cap', 'sub-cap-math',
  112, '112 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/112/112P_Math.pdf", "pdf_sha1": "c426053cd722", "answer_pdf_sha1": "16ca7e0abba6"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-112-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-112-society', 'cap', 'sub-cap-social',
  112, '112 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/112/112P_Society.pdf", "pdf_sha1": "388a2cade52f", "answer_pdf_sha1": "16ca7e0abba6"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-113-chinese
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-113-chinese', 'cap', 'sub-cap-chinese',
  113, '113 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/113/113P_Chinese.pdf", "pdf_sha1": "5d1e7c5bf58a", "answer_pdf_sha1": "b5ad08c86f8b"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T16:59:36+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-113-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-113-english-reading', 'cap', 'sub-cap-english-reading',
  113, '113 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/113/113P_English.pdf", "pdf_sha1": "75b1ef57c78d", "answer_pdf_sha1": "b5ad08c86f8b"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:42+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-113-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-113-math', 'cap', 'sub-cap-math',
  113, '113 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/113/113P_Math.pdf", "pdf_sha1": "337ebc6dabf5", "answer_pdf_sha1": "b5ad08c86f8b"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:42+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-113-society
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-113-society', 'cap', 'sub-cap-social',
  113, '113 年國中教育會考社會科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/113/113P_Society.pdf", "pdf_sha1": "393a484362c4", "answer_pdf_sha1": "b5ad08c86f8b"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-114-chinese', 'cap', 'sub-cap-chinese',
  114, '114 年國中教育會考國文科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/114/114P_Chinese.pdf", "pdf_sha1": "29771b95c3d8", "answer_pdf_sha1": "6a98d676c5b0"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T16:58:12+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-114-english-reading
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-114-english-reading', 'cap', 'sub-cap-english-reading',
  114, '114 年國中教育會考英語科(閱讀)',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/114/114P_English.pdf", "pdf_sha1": "dec9486b85ec", "answer_pdf_sha1": "6a98d676c5b0"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T18:39:39+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

-- paper cap-114-math
INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  'cap-114-math', 'cap', 'sub-cap-math',
  114, '114 年國中教育會考數學科',
  'cap-rcpet-edu-tw',
  '{"pdf_path": "content/sources/_inbox/openclaw-data/cap-rcpet-edu-tw/study/cap/main/questions/by-year/114/114P_Math.pdf", "pdf_sha1": "534f44e0befe", "answer_pdf_sha1": "6a98d676c5b0"}'::jsonb, '{"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:42+00:00"}'::jsonb, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();
-- ---

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
-- ---

