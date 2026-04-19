-- P3.3 pilot：osh-a 複選題 6 題
-- 規則：
--   - source='ai_generated' 但 reviewed_at=NOW()（讓 questions_published view 看得到）
--   - correct_answer (int) 設為 correct_answer_json 第一個值（僅為滿足 NOT NULL + >=0）
--   - 前端以 question_type='multiple_choice' + correct_answer_json 為準
--   - source_meta 標 pilot 方便未來 cleanup
-- 若需回滾：DELETE FROM questions WHERE id LIKE 'osh-a-ch0-mc%';

INSERT INTO questions (
  id, exam_id, chapter_id, question_text, options,
  correct_answer, correct_answer_json, question_type,
  explanation, difficulty, source, reviewed_at, source_meta, is_active
) VALUES
(
  'osh-a-ch0-mc01',
  'osh-a', 'osh-a-ch0',
  '依「危險性機械及設備安全檢查規則」，下列哪些屬於「危險性機械」？（複選）',
  '[{"key":"A","text":"固定式起重機（吊升荷重 3 公噸以上）"},{"key":"B","text":"研磨機"},{"key":"C","text":"移動式起重機（吊升荷重 3 公噸以上）"},{"key":"D","text":"營建用升降機"}]'::jsonb,
  0,
  '[0,2,3]'::jsonb,
  'multiple_choice',
  '研磨機屬於一般機械，非「危險性機械」。依檢查規則 §3，危險性機械包含：固定式起重機、移動式起重機、人字臂起重桿、營建用升降機、營建用提升機、吊籠。',
  3, 'ai_generated', NOW(),
  '{"pilot": true, "test_type": "multi_choice_pilot", "batch": "p3.3"}'::jsonb,
  true
),
(
  'osh-a-ch0-mc02',
  'osh-a', 'osh-a-ch0',
  '依「職業安全衛生教育訓練規則」，雇主對新僱勞工應施以下列哪些教育訓練？（複選）',
  '[{"key":"A","text":"一般安全衛生教育訓練"},{"key":"B","text":"消防演練訓練（除非職務相關）"},{"key":"C","text":"預防災變及緊急應變之訓練"},{"key":"D","text":"與其實際從事作業有關之安全衛生教育訓練"}]'::jsonb,
  0,
  '[0,2,3]'::jsonb,
  'multiple_choice',
  '依規則 §16～§17：新僱勞工應接受一般安全衛生訓練、實際作業相關訓練、預防災變及緊急應變訓練。消防演練訓練非普遍強制（除非該職務與消防相關）。',
  3, 'ai_generated', NOW(),
  '{"pilot": true, "test_type": "multi_choice_pilot", "batch": "p3.3"}'::jsonb,
  true
),
(
  'osh-a-ch0-mc03',
  'osh-a', 'osh-a-ch0',
  '依《職業安全衛生法》§2，下列何者屬於「職業災害」？（複選）',
  '[{"key":"A","text":"勞工於作業場所被機械設備夾傷"},{"key":"B","text":"勞工於休假日自行從事登山活動受傷"},{"key":"C","text":"勞工因執行職務遭受他人暴力攻擊致身心傷害"},{"key":"D","text":"勞工因作業場所化學品暴露罹患職業病"}]'::jsonb,
  0,
  '[0,2,3]'::jsonb,
  'multiple_choice',
  '職安法 §2：職業災害指因勞動場所之機械、設備、化學品或職業上原因所致之工作者疾病、傷害、失能或死亡。B 為非職務活動，不屬之。',
  3, 'ai_generated', NOW(),
  '{"pilot": true, "test_type": "multi_choice_pilot", "batch": "p3.3"}'::jsonb,
  true
),
(
  'osh-a-ch0-mc04',
  'osh-a', 'osh-a-ch0',
  '依「勞工健康保護規則」，下列何者屬於應實施特殊健康檢查之「特別危害健康作業」？（複選）',
  '[{"key":"A","text":"高溫作業"},{"key":"B","text":"噪音暴露達 85 dB(A) 以上作業"},{"key":"C","text":"一般辦公室文書作業"},{"key":"D","text":"游離輻射作業"}]'::jsonb,
  0,
  '[0,1,3]'::jsonb,
  'multiple_choice',
  '依保護規則附表一，特別危害健康作業含：高溫、噪音（85 dB(A) 以上）、游離輻射、異常氣壓、鉛、粉塵等。一般辦公作業不屬之。',
  3, 'ai_generated', NOW(),
  '{"pilot": true, "test_type": "multi_choice_pilot", "batch": "p3.3"}'::jsonb,
  true
),
(
  'osh-a-ch0-mc05',
  'osh-a', 'osh-a-ch0',
  '依《職業安全衛生法施行細則》§11，職業安全衛生委員會成員應包含下列哪些人員？（複選）',
  '[{"key":"A","text":"雇主或其代表"},{"key":"B","text":"職業安全衛生人員"},{"key":"C","text":"工程技術人員"},{"key":"D","text":"事業單位員工之眷屬代表"}]'::jsonb,
  0,
  '[0,1,2]'::jsonb,
  'multiple_choice',
  '施行細則 §11 規定委員會成員由雇主指派，含雇主代表、工程技術人員、職業安全衛生人員、勞工代表（至少 1/3）、廠區健康服務醫護人員等。眷屬代表非委員會成員。',
  3, 'ai_generated', NOW(),
  '{"pilot": true, "test_type": "multi_choice_pilot", "batch": "p3.3"}'::jsonb,
  true
),
(
  'osh-a-ch0-mc06',
  'osh-a', 'osh-a-ch0',
  '依規定，雇主應提供勞工必要「個人防護具」之情形，下列何者屬之？（複選）',
  '[{"key":"A","text":"從事有墜落危險之高處作業"},{"key":"B","text":"從事噪音超過規定值之作業"},{"key":"C","text":"從事一般事務機構之辦公室作業"},{"key":"D","text":"從事電銲或類似有害光線暴露之作業"}]'::jsonb,
  0,
  '[0,1,3]'::jsonb,
  'multiple_choice',
  '職安法 §6 及職業安全衛生設施規則：雇主應使勞工於有墜落、噪音、有害光線、飛物等危害之作業配戴個人防護具。一般辦公作業不需特殊防護具。',
  3, 'ai_generated', NOW(),
  '{"pilot": true, "test_type": "multi_choice_pilot", "batch": "p3.3"}'::jsonb,
  true
);
