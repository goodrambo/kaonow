#!/usr/bin/env python3
"""探查 public-com 答案 PDF 的字型/顏色，找答案 marker 規則"""
import pdfplumber
import sys
from collections import defaultdict


def probe(pdf_path):
    with pdfplumber.open(pdf_path) as pdf:
        # 找有 EUDC 的頁
        for pno, page in enumerate(pdf.pages):
            chars = page.chars
            if not any("EUDC" in c.get("fontname", "") for c in chars):
                continue
            text = page.extract_text() or ""
            if "乙、測驗題" not in text and "1.D" not in text and pno < 10:
                continue
            print(f"\n========== Page {pno+1} ==========")
            # group by y
            lines = defaultdict(list)
            for c in chars:
                y = round(c["top"], 0)
                lines[y].append(c)
            # show first ~30 lines
            for yi, y in enumerate(sorted(lines.keys())):
                if yi > 35:
                    break
                cs = sorted(lines[y], key=lambda c: c["x0"])
                line_text = "".join(c["text"] for c in cs)
                fonts = sorted({c.get("fontname", "?")[-15:] for c in cs})
                colors = sorted({str(c.get("non_stroking_color")) for c in cs})
                # Show pua codepoints in this line
                pua = [(c["x0"], hex(ord(c["text"])) if c["text"] else "?") for c in cs if c.get("text") and "EUDC" in c.get("fontname", "")]
                rep = repr(line_text[:80])
                print(f"y={y:6.0f}  fonts={fonts}  colors={colors}")
                print(f"   text={rep}")
                if pua:
                    print(f"   pua={pua}")


def find_red(pdf_path):
    """找紅色 (1.0, 0.0, 0.0) 的字"""
    with pdfplumber.open(pdf_path) as pdf:
        red_count = 0
        for pno, page in enumerate(pdf.pages):
            chars = page.chars
            red = [c for c in chars if str(c.get("non_stroking_color")) == "(1.0, 0.0, 0.0)"]
            if red:
                non_header_red = [c for c in red if c["top"] > 25]  # 排除頁眉
                if non_header_red:
                    print(f"\n--- Page {pno+1}: {len(non_header_red)} non-header red chars ---")
                    for c in non_header_red[:30]:
                        t = c["text"]
                        cp = ord(t) if len(t) == 1 else "?"
                        print(f"  '{t}' (U+{cp:04X if isinstance(cp,int) else 0:04X}) fn={c.get('fontname','?')[:25]} y={c['top']:.1f} x={c['x0']:.1f}")
                    red_count += len(non_header_red)
        print(f"\nTOTAL non-header red chars: {red_count}")


def list_pua(pdf_path):
    """列出整 PDF 的 EUDC PUA 碼點分布"""
    with pdfplumber.open(pdf_path) as pdf:
        from collections import Counter
        pua = Counter()
        for page in pdf.pages:
            for c in page.chars:
                if "EUDC" in c.get("fontname", ""):
                    t = c["text"]
                    if t and len(t) == 1:
                        pua[hex(ord(t))] += 1
        print("PUA codepoints (most common):")
        for cp, ct in pua.most_common(40):
            print(f"  {cp}: {ct}")


if __name__ == "__main__":
    cmd = sys.argv[1]
    if cmd == "probe":
        probe(sys.argv[2])
    elif cmd == "red":
        find_red(sys.argv[2])
    elif cmd == "pua":
        list_pua(sys.argv[2])
