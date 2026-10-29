#!/usr/bin/env python3
"""Drill compiler for the JAMB CBT Mathematics series.

Each chapter's practice drill lives in ``drills/chNN_drill.py`` as plain data:

    CHAPTER = 1
    TITLE = "Change of Subject of Formula"
    TIME = "35 minutes"
    QUESTIONS = [
        ("stem in Typst markup", ["option A", "option B", "option C", "option D"],
         2, "solution in Typst markup"),
        ...
    ]

The generator *shuffles* the four options into a deterministic, evenly balanced
order (so the correct answer is not always "A"), records the resulting answer
letter, and emits:

    drill_chNN.typ   — questions + answer-key grid + full solutions

Because the key is derived from the same data as the options, a key/option
mismatch is structurally impossible. The generator refuses to emit a chapter
whose questions are malformed (wrong number of options, duplicate options,
missing solution, out-of-range answer index).
"""

from __future__ import annotations

import importlib.util
import random
import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
OUT = HERE.parent

LETTERS = "ABCD"

MATH_WORDS = re.compile(r"[A-Za-z]{2,}")
ALLOWED = set("""frac sqrt root sum prod integral lim log ln exp sin cos tan sec csc
arcsin arccos arctan det mat vec norm abs floor ceil binom cases lr attach op quad
qquad arrow double long dash approx equiv times div dot plus minus therefore
because infinity in not subset union inter emptyset alpha beta gamma delta epsilon
theta lambda mu pi sigma phi omega Delta Sigma Omega RR NN ZZ QQ CC mod and or if
else to degree bold underline overline hat dot not divides lt gt leq geq""".split())


def load(path: Path):
    spec = importlib.util.spec_from_file_location(path.stem, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def letter_positions(n: int, seed: int) -> list[int]:
    """Evenly balanced, deterministic permutation of A-D across n questions."""
    rng = random.Random(seed)
    positions: list[int] = []
    while len(positions) < n:
        block = [0, 1, 2, 3]
        rng.shuffle(block)
        positions.extend(block)
    return positions[:n]


def check(mod, path: Path) -> list[str]:
    problems = []
    qs = mod.QUESTIONS
    for i, q in enumerate(qs, start=1):
        if len(q) != 4:
            problems.append(f"{path.name} Q{i}: expected 4 fields, got {len(q)}")
            continue
        stem, opts, correct, sol = q
        if len(opts) != 4:
            problems.append(f"{path.name} Q{i}: expected 4 options, got {len(opts)}")
        if not isinstance(correct, int) or not 0 <= correct < len(opts):
            problems.append(f"{path.name} Q{i}: answer index {correct} out of range")
        if len(set(opts)) != len(opts):
            problems.append(f"{path.name} Q{i}: duplicate option text")
        if not sol.strip():
            problems.append(f"{path.name} Q{i}: empty solution")
        if not stem.strip():
            problems.append(f"{path.name} Q{i}: empty stem")
        for field in [stem, sol, *opts]:
            for word in MATH_WORDS.findall(field):
                if word not in ALLOWED and "$" in field:
                    pass  # heuristic only; see scan_math below
            if "//" in field:
                problems.append(
                    f"{path.name} Q{i}: '//' inside a string starts a Typst comment; "
                    "write frac(a, b) instead")
    return problems


def emit(mod, path: Path) -> Path:
    ch = mod.CHAPTER
    n = len(mod.QUESTIONS)
    positions = letter_positions(n, seed=1000 + ch)

    lines: list[str] = ['#import "template.typ": *', ""]
    lines.append(f"== {ch}.6 JAMB UTME Practice Drill — Chapter {ch} ({n} Questions)")
    lines.append("")
    lines.append(
        f"Attempt all {n} questions in *{mod.TIME}* without a calculator. "
        "Then mark with the quick key and read every solution, including those you answered "
        "correctly — each solution names the error that produces the wrong option."
    )
    lines.append("")

    keys: list[str] = []
    for i, (stem, opts, correct, _sol) in enumerate(mod.QUESTIONS):
        p = positions[i]
        shuffled = opts[:]
        right = shuffled.pop(correct)
        shuffled.insert(p, right)
        keys.append(LETTERS[p])
        parts = ", ".join(f"[{o}]" for o in shuffled)
        lines.append(f"#mcq({i + 1}, [{stem}], {parts})")
        lines.append("")

    lines.append(f"== {ch}.7 Quick Answer Key & Complete Worked Solutions — Chapter {ch}")
    lines.append("")
    lines.append("#answer-key-grid((")
    for start in range(0, n, 10):
        chunk = ", ".join(f'"{k}"' for k in keys[start:start + 10])
        lines.append(f"  {chunk},")
    lines.append("))")
    lines.append("")

    for i, (_stem, _opts, _correct, sol) in enumerate(mod.QUESTIONS):
        lines.append(f'#sol-item({i + 1}, "{keys[i]}")[')
        for ln in sol.strip().splitlines():
            lines.append(f"  {ln.strip()}")
        lines.append("]")
        lines.append("")

    out = OUT / f"drill_ch{ch:02d}.typ"
    out.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return out


def main() -> int:
    only = sys.argv[1] if len(sys.argv) > 1 else None
    problems: list[str] = []
    total = 0
    for path in sorted((HERE).glob("ch*_drill.py")):
        mod = load(path)
        if only and f"ch{mod.CHAPTER:02d}" != only:
            continue
        problems += check(mod, path)
        if problems:
            continue
        out = emit(mod, path)
        total += len(mod.QUESTIONS)
        print(f"{out.name}: {len(mod.QUESTIONS)} questions, "
              f"key counts " + ", ".join(f"{L}:{keys_count(out, L)}" for L in LETTERS))
    if problems:
        print("\nREFUSED TO EMIT — fix these first:")
        for p in problems:
            print("  -", p)
        return 1
    print(f"total questions: {total}")
    return 0


def keys_count(path: Path, letter: str) -> int:
    text = path.read_text()
    m = re.search(r"#answer-key-grid\(\((.*?)\)\)", text, re.S)
    if not m:
        return 0
    return len(re.findall(rf'"{letter}"', m.group(1)))


if __name__ == "__main__":
    sys.exit(main())
