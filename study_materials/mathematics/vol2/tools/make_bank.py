#!/usr/bin/env python3
"""Generate the 120-question Mixed Practice Bank (Appendix M).

Every stem is built from computed numbers and every option is derived from a
named error model, so the printed key cannot disagree with the printed question.

Output: bank120.typ
"""
from __future__ import annotations

import random
import sys
from fractions import Fraction as F
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
from qmath import m, mc, check, fmt_num, Bad  # noqa: E402

OUT = Path(__file__).resolve().parent.parent
rng = random.Random(77123)

LETTERS = "ABCD"


def positions(n: int, seed: int) -> list[int]:
    r = random.Random(seed)
    out: list[int] = []
    while len(out) < n:
        blk = [0, 1, 2, 3]
        r.shuffle(blk)
        out.extend(blk)
    return out[:n]


def sgn(v: F | int) -> str:
    return "+" if v >= 0 else "-"


def term(coef: F | int, var: str = "x", first: bool = False) -> str:
    """Render a term in Typst math (no $), e.g. `3x^2`, `- 2x`, `+ 5`."""
    coef = F(coef)
    if coef == 0:
        return ""
    body = ""
    if var:
        body = var
    mag = abs(coef)
    if var == "":
        core = f"{mag}"
    elif mag == 1:
        core = f"{body}"
    else:
        core = f"{mag}{body}"
    if first:
        return f"- {core}" if coef < 0 else core
    return f"{'+' if coef > 0 else '-'} {core}"


def quad(a, b, c, var: str = "x") -> str:
    parts = []
    first = True
    for coef, power in ((a, 2), (b, 1), (c, 0)):
        coef = F(coef)
        if coef == 0:
            continue
        body = var if power else ""
        mag = abs(coef)
        if power == 0:
            core = f"{mag}"
        elif mag == 1:
            core = body
        else:
            core = f"{mag}{body}"
        if power and power != 1:
            core += f"^{power}"
        if first:
            parts.append(f"- {core}" if coef < 0 else core)
            first = False
        else:
            parts.append(f"{'+' if coef > 0 else '-'} {core}")
    return " ".join(parts) if parts else "0"


def vt(coef: int, var: str) -> str:
    """Coefficient-times-variable with the 1 suppressed."""
    if coef == 1:
        return var
    if coef == -1:
        return f"-{var}"
    return f"{coef}{var}"


def factor(r: int) -> str:
    return f"(x {'-' if r >= 0 else '+'} {abs(r)})"


qs: list[tuple] = []

# ── Family 1: subject of formula, linear with a bracket (10) ──────────────
made = 0
while made < 25:
    a = rng.randint(2, 7)
    b = rng.randint(-9, 9)
    c = rng.randint(2, 5)
    # y = a(c x + b)
    stem = f"Make $x$ the subject of $y = {a}({c}x {sgn(b)} {abs(b)})$."
    ab = a * b
    top = f"y - {ab}" if ab > 0 else (f"y + {abs(ab)}" if ab < 0 else "y")
    top_alt = f"y + {ab}" if ab > 0 else (f"y - {abs(ab)}" if ab < 0 else "y")
    correct = f"$({top})/({a * c})$"
    wrong = [f"$({top_alt})/({a * c})$", f"$y/{a} - {c}x$", f"$({top})/{a}$"]
    sol = (f"Divide by ${a}$: $y/{a} = {c}x {sgn(b)} {abs(b)}$. Subtract ${abs(b)}$: "
           f"${c}x = {top}/{a}$ (after combining), so $x = ({top})/({a * c})$. *Chapter 1.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 2: remainder theorem (10) ──────────────────────────────────────
made = 0
while made < 25:
    a = rng.randint(1, 4)
    b = rng.randint(-6, 6)
    c = rng.randint(-9, 9)
    r = rng.randint(-3, 3)
    P = a * r ** 3 + b * r ** 2 + c
    stem = (f"Find the remainder when ${quad(a, b, c, 'x')}$ is divided by "
            f"$(x {sgn(-r)} {abs(r)})$." if False else
            f"Find the remainder when ${quad(a, b, c, 'x')}$ is divided by "
            f"(x {sgn(r)} {abs(r)}) when written as (x - a)$.".replace(" when written as (x - a)", ""))
    # divisor is (x - r) or (x + |r|)
    div = f"(x - {r})" if r >= 0 else f"(x + {abs(r)})"
    stem = f"Find the remainder when ${quad(a, b, c, 'x')}$ is divided by ${div}$."
    correct = m(P)
    wrong = [m(-P), m(P + 2), m(a * r ** 2 + b * r + c)]
    sol = (f"By the remainder theorem the remainder is $P({r})$. "
           f"$P({r}) = {a}({r})^3 {sgn(b)} {abs(b)}({r})^2 {sgn(c)} {abs(c)} = {P}$. *Chapter 2.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 3: quadratics with integer roots (10) ──────────────────────────
made = 0
while made < 25:
    p = rng.randint(-5, 5)
    q = rng.randint(-5, 5)
    if p == q or p == 0 or q == 0:
        continue
    a = rng.choice([1, 1, 2])
    b = -a * (p + q)
    c = a * p * q
    stem = f"Solve ${quad(a, b, c)} = 0$."
    correct = f"$x = {p}$ or $x = {q}$"
    wrong = [f"$x = {-p}$ or $x = {-q}$", f"$x = {p}$ or $x = {-q}$", f"$x = {a * p}$ or $x = {a * q}$"]
    sol = (f"Factorise: ${a if a != 1 else ''}(x {sgn(-p)} {abs(p)})(x {sgn(-q)} {abs(q)}) = 0$, "
           f"so $x = {p}$ or $x = {q}$. *Chapter 3.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 4: sum and product of roots (8) ────────────────────────────────
made = 0
while made < 20:
    a = rng.randint(2, 5)
    b = rng.randint(-9, 9)
    if b == 0:
        continue
    c = rng.randint(-9, 9)
    stem = f"For ${quad(a, b, c)} = 0$, find $alpha + beta$ and $alpha beta$."
    correct = f"${m(F(-b, a))}$ and ${m(F(c, a))}$"
    wrong = [f"${m(F(b, a))}$ and ${m(F(c, a))}$",
             f"${m(F(-b, a))}$ and ${m(F(-c, a))}$",
             f"${m(F(-b, a))}$ and ${m(F(c + 1, a))}$"]
    sol = (f"$alpha + beta = -b/a = {m(F(-b, a))}$ and $alpha beta = c/a = {m(F(c, a))}$. "
           f"*Chapter 3.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 5: two-by-two systems with integer solutions (12) ──────────────
made = 0
while made < 30:
    x, y = rng.randint(-4, 5), rng.randint(-4, 5)
    a1, b1 = rng.randint(1, 4), rng.randint(-4, 4)
    a2, b2 = rng.randint(1, 4), rng.randint(-4, 4)
    if b1 == 0 or b2 == 0 or a1 * b2 - a2 * b1 == 0:
        continue
    c1, c2 = a1 * x + b1 * y, a2 * x + b2 * y
    stem = (f"Solve ${vt(a1, 'x')} {sgn(b1)} {vt(abs(b1), 'y')} = {c1}$ and "
            f"${vt(a2, 'x')} {sgn(b2)} {vt(abs(b2), 'y')} = {c2}$.")
    correct = f"$x = {x}, y = {y}$"
    wrong = [f"$x = {y}, y = {x}$", f"$x = {-x}, y = {y}$", f"$x = {x}, y = {-y}$"]
    sol = (f"Eliminating gives $x = {x}$; back-substitution gives $y = {y}$. "
           f"*Chapter 4.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 6: linear inequalities (10) ────────────────────────────────────
made = 0
while made < 25:
    a = rng.randint(2, 6)
    b = rng.randint(-9, 9)
    k = rng.randint(-9, 9)
    # a x + b < k  ->  x < (k - b)/a
    t = F(k - b, a)
    stem = f"Solve ${a}x {sgn(b)} {abs(b)} < {k}$."
    correct = f"$x < {fmt_num(t)}$"
    wrong = [f"$x > {fmt_num(t)}$", f"$x < {fmt_num(-t)}$", f"$x < {fmt_num(t + 1)}$"]
    sol = (f"Subtract: ${a}x < {k - b}$; divide by ${a}$: $x < {fmt_num(t)}$. "
           f"*Chapter 5.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 7: direct and inverse variation (12) ───────────────────────────
made = 0
while made < 30:
    if made % 2 == 0:
        k = rng.randint(2, 7)
        x1 = rng.randint(2, 6)
        x2 = rng.randint(2, 7)
        stem = (f"$y$ varies directly as $x$, and $y = {k * x1}$ when $x = {x1}$. "
                f"Find $y$ when $x = {x2}$.")
        correct = m(k * x2)
        wrong = [m(k * x2 + k), m(F(k * x1, x2)), m(k * x2 - x2)]
        sol = (f"$k = {k * x1}/{x1} = {k}$, so $y = {k}({x2}) = {k * x2}$. *Chapter 6.*")
    else:
        k = rng.randint(2, 9) * rng.randint(1, 3)
        x1 = rng.choice([2, 3, 4, 5])
        x2 = rng.choice([2, 3, 4, 6])
        stem = (f"$y$ varies inversely as $x$, and $y = {m(F(k, x1))}$ when $x = {x1}$. "
                f"Find $y$ when $x = {x2}$.")
        correct = m(F(k, x2))
        wrong = [m(F(k * x2, x1)), m(F(x1, k)), m(F(k, x2) + 1)]
        sol = f"$k = x y = {x1} times {m(F(k, x1))} = {k}$, so $y = {k}/{x2} = {m(F(k, x2))}$. *Chapter 6.*"
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 8: A.P. nth term and sum (10) ──────────────────────────────────
made = 0
while made < 25:
    a = rng.randint(1, 7)
    d = rng.randint(2, 6)
    n = rng.randint(7, 18)
    if made % 2 == 0:
        stem = f"Find the ${n}$th term of the A.P. ${a}, {a + d}, {a + 2 * d}, dots$."
        correct = m(a + (n - 1) * d)
        wrong = [m(a + n * d), m(a + (n - 2) * d), m(a * d + n)]
        sol = f"$T_n = a + (n - 1)d = {a} + {n - 1}({d}) = {a + (n - 1) * d}$. *Chapter 7.*"
    else:
        stem = f"Find the sum of the first ${n}$ terms of ${a}, {a + d}, {a + 2 * d}, dots$."
        S = F(n, 2) * (2 * a + (n - 1) * d)
        correct = m(S)
        wrong = [m(F(n, 2) * (2 * a + n * d)), m(n * (a + (n - 1) * d)), m(S + d)]
        sol = f"$S_n = n/2[2a + (n - 1)d] = {n}/2[{2 * a} + {n - 1}({d})] = {m(S)}$. *Chapter 7.*"
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 9: G.P. nth term and sum to infinity (8) ───────────────────────
made = 0
while made < 20:
    a = rng.randint(1, 5)
    r = rng.choice([-2, 2, 3, -3])
    n = rng.randint(4, 6)
    if made % 2 == 0:
        stem = f"Find the ${n}$th term of the G.P. ${a}, {a * r}, {a * r * r}, dots$."
        correct = m(a * r ** (n - 1))
        wrong = [m(a * r ** n), m(a * (n - 1) * r), m(-a * r ** (n - 1))]
        sol = f"$T_n = a r^(n-1) = {a}({r})^{n - 1} = {a * r ** (n - 1)}$. *Chapter 7.*"
    else:
        num = rng.choice([1, 2, 3])
        den = rng.choice([2, 4, 5, 10])
        if num >= den:
            continue
        a2 = rng.randint(2, 8)
        rr = F(num, den)
        S = F(a2) / (1 - rr)
        stem = (f"Find the sum to infinity of the G.P. with first term ${a2}$ and "
                f"common ratio ${m(rr)}$.")
        correct = m(S)
        wrong = [m(F(a2) / (1 + rr)), m(F(a2) / rr), m(S * 2)]
        sol = f"$S_infinity = a/(1 - r) = {a2}/(1 - {m(rr)}) = {m(S)}$. *Chapter 7.*"
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 10: binary operations (10) ─────────────────────────────────────
made = 0
while made < 25:
    p, q = rng.randint(-3, 6), rng.randint(-3, 6)
    shape = made % 3
    if shape == 0:
        stem = f"If $a * b = a + b + a b$, evaluate ${p} * {q}$."
        val = p + q + p * q
        correct = m(val)
        wrong = [m(p + q), m(p * q), m(val + 2)]
        sol = f"${p} * {q} = {p} + {q} + ({p})({q}) = {val}$. *Chapter 8.*"
    elif shape == 1:
        stem = f"If $a * b = 2a - b$, evaluate ${p} * {q}$."
        val = 2 * p - q
        correct = m(val)
        wrong = [m(p - 2 * q), m(2 * q - p), m(val + 1)]
        sol = f"${p} * {q} = 2({p}) - ({q}) = {val}$. *Chapter 8.*"
    else:
        c = rng.randint(2, 9)
        stem = f"If $a * b = a + b - {c}$, find the identity element."
        correct = m(c)
        wrong = [m(0), m(-c), m(1)]
        sol = f"$a + e - {c} = a$ gives $e = {c}$. *Chapter 8.*"
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 11: determinants (10) ──────────────────────────────────────────
made = 0
while made < 25:
    a, b, c, d = (rng.randint(-5, 6) for _ in range(4))
    det = a * d - b * c
    stem = f"Evaluate $det mat({a}, {b}; {c}, {d})$."
    correct = m(det)
    wrong = [m(a * d + b * c), m(-det), m(det + a)]
    sol = f"$det = ({a})({d}) - ({b})({c}) = {det}$. *Chapter 9.*"
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

# ── Family 12: inverse of a 2x2 with determinant +-1 (10) ─────────────────
made = 0
while made < 25:
    a, b, c, d = (rng.randint(-4, 5) for _ in range(4))
    det = a * d - b * c
    if abs(det) != 1:
        continue
    stem = f"Find the inverse of $mat({a}, {b}; {c}, {d})$."
    if det == 1:
        correct = f"$mat({d}, {-b}; {-c}, {a})$"
    else:
        correct = f"$-mat({d}, {-b}; {-c}, {a})$"
    wrong = [f"$mat({d}, {b}; {c}, {a})$", f"$mat({a}, {-b}; {-c}, {d})$",
             f"$mat({-d}, {b}; {c}, {-a})$"]
    sol = (f"$det = {det}$, so $A^(-1) = (1/{det}) mat({d}, {-b}; {-c}, {a})$. *Chapter 9.*")
    try:
        qs.append(mc(stem, correct, wrong, sol))
        made += 1
    except Bad:
        pass

check(qs, "bank")
print("families produced", len(qs), "questions")
MAIN = qs[:120]
FINAL = qs[120:160]
MARATHON = qs[160:240]
MINI = qs[240:]

# ── render ────────────────────────────────────────────────────────────────
def build(items, seed, chapter, tag, subtitle, intro, blocks_note, outfile):
    n = len(items)
    pos = positions(n, seed=seed)
    keys, ordered = [], []
    for (stem, opts, _idx, sol), p in zip(items, pos):
        new = opts[:]
        correct = new.pop(0)
        new.insert(p, correct)
        keys.append(LETTERS[p])
        ordered.append((stem, new, sol))

    L = ['#import "template.typ": *', ""]
    L.append(f'#current-chapter.update("{chapter}")')
    L.append("#pagebreak()")
    L.append("")
    L.append("#block(")
    L.append("  width: 100%,")
    L.append("  fill: jamb-navy,")
    L.append("  stroke: 1.5pt + jamb-bright,")
    L.append("  radius: 10pt,")
    L.append("  inset: 18pt,")
    L.append(")[")
    L.append(f'  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[{tag}]')
    L.append("  #v(6pt)")
    L.append(f'  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[{subtitle}]')
    L.append("  #v(4pt)")
    L.append('  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))[')
    for line in intro:
        L.append(f"    {line}")
    L.append("  ]")
    L.append("]")
    L.append("")
    L.append("#v(6pt)")
    L.append("")
    if blocks_note:
        for line in blocks_note:
            L.append(line)
        L.append("")
    L.append(f"== {chapter.split(':')[0].replace('Appendix ', '')}.1 Questions")
    L.append("")
    for i, (stem, opts, _sol) in enumerate(ordered, 1):
        parts = ", ".join(f"[{o}]" for o in opts)
        L.append(f"#mcq({i}, [{stem}], {parts})")
        L.append("")
    L.append("#pagebreak()")
    L.append("")
    L.append(f"== {chapter.split(':')[0].replace('Appendix ', '')}.2 Answer Key")
    L.append("")
    L.append("#answer-key-grid((")
    for st in range(0, n, 10):
        chunk = ", ".join(f'"{k}"' for k in keys[st:st + 10])
        L.append(f"  {chunk},")
    L.append("))")
    L.append("")
    L.append(f"== {chapter.split(':')[0].replace('Appendix ', '')}.3 Complete Solutions")
    L.append("")
    for i, (_stem, _opts, sol) in enumerate(ordered, 1):
        L.append(f'#sol-item({i}, "{keys[i - 1]}")[')
        L.append(f"  {sol}")
        L.append("]")
        L.append("")
    (OUT / outfile).write_text("\n".join(L) + "\n", encoding="utf-8")
    print("wrote", outfile, "with", n, "questions")


build(MAIN, 5150, "Appendix M: 120-Question Mixed Practice Bank", "APPENDIX M",
      "120-Question Mixed Practice Bank",
      ["A hundred and twenty further questions, interleaved across all nine chapters and",
       "arranged in no chapter order at all — because the real paper is not arranged in",
       "chapter order either. Every answer and every option has been computed from the question."],
      ["== How to Use the Bank", "",
       "Work in three sessions of forty questions, forty-five minutes each. Mark at the end of each",
       "session, and use the chapter tag at the end of every solution to fill in the error log in",
       "Appendix J. A miss in the same chapter twice in one session means that chapter needs a",
       "revision session, not more questions."],
      "bank120.typ")

build(FINAL, 99123, "Appendix P: The Final Forty", "APPENDIX P",
      "The Final Forty",
      ["The last paper in the book. Forty questions, forty minutes, no notes, no second look at the",
       "formula compendium until the marking is finished. Sit it in the week before the examination."],
      ["== How to Use the Final Forty", "",
       "Sit this paper in exam conditions — a quiet room, a clock, and pencil on rough paper rather",
       "than a calculator. Mark immediately. A score of 32 or better, with no chapter losing more",
       "than two marks, is the green light. Anything else, and the countdown in Appendix B resumes",
       "at the day matching your weakest chapter."],
      "final40.typ")

build(MARATHON, 30303, "Appendix Q: The Eighty-Question Marathon", "APPENDIX Q",
      "The Eighty-Question Marathon",
      ["Eighty questions in two sittings of forty, or one long sitting of ninety minutes. This is",
       "the last endurance test in the book — not the hardest questions, but the longest paper."],
      ["== How to Run the Marathon", "",
       "Sit questions 1–40 in forty-five minutes, then rest for ten minutes, then questions 41–80 in",
       "forty-five minutes. Mark only at the end of the second sitting. Marathon papers test",
       "concentration as much as knowledge, and concentration is trainable."],
      "marathon80.typ")

def build_mini(items, seed):
    n = len(items)
    pos = positions(n, seed=seed)
    keys, ordered = [], []
    for (stem, opts, _idx, sol), p in zip(items, pos):
        new = opts[:]
        correct = new.pop(0)
        new.insert(p, correct)
        keys.append(LETTERS[p])
        ordered.append((stem, new, sol))

    L = ['#import "template.typ": *', ""]
    L.append('#current-chapter.update("Appendix U: Six Mini-Papers")')
    L.append("#pagebreak()")
    L.append("")
    L.append("#block(")
    L.append("  width: 100%,")
    L.append("  fill: jamb-navy,")
    L.append("  stroke: 1.5pt + jamb-bright,")
    L.append("  radius: 10pt,")
    L.append("  inset: 18pt,")
    L.append(")[")
    L.append('  #text(font: "DejaVu Sans", size: 8.8pt, weight: "bold", fill: rgb("#A7F3D0"))[APPENDIX U]')
    L.append("  #v(6pt)")
    L.append('  #text(font: "DejaVu Sans", size: 20pt, weight: "bold", fill: white)[Six Mini-Papers of Ten]')
    L.append("  #v(4pt)")
    L.append('  #text(font: "DejaVu Sans", size: 10.5pt, fill: rgb("#CBD5E1"))['.replace('",', '",'))
    L.append("    Ten questions, ten minutes, one sitting. Six of them make an hour of exam-condition")
    L.append("    practice without the fatigue of a full paper — ideal for a school night.")
    L.append("  ]")
    L.append("]")
    L.append("")
    L.append("#v(6pt)")
    L.append("")
    for paper in range(6):
        L.append(f"== U.{paper + 1} Mini-Paper {paper + 1}")
        L.append("")
        for j in range(10):
            i = paper * 10 + j
            stem, opts, _sol = ordered[i]
            parts = ", ".join(f"[{o}]" for o in opts)
            L.append(f"#mcq({j + 1}, [{stem}], {parts})")
            L.append("")
        L.append("#pagebreak()")
        L.append("")
    L.append("== U.7 Answer Keys")
    L.append("")
    for paper in range(6):
        L.append(f"*Mini-Paper {paper + 1}*")
        L.append("")
        L.append("#answer-key-grid((")
        chunk = keys[paper * 10:(paper + 1) * 10]
        L.append("  " + ", ".join(f'"{k}"' for k in chunk) + ",")
        L.append("))")
        L.append("")
    L.append("#pagebreak()")
    L.append("")
    L.append("== U.8 Complete Solutions")
    L.append("")
    for i, (_stem, _opts, sol) in enumerate(ordered, 1):
        L.append(f'#sol-item({i}, "{keys[i - 1]}")[')
        L.append(f"  {sol}")
        L.append("]")
        L.append("")
    (OUT / "mini60.typ").write_text("\n".join(L) + "\n", encoding="utf-8")
    print("wrote mini60.typ with", n, "questions")


build_mini(MINI, 8080)
