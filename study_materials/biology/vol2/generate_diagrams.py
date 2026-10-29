#!/usr/bin/env python3
"""Regenerate every vector diagram used by JAMB Biology Volume 2."""

import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "diagrams_gen"))

import figs_v2_a as A       # noqa: E402

MODULES = [("A", A)]

try:
    import figs_v2_b as B   # noqa: E402
    MODULES.append(("B", B))
except ImportError:
    B = None

try:
    import figs_v2_c as C   # noqa: E402
    MODULES.append(("C", C))
except ImportError:
    C = None


def main() -> int:
    A.cover_banner()
    A.utme_weight_chart()

    A.ch01_neurone()
    A.ch01_synapse()
    A.ch01_impulse_path()
    A.recap_cards_a()

    if B is not None:
        B.ch02_brain()
        B.ch02_eye()
        B.ch02_reflex_arc()
        B.ch02_ear()
        B.recap_cards_b()

    if C is not None:
        C.ch03_endocrine()
        C.ch03_auxin()
        C.ch03_menstrual()
        C.recap_cards_c()

    files = sorted((HERE / "diagrams").glob("*.svg"))
    print(f"generated {len(files)} diagrams")
    return 0


if __name__ == "__main__":
    sys.exit(main())
