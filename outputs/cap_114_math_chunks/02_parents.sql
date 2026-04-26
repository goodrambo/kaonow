-- passage parents: 1 rows
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
FROM jsonb_to_recordset('[{"id": "cap-114-math-passage-24", "exam_id": "cap", "subject_id": "sub-cap-math", "paper_id": "cap-114-math", "question_type": "reading_passage", "question_text": "請閱讀下列選文後，回答 24 ～ 25 題", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "小桃買了ㄧ輛變速自行車，在騎乘時可以切換不同的前齒輪齒數與後齒輪\n齒數的組合來適應各種坡度。已知這輛自行車的前齒輪有 3 種齒數，後齒輪有 6 種\n齒數，如表(一)所示，前齒輪齒數與後齒輪齒數的組合有 3 × 6 = 18 種，因此這\n輛自行車稱為 18 段變速自行車。\n表(一)\n前齒輪齒數\n已知，齒輪比 =    ，它代表前齒輪轉動一圈會帶動後齒輪轉動\n後齒輪齒數\n多少圈，齒輪比越大，自行車踩起來越費力。", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:42+00:00", "source_pdf_sha1": "534f44e0befe", "answer_pdf_sha1": "6a98d676c5b0", "flags": [], "parse_confidence": null, "intro_line": "請閱讀下列選文後，回答 24 ～ 25 題", "child_qnums": [24, 25]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
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