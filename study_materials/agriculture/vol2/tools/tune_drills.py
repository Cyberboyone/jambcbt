"""Tune the drill solution padding so each drill ends near the foot of its page."""

from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent
PDF = OUT / "JAMB_AgriculturalScience_Volume2_The_Animal_and_the_Farm_Business.pdf"


def load() -> dict:
    p = OUT / "_fit.json"
    return json.loads(p.read_text()) if p.exists() else {}


def save(d: dict) -> None:
    (OUT / "_fit.json").write_text(json.dumps(d, indent=2) + "\n")


def build() -> None:
    subprocess.run([sys.executable, str(HERE / "drills_agr1.py")], check=True,
                   stdout=subprocess.DEVNULL)
    subprocess.run([sys.executable, str(OUT / "build.py")], check=True,
                   stdout=subprocess.DEVNULL)


def measure(ch: int):
    import pymupdf

    doc = pymupdf.open(PDF)
    pages = []
    for i, p in enumerate(doc, 1):
        head = p.get_text().split("\n")[:2]
        if len(head) > 1 and head[1].startswith(f"Chapter {ch}:") and "Drills" in head[1]:
            pages.append(i)
    if not pages:
        return None
    last = max(pages)
    blocks = [b for b in doc[last - 1].get_text("blocks")
              if b[4].strip() and b[1] > 60 and b[3] < 790]
    bottom = max(b[3] for b in blocks) if blocks else 0
    return len(pages), round(bottom)


def main() -> int:
    build()
    for ch in range(1, 9):
        key = f"drill_ch{ch:02d}"
        data = load()
        best = None
        base = measure(ch)
        if base is None:
            print(f"ch{ch}: no drill pages found")
            continue
        print(f"ch{ch}: start pad={data.get(key)} span={base}")
        base_pages = base[0]
        for pad in (10, 13, 16, 19, 22, 26, 30, 34, 39, 44, 50):
            data = load()
            data[key] = pad
            save(data)
            build()
            got = measure(ch)
            print(f"   pad {pad:>4}: span={got[0]} bottom={got[1]}")
            if got[0] != base_pages:
                break
            if got[1] > 640:
                best = pad
                break
            best = pad
        data = load()
        data[key] = best if best is not None else 10
        save(data)
        build()
        print(f"-> ch{ch} pad {data[key]} {measure(ch)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
