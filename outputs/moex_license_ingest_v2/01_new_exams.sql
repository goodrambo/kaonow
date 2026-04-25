-- W1.4 new exams: structural-eng / optician / optometrist

INSERT INTO public.exams (id, name, short_name, description, category_id, is_available, sort_order)
VALUES
  ('structural-eng', '結構工程技師', '結構技師', '結構工程專業專技高考', 'prof-exam', FALSE, 110),
  ('optician', '驗光生', '驗光生', '驗光生專技普考', 'prof-exam', FALSE, 111),
  ('optometrist', '驗光師', '驗光師', '驗光師專技高考', 'prof-exam', FALSE, 112)
ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name, short_name=EXCLUDED.short_name;
