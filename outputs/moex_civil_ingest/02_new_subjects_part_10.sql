-- W1.6 subjects batch 10 (10 rows)

INSERT INTO public.subjects (id, name)
VALUES
  ('sub-disabled-6e2f88c7-02', '行政法'),
  ('sub-disabled-6e2f88c7-03', '刑法'),
  ('sub-disabled-6e2f88c7-04', '商事法'),
  ('sub-disabled-6e2f88c7-05', '民事訴訟法與刑事訴訟法'),
  ('sub-disabled-77f8735d-01', '流行病學與生物統計學概要'),
  ('sub-disabled-77f8735d-02', '衛生法規與倫理概要'),
  ('sub-disabled-77f8735d-03', '衛生行政學概要'),
  ('sub-disabled-77f8735d-04', '食品與環境衛生學概要'),
  ('sub-disabled-d0d1b9a2-01', '中級會計學'),
  ('sub-disabled-d0d1b9a2-02', '成本與管理會計')
ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name;

INSERT INTO public.exam_subjects (exam_id, subject_id, sort_order)
SELECT v.exam_id, v.subject_id, v.sort_order FROM (VALUES
  ('disabled-6e2f88c7', 'sub-disabled-6e2f88c7-02', 2),
  ('disabled-6e2f88c7', 'sub-disabled-6e2f88c7-03', 3),
  ('disabled-6e2f88c7', 'sub-disabled-6e2f88c7-04', 4),
  ('disabled-6e2f88c7', 'sub-disabled-6e2f88c7-05', 5),
  ('disabled-77f8735d', 'sub-disabled-77f8735d-01', 1),
  ('disabled-77f8735d', 'sub-disabled-77f8735d-02', 2),
  ('disabled-77f8735d', 'sub-disabled-77f8735d-03', 3),
  ('disabled-77f8735d', 'sub-disabled-77f8735d-04', 4),
  ('disabled-d0d1b9a2', 'sub-disabled-d0d1b9a2-01', 1),
  ('disabled-d0d1b9a2', 'sub-disabled-d0d1b9a2-02', 2)
) AS v(exam_id, subject_id, sort_order)
WHERE NOT EXISTS (SELECT 1 FROM public.exam_subjects es WHERE es.exam_id=v.exam_id AND es.subject_id=v.subject_id);
