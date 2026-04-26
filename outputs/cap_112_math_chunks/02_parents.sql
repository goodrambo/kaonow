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
FROM jsonb_to_recordset('[{"id": "cap-112-math-passage-24", "exam_id": "cap", "subject_id": "sub-cap-math", "paper_id": "cap-112-math", "question_type": "reading_passage", "question_text": "請閱讀下列敘述後，回答 24 ～ 25 題", "options": [], "correct_answer": 0, "correct_answer_json": null, "parent_question_id": null, "media": {"passage_text": "人口老化是國家人口分布向高年齡偏移的現象，許多國家已開始面臨此問題。\n依國際常用定義，一個國家中的 65 歲以上人口占總人口的百分比為 7% 以上(含)\n且未達 14% 時稱作「高齡化社會」，14% 以上(含)且未達 20% 時稱作「高齡\n社會」，20% 以上(含)時稱作「超高齡社會」。\n 百分比＝百分率", "kind_hint": "single"}, "source": "official", "source_meta": {"parser_version": "cap_v0.1", "merger_version": "cap_merger_v0.2", "parsed_at": "2026-04-25T19:26:41+00:00", "source_pdf_sha1": "c426053cd722", "answer_pdf_sha1": "16ca7e0abba6", "flags": [], "parse_confidence": null, "intro_line": "請閱讀下列敘述後，回答 24 ～ 25 題", "child_qnums": [24, 25]}, "is_active": true, "auto_gradable": false, "difficulty": 3, "explanation": null}]'::jsonb) AS t(
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