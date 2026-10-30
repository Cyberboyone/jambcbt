"""Regenerate every SVG in `diagrams/` for Use of English Volume 3.

Run from this folder:  python generate_diagrams.py
"""

from __future__ import annotations

import importlib
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

MODULES = [
    "figs_eng3_a",
    "figs_eng3_b",
    "figs_eng3_c",
    "figs_eng3_cover",
]

for name in MODULES:
    try:
        mod = importlib.import_module(name)
    except ModuleNotFoundError:
        print(f"  (skipping {name}: not written yet)")
        continue
    mod.main()
    print(f"  {name}: done")
