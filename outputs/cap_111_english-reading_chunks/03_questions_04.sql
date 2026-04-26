-- questions batch 4: 1 rows
INSERT INTO public.questions (
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
)
SELECT
  id, exam_id, subject_id, paper_id,
  question_type, question_text, options,
  correct_answer, correct_answer_json,
  parent_question_id, media,
  source, source_meta,
  is_active, auto_gradable, difficulty, explanation
FROM jsonb_to_recordset('[{"id": "cap-111-english-reading-043", "exam_id": "cap", "subject_id": "sub-cap-english-reading", "paper_id": "cap-111-english-reading", "question_type": "single_choice", "question_text": "(A) more than just games             (B) often played in public", "options": ["", "", "not so popular as before", "not first used to learn words"], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": "cap-111-english-reading-passage-40", "media": null, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:40+00:00", "source_pdf_sha1": "6e92f9b7c696", "answer_pdf_sha1": "5db25b41f664", "flags": ["option_incomplete"], "parse_confidence": 0.75, "original_question_number": 43, "raw_text": "43. (A) more than just games             (B) often played in public\n    (C) not so popular as before         (D) not first used to learn words\n\n\n\n\n"}, "is_active": false, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
  id text, exam_id text, subject_id text, paper_id text,
  question_type text, question_text text, options jsonb,
  correct_answer int, correct_answer_json jsonb,
  parent_question_id text, media jsonb,
  source text, source_meta jsonb,
  is_active boolean, auto_gradable boolean, difficulty int, explanation text
)
ON CONFLICT (id) DO UPDATE SET
  question_text = EXCLUDED.question_text, options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer, correct_answer_json = EXCLUDED.correct_answer_json,
  parent_question_id = EXCLUDED.parent_question_id, media = EXCLUDED.media,
  source_meta = EXCLUDED.source_meta,
  is_active = EXCLUDED.is_active, auto_gradable = EXCLUDED.auto_gradable,
  explanation = EXCLUDED.explanation, updated_at = now();