#!/usr/bin/env python3
import json, subprocess, sys

slug = sys.argv[1] if len(sys.argv) > 1 else "accountant"
n = int(sys.argv[2]) if len(sys.argv) > 2 else 5

d = json.loads(open("content/config/moex_license_map_diff.json").read())
print(f"first {n} {slug} diff entries:")
for e in d[slug][:n]:
    s_repr = repr(e["subject"])
    print(f"  {e['year']} {e['exam_code']} c={e['c']} s={e['s']} q={e['q']} subject={s_repr}")
print()
# probe first PDF
e = d[slug][0]
qpdf = f"content/sources/_inbox/openclaw-data/moex-gov-tw/exams/{e['year']}/{e['exam_code']}/{e['q_pdf']}"
apdf = f"content/sources/_inbox/openclaw-data/moex-gov-tw/exams/{e['year']}/{e['exam_code']}/{e['a_pdf']}"
print(f"=== Q: {qpdf} ===")
proc = subprocess.run(["pdftotext", "-layout", qpdf, "-"], capture_output=True, text=True)
print(proc.stdout[:1500] if proc.returncode == 0 else f"[failed] {proc.stderr}")
print()
print(f"=== A: {apdf} ===")
proc = subprocess.run(["pdftotext", "-layout", apdf, "-"], capture_output=True, text=True)
print(proc.stdout[:800] if proc.returncode == 0 else f"[failed] {proc.stderr}")
