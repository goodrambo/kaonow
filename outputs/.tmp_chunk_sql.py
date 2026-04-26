"""把 cap 114 chinese questions.json 切成多個小 SQL 檔，方便經 MCP execute_sql 灌"""
import json
from pathlib import Path

REPO_ROOT = Path("/sessions/fervent-wizardly-bardeen/mnt/KaoNow")
data = json.loads((REPO_ROOT / "content/parsed_cap/114-chinese/questions.json").read_text(encoding="utf-8"))

paper = data["paper"]
all_questions = data["questions"]
parents = [q for q in all_questions if q["question_type"] == "reading_passage"]
children = [q for q in all_questions if q["question_type"] != "reading_passage"]

OUT = REPO_ROOT / "outputs/cap_114_chunks"
OUT.mkdir(parents=True, exist_ok=True)


def jsonb_lit(obj):
    return "'" + json.dumps(obj, ensure_ascii=False).replace("'", "''") + "'::jsonb"


def sql_str(s):
    if s is None:
        return "NULL"
    return "'" + str(s).replace("'", "''") + "'"


# === 1. paper ===
paper_sql = f"""INSERT INTO public.exam_papers (
  id, exam_id, subject_id, roc_year, paper_title,
  source_family, source_ref, meta, is_active
) VALUES (
  {sql_str(paper['id'])}, {sql_str(paper['exam_id'])}, {sql_str(paper['subject_id'])},
  {paper['roc_year']}, {sql_str(paper['paper_title'])},
  {sql_str(paper['source_family'])},
  {jsonb_lit(paper['source_ref'])}, {jsonb_lit(paper['meta'])}, TRUE
)
ON CONFLICT (id) DO UPDATE SET
  paper_title = EXCLUDED.paper_title, source_ref = EXCLUDED.source_ref,
  meta = EXCLUDED.meta, updated_at = now();"""
(OUT / "01_paper.sql").write_text(paper_sql, encoding="utf-8")


def gen_questions_insert(rows, label):
    rows_lit = jsonb_lit(rows)
    return f"""-- {label}: {len(rows)} rows
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
FROM jsonb_to_recordset({rows_lit}) AS t(
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
  explanation = EXCLUDED.explanation, updated_at = now();"""


# === 2. parents ===
(OUT / "02_parents.sql").write_text(
    gen_questions_insert(parents, "passage parents"), encoding="utf-8"
)

# === 3+. children — split into batches of 14 ===
BATCH = 14
for i in range(0, len(children), BATCH):
    batch = children[i:i + BATCH]
    fname = f"03_children_{i//BATCH + 1:02d}.sql"
    (OUT / fname).write_text(
        gen_questions_insert(batch, f"children batch {i//BATCH + 1}"),
        encoding="utf-8",
    )

# 列表 + size
files = sorted(OUT.glob("*.sql"))
print(f"切成 {len(files)} 個檔：")
for f in files:
    print(f"  {f.name}  {f.stat().st_size:>6,} bytes")
