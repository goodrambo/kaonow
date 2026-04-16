#!/usr/bin/env python3
"""
Layer 4.5 — Upload question images to Supabase Storage.

Run on Mac (not sandbox) since it needs network access to Supabase.

Usage:
    pip3 install requests
    cd ~/Documents/Claude/Projects/KaoNow
    python3 content/images/upload_to_supabase.py

Required: Set your Supabase service_role key as env variable:
    export SUPABASE_SERVICE_KEY="eyJ..."

Find it at: Supabase Dashboard → Settings → API → service_role (secret)
"""

import os
import sys
import glob
import json
import requests
from pathlib import Path

# --- Config ---
PROJECT_URL = "https://myvfboezhnzgovowhaff.supabase.co"
BUCKET = "question-images"
IMAGES_DIR = Path(__file__).parent  # content/images/

SERVICE_KEY = os.environ.get("SUPABASE_SERVICE_KEY", "")
if not SERVICE_KEY:
    print("ERROR: Set SUPABASE_SERVICE_KEY environment variable first.")
    print("  export SUPABASE_SERVICE_KEY='eyJ...'")
    print("  (Find it at Supabase Dashboard → Settings → API → service_role)")
    sys.exit(1)

HEADERS = {
    "Authorization": f"Bearer {SERVICE_KEY}",
    "apikey": SERVICE_KEY,
}


def upload_file(local_path, remote_path):
    """Upload a single file to Supabase Storage."""
    url = f"{PROJECT_URL}/storage/v1/object/{BUCKET}/{remote_path}"

    with open(local_path, "rb") as f:
        data = f.read()

    resp = requests.post(
        url,
        headers={
            **HEADERS,
            "Content-Type": "image/png",
            "x-upsert": "true",
        },
        data=data,
    )

    if resp.status_code in (200, 201):
        return True
    else:
        print(f"  FAIL {remote_path}: {resp.status_code} {resp.text[:200]}")
        return False


def get_public_url(remote_path):
    """Get public URL for an uploaded file."""
    return f"{PROJECT_URL}/storage/v1/object/public/{BUCKET}/{remote_path}"


def main():
    # Find all exam subdirectories with PNG files
    exam_dirs = sorted([
        d for d in IMAGES_DIR.iterdir()
        if d.is_dir() and not d.name.startswith('_') and d.name != '__pycache__'
    ])

    all_images = []
    for exam_dir in exam_dirs:
        pngs = sorted(exam_dir.glob("*.png"))
        for p in pngs:
            all_images.append((exam_dir.name, p))

    print(f"=== Supabase Storage Upload ===")
    print(f"Bucket: {BUCKET}")
    print(f"Images to upload: {len(all_images)}")
    print(f"Exams: {len(exam_dirs)}")
    print()

    success = 0
    fail = 0
    results = []

    for i, (exam_id, img_path) in enumerate(all_images):
        qid = img_path.stem  # e.g., mech-elec-c-005
        remote_path = f"{exam_id}/{qid}.png"

        ok = upload_file(img_path, remote_path)
        if ok:
            success += 1
            public_url = get_public_url(remote_path)
            results.append({
                "question_id": qid,
                "exam_id": exam_id,
                "remote_path": remote_path,
                "public_url": public_url,
            })
        else:
            fail += 1

        # Progress every 20 files
        if (i + 1) % 20 == 0:
            print(f"  Progress: {i+1}/{len(all_images)} ({success} ok, {fail} fail)")

    print(f"\n=== Done ===")
    print(f"Success: {success}")
    print(f"Failed: {fail}")

    # Save results for SQL generation
    manifest_path = IMAGES_DIR / "_upload_manifest.json"
    with open(manifest_path, "w") as f:
        json.dump({
            "total_uploaded": success,
            "total_failed": fail,
            "bucket": BUCKET,
            "project_url": PROJECT_URL,
            "images": results,
        }, f, indent=2, ensure_ascii=False)

    print(f"Manifest saved: {manifest_path}")

    if success > 0:
        print(f"\nSample URL: {results[0]['public_url']}")


if __name__ == "__main__":
    main()
