#!/usr/bin/env python3
"""Update ipb formula source URL and sha256 for a new release tag."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


FORMULA_PATH = Path(__file__).resolve().parents[1] / "Formula" / "ipb.rb"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Bump Formula/ipb.rb release source.")
    parser.add_argument("--version", required=True, help="Release version (e.g. 0.1.1)")
    parser.add_argument(
        "--sha256",
        required=True,
        help="SHA256 of GitHub release tarball",
    )
    parser.add_argument(
        "--repo",
        default="smartbartdev/icloud-photos-sync",
        help="GitHub repo owner/name for source URL",
    )
    return parser.parse_args()


def bump_formula(formula_text: str, *, version: str, sha256: str, repo: str) -> str:
    tag = f"v{version}"
    new_url = f"https://github.com/{repo}/archive/refs/tags/{tag}.tar.gz"

    url_pattern = r'^\s*url\s+"https://github\.com/[^"]+/archive/refs/tags/v[^"]+\.tar\.gz"\s*$'
    if re.search(url_pattern, formula_text, flags=re.MULTILINE) is None:
        raise RuntimeError("Could not update formula url line.")
    updated = re.sub(
        url_pattern,
        f'  url "{new_url}"',
        formula_text,
        count=1,
        flags=re.MULTILINE,
    )

    updated2 = re.sub(
        r'^\s*sha256\s+"[0-9a-f]{64}"\s*$',
        f'  sha256 "{sha256}"',
        updated,
        count=1,
        flags=re.MULTILINE,
    )

    return updated2


def main() -> int:
    args = parse_args()
    formula = FORMULA_PATH.read_text(encoding="utf-8")
    updated = bump_formula(
        formula,
        version=args.version,
        sha256=args.sha256,
        repo=args.repo,
    )
    FORMULA_PATH.write_text(updated, encoding="utf-8")
    print(f"Updated {FORMULA_PATH} to v{args.version}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
