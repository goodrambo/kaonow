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
FROM jsonb_to_recordset('[{"id": "cap-113-math-passage-24", "exam_id": "cap", "subject_id": "sub-cap-math", "paper_id": "cap-113-math", "question_type": "reading_passage", "question_text": "請閱讀下列敘述後，回答 24 ～ 25 題", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "體重為衡量個人健康的重要指標之一，表(一)為成年人利用身高(公尺)計算\n理想體重(公斤)的三種方式，由於這些計算方式沒有考慮脂肪及肌肉重量占體重的\n比例，因此結果僅供參考。\n表(一)", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:42+00:00", "source_pdf_sha1": "337ebc6dabf5", "answer_pdf_sha1": "b5ad08c86f8b", "flags": [], "parse_confidence": null, "intro_line": "請閱讀下列敘述後，回答 24 ～ 25 題", "child_qnums": [24, 25]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
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