"""Regenerate every SVG in `diagrams/` for Use of English Volume 2.

Run from this folder:  python generate_diagrams.py
"""

from __future__ import annotations

import importlib
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

MODULES = [
    "figs_eng2_a",
    "figs_eng2_b",
    "figs_eng2_c",
    "figs_eng2_d",
    "figs_eng2_e",
    "figs_eng2_f",
    "figs_eng2_cover",
]

for name in MODULES:
    try:
        mod = importlib.import_module(name)
    except ModuleNotFoundError:
        print(f"  (skipping {name}: not written yet)")
        continue
    mod.main()
    print(f"  {name}: done")
