#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""cap_image_review_html.py — 把 cap_image_extract.py 的輸出渲染成可瀏覽 review HTML

對每個被抽到的題目，並排顯示：
  - 該頁的 PDF 原圖（可點開放大）
  - vision 抽到的 stem / options / figure_description
  - 裁切的 figure 縮圖
  - tier verdict + reason
  - DB 既有 question_text / options（for diff）

用法：
  python3 scripts/ingest/cap_image_review_html.py --year 114 --subject society
  python3 scripts/ingest/cap_image_review_html.py --all

輸出：outputs/cap_image_extract/review_{year}-{subject}.html
       outputs/cap_image_extract/review_all.html
"""
from __future__ import annotations

import argparse
import base64
import json
import sys
from pathlib import Path
from typing import Dict, List

REPO = Path(__file__).resolve().parents[2]
EXTRACT_DIR = REPO / "outputs/cap_image_extract"
PAGES_CACHE_DIR = EXTRACT_DIR / "pages_cache"
FIGURES_DIR = EXTRACT_DIR / "figures"


def b64_data_url(path: Path) -> str:
    """讀檔轉 data: URL（embed 進 HTML 不依賴外部檔案）"""
    if not path.exists():
        return ""
    data = base64.b64encode(path.read_bytes()).decode("ascii")
    return f"data:image/png;base64,{data}"


HTML_HEAD = """<!doctype html>
<html lang="zh-TW">
<head>
<meta charset="utf-8">
<title>cap image extract review — {title}</title>
<style>
  body { font-family: -apple-system, "PingFang TC", sans-serif; max-width: 1400px; margin: 0 auto; padding: 20px; background: #fafafa; }
  h1 { color: #2C3E50; }
  .summary { background: #fff; padding: 16px; border-radius: 8px; margin-bottom: 20px; box-shadow: 0 1px 3px rgba(0,0,0,.08); }
  .summary table { border-collapse: collapse; }
  .summary td, .summary th { padding: 6px 12px; text-align: left; border-bottom: 1px solid #eee; }
  .item { background: #fff; padding: 16px; border-radius: 8px; margin-bottom: 16px; box-shadow: 0 1px 3px rgba(0,0,0,.08); display: grid; grid-template-columns: 1fr 1.2fr; gap: 16px; }
  .item.tier-auto_ok { border-left: 4px solid #2E7D4F; }
  .item.tier-needs_review { border-left: 4px solid #D4921A; }
  .item.tier-reject { border-left: 4px solid #B85450; }
  .head { grid-column: 1 / -1; display: flex; justify-content: space-between; align-items: center; margin-bottom: 8px; }
  .qid { font-weight: 700; font-size: 16px; }
  .badge { padding: 3px 10px; border-radius: 12px; font-size: 12px; font-weight: 600; }
  .badge.tier-auto_ok { background: #E8F5E9; color: #2E7D4F; }
  .badge.tier-needs_review { background: #FFF8E1; color: #D4921A; }
  .badge.tier-reject { background: #FFEBEE; color: #B85450; }
  .left img { max-width: 100%; border: 1px solid #ddd; border-radius: 4px; cursor: zoom-in; }
  .left .figure-thumb { max-width: 200px; margin-top: 8px; border: 2px solid #2196F3; }
  .right h4 { margin: 6px 0; color: #555; font-size: 13px; text-transform: uppercase; letter-spacing: 0.5px; }
  .right .stem { background: #F5F8FA; padding: 10px; border-radius: 4px; line-height: 1.7; font-size: 14.5px; }
  .right .options { padding-left: 20px; line-height: 1.8; font-size: 14px; }
  .right .options li { margin-bottom: 4px; }
  .right .meta { font-size: 12px; color: #888; margin-top: 8px; }
  .reason { font-family: monospace; color: #666; font-size: 12px; }
  details summary { cursor: pointer; padding: 4px 0; color: #1976D2; font-size: 13px; }
  details .diff-section { background: #FFF3E0; padding: 8px; margin-top: 4px; border-radius: 4px; font-size: 13px; }
  .anchor-nav { background: #fff; padding: 12px; border-radius: 8px; margin-bottom: 20px; }
  .anchor-nav a { display: inline-block; margin: 4px 8px; color: #1976D2; text-decoration: none; }
  /* lightbox for clicking page image */
  .lightbox { display: none; position: fixed; top:0; left:0; right:0; bottom:0; background: rgba(0,0,0,.85); z-index: 99; cursor: zoom-out; padding: 30px; }
  .lightbox.show { display: flex; align-items: center; justify-content: center; }
  .lightbox img { max-width: 100%; max-height: 100%; }
</style>
</head>
<body>
<div class="lightbox" id="lb" onclick="this.classList.remove('show')"><img id="lbimg"></div>
<script>
function zoom(src) {
  document.getElementById('lbimg').src = src;
  document.getElementById('lb').classList.add('show');
}
</script>
"""


def render_one_paper(extract_path: Path) -> str:
    data = json.loads(extract_path.read_text(encoding="utf-8"))
    paper_id = data["paper_id"]
    stats = data["stats"]
    questions = sorted(data["questions"], key=lambda q: q["qnum"])

    # 取 page 圖 (data URL 太大會爆 HTML 大小，改 file:// reference)
    pages_dir = PAGES_CACHE_DIR / paper_id
    figures_dir = FIGURES_DIR / paper_id

    parts = [HTML_HEAD.replace("{title}", paper_id)]
    parts.append(f"<h1>cap image extract review — {paper_id}</h1>")
    tc = stats["tier_counts"]
    parts.append(f"""
<div class="summary">
  <table>
    <tr><th>extracted</th><td>{stats['extracted_count']} / {stats['target_count']}</td></tr>
    <tr><th>Tier 1 auto_ok</th><td>{tc.get('auto_ok',0)}</td></tr>
    <tr><th>Tier 2 needs_review</th><td>{tc.get('needs_review',0)}</td></tr>
    <tr><th>Tier 3 reject</th><td>{tc.get('reject',0)}</td></tr>
    <tr><th>cost</th><td>${stats['est_cost_usd']}</td></tr>
    <tr><th>failed pages</th><td>{stats['failed_pages']}</td></tr>
  </table>
</div>""")

    # nav
    nav_links = []
    for q in questions:
        nav_links.append(f"<a href='#q{q['qnum']}'>Q{q['qnum']} ({q['tier']})</a>")
    parts.append(f"<div class='anchor-nav'>{' '.join(nav_links)}</div>")

    for q in questions:
        ext = q["extracted"]
        page_img = pages_dir / f"page-{q['page']:02d}.png"
        if not page_img.exists():
            # 嘗試其他 zero-pad 格式
            cands = sorted(pages_dir.glob(f"page-*{q['page']}*.png"))
            if cands:
                page_img = cands[0]
        page_url = b64_data_url(page_img) if page_img.exists() else ""
        # figure thumb
        fig_path = figures_dir / f"q{q['qnum']:03d}.png"
        fig_url = b64_data_url(fig_path) if fig_path.exists() else ""

        opts_html = "".join(f"<li>{opt}</li>" for opt in (ext.get("options") or []))
        db_opts = q.get("db_options") or []
        if isinstance(db_opts, str):
            try:
                db_opts = json.loads(db_opts)
            except Exception:
                db_opts = []
        db_opts_html = "".join(f"<li>{(opt or '(空)')}</li>" for opt in db_opts) if db_opts else "<li>(空)</li>"

        if page_url:
            page_img_html = f'<img src="{page_url}" onclick="zoom(this.src)">'
        else:
            page_img_html = '<i>page image missing</i>'
        # figure_kind=full_page 跟左側頁面圖重複，省略 thumbnail 區塊
        figure_kind = q.get("figure_kind", "")
        if fig_url and figure_kind != "full_page":
            fig_html = f'<div><h4>裁切 figure</h4><img class="figure-thumb" src="{fig_url}" onclick="zoom(this.src)"></div>'
        else:
            fig_html = ''
        figure_status = "✅ image_url=full_page" if figure_kind == "full_page" else ("⚠️ no figure" if not fig_url else "")
        db_qtext = q.get('db_question_text') or '(空)'
        db_flags = q.get('db_flags')
        fig_desc = ext.get('figure_description') or '(空)'

        parts.append(f"""
<div class="item tier-{q['tier']}" id="q{q['qnum']}">
  <div class="head">
    <span class="qid">{paper_id} Q{q['qnum']}</span>
    <span class="badge tier-{q['tier']}">{q['tier']} — {q['tier_reason']}</span>
  </div>
  <div class="left">
    <h4>PDF page {q['page']}（點圖放大）</h4>
    {page_img_html}
    {fig_html}
  </div>
  <div class="right">
    <h4>vision-extracted stem (qnum={q['qnum']}, official ans=letter idx {q.get('db_correct_answer')})</h4>
    <div class="stem">{ext.get('stem','')}</div>
    <h4>options</h4>
    <ol class="options" type="A">{opts_html}</ol>
    <div class="meta">
      has_figure={ext.get('has_figure')} · figure_clarity={ext.get('figure_clarity')} · confidence={ext.get('confidence')} · figure_bbox={ext.get('figure_bbox_pct')}
    </div>
    <details>
      <summary>vs DB（pdftotext 既有）</summary>
      <div class="diff-section">
        <h4>db question_text</h4><div>{db_qtext}</div>
        <h4>db options</h4><ol type="A">{db_opts_html}</ol>
        <h4>db flags</h4><div>{db_flags}</div>
      </div>
    </details>
    <details>
      <summary>vision figure_description</summary>
      <div class="diff-section">{fig_desc}</div>
    </details>
  </div>
</div>""")

    parts.append("</body></html>")
    return "\n".join(parts)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--year", type=int)
    ap.add_argument("--subject")
    ap.add_argument("--all", action="store_true")
    args = ap.parse_args()

    if args.all:
        files = sorted(EXTRACT_DIR.glob("*.json"))
        files = [f for f in files if not f.name.startswith("review_")]
    elif args.year and args.subject:
        files = [EXTRACT_DIR / f"{args.year}-{args.subject}.json"]
    else:
        sys.exit("ERROR: 給 --year + --subject 或 --all")

    for f in files:
        if not f.exists():
            print(f"  skip {f.name}: not found")
            continue
        html = render_one_paper(f)
        out = EXTRACT_DIR / f"review_{f.stem}.html"
        out.write_text(html, encoding="utf-8")
        size_mb = out.stat().st_size / 1e6
        print(f"  wrote {out.name} ({size_mb:.1f} MB)")


if __name__ == "__main__":
    main()
