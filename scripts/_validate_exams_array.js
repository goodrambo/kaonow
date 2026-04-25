// validate exams[] array in index.html via JS eval
const fs = require('fs');
const html = fs.readFileSync('index.html', 'utf8');
const m = html.match(/const exams=\[([\s\S]*?)\n\];/);
if (!m) { console.log('NOT FOUND'); process.exit(1); }
const arrText = '[' + m[1] + '\n]';
try {
  const arr = eval('(' + arrText + ')');
  console.log('OK — exams.length =', arr.length);
  // 印每個 prof-exam 是否 available
  const profExams = arr.filter(e => e.categoryId === 'prof-exam');
  console.log('prof-exam total:', profExams.length, 'available:', profExams.filter(e => e.available).length);
  const techCert = arr.filter(e => e.categoryId === 'tech-cert');
  console.log('tech-cert total:', techCert.length, 'available:', techCert.filter(e => e.available).length);
  // 確認 8 新 exam 有
  const newOnes = ['dietitian','food-tech','medical-tech','fire-eq-eng','fire-eq-tech','structural-eng','optician','optometrist'];
  const present = newOnes.filter(id => arr.some(e => e.id === id));
  console.log('8 new exams present:', present.length, '/', newOnes.length);
} catch (e) {
  console.log('FAIL —', e.message);
  // 找出 line 號（粗略）
  const lineMatch = e.message.match(/(\d+):(\d+)/);
  if (lineMatch) console.log('approx line in array:', lineMatch[1]);
}
