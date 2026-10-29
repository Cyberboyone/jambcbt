#!/usr/bin/env python3
"""Generate the 200-item rapid-fire bank (Appendix K) with exact answers.

Every item is computed here, so the printed answer key cannot drift from the
question. Items are short by design: one line of arithmetic or one recall step.

Output: rapid_fire.typ
"""
from __future__ import annotations

import random
import sys
from fractions import Fraction
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

OUT = Path(__file__).resolve().parent.parent
rng = random.Random(20261029)

items: list[tuple[str, str]] = []   # (question, answer)


def add(q: str, a: str) -> None:
    items.append((q, a))


def f(x) -> str:
    """Typst-friendly number."""
    if isinstance(x, Fraction):
        if x.denominator == 1:
            return str(x.numerator)
        return f"${x.numerator}/{x.denominator}$"
    if isinstance(x, float) and x == int(x):
        return str(int(x))
    return str(x)


# ── Chapter 1: formula evaluation / transposition (20) ────────────────────
for _ in range(6):
    u = rng.choice([4, 6, 8, 10, 12, 16])
    v = rng.choice([u * 2, u * 3, 6, 12, 24])
    add(f"Evaluate $f = (u v)/(u + v)$ when $u = {u}$ and $v = {v}$.",
        f(Fraction(u * v, u + v)))

for _ in range(5):
    a = rng.randint(2, 9)
    b = rng.randint(-9, 9)
    y = rng.randint(-9, 9)
    # y = a x + b, ask for x
    num = Fraction(y - b, a)
    add(f"If $y = {a}x {'+' if b >= 0 else '-'} {abs(b)}$ and $y = {y}$, find $x$.", f(num))

for _ in range(5):
    k = rng.choice([2, 3, 4, 5])
    x0 = rng.choice([2, 3, 4, 5])
    add(f"If $t = sqrt({k * k}x)$, find $t$ when $x = {x0}$.", f(Fraction(round(k * (x0 ** 0.5), 6)).limit_denominator(1000)))

for _ in range(4):
    r = rng.choice([1, 2, 3, 4])
    x0 = rng.choice([2, 3, 4])
    add(f"Using $pi = 22/7$, evaluate $A = 4 pi r^2$ when $r = {r}$.", f(4 * Fraction(22, 7) * r * r))

# ── Chapter 2: polynomials (24) ───────────────────────────────────────────
for _ in range(8):
    a, b, c = rng.randint(-4, 4), rng.randint(-4, 4), rng.randint(-6, 6)
    r = rng.randint(-3, 3)
    # P(x) = x^3 + a x^2 + b x + c evaluated at r
    P = r ** 3 + a * r ** 2 + b * r + c
    add(f"Find the remainder when $x^3 {'+' if a >= 0 else '-'} {abs(a)}x^2 "
        f"{'+' if b >= 0 else '-'} {abs(b)}x {'+' if c >= 0 else '-'} {abs(c)}$ is divided by "
        f"$(x {'+' if -r >= 0 else '-'} {abs(r)})$.",
        f(P))

for _ in range(8):
    p, q = rng.randint(-5, 5), rng.randint(-5, 5)
    while q == p:
        q = rng.randint(-5, 5)
    a, b = p + q, p * q
    add(f"Factorise $x^2 {'+' if a >= 0 else '-'} {abs(a)}x {'+' if b >= 0 else '-'} {abs(b)}$.",
        f"$(x {'-' if p >= 0 else '+'} {abs(p)})(x {'-' if q >= 0 else '+'} {abs(q)})$")

for _ in range(8):
    r = rng.randint(1, 4)
    k = rng.randint(-4, 4)
    # P(x) = x^3 + k x^2 - 3x + c with P(r)=0 -> c
    c = -(r ** 3 + k * r ** 2 - 3 * r)
    add(f"If $(x - {r})$ is a factor of $x^3 {'+' if k >= 0 else '-'} {abs(k)}x^2 - 3x + c$, find $c$.",
        f(c))

# ── Chapter 3: quadratics (28) ────────────────────────────────────────────
for _ in range(9):
    a, b, c = rng.randint(1, 4), rng.randint(-9, 9), rng.randint(-9, 9)
    add(f"Find the discriminant of ${a}x^2 {'+' if b >= 0 else '-'} {abs(b)}x "
        f"{'+' if c >= 0 else '-'} {abs(c)} = 0$.", f(b * b - 4 * a * c))

for _ in range(9):
    a, b, c = rng.randint(1, 3), rng.randint(-8, 8), rng.randint(-8, 8)
    add(f"For ${a}x^2 {'+' if b >= 0 else '-'} {abs(b)}x {'+' if c >= 0 else '-'} {abs(c)} = 0$, "
        f"find the sum of the roots.", f(Fraction(-b, a)))

for _ in range(10):
    a, b, c = rng.randint(1, 3), rng.randint(-8, 8), rng.randint(-8, 8)
    add(f"For ${a}x^2 {'+' if b >= 0 else '-'} {abs(b)}x {'+' if c >= 0 else '-'} {abs(c)} = 0$, "
        f"find the product of the roots.", f(Fraction(c, a)))

# ── Chapter 4: simultaneous equations (24) ────────────────────────────────
made = 0
while made < 24:
    x, y = rng.randint(-5, 6), rng.randint(-5, 6)
    a1, b1 = rng.randint(1, 5), rng.randint(-5, 5)
    a2, b2 = rng.randint(1, 5), rng.randint(-5, 5)
    if b1 == 0 or b2 == 0 or a1 * b2 - a2 * b1 == 0:
        continue
    c1, c2 = a1 * x + b1 * y, a2 * x + b2 * y
    add(f"Solve ${a1}x {'+' if b1 > 0 else '-'} {abs(b1)}y = {c1}$ and "
        f"${a2}x {'+' if b2 > 0 else '-'} {abs(b2)}y = {c2}$.",
        f"$x = {x}, y = {y}$")
    made += 1

# ── Chapter 5: inequalities (20) ──────────────────────────────────────────
for _ in range(10):
    a = rng.randint(2, 6)
    k = rng.randint(-6, 8)
    bound = Fraction(k, a)
    add(f"Solve ${a}x < {k}$.", f"$x < {f(bound)}$" if bound.denominator != 1 else f"$x < {bound.numerator}$")

for _ in range(10):
    p, q = rng.randint(-6, 4), rng.randint(-6, 4)
    while q <= p:
        q = rng.randint(-6, 6)
    add(f"Solve ${'x'}^2 {'+' if -(p + q) >= 0 else '-'} {abs(-(p + q))}x "
        f"{'+' if p * q >= 0 else '-'} {abs(p * q)} < 0$.",
        f"${p} < x < {q}$")

# ── Chapter 6: variation (20) ─────────────────────────────────────────────
for _ in range(10):
    k = rng.randint(2, 8)
    x1 = rng.randint(2, 5)
    x2 = rng.randint(2, 6)
    add(f"$y$ varies directly as $x$ and $y = {k * x1}$ when $x = {x1}$. Find $y$ when $x = {x2}$.",
        f(k * x2))

for _ in range(10):
    k = rng.randint(2, 6) * rng.randint(1, 3)
    x1 = rng.randint(2, 5)
    x2 = rng.choice([2, 3, 4, 6])
    add(f"$y$ varies inversely as $x$ and $y = {f(Fraction(k, x1))}$ when $x = {x1}$. "
        f"Find $y$ when $x = {x2}$.", f(Fraction(k, x2)))

# ── Chapter 7: progressions (24) ──────────────────────────────────────────
for _ in range(8):
    a, d, n = rng.randint(1, 6), rng.randint(2, 7), rng.randint(6, 15)
    add(f"Find the ${n}$th term of the A.P. ${a}, {a + d}, {a + 2 * d}, dots$.", f(a + (n - 1) * d))

for _ in range(8):
    a, d, n = rng.randint(1, 5), rng.randint(2, 5), rng.randint(8, 20)
    add(f"Find the sum of the first ${n}$ terms of ${a}, {a + d}, {a + 2 * d}, dots$.",
        f(Fraction(n, 2) * (2 * a + (n - 1) * d)))

for _ in range(8):
    a, r = rng.randint(1, 4), rng.choice([2, 3])
    n = rng.randint(4, 6)
    add(f"Find the ${n}$th term of the G.P. ${a}, {a * r}, {a * r * r}, dots$.", f(a * r ** (n - 1)))

# ── Chapter 8: binary operations (18) ─────────────────────────────────────
for _ in range(9):
    p, q = rng.randint(-4, 6), rng.randint(-4, 6)
    op = rng.choice(["p + q + p q", "p + q - p q", "2p + q", "p q - p"])
    if op == "p + q + p q":
        val = p + q + p * q
    elif op == "p + q - p q":
        val = p + q - p * q
    elif op == "2p + q":
        val = 2 * p + q
    else:
        val = p * q - p
    add(f"If $a * b = {op}$, evaluate ${p} * {q}$.", f(val))

for _ in range(9):
    c = rng.randint(2, 9)
    add(f"If $a * b = a + b - {c}$, find the identity element.", f(c))

# ── Chapter 9: matrices (22) ──────────────────────────────────────────────
for _ in range(10):
    a, b, c, d = rng.randint(-4, 6), rng.randint(-4, 6), rng.randint(-4, 6), rng.randint(-4, 6)
    add(f"Evaluate $det mat({a}, {b}; {c}, {d})$.", f(a * d - b * c))

for _ in range(12):
    a, b, c, d = rng.randint(1, 4), rng.randint(-3, 3), rng.randint(-3, 3), rng.randint(1, 4)
    if a * d - b * c == 0:
        continue
    add(f"Find the determinant of the inverse of $mat({a}, {b}; {c}, {d})$.",
        f(Fraction(1, a * d - b * c)))

# ── render ────────────────────────────────────────────────────────────────
def render() -> str:
    L = ['#import "template.typ": *', ""]
    L.append('#current-chapter.update("Appendix K: 200 Rapid-Fire Questions")')
    L.append("#pagebreak()")
    L.append("")
    L.append("#block(")
    L.append("  width: 100%,")
    L.append("  fill: jamb-navy,")
    L.append("  stroke: 1.5pt + jamb-bright,")
    L.append("  radius: 10pt,")
    L.append("  inset: 18pt,")
    L.append(")[")
    L.append('  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX K]')
    L.append("  #v(6pt)")
    L.append('  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[200 Rapid-Fire Questions]')
    L.append("  #v(4pt)")
    L.append('  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[')
    L.append("    Two hundred one-line questions, in syllabus order, each answerable in under twenty")
    L.append("    seconds once the rule is secure. Work in blocks of twenty, mark out of twenty, and")
    L.append("    return to any block below sixteen. Every answer has been computed, not estimated.")
    L.append("  ]")
    L.append("]")
    L.append("")
    L.append("#v(6pt)")
    L.append("")
    L.append("== How to Use the Bank")
    L.append("")
    L.append("Work in blocks of twenty against a clock of eight minutes. Write only the answer — the")
    L.append("point of the bank is *recall speed*, not presentation. Mark immediately, then record the")
    L.append("block score in the table at the end. A block you finish in under five minutes with")
    L.append("eighteen or more correct is secure; anything less goes back into the error log.")
    L.append("")
    L.append("#table(")
    L.append("  columns: (auto, 1fr, 1fr, auto),")
    L.append("  inset: 6pt,")
    L.append("  align: (center + horizon, left + horizon, left + horizon, center + horizon),")
    L.append("  stroke: 0.4pt + jamb-border,")
    L.append("  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },")
    L.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Block],')
    L.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Items],')
    L.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Focus],')
    L.append('  text(font: "DejaVu Sans", size: 8.2pt, weight: "bold", fill: white)[Target time],')
    blocks = [
        ("1–20", "Formula evaluation and transposition", "8 min"),
        ("21–44", "Polynomials: remainders and factors", "8 min"),
        ("45–72", "Quadratics: discriminant, sum, product", "8 min"),
        ("73–96", "Simultaneous equations", "10 min"),
        ("97–116", "Inequalities", "8 min"),
        ("117–136", "Variation", "8 min"),
        ("137–160", "Progressions", "8 min"),
        ("161–178", "Binary operations", "6 min"),
        ("179–200", "Matrices and determinants", "8 min"),
    ]
    for b, focus, t in blocks:
        L.append(f"  [{b}], [{focus}], [{len(focus.split())} items], [{t}],")
    L.append(")")
    L.append("")
    L.append("#let rapid(n, q) = [")
    L.append("  #grid(")
    L.append("    columns: (auto, 1fr, auto),")
    L.append("    column-gutter: 6pt,")
    L.append("    align: (right + horizon, left + horizon, right + horizon),")
    L.append("    text(font: \"DejaVu Sans\", size: 8.2pt, fill: jamb-navy, weight: \"bold\")[#n],")
    L.append("    text(size: 8.8pt)[#q],")
    L.append("    text(font: \"DejaVu Sans\", size: 8pt, fill: jamb-border)[\"......\"],")
    L.append("  )")
    L.append("]")
    L.append("")
    L.append("== K.1 Questions")
    L.append("")
    L.append("#block(width: 100%, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 10pt)[")
    L.append("  #set text(size: 9pt)")
    for i, (q, a) in enumerate(items, 1):
        L.append(f"  #rapid({i}, [{q}])")
    L.append("]")
    L.append("")
    L.append("== K.2 Answer Key")
    L.append("")
    L.append("#block(width: 100%, stroke: 0.6pt + jamb-border, radius: 6pt, inset: 10pt)[")
    L.append("  #grid(")
    L.append("    columns: (1fr,) * 5,")
    L.append("    column-gutter: 10pt,")
    L.append("    row-gutter: 3pt,")
    for i, (q, a) in enumerate(items, 1):
        L.append(f"    text(size: 8.4pt)[#text(fill: jamb-navy, weight: \"bold\")[{i}. ] {a}],")
    L.append("  )")
    L.append("]")
    L.append("")
    L.append("#trap-box(\"The Twenty-Second Rule\")[")
    L.append("  If an item in this bank takes more than twenty seconds, you are not recalling — you are")
    L.append("  re-deriving. Re-deriving is fine in the chapter, but it costs marks in the hall. Note the")
    L.append("  item number, return to the named chapter, and rebuild the rule until it is automatic.")
    L.append("]")
    L.append("")
    L.append("== K.3 Block Score Record")
    L.append("")
    L.append("#table(")
    L.append("  columns: (auto, auto, auto, auto, auto, auto),")
    L.append("  inset: 6pt,")
    L.append("  align: center,")
    L.append("  stroke: 0.4pt + jamb-border,")
    L.append("  fill: (x, y) => if y == 0 { jamb-navy } else if calc.odd(y) { white } else { jamb-light },")
    L.append('  ..(range(1, 11).map(i => text(font: "DejaVu Sans", size: 8pt, weight: "bold", fill: white)[Block #i])),')
    L.append("  ..range(1, 11).map(i => [\\ ]),")
    L.append("  ..range(1, 11).map(i => [\\ ]),")
    L.append(")")
    L.append("")
    return "\n".join(L) + "\n"


if __name__ == "__main__":
    text = render()
    (OUT / "rapid_fire.typ").write_text(text, encoding="utf-8")
    print(f"wrote rapid_fire.typ with {len(items)} items")
